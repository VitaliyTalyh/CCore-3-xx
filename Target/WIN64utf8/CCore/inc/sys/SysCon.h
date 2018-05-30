/* SysCon.h */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 2.00
//
//  Tag: Target/WIN64
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2015 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#ifndef CCore_inc_sys_SysCon_h
#define CCore_inc_sys_SysCon_h

#include <CCore/inc/sys/SysError.h>

#include <CCore/inc/TimeScope.h>

namespace CCore {
namespace Sys {

/* functions */

void ConWrite(StrLen str) noexcept;

/* classes */

struct ConRead;

/* struct ConRead */

struct ConRead
 {
  // public

  struct IOResult
   {
    ulen len;
    ErrorType error;
   };

  // private data

  using Type = long ;
  using ModeType = unsigned ;

  Type handle;
  ModeType modes;
  unsigned cp;

  // private

  struct InitType
   {
    Type handle;
    ModeType modes;
    unsigned cp;
    ErrorType error;
   };

  static InitType Init() noexcept;

  static ErrorType Exit(Type handle,ModeType modes,unsigned cp) noexcept;

  static IOResult Read(Type handle,char *buf,ulen len) noexcept;

  static IOResult Read(Type handle,char *buf,ulen len,MSec timeout) noexcept;

  // public

  ErrorType init()
   {
    InitType result=Init();

    handle=result.handle;
    modes=result.modes;
    cp=result.cp;

    return result.error;
   }

  ErrorType exit() { return Exit(handle,modes,cp); }

  IOResult read(char *buf,ulen len) { return Read(handle,buf,len); }

  IOResult read(char *buf,ulen len,MSec timeout) { return Read(handle,buf,len,timeout); }

  IOResult read(char *buf,ulen len,TimeScope time_scope)
   {
    auto timeout=time_scope.get();

    if( !timeout ) return {0,NoError};

    return read(buf,len,timeout);
   }
 };

} // namespace Sys
} // namespace CCore

#endif


