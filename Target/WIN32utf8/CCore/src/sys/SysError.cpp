/* SysError.cpp */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 3.50
//
//  Tag: Target/WIN32utf8
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2017 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#include <CCore/inc/sys/SysError.h>
#include <CCore/inc/sys/SysUtf8.h>

#include <CCore/inc/win32/Win32.h>

namespace CCore {
namespace Sys {

/* private functions */

ErrorType NonNullError() noexcept
 {
  if( auto ret=Win32::GetLastError() ) return ErrorType(ret);

  return Error_SysErrorFault;
 }

/* struct ErrorDesc */

bool ErrorDesc::set(StrLen msg)
 {
  str=msg.ptr;
  len=msg.len;

  return true;
 }

bool ErrorDesc::init(ErrorType error,PtrLen<char> buf) noexcept
 {
  switch( error )
    {
     case Error_SysErrorFault : return set("System failed to report a error"_c);

     case Error_Task          : return set("System cannot create a task"_c);

     case Error_Socket        : return set("System socket failure"_c);

     case Error_BrokenUtf8    : return set("Broken UTF8 argument"_c);

     case Error_Spawn         : return set("Child process spawn/wait failed"_c);

     case Error_Running       : return set("Child process still running"_c);
    }

  Win32::flags_t flags=Win32::FormatMessageFromSystem
                      |Win32::FormatMessageIgnoreInserts
                      |Win32::FormatMessageMaxWidthMask;

  WCharToUtf8<TextBufLen+1> temp;

  temp.len=Win32::FormatMessageW(flags,0,error,0,temp.buf,temp.Len,0);

  if( temp.len )
    {
     len=temp.truncate(buf);
     str=buf.ptr;

     return true;
    }
  else
    {
     str=0;
     len=0;

     return false;
    }
 }

} // namespace Sys
} // namespace CCore


