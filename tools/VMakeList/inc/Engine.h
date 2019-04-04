/* Engine.h */
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

#ifndef App_Engine_h
#define App_Engine_h

#include <inc/VMakeList.h>
#include <inc/Utils.h>

#include <CCore/inc/ElementPool.h>
#include <CCore/inc/Array.h>
#include <CCore/inc/Cmp.h>
#include <CCore/inc/Sort.h>
#include <CCore/inc/Path.h>
#include <CCore/inc/ForLoop.h>
#include <CCore/inc/DirTreeRun.h>
#include <CCore/inc/PrintStem.h>
#include <CCore/inc/String.h>
#include <CCore/inc/OptMember.h>

#include <CCore/inc/Print.h>

namespace App {

/* enum TargetType */

enum TargetType : int
 {
  TargetConsole = 1,
  TargetDesktop = 2,
  TargetLib     = 3,
  TargetCCore   = 4
 };

/* classes */

struct DDLString;

class FindFiles;

class FileList;

class Engine;

/* struct DDLString */

struct DDLString
 {
  StrLen str;

  explicit DDLString(StrLen str_) : str(str_) {}

  // print object

  static void PrintChar(PrinterType &out,char ch)
   {
    switch( ch )
      {
       case '\b' : out.put('\\'); out.put('b'); break;

       case '\t' : out.put('\\'); out.put('t'); break;

       case '\n' : out.put('\\'); out.put('n'); break;

       case '\v' : out.put('\\'); out.put('v'); break;

       case '\f' : out.put('\\'); out.put('f'); break;

       case '\r' : out.put('\\'); out.put('r'); break;

       case '"' : out.put('\\'); out.put('"'); break;

       case '\\' : out.put('\\'); out.put('\\'); break;

       default:
        {
         if( CharIsPrintable(ch) ) out.put(ch); else out.put(' ');
        }
      }
   }

  void print(PrinterType &out) const
   {
    for(char ch : str ) PrintChar(out,ch);
   }
 };

/* struct FileName */

struct FileName
 {
  StrLen path;
  StrLen name;

  FileName(StrLen path_,ulen name_len) : path(path_),name(path.suffix(name_len)) {}

  // operators

  bool operator < (FileName file) const { return StrLess(name,file.name); }

  bool operator == (FileName file) const { return name.equal(file.name); }
 };

/* class FindFiles */

class FindFiles : NoCopy
 {
   ElementPool pool;

  private:

   class Proc;

   void appendFile(StrLen path,StrLen name);

   void append(StrLen dir);

  public:

   Collector<FileName> cpp_list;
   Collector<FileName> asm_list;

   explicit FindFiles(PtrLen<DDL::MapText> dir_list);
 };

/* class FileList */

class FileList
 {
   DynArray<FileName> buf;

  private:

   static void Guard(FileName a,FileName b)
    {
     if( a==b )
       {
        Printf(Exception,"File name duplication: #; #;",a.path,b.path);
       }
    }

   static void Process(PtrLen<FileName> r)
    {
     Sort(r);

     for(; r.len>=2 ;++r) Guard(r[0],r[1]);
    }

  public:

   explicit FileList(Collector<FileName> &src)
    {
     src.extractTo(buf);
    }

   void process()
    {
     Process(Range(buf));
    }

   void apply(FuncArgType<ulen,FileName> func) const
    {
     auto r=Range(buf);

     for(ulen i : IndLim(r.len) ) func(i+1,r[i]);
    }
 };

/* class Engine */

class Engine : NoCopy
 {
   TypeDef::Param *param;

   StrLen root;
   StrLen target;
   TypeDef::Tools *tools;

   StrLen src_file_name;
   StrLen proj_file_name;
   StrLen prep_file_name;

   unsigned level = 100 ;

   RootDir root_dir;
   HomeDir home_dir;
   String def_target;
   String auto_root;

   OptMember<ToolFile> def_tools;

  private:

   template <class Func>
   static bool Walk(StrLen path,Func func);

   void prepareRoot();

   void prepareTarget();

   void prepareTools();

   static bool TestSingle(StrLen str);

   template <class Func>
   void printBy(PrinterType &out,Func func);

   template <FuncArgType<PrintBase &> Func>
   void printBy(PrinterType &out,Func func);

   void printVarExt(PrinterType &out,StrLen str);

   template <class FuncSrc,class FuncDst>
   void printVarExt(PrinterType &out,StrLen str,FuncSrc psrc,FuncDst pdst);

   template <class FuncSrc,class FuncDst,class FuncObj>
   void printVarExt(PrinterType &out,StrLen str,FuncSrc psrc,FuncDst pdst,FuncObj pobj);

   template <class ... TT>
   void printVar(PrinterType &out,StrLen str,TT ... tt);

   template <class ... TT>
   void printText(PrinterType &out,StrLen str,TT ... tt);

   void printDefText(PrinterType &out,StrLen name,StrLen str);

   template <class List,class ... TT>
   void printSubList(PrinterType &out,PrintFirst &stem,List list,TT ... tt);

   template <class Func>
   void printBy(PrinterType &out,PrintFirst &stem,Func func);

   template <FuncArgType<PrintBase &> Func>
   void printBy(PrinterType &out,PrintFirst &stem,Func func);

   template <class FuncSrc,class FuncDst>
   bool printSubExt(PrinterType &out,PrintFirst &stem,StrLen str,FuncSrc psrc,FuncDst pdst);

   template <class FuncSrc,class FuncDst,class FuncObj>
   bool printSubExt(PrinterType &out,PrintFirst &stem,StrLen str,FuncSrc psrc,FuncDst pdst,FuncObj pobj);

   template <class ... TT>
   bool printSub(PrinterType &out,PrintFirst &stem,StrLen str,TT ... tt);

   template <class List,class ... TT>
   void printList(PrinterType &out,List list,TT ... tt);

  private:

   void genProj(PrinterType &out,FileList &cpp_list,FileList &asm_list);

   void genPrep(PrinterType &out,FileList &cpp_list,FileList &asm_list);

  public:

   Engine(TypeDef::Param *param,StrLen src_file_name,StrLen proj_file_name,StrLen prep_file_name);

   ~Engine();

   int run();
 };

} // namespace App

#endif

