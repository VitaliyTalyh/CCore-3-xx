/* Convert.cpp */
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

#include <inc/Convert.h>

#include <CCore/inc/scanf/ScanTools.h>

#include <CCore/inc/ForLoop.h>
#include <CCore/inc/Path.h>

namespace App {

/* class Book */

void Book::addSpan(StrLen str,StrLen fmt)
 {
  out.put(' ');

  if( spanind ) out.put(',');

  if( has_link )
    {
     if( !fmt )
       Printf(out,"{ #; , null , & #; }\n",PrintSpan(str),link);
     else
       Printf(out,"{ #; , & fmt_#;_#; , & #; }\n",PrintSpan(str),kind,fmt,link);
    }
  else
    {
     if( !fmt )
       Printf(out,"{ #; }\n",PrintSpan(str));
     else
       Printf(out,"{ #; , & fmt_#;_#; }\n",PrintSpan(str),kind,fmt);
    }

  spanind++;
 }

ulen Book::insFrame(const String &kind)
 {
  ulen ind=frames.getCount();

  frames.insLast(kind);

  if( Change(has_id,false) )
    {
     Printf(out,"Link link_#; = { & page , { #; } } ;\n\n",id,ind);

     id=Empty;
    }

  return ind;
 }

void Book::openLine()
 {
  out.put(' ');

  if( lineind ) out.put(',');

  Putobj(out,"{\n"_c);

  spanind=0;
 }

void Book::extLine(StrLen line,StrLen fmt)
 {
  out.put(' ');

  addSpan(line,fmt);
 }

void Book::breakLine()
 {
  closeLine();
  openLine();
 }

void Book::closeLine()
 {
  Putobj(out," }\n"_c);

  lineind++;
 }

Book::Book(PrintBase &out_,const PageParam &param_)
 : out(out_),
   param(param_),
   title("untitled"_str)
 {
  Printf(out,"scope #; {\n\n",param.name);
 }

Book::~Book()
 {
  Printf(out,"Page page = { \"#;\" ,\n{\n",PrintText(title));

  ulen ind = 0 ;

  frames.apply( [&] (const Frame &frame)
                    {
                     out.put(' ');

                     if( ind ) out.put(',');

                     Printf(out,"{ & b#; , null , inner_#; , outer_#; , back_#; }\n",ind,frame.kind,frame.kind,frame.kind);

                     ind++;

                    } );

  Printf(out,"} , NoColor , NoColor , #; , #; , #; };\n\n",PrintPtr(param.up),PrintPtr(param.prev),PrintPtr(param.next));

  Putobj(out,"Link link = { &page } ;\n\n"_c);

  Putobj(out,"}\n\n"_c);
 }

 // title

void Book::setTitle(const String &str)
 {
  title=str;
 }

 // text

void Book::openText(const String &kind)
 {
  ulen ind=insFrame(kind);

  Printf(out,"Text b#; = { {\n",ind);

  this->kind=kind;

  spanind=0;
 }

void Book::addText(StrLen frame,StrLen fmt)
 {
  for(;;)
    {
     SkipSpace(frame);

     if( !frame ) return;

     StrLen next=frame;

     SkipNonSpace(next);

     addSpan(frame.prefix(next),fmt);

     frame=next;
    }
 }

void Book::closeText()
 {
  Printf(out,"} , & fmt_#; , & align_#; } ;\n\n",kind,kind);
 }

 // fixed

void Book::openFixed(const String &kind)
 {
  ulen ind=insFrame(kind);

  Printf(out,"FixedText b#; = { {\n",ind);

  this->kind=kind;

  lineind=0;

  openLine();
 }

void Book::addFixed(StrLen frame,StrLen fmt)
 {
  while( +frame )
    {
     SplitLine split(frame);

     extLine(split.line,fmt);

     if( split.eol )
       {
        breakLine();
        frame=split.rest;
       }
     else
       {
        break;
       }
    }
 }

void Book::closeFixed()
 {
  closeLine();

  Printf(out,"} , & fmt_#; } ;\n\n",kind);
 }

 // list

void Book::openUList(const String &kind)
 {
  ulen ind=insFrame(kind);

  this->kind=kind;

  listind=ind;
  itemind=0;
 }

void Book::closeUList()
 {
  Printf(out,"TextList b#; = { {\n",listind);

  for(ulen i : IndLim(itemind) )
    {
     out.put(' ');

     if( i ) out.put(',');

     Printf(out,"{ '•' , { { & b#;_#; , null , ItemInner , ItemOuter } } }\n",listind,i);
    }

  Printf(out,"} } ;\n\n");
 }

void Book::openOList(const String &kind)
 {
  ulen ind=insFrame(kind);

  this->kind=kind;

  listind=ind;
  itemind=0;
 }

void Book::closeOList()
 {
  Printf(out,"TextList b#; = { {\n",listind);

  for(ulen i : IndLim(itemind) )
    {
     out.put(' ');

     if( i ) out.put(',');

     Printf(out,"{ '#;.' , { { & b#;_#; , null , ItemInner , ItemOuter } } }\n",i+1,listind,i);
    }

  Printf(out,"} } ;\n\n");
 }

void Book::openItem()
 {
  Printf(out,"Text b#;_#; = { {\n",listind,itemind);

  spanind=0;
 }

void Book::closeItem()
 {
  Printf(out,"} , & fmt_#; , & align_#; } ;\n\n",kind,kind);

  itemind++;
 }

