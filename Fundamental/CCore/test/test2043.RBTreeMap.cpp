/* test2043.RBTreeMap.cpp */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 2.00
//
//  Tag: Fundamental Mini
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2015 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#include <CCore/test/test.h>

#include <CCore/inc/TreeMap.h>
#include <CCore/inc/Timer.h>

namespace App {

namespace Private_2043 {

void test1()
 {
  RBTreeMap<int,int> map;

  for(int i=1; i<10 ;i++) map.find_or_add(i,i);

  map.applyIncr_const( [] (int key,int obj) { Printf(Con,"#; #;\n",key,obj); } );

  Putch(Con,'\n');

  map.applyDecr_const( [] (int key,int obj) { Printf(Con,"#; #;\n",key,obj); } );

  Putch(Con,'\n');
 }

template <class T>
void testMap()
 {
  T map;

  for(int i=1; i<10 ;i++) map.find_or_add(i,i);

  map.applyIncr( [] (int key,int obj) { Printf(Con,"#; #;\n",key,obj); } );

  Putch(Con,'\n');

  map.applyDecr( [] (int key,int obj) { Printf(Con,"#; #;\n",key,obj); } );

  Putch(Con,'\n');

  for(int i=1; i<10 ;i++)
    {
     Printf(Con,"#;\n",*map.find_const(i));
    }

  for(int i=1; i<10 ;i++)
    {
     auto result=map.find_or_add(i,-1);

     Printf(Con,"#; #;\n",*result.obj,result.new_flag);
    }

  Putch(Con,'\n');

  map.del(5);
  map.delMin();
  map.delMax();

  map.applyIncr( [] (int key,int obj) { Printf(Con,"#; #;\n",key,obj); } );

  Putch(Con,'\n');

  map.del(map.findMin_ptr(5));
  map.del(map.findMax_ptr_const(5));

  map.applyIncr( [] (int key,int obj) { Printf(Con,"#; #;\n",key,obj); } );

  Putch(Con,'\n');
 }

void test2()
 {
  testMap<RBTreeMap<int,int,int,NodePoolAllocator> >();
 }

void test3()
 {
  testMap<RadixTreeMap<unsigned,int> >();
 }

template <class T>
void testSpeed(StrLen name,ulen count)
 {
  T map;

  SecTimer timer;

  for(ulen i=0; i<count ;i++) map.find_or_add(i,i);

  Printf(Con,"#; : count = #; time = #; sec\n",name,count,timer.get());
 }

void test4(ulen count)
 {
  testSpeed<RBTreeMap<ulen,ulen,ulen,NodePoolAllocator> >("RBTree-pool",count);
 }

void test5(ulen count)
 {
  testSpeed<RadixTreeMap<ulen,ulen,NodePoolAllocator> >("RadixTree-pool",count);
 }

void test6(ulen count)
 {
  testSpeed<RBTreeMap<ulen,ulen> >("RBTree",count);
 }

void test7(ulen count)
 {
  testSpeed<RadixTreeMap<ulen,ulen> >("RadixTree",count);
 }

template <class T>
void testSwap()
 {
  T map;

  for(int i=1; i<10 ;i++) map.find_or_add(i,i);

  T map1;

  Swap(map,map1);

  int s=0;

  map1.applyIncr( [&s] (int,int i) { s+=i; } );

  Printf(Con,"#;\n",s);
 }

template <class T>
void testMove()
 {
  InitExitObject<T> init_obj;
  InitStorage<sizeof (T)> mem;

  init_obj.clean();
  init_obj.init();

  for(int i=1; i<10 ;i++) init_obj->find_or_add(i,i);

  T *map=Move(init_obj.getPtr(),mem.getPlace());

  T a(std::move(*map));

  for(int i=1; i<10 ;i++) map->find_or_add(i,i);

  *map=std::move(a);

  int s=0;

  map->applyIncr( [&s] (int,int i) { s+=i; } );

  Printf(Con,"#;\n",s);

  map->~T();
 }

void test8()
 {
  testSwap<RBTreeMap<ulen,ulen,ulen,NodePoolAllocator> >();
  testMove<RBTreeMap<ulen,ulen,ulen,NodePoolAllocator> >();
 }

void test9()
 {
  testSwap<RadixTreeMap<ulen,ulen,NodePoolAllocator> >();
  testMove<RadixTreeMap<ulen,ulen,NodePoolAllocator> >();
 }

void test10()
 {
  RadixTreeMap<unsigned,int> map;

  for(int i=1; i<10 ;i++) map.find_or_add(i,i);

  map.applyIncr_const( [] (int key,int obj) { Printf(Con,"#; #;\n",key,obj); } );

  Putch(Con,'\n');

  map.applyDecr_const( [] (int key,int obj) { Printf(Con,"#; #;\n",key,obj); } );

  Putch(Con,'\n');
 }

void test11()
 {
  RadixTreeMap<unsigned,int,NodePoolAllocator> map(KeyRange<unsigned>(1,16),5);

  for(int i=1; i<10 ;i++) map.find_or_add(i,i);

  map.applyIncr_const( [] (int key,int obj) { Printf(Con,"#; #;\n",key,obj); } );

  Putch(Con,'\n');

  map.applyDecr_const( [] (int key,int obj) { Printf(Con,"#; #;\n",key,obj); } );

  Putch(Con,'\n');
 }

} // namespace Private_2043

using namespace Private_2043;

/* Testit<2043> */

template<>
const char *const Testit<2043>::Name="Test2043 RBTreeMap";

template<>
bool Testit<2043>::Main()
 {
  //test1();
  //test2();
  //test3();
  //test4(20'000'000);
  //test5(20'000'000);
  //test6(20'000'000);
  //test7(20'000'000);
  //test8();
  //test9();
  //test10();
  //test11();

  return true;
 }

} // namespace App

