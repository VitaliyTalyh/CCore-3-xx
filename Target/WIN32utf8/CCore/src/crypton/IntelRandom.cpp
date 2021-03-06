/* IntelRandom.cpp */
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

#include <CCore/inc/crypton/IntelRandom.h>

#include <CCore/inc/crypton/IntelCPUID.h>

#include <CCore/inc/Exception.h>

namespace CCore {
namespace Crypton {

/* functions */

bool DetectIntelRDRAND()
 {
  IntelCPUID1 cpuid;

  return cpuid.capableRDRAND();
 }

void GuardIntelRDRANDNotAvailable()
 {
  Printf(Exception,"CCore::Crypton::IntelRandom::IntelRandom() : Intel RDRAND command is not available");
 }

/* class IntelRandom */

#if 0

 // Fake code

uint32 IntelRandom::next() noexcept
 {
  return 0;
 }

#endif

} // namespace Crypton
} // namespace CCore


