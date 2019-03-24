/* SysSpawn.h */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 3.60
//
//  Tag: Target/LIN64utf8
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2019 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#ifndef CCore_inc_sys_SysSpawn_h
#define CCore_inc_sys_SysSpawn_h

#include <CCore/inc/sys/SysError.h>

namespace CCore {
namespace Sys {

/* GetShell() */

StrLen GetShell(); // unsafe, beware eniron modification!

/* GetEnviron() */

char ** GetEnviron(); // environ is a global!

/* classes */

struct SpawnChild;

/* struct SpawnChild */

struct SpawnChild
 {
  // public

  struct WaitResult
   {
    int status;
    ErrorType error;
   };

  // private data

  using Type = int ;

  Type pid;

  // public

  static void * MemAlloc(ulen len);

  static void MemFree(void *mem);

  ErrorType spawn(char *wdir,char *path,char **argv,char **envp); // path!=0 , argv!=0 , envp!=0

  WaitResult wait();
 };

} // namespace Sys
} // namespace CCore

#endif
