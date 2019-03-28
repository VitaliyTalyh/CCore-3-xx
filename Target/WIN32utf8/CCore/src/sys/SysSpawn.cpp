/* SysSpawn.cpp */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 3.60
//
//  Tag: Target/WIN32utf8
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2019 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#include <CCore/inc/sys/SysSpawn.h>

#include <CCore/inc/sys/SysEnv.h>

#include <CCore/inc/ForLoop.h>
#include <CCore/inc/MemBase.h>
#include <CCore/inc/Array.h>
#include <CCore/inc/Exception.h>

#include <CCore/inc/win32/Win32.h>

#if 0 // Unix way

namespace CCore {
namespace Sys {

/* class SpawnWaitList::Engine */

class SpawnWaitList::Engine : MemBase_nocopy
 {
   struct Rec
    {
     SpawnChild::Type pid;
     void *arg;
    };

   DynArray<Rec> list;

  private:

   WaitResult finish(ulen ind,int status,ErrorType error)
    {
     WaitResult ret{list[ind].arg,status,error};

     ulen last=list.getLen()-1;

     if( ind<last ) list[ind]=list[last];

     list.shrink_one();

     return ret;
    }

  public:

   explicit Engine(ulen reserve) : list(DoReserve,reserve) {}

   ~Engine() {}

   bool notEmpty() const { return list.notEmpty(); }

   void add(SpawnChild::Type pid,void *arg) { list.append_copy({pid,arg}); }

   WaitResult wait()
    {
     if( list.isEmpty() ) return {0,0,NoError};

     auto result=WaitAny();

     if( result.pid==-1 )
       {
        return {0,result.status,result.error};
       }

     for(ulen ind : IndLim(list.getLen()) )
       if( list[ind].pid==result.pid )
         {
          return finish(ind,result.status,result.error);
         }

     return {0,0,NoError};
    }

   struct WaitAnyResult
    {
     SpawnChild::Type pid;
     int status;
     ErrorType error;
    };

   static WaitAnyResult WaitAny();
 };

/* struct SpawnWaitList */

ErrorType SpawnWaitList::init(ulen reserve)
 {
  SilentReportException report;

  try
    {
     engine=new Engine(reserve);

     return NoError;
    }
  catch(CatchType)
    {
     return ErrorType(Win32::ErrorNotEnoughMemory);
    }
 }

ErrorType SpawnWaitList::exit()
 {
  bool nok=engine->notEmpty();

  delete Replace_null(engine);

  return nok?Error_Running:NoError;
 }

ErrorType SpawnWaitList::add(SpawnChild *spawn,void *arg)
 {
  SilentReportException report;

  try
    {
     engine->add(spawn->pid,arg);

     return NoError;
    }
  catch(CatchType)
    {
     return ErrorType(Win32::ErrorNotEnoughMemory);
    }
 }

auto SpawnWaitList::wait() -> WaitResult
 {
  return engine->wait();
 }

} // namespace Sys
} // namespace CCore

//----------------------------------------------------------------------------------------

#define _GNU_SOURCE
#define _DEFAULT_SOURCE

#include <sys/types.h>
#include <errno.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

namespace CCore {
namespace Sys {

/* GetShell() */

StrLen GetShell()
 {
  const char *shell=getenv("SHELL");

  if( !shell ) return "/bin/sh"_c;

  return shell;
 }

/* GetEnviron() */

char ** GetEnviron()
 {
  return environ;
 }

/* struct SpawnChild */

static_assert( Meta::IsSame<pid_t,SpawnChild::Type> ,"CCore::Sys::SpawnChild : bad Type");

void * SpawnChild::MemAlloc(ulen len)
 {
  return malloc(len);
 }

void SpawnChild::MemFree(void *mem)
 {
  free(mem);
 }

ErrorType SpawnChild::spawn(char *wdir,char *path,char **argv,char **envp)
 {
  volatile ErrorType error=NoError;

  switch( Type child_pid=vfork() )
    {
     case -1 : return Error_Spawn;

     case 0 :
      {
       if( wdir )
         {
          if( chdir(wdir) )
            {
             error=Error_Spawn;

             _exit(125);
            }
         }

       execvpe(path,argv,envp);

       error=Error_Spawn;

       int e=errno;

       _exit( ( e==ENOENT )? 126 : 127 );
      }

     default:
      {
       if( error )
         waitpid(child_pid,0,WNOHANG);
       else
         pid=child_pid;

       return error;
      }
    }
 }

auto SpawnChild::wait() -> WaitResult
 {
  WaitResult ret;

  int status;

  Type child_pid=waitpid(pid,&status,0);

  if( child_pid==-1 || child_pid!=pid )
    {
     ret.status=1000;
     ret.error=Error_Spawn;
    }
  else
    {
     if( WIFEXITED(status) )
       {
        ret.status=WEXITSTATUS(status);
        ret.error=NoError;
       }
     else
       {
        ret.status=status;
        ret.error=Error_Spawn;
       }
    }

  return ret;
 }

/* class SpawnWaitList::Engine */

auto SpawnWaitList::Engine::WaitAny() -> WaitAnyResult
 {
  WaitAnyResult ret;

  int status;

  SpawnChild::Type child_pid=waitpid(0,&status,0);

  if( child_pid==-1 )
    {
     ret.pid=-1;
     ret.status=1000;
     ret.error=Error_Spawn;
    }
  else
    {
     if( WIFEXITED(status) )
       {
        ret.pid=child_pid;
        ret.status=WEXITSTATUS(status);
        ret.error=NoError;
       }
     else
       {
        ret.pid=child_pid;
        ret.status=status;
        ret.error=Error_Spawn;
       }
    }

  return ret;
 }

} // namespace Sys
} // namespace CCore

