/* main.cpp */
//----------------------------------------------------------------------------------------
//
//  Project: Book Convertor 1.00
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2018 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#include <inc/Source.h>
#include <inc/Convert.h>
#include <inc/TagTest.h>

#include <CCore/inc/Exception.h>

#include <CCore/inc/FileSystem.h>
#include <CCore/inc/MakeFileName.h>
#include <CCore/inc/Path.h>
#include <CCore/inc/CompactList.h>

namespace App {

/* Main() */

int Main(StrLen input_dir_name,StrLen output_file_name)
 {
  FileSystem fs;
  FileSystem::DirCursor cur(fs,input_dir_name);

  PrintFile out(output_file_name);

  struct Rec
   {
    String name;
    String title;

    Rec(const String &name_,const String &title_) : name(name_),title(title_) {}
   };

  CompactList2<Rec> page_list;

  int ret=0;

  cur.apply( [&] (StrLen file_name,FileType file_type)
                 {
                  if( file_type==FileType_file && file_name.hasSuffix(".html"_c) )
                    {
                     MakeFileName path(input_dir_name,file_name);

                     SplitFullExt split(file_name);

                     Source src(path.get());

                     PageParam param;

                     param.name=split.name;

                     Convert convert(out,param);

                     if( !src.run(convert) )
                       {
                        Printf(Con,"@ #;\n",file_name);

                        ret=1;
                       }

                     page_list.insLast(param.name,convert.getTitle());
                    }

                 } );

  ulen ind=1;

  page_list.apply( [&] (const Rec &rec)
                       {
                        Printf(out,"Text item#; = { { { #.q; , null , &link#; } } , null , & align_item } ;\n\n",ind,rec.title,ind);

                        Printf(out,"Link link#; = { &#;##page } ;\n\n",ind,rec.name);

                        ind++;

                       } );

  Putobj(out,"TextList list = { {\n"_c);

  for(ulen i=0,count=page_list.getCount(); i<count ;i++)
    {
     ulen ind=i+1;

     out.put(' ');

     if( i ) out.put(',');

     Printf(out,"{ '#;.' , { { & item#; , null , { 0 , 0 } , { 0 , 0 } } } }",ind,ind);
    }

  Putobj(out,"} } ;\n\n"_c);

  return ret;
 }

/* Test() */

bool Test(StrLen dir,StrLen file_name)
 {
  MakeFileName path(dir,file_name);

  Source src(path.get());

  TagTest convert;

  return src.run(convert);
 }

/* Main() */

int Main()
 {
  FileSystem fs;

  StrLen dir="../../../html"_c;

  FileSystem::DirCursor cur(fs,dir);

  int ret=0;

  cur.apply( [&] (StrLen file_name,FileType file_type)
                 {
                  if( file_type==FileType_file && file_name.hasSuffix(".html"_c) )
                    {
                     if( !Test(dir,file_name) )
                       {
                        Printf(Con,"@ #;\n",file_name);

                        ret=1;
                       }
                    }

                 } );

  return ret;
 }

} // namespace App

/* main() */

using namespace App;

int main(int argc,const char *argv[])
 {
  try
    {
     ReportException report;

     int ret;

     {
      Putobj(Con,"--- Book Convertor 1.00 ---\n--- Copyright (c) 2018 Sergey Strukov. All rights reserved. ---\n\n");

      if( argc==1 )
        {
         ret=Main();
        }
      else if( argc==3 )
        {
         ret=Main(argv[1],argv[2]);
        }
      else
        {
         Putobj(Con,"Usage: Convertor <input-dir-name> <output-file-name>\n");

         return 1;
        }
     }

     report.guard();

     return ret;
    }
  catch(CatchType)
    {
     return 1;
    }
 }

