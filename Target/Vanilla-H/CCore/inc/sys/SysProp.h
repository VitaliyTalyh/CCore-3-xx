/* SysProp.h */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 2.00
//
//  Tag: Target/Vanilla-H
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2015 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#ifndef CCore_inc_sys_SysProp_h
#define CCore_inc_sys_SysProp_h

namespace CCore {
namespace Sys {

/* functions */

unsigned GetCpuCount() noexcept;

unsigned GetSpinCount() noexcept;

} // namespace Sys
} // namespace CCore

#endif