 // image

void Book::insImage(const String &kind,StrLen file_name)
 {
  ulen ind=insFrame(kind);

  SplitFullExt split(file_name);

  Printf(out,"Bitmap b#; = { \"#;.zipmap\" } ;\n\n",ind,PrintText(split.name));
 }

 // links

void Book::setId(const String &id_)
 {
  id=id_;
  has_id=true;
 }

void Book::setLink(const String &url)
 {
  StrLen str=Range(url);

  if( !str ) return;

  if( *str=='#' )
    {
     ++str;

     link=StringCat("link_"_c,str);

     has_link=true;
    }
  else if( str.hasPrefix("page_"_c) )
    {
     StrLen name=str;

     for(; +name && *name!='#' ;++name);

     if( +name )
       {
        StrLen page=str.prefix(name);

        if( SkipSuffix(page,".html"_c) )
          {
           ++name;

           link=StringCat("..#"_c,page,"#link_"_c,name);

           has_link=true;
          }
       }
     else
       {
        StrLen page=str;

        if( SkipSuffix(page,".html"_c) )
          {
           link=StringCat("..#"_c,page,"#link"_c);

           has_link=true;
          }
       }
    }
 }

void Book::clearLink()
 {
  has_link=false;
 }

/* class Convert */

StrLen Convert::ToString(int code)
 {
  switch( code )
    {
     case Error_NoBlock : return "No opened text block"_c;

     case Error_BlockMismatch : return "Text block mismatch"_c;

     case Error_InBlock : return "Text block is opened"_c;

     case Error_NotList : return "Not a list"_c;

     case Error_NotItem : return "Not a list item"_c;

     case Error_ItemNotClosed : return "List item is not closed"_c;

     case Error_HasFmt : return "Format flag is active"_c;

     case Error_NoFmt : return "Format flag is not active"_c;

     default: return "???"_c;
    }
 }

auto Convert::noFormat() const -> TagErrorId
 {
  if( fmt_b ) return Error_HasFmt;
  if( fmt_i ) return Error_HasFmt;
  if( fmt_u ) return Error_HasFmt;
  if( fmt_sub ) return Error_HasFmt;
  if( fmt_sup ) return Error_HasFmt;
  if( fmt_span ) return Error_HasFmt;
  if( fmt_a ) return Error_HasFmt;

  return {};
 }

auto Convert::setFmt(bool &flag) -> TagErrorId
 {
  if( notOpened() ) return Error_NoBlock;

  if( flag ) return Error_HasFmt;

  flag=true;

  prepareFmt();

  return {};
 }

auto Convert::clearFmt(bool &flag) -> TagErrorId
 {
  if( !flag ) return Error_NoFmt;

  flag=false;

  prepareFmt();

  return {};
 }

bool Convert::TestSpace(StrLen str)
 {
  for(char ch : str ) if( !CharIsSpace(ch) ) return false;

  return true;
 }

void Convert::prepareFmt()
 {
  if( fmt_a )
    {
     fmt="a"_str;
    }
  else if( fmt_span )
    {
     fmt=spanclass;
    }
  else
    {
     char temp[3];
     unsigned len=0;

     if( fmt_b ) temp[len++]='b';

     if( fmt_i ) temp[len++]='i';

     if( fmt_u ) temp[len++]='u';

     if( len )
       fmt=StrLen(temp,len);
     else
       fmt=Empty;
    }
 }

StrLen Convert::getFmt() const
 {
  return Range(fmt);
 }

auto Convert::openText(BlockType bt,const String &kind) -> TagErrorId
 {
  if( block==NoBlock )
    {
     block=bt;

     book.openText(kind);

     return {};
    }

  return Error_InBlock;
 }

auto Convert::closeText(BlockType bt) -> TagErrorId
 {
  if( block==bt )
    {
     block=NoBlock;

     book.closeText();

     return noFormat();
    }

  return block?Error_BlockMismatch:Error_NoBlock;
 }

Convert::Convert(PrintBase &out,const PageParam &param)
 : book(out,param)
 {
 }

Convert::~Convert()
 {
 }

 // title

void Convert::setTitle(String str)
 {
  title=str;

  book.setTitle(str);
 }

 // id

void Convert::setId(String id)
 {
  book.setId(id);
 }

 // frame

auto Convert::frame(String str) -> TagErrorId
 {
  if( notOpened() && !TestSpace(Range(str)) ) return Error_NoBlock;

  if( inText() )
    {
     book.addText(Range(str),getFmt());
    }
  else if( inFixed() )
    {
     book.addFixed(Range(str),getFmt());
    }

  return {};
 }