#else

#include <CCore/inc/sys/SysSpawnInternal.h>

namespace CCore {
namespace Sys {

/* GetShell() */

StrLen GetShell(char buf[MaxPathLen+1])
 {
  // 1 try

  {
   TryGetEnv<32,MaxPathLen> tryget(Range(buf,MaxPathLen),"WINSHELL");

   if( tryget.ok ) return tryget.str;
  }

  // 2 try

  {
   TryGetEnv<32,MaxPathLen> tryget(Range(buf,MaxPathLen),"ComSpec");

   if( tryget.ok ) return tryget.str;
  }

  // 3 try

  {
   TryGetEnv<32,MaxPathLen> tryget(Range(buf,MaxPathLen),"COMSPEC");

   if( tryget.ok ) return tryget.str;
  }

  return "C:\\WINDOWS\\system32\\cmd.exe"_c;
 }

/* GetEnviron() */

void GetEnviron(Function<void (StrLen)> func)
 {
  EnvironHook hook;

  hook( [=] (PtrLen<const WChar> env)
            {
             WCharToUtf8Full temp(env);

             if( !temp ) GuardNoMem(temp.getLen());

             func(temp.get());

            } );
 }

/* class SpawnWaitList::Engine */

class SpawnWaitList::Engine : MemBase_nocopy
 {
   DynArray<SpawnChild::Type> list;
   DynArray<void *> arglist;

  private:

   static WaitResult Finish(SpawnChild::Type pid,void *arg)
    {
     WaitResult ret;

     ret.arg=arg;

     unsigned exit_code;

     if( Win32::GetExitCodeProcess(pid,&exit_code) )
       {
        ret.status=(int)exit_code;
        ret.error=NoError;
       }
     else
       {
        ret.status=1000;
        ret.error=NonNullError();
       }

     Win32::CloseHandle(pid);

     return ret;
    }

   WaitResult finish(ulen ind)
    {
     auto pid=list[ind];
     auto arg=arglist[ind];

     ulen last=list.getLen()-1;

     if( ind<last )
       {
        list[ind]=list[last];
        arglist[ind]=arglist[last];
       }

     list.shrink_one();
     arglist.shrink_one();

     return Finish(pid,arg);
    }

  public:

   explicit Engine(ulen reserve) : list(DoReserve,reserve),arglist(DoReserve,reserve) {}

   ~Engine() {}

   bool notEmpty() const { return list.notEmpty(); }

   void add(SpawnChild::Type pid,void *arg)
    {
     arglist.reserve(1);

     list.append_copy(pid);
     arglist.append_copy(arg);
    }

   WaitResult wait()
    {
     if( list.isEmpty() ) return {0,0,NoError};

     auto result=WaitAny(Range(list));

     if( result.error ) return {0,0,result.error};

     return finish(result.ind);
    }

   struct WaitAnyResult
    {
     ulen ind;
     ErrorType error;
    };

   static WaitAnyResult WaitAny(PtrLen<SpawnChild::Type> list)
    {
     auto result=Win32::WaitForMultipleObjects(list.len,list.ptr,false,Win32::NoTimeout);

     if( result==Win32::WaitFailed )
       {
        return {0,NonNullError()};
       }

     if( result>=Win32::WaitObject_0 && ulen(result-Win32::WaitObject_0)<list.len )
       {
        return {ulen(result-Win32::WaitObject_0),NoError};
       }

     return {0,Error_Spawn};
    }
 };

/* struct SpawnWaitList */

ErrorType SpawnWaitList::init(ulen reserve)
 {
  SilentReportException report;

  try
    {
     engine=new Engine(reserve);

     return NoError;
    }
  catch(CatchType)
    {
     return ErrorType(Win32::ErrorNotEnoughMemory);
    }
 }

ErrorType SpawnWaitList::exit()
 {
  bool nok=engine->notEmpty();

  delete Replace_null(engine);

  return nok?Error_Running:NoError;
 }

ErrorType SpawnWaitList::add(SpawnChild *spawn,void *arg)
 {
  SilentReportException report;

  try
    {
     engine->add(spawn->pid,arg);

     return NoError;
    }
  catch(CatchType)
    {
     return ErrorType(Win32::ErrorNotEnoughMemory);
    }
 }

auto SpawnWaitList::wait() -> WaitResult
 {
  return engine->wait();
 }

/* struct SpawnChild */

static_assert( Meta::IsSame<Win32::handle_t,SpawnChild::Type> ,"CCore::Sys::SpawnChild : bad Type");

void * SpawnChild::MemAlloc(ulen len)
 {
  return TryMemAlloc(len);
 }

void SpawnChild::MemFree(void *mem)
 {
  CCore::MemFree(mem);
 }

ErrorType SpawnChild::spawn(char *wdir,char *path,char **argv,char **envp)
 {
  ProcessSetup setup(wdir,path,argv,envp);

  return setup.create(pid);
 }

auto SpawnChild::wait() -> WaitResult
 {
  WaitResult ret;

  switch( Win32::WaitForSingleObject(pid,Win32::NoTimeout) )
    {
     case Win32::WaitObject_0 :
      {
       unsigned exit_code;

       if( Win32::GetExitCodeProcess(pid,&exit_code) )
         {
          ret.status=(int)exit_code;
          ret.error=NoError;
         }
       else
         {
          ret.status=1000;
          ret.error=NonNullError();
         }
      }
     break;

     case Win32::WaitFailed :
      {
       ret.status=1000;
       ret.error=NonNullError();
      }
     break;

     default:
      {
       ret.status=1000;
       ret.error=Error_Spawn;
      }
    }

  Win32::CloseHandle(pid);

  return ret;
 }

} // namespace Sys
} // namespace CCore

#endif
