/* SysError.cpp */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 3.50
//
//  Tag: Target/LIN64utf8
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2015 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#include <CCore/inc/sys/SysError.h>

#include <CCore/inc/Utf8.h>

#include <string.h>
#include <errno.h>

namespace CCore {
namespace Sys {

/* private functions */

ErrorType NonNullError() noexcept
 {
  if( auto ret=errno ) return ErrorType(ret);

  return Error_SysErrorFault;
 }

/* struct ErrorDesc */

bool ErrorDesc::set(StrLen msg)
 {
  TrimUtf8End(msg);

  str=msg.ptr;
  len=msg.len;

  return true;
 }

bool ErrorDesc::setnone()
 {
  str=0;
  len=0;

  return false;
 }

bool ErrorDesc::init(ErrorType error,PtrLen<char> buf) noexcept
 {
  switch( error )
    {
     case Error_SysErrorFault : return set("System failed to report error"_c);

     case Error_Socket        : return set("System socket failure"_c);

     case Error_NoMem         : return set("No memory"_c);

     case Error_Running       : return set("Child process still running"_c);

     case Error_Spawn         : return set("Child process spawn/wait failed"_c);
    }

#if (_POSIX_C_SOURCE >= 200112L || _XOPEN_SOURCE >= 600) && ! _GNU_SOURCE

  if( strerror_r(error,buf.ptr,buf.len)==0 )
    {
     return set(buf.ptr);
    }
  else
    {
     return setnone();
    }

#else

  if( const char *msg=strerror_r(error,buf.ptr,buf.len) )
    {
     return set(msg);
    }
  else
    {
     return setnone();
    }

#endif
 }

} // namespace Sys
} // namespace CCore


