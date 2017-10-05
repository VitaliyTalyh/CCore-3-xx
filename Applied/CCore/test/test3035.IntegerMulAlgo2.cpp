/* test3035.IntegerMulAlgo2.cpp */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 3.50
//
//  Tag: Applied
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2017 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#include <CCore/test/test.h>

#include <CCore/inc/PlatformRandom.h>
#include <CCore/inc/Timer.h>
#include <CCore/inc/String.h>

#include <CCore/inc/math/IntegerMulAlgo.h>
#include <CCore/inc/math/IntegerFastAlgo.h>

#include <math.h>
#include <gmp.h>

#define mpn_mul_basecase __MPN(mul_basecase)
extern "C" __GMP_DECLSPEC void mpn_mul_basecase (mp_ptr, mp_srcptr, mp_size_t, mp_srcptr, mp_size_t);

namespace App {

namespace Private_3035 {

/* classes */

template <class Algo> class TestIntegerSpeed;

/* class TestIntegerSpeed<Algo> */

template <class Algo>
class TestIntegerSpeed
 {
   using Unit = typename Algo::Unit ;

   static constexpr ulen Len = 300 ;
   static constexpr unsigned Rep = 100 ;
   static constexpr unsigned Rep2 = 10 ;

   using Stat = TimeStat<ClockTimer::ValueType> ;

  private:

   PlatformRandom gen;

   Unit a[Len];
   Unit b[Len];
   Unit c[2*Len];

   Stat table[Len+1];

  private:

   TestIntegerSpeed() {}

   void fill(PtrLen<Unit> r) { gen.fill(r); }

  private:

   void funcUMul(ulen n,ulen m) CCORE_NOINLINE
    {
     Algo::UMul(c,a,n,b,m);
    }

   Stat testUMul(ulen n,ulen m)
    {
     Stat stat;

     for(unsigned cnt=Rep; cnt ;cnt--)
       {
        fill(Range(a,n));
        fill(Range(b,m));

        ClockTimer timer;

        for(unsigned cnt=Rep2; cnt ;cnt--) funcUMul(n,m);

        stat.add(timer.get());
       }

     return stat;
    }

  private:

   template <class P>
   void showStat(P &&out)
    {
     for(ulen n=1; n<=Len ;n++)
       {
        Stat stat=table[n];

        stat.div(Rep2);

        if( n>=4 )
          Printf(out,"n = #; #; best/(n*log(n)*log(log(n))) = #;\n",n,stat,int( stat.getMin()/(n*log2(n)*log2(log2(n))) ));
        else
          Printf(out,"n = #; #;\n",n,stat);
       }
    }

   template <class P>
   void show(P &&out,StrLen title)
    {
     Printf(out,"#;\n",Title(title));

     showStat(out);
    }

   template <class P>
   void run(P &&out,StrLen title)
    {
     Printf(out,"#;\n\n",Title(title));

     for(ulen n=1; n<=Len ;n++)
       {
        table[n]=testUMul(n,n);
       }

     show(out,"UMul");

     Printf(out,"\n#;\n\n",TextDivider());
    }

  public:

   template <class P>
   static void Run(P &&out,StrLen title)
    {
     TestIntegerSpeed<Algo> obj;

     obj.run(out,title);
    }
 };

/* struct GMPAlgo */

struct GMPAlgo
 {
  // types and consts

  using Unit = mp_limb_t ;

  // multiplicative operators

  static void UMul(Unit *restrict c,const Unit *a,ulen na,const Unit *b,ulen nb) // nc==na+nb
   {
    if( na<nb )
      {
       Swap(a,b);
       Swap(na,nb);
      }

    if( nb==0 )
      {
       return;
      }

    mpn_mul(c,a,na,b,nb);
   }
 };

/* struct Base */

struct Base : Math::IntegerFastAlgo
 {
  static constexpr ulen Toom22Min = 28 ;
  static constexpr ulen Toom33Min = 200 ;
  static constexpr ulen Toom44Min = 10000 ;
  static constexpr ulen Toom55Min = 10000 ;
  static constexpr ulen Toom66Min = 10000 ;
  static constexpr ulen Toom77Min = 10000 ;
  static constexpr ulen Toom88Min = 10000 ;
  static constexpr ulen FFTMin    = 10000 ;

  static void RawUMul(Unit *restrict c,const Unit *a,const Unit *b,ulen nab)
   {
    if( nab==0 ) return;

    mpn_mul_basecase((mp_limb_t *)c,(const mp_limb_t *)a,nab,(const mp_limb_t *)b,nab);
   }

  struct DivMod3
   {
    Unit div;
    Unit mod;

    DivMod3(Unit hi,Unit lo)
     {
      div=lo/3;
      mod=lo%3;

      switch( hi )
        {
         case 0 : return;

         case 1 :
          {
           div+=0x5555'5555;

           mod+=1;
          }
         break;

         case 2 :
          {
           div+=0xAAAA'AAAA;

           mod+=2;
          }
         break;
        }

      if( mod>=3 )
        {
         mod-=3;
         div++;
        }
     }
   };

  static void UDiv3(Unit *a,ulen na)
   {
    Unit hi=0;

    for(; na ;na--)
      {
       Unit lo=a[na-1];

       DivMod3 result(hi,lo);

       a[na-1]=result.div;

       hi=result.mod;
      }
   }
 };

using FastAlgo = Math::FastMulAlgo<Base> ;

} // namespace Private_3035

using namespace Private_3035;

/* Testit<3035> */

template<>
const char *const Testit<3035>::Name="Test3035 IntegerMulAlgo2";

template<>
bool Testit<3035>::Main()
 {
  TaskMemStack tms(64_KByte);

  PrintFile out("test3035.txt");

  TestIntegerSpeed<FastAlgo>::Run(out,"FastAlgo");
  TestIntegerSpeed<GMPAlgo>::Run(out,"GMPAlgo");

  return true;
 }

} // namespace App

