/* main.cpp */
//----------------------------------------------------------------------------------------
//
//  Project: VMakeList 1.00
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2019 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#include <CCore/inc/Print.h>
#include <CCore/inc/Exception.h>

#include <inc/VMakeList.h>
#include <inc/Engine.h>

namespace App {

/* Main() */

int Main(StrLen src_file_name,StrLen dst_file_name)
 {
  DataFile data(src_file_name);

  Engine engine(data.getParam(),src_file_name,dst_file_name);

  return engine.run();
 }

} // namespace App

/* main() */

using namespace App;

int usage()
 {
  Putobj(Con,"Usage: CCore-VMakeList <src-file-name> <dst-file-name>\n");

  return 1;
 }

int main(int argc,const char * argv[])
 {
  try
    {
     ReportException report;

     int ret=0;

     {
      Putobj(Con,"--- VMakeList 1.00 ---\n--- Copyright (c) 2019 Sergey Strukov. All rights reserved. ---\n\n");

      if( argc!=3 ) return usage();

      ret=Main(argv[1],argv[2]);
     }

     report.guard();

     return ret;
    }
  catch(CatchType)
    {
     return 1;
    }
 }