 // text

auto Convert::tagH1() -> TagErrorId
 {
  return openText(Block_H1,"h1"_str);
 }

auto Convert::tagH1end() -> TagErrorId
 {
  return closeText(Block_H1);
 }

auto Convert::tagH2() -> TagErrorId
 {
  return openText(Block_H2,"h2"_str);
 }

auto Convert::tagH2end() -> TagErrorId
 {
  return closeText(Block_H2);
 }

auto Convert::tagH3() -> TagErrorId
 {
  return openText(Block_H3,"h3"_str);
 }

auto Convert::tagH3end() -> TagErrorId
 {
  return closeText(Block_H3);
 }

auto Convert::tagH4() -> TagErrorId
 {
  return openText(Block_H4,"h4"_str);
 }

auto Convert::tagH4end() -> TagErrorId
 {
  return closeText(Block_H4);
 }

auto Convert::tagH5() -> TagErrorId
 {
  return openText(Block_H5,"h5"_str);
 }

auto Convert::tagH5end() -> TagErrorId
 {
  return closeText(Block_H5);
 }

auto Convert::tagP() -> TagErrorId
 {
  return openText(Block_P,"text"_str);
 }

auto Convert::tagP(String tclass) -> TagErrorId
 {
  return openText(Block_P,"text_"_str+tclass);
 }

auto Convert::tagPend() -> TagErrorId
 {
  return closeText(Block_P);
 }

auto Convert::tagPRE() -> TagErrorId
 {
  if( block==NoBlock )
    {
     block=Block_PRE;

     book.openFixed("cpp"_str);

     return {};
    }

  return Error_InBlock;
 }

auto Convert::tagPREend() -> TagErrorId
 {
  if( block==Block_PRE )
    {
     block=NoBlock;

     book.closeFixed();

     return noFormat();
    }

  return block?Error_BlockMismatch:Error_NoBlock;
 }

 // format

auto Convert::tagB() -> TagErrorId
 {
  return setFmt(fmt_b);
 }

auto Convert::tagBend() -> TagErrorId
 {
  return clearFmt(fmt_b);
 }

auto Convert::tagI() -> TagErrorId
 {
  return setFmt(fmt_i);
 }

auto Convert::tagIend() -> TagErrorId
 {
  return clearFmt(fmt_i);
 }

auto Convert::tagU() -> TagErrorId
 {
  return setFmt(fmt_u);
 }

auto Convert::tagUend() -> TagErrorId
 {
  return clearFmt(fmt_u);
 }

auto Convert::tagSUB() -> TagErrorId
 {
  return setFmt(fmt_sub);
 }

auto Convert::tagSUBend() -> TagErrorId
 {
  return clearFmt(fmt_sub);
 }

auto Convert::tagSUP() -> TagErrorId
 {
  return setFmt(fmt_sup);
 }

auto Convert::tagSUPend() -> TagErrorId
 {
  return clearFmt(fmt_sup);
 }

auto Convert::tagSPAN(String sclass) -> TagErrorId
 {
  spanclass=sclass;

  return setFmt(fmt_span);
 }

auto Convert::tagSPANend() -> TagErrorId
 {
  return clearFmt(fmt_span);
 }

 // hyperlink

auto Convert::tagA(String url) -> TagErrorId
 {
  book.setLink(url);

  return setFmt(fmt_a);
 }

auto Convert::tagA(String,String) -> TagErrorId
 {
  return setFmt(fmt_a);
 }

auto Convert::tagAend() -> TagErrorId
 {
  book.clearLink();

  return clearFmt(fmt_a);
 }

 // list

auto Convert::tagOL() -> TagErrorId
 {
  if( block==NoBlock )
    {
     block=Block_OL;

     book.openOList("list"_str);

     return {};
    }

  return Error_InBlock;
 }

auto Convert::tagOLend() -> TagErrorId
 {
  if( item ) return Error_ItemNotClosed;

  if( block==Block_OL )
    {
     block=NoBlock;

     book.closeOList();

     return noFormat();
    }

  return block?Error_BlockMismatch:Error_NoBlock;
 }

auto Convert::tagUL() -> TagErrorId
 {
  if( block==NoBlock )
    {
     block=Block_UL;

     book.openUList("list"_str);

     return {};
    }

  return Error_InBlock;
 }

auto Convert::tagULend() -> TagErrorId
 {
  if( item ) return Error_ItemNotClosed;

  if( block==Block_UL )
    {
     block=NoBlock;

     book.closeUList();

     return noFormat();
    }

  return block?Error_BlockMismatch:Error_NoBlock;
 }

auto Convert::tagLI() -> TagErrorId
 {
  if( inList() && !item )
    {
     item=true;

     book.openItem();

     return {};
    }

  return Error_NotList;
 }

auto Convert::tagLIend() -> TagErrorId
 {
  if( inList() && item )
    {
     item=false;

     book.closeItem();

     return noFormat();
    }

  return Error_NotItem;
 }

 // image

auto Convert::tagImg(String file_name) -> TagErrorId
 {
  if( block ) return Error_InBlock;

  book.insImage("img"_str,Range(file_name));

  return {};
 }

 // complete

auto Convert::complete() -> TagErrorId
 {
  if( block ) return Error_InBlock;

  return {};
 }

} // namespace App

