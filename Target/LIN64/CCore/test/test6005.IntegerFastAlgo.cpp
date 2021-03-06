/* test6005.IntegerFastAlgo.cpp */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 2.00
//
//  Tag: Target/LIN64
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2015 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#include <CCore/test/test.h>
#include <CCore/test/testInt.h>
#include <CCore/test/testIntAlgo.h>

#include <CCore/inc/math/IntegerFastAlgo.h>

namespace App {

namespace Private_6005 {

/* types */

using Fast = Math::IntegerFastAlgo ;

using Slow = Math::IntegerSlowAlgo<Fast::Unit> ;

} // namespace Private_6005

using namespace Private_6005;

/* Testit<6005> */

template<>
const char *const Testit<6005>::Name="Test6005 IntegerFastAlgo";

template<>
bool Testit<6005>::Main()
 {
  TestIntegerAlgo<Fast>().run(1000);

  TestIntegerAlgo2<Fast,Slow>().run(1000);

  TestInteger<Fast>().run(1000);

  return true;
 }

} // namespace App

