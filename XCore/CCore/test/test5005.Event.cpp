/* test5005.Event.cpp */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 2.00
//
//  Tag: XCore
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2016 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#include <CCore/test/test.h>
#include <CCore/test/testRun.h>

#include <CCore/inc/Abort.h>

namespace App {

namespace Private_5005 {

/* Wait...() */

bool Wait(Event &event)
 {
  event.wait();

  return true;
 }

bool WaitTimed(Event &event)
 {
  return event.wait(1_msec);
 }

/* class Data<Wait> */

template <bool Wait(Event &event)>
class Data : public Funchor_nocopy
 {
   static const ulen Num = 5       ;
   static const ulen Rep = 1000000 ;

  private:

   Event event;
   Atomic flag;
   Atomic shared;

   Atomic give;
   Atomic take;

  private:

   void trigger()
    {
     shared++;

     if( event.trigger() )
       give++;
     else
       shared--;
    }

   bool wait()
    {
     if( Wait(event) )
       {
        if( (shared--)==0 ) Abort("test failed");

        take++;

        return true;
       }

     return false;
    }

   void trigger_loop()
    {
     for(ulen rep=Rep; rep ;rep--) trigger();
    }

   void wait_loop()
    {
     ulen count=0;

     while( flag ) count+=wait();

     trigger();

     Printf(Con,"count = #;\n",count);
    }

   Function<void (void)> function_trigger_loop() { return FunctionOf(this,&Data::trigger_loop); }

   Function<void (void)> function_wait_loop() { return FunctionOf(this,&Data::wait_loop); }

   void stop()
    {
     flag=0;

     trigger();
    }

   Function<void (void)> function_stop() { return FunctionOf(this,&Data::stop); }

  public:

   Data() : event("TestEvent") { flag=1; }

   void run()
    {
     RunTask run_wait(function_stop());

     run_wait(Num,function_wait_loop());

     RunTask run_trigger;

     run_trigger(Num,function_trigger_loop());
    }

   void show(StrLen name)
    {
     Printf(Con,"#; : give = #; take = #;\n\n",name,give,take);
    }
 };

} // namespace Private_5005

using namespace Private_5005;

/* Testit<5005> */

template<>
const char *const Testit<5005>::Name="Test5005 Event";

template<>
bool Testit<5005>::Main()
 {
  {
   Data<Wait> data;

   data.run();

   data.show("Wait");
  }

  {
   Data<WaitTimed> data;

   data.run();

   data.show("Wait timed");
  }

  return true;
 }

} // namespace App

