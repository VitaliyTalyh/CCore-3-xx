/* SysLaunchPath.cpp */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 3.01
//
//  Tag: Target/WIN32
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2017 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#include <CCore/inc/sys/SysLaunchPath.h>

#include <CCore/inc/win32/Win32.h>

namespace CCore {
namespace Sys {

/* struct LaunchPath */

LaunchPath::LaunchPath(char buf[MaxPathLen+1])
 {
  auto ret=Win32::GetModuleFileNameA(0,buf,MaxPathLen+1);

  if( !ret )
    {
     path=Null;
     error=NonNullError();
    }
  else if( ret>MaxPathLen )
    {
     path=Null;
     error=(ErrorType)Win32::ErrorSmallBuffer;
    }
  else
    {
     path=StrLen(buf,ret);
     error=NoError;
    }
 }

} // namespace Sys
} // namespace CCore

