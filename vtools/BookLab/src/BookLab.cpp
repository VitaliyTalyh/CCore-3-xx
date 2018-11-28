/* BookLab.cpp */
//----------------------------------------------------------------------------------------
//
//  Project: BookLab 1.00
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2018 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#include <inc/BookLab.h>

#include <CCore/inc/CompactList.h>

#include <CCore/inc/Exception.h>
#include <CCore/inc/Print.h>

#include <CCore/inc/video/PrintDDL.h>

namespace App {
namespace BookLab {

/* test() */

#if 0

template <class T>
void testOne(ObjectDomain *domain)
 {
  static_assert( Has_keepAlive<T> ,"has keepAlive");

  ExtObjPtr<T> test(domain);
 }

template <class ... TT>
void testList(ObjectDomain *domain)
 {
  ( testOne<TT>(domain) , ... );
 }

void test(ObjectDomain *domain)
 {
  testList<Font,Format,SingleLine,DoubleLine,Frame,FrameList,Page,Element,ElementList,Defaults,
           Scope,Section,Bitmap,Collapse,Item,ItemList,TextList,Border,Cell,Table,Link,Span,TextLine,
           FixedText,OneLine,MultiLine,Text>(domain);
 }

#endif

/* name functions */

template <OneOfTypes<Char,char> Ch>
bool TestKeyword(PtrLen<const Ch> str)
 {
  if( !str ) return false;

  switch( str[0] )
    {
     case 'c' :
      {
       ++str;

       if( str.len==4 && str[0]=='o' && str[1]=='n' && str[2]=='s' && str[3]=='t' ) return true; else return false;
      }

     case 'i' :
      {
       ++str;

       if( !str ) return false;

       switch( str[0] )
         {
          case 'n' :
           {
            ++str;

            if( !str ) return false;

            switch( str[0] )
              {
               case 'c' :
                {
                 ++str;

                 if( str.len==4 && str[0]=='l' && str[1]=='u' && str[2]=='d' && str[3]=='e' ) return true; else return false;
                }

               case 't' :
                {
                 ++str;

                 if( str.len==0 ) return true; else return false;
                }

               default: return false;
              }
           }

          case 'p' :
           {
            ++str;

            if( str.len==0 ) return true; else return false;
           }

          default: return false;
         }
      }

     case 'n' :
      {
       ++str;

       if( str.len==3 && str[0]=='u' && str[1]=='l' && str[2]=='l' ) return true; else return false;
      }

     case 's' :
      {
       ++str;

       if( !str ) return false;

       switch( str[0] )
         {
          case 'c' :
           {
            ++str;

            if( str.len==3 && str[0]=='o' && str[1]=='p' && str[2]=='e' ) return true; else return false;
           }

          case 'i' :
           {
            ++str;

            if( !str ) return false;

            switch( str[0] )
              {
               case 'n' :
                {
                 ++str;

                 if( !str ) return false;

                 switch( str[0] )
                   {
                    case 't' :
                     {
                      ++str;

                      if( !str ) return true;

                      switch( str[0] )
                        {
                         case '1' :
                          {
                           ++str;

                           if( str.len==1 && str[0]=='6' ) return true; else return false;
                          }

                         case '3' :
                          {
                           ++str;

                           if( str.len==1 && str[0]=='2' ) return true; else return false;
                          }

                         case '6' :
                          {
                           ++str;

                           if( str.len==1 && str[0]=='4' ) return true; else return false;
                          }

                         case '8' :
                          {
                           ++str;

                           if( str.len==0 ) return true; else return false;
                          }

                         default: return false;
                        }
                     }

                    default: return false;
                   }
                }

               default: return false;
              }
           }

          case 't' :
           {
            ++str;

            if( str.len==4 && str[0]=='r' && str[1]=='u' && str[2]=='c' && str[3]=='t' ) return true; else return false;
           }

          default: return false;
         }
      }

     case 't' :
      {
       ++str;

       if( !str ) return false;

       switch( str[0] )
         {
          case 'e' :
           {
            ++str;

            if( str.len==2 && str[0]=='x' && str[1]=='t' ) return true; else return false;
           }

          case 'y' :
           {
            ++str;

            if( str.len==2 && str[0]=='p' && str[1]=='e' ) return true; else return false;
           }

          default: return false;
         }
      }

     case 'u' :
      {
       ++str;

       if( !str ) return false;

       switch( str[0] )
         {
          case 'i' :
           {
            ++str;

            if( !str ) return false;

            switch( str[0] )
              {
               case 'n' :
                {
                 ++str;

                 if( !str ) return false;

                 switch( str[0] )
                   {
                    case 't' :
                     {
                      ++str;

                      if( !str ) return true;

                      switch( str[0] )
                        {
                         case '1' :
                          {
                           ++str;

                           if( str.len==1 && str[0]=='6' ) return true; else return false;
                          }

                         case '3' :
                          {
                           ++str;

                           if( str.len==1 && str[0]=='2' ) return true; else return false;
                          }

                         case '6' :
                          {
                           ++str;

                           if( str.len==1 && str[0]=='4' ) return true; else return false;
                          }

                         case '8' :
                          {
                           ++str;

                           if( str.len==0 ) return true; else return false;
                          }

                         default: return false;
                        }
                     }

                    default: return false;
                   }
                }

               default: return false;
              }
           }

          case 'l' :
           {
            ++str;

            if( str.len==2 && str[0]=='e' && str[1]=='n' ) return true; else return false;
           }

          default: return false;
         }
      }

     default: return false;
    }
 }

bool IsNameFirst_char(char ch)
 {
  return PropTable::Object[ch]==CharNameFirst;
 }

bool IsNameNext_char(char ch)
 {
  return PropTable::Object[ch]>=CharNameFirst;
 }

bool TestName(StrLen text)
 {
  if( !text ) return false;

  if( !IsNameFirst_char(*text) ) return false;

  StrLen start=text;

  for(++text; +text && IsNameNext_char(*text) ;++text);

  return ( !text || IsNameBreak_char(*text) ) && !TestKeyword( start.prefix(text) ) ;
 }

bool IsNameFirst(Char ch)
 {
  int code=ToChar(ch);

  if( code<0 ) return false;

  return IsNameFirst_char((char)code);
 }

bool IsNameNext(Char ch)
 {
  int code=ToChar(ch);

  if( code<0 ) return false;

  return IsNameNext_char((char)code);
 }

bool TestName(PtrLen<const Char> text)
 {
  if( !text ) return false;

  if( !IsNameFirst(*text) ) return false;

  PtrLen<const Char> start=text;

  for(++text; +text && IsNameNext(*text) ;++text);

  return ( !text || IsNameBreak(*text) ) && !TestKeyword( start.prefix(text) ) ;
 }

/* class PropTable */

PropTable::PropTable()
 {
  setSet(GetCLetterChars(),CharNameFirst);
  setSet(GetDigitChars(),CharNameNext);
 }

PropTable PropTable::Object;

/* class NextIndex */

Index NextIndex::getIndex()
 {
  unsigned ret=next_index;

  if( !ret )
    {
     Printf(Exception,"App::BookLab::NextIndex::getIndex() : too many objects");
    }

  next_index++;

  return {ret};
 }

/* class TempData */

bool TempData::copy(Element *ptr,ModeType)
 {
  data.create<ExtObjPtr<Element> >(book.clone(ptr));

  return true;
 }

void TempData::past(Element *ptr,ElementList *list,ExtObjPtr<Element> obj)
 {
  ptr->ptr.getPtr().apply( [&] (auto *inner) { past(ptr,inner,list,obj); } );
 }

bool TempData::past(Element *ptr,ModeType mode)
 {
  if( ExtObjPtr<Element> *elem=data.getPtr().castPtr<ExtObjPtr<Element> >() )
    {
     if( ElementList *list=mode.castPtr<ElementList>() )
       {
        past(ptr,list,book.clone(elem->getPtr()));

        return true;
       }
    }

  return false;
 }

TempData::TempData(Book &book_)
 : book(book_)
 {
 }

TempData::~TempData()
 {
 }

StrLen TempData::getTypeName() const
 {
  StrLen ret;

  data.getPtr().apply( [&] (auto *ptr) { ret=GetTypeName(ptr); } );

  return ret;
 }

bool TempData::copy(Ref cursor)
 {
  bool ret=false;

  cursor.pad.apply( [&] (auto *ptr) { if( ptr ) ret=copy(ptr,cursor.mode); } );

  return ret;
 }

bool TempData::past(Ref cursor)
 {
  bool ret=false;

  cursor.pad.apply( [&] (auto *ptr) { if( ptr ) ret=past(ptr,cursor.mode); } );

  return ret;
 }

void TempData::del()
 {
  data.destroy();
 }

/* class Book::ScopeContext */

class Book::ScopeContext : NoCopy
 {
   unsigned level = 100 ;

  private:

   void subs(IntAnyObjPtr<Scope,Doc>,Font *)
    {
    }

   void subs(IntAnyObjPtr<Scope,Doc> scope,Format *ptr)
    {
     set(scope,ptr->font);
    }

   void subs(IntAnyObjPtr<Scope,Doc>,SingleLine *)
    {
    }

   void subs(IntAnyObjPtr<Scope,Doc>,DoubleLine *)
    {
    }

   void subs(IntAnyObjPtr<Scope,Doc> scope,Page *ptr)
    {
     set(scope,ptr->list);
    }

   void subs(IntAnyObjPtr<Scope,Doc> scope,Scope *ptr)
    {
     set(scope,ptr->defs);
     set(scope,ptr->list);
    }

   void subs(IntAnyObjPtr<Scope,Doc> scope,Section *ptr)
    {
     set(scope,ptr->list);
    }

   void subs(IntAnyObjPtr<Scope,Doc>,Bitmap *)
    {
    }

   void subs(IntAnyObjPtr<Scope,Doc> scope,Collapse *ptr)
    {
     set(scope,ptr->format);
     set(scope,ptr->list);
    }

   void subs(IntAnyObjPtr<Scope,Doc> scope,TextList *ptr)
    {
     set(scope,ptr->format);
     set(scope,ptr->list);
    }

   void subs(IntAnyObjPtr<Scope,Doc>,Border *)
    {
    }

   void subs(IntAnyObjPtr<Scope,Doc> scope,Cell *ptr)
    {
     set(scope,ptr->list);
    }

   void subs(IntAnyObjPtr<Scope,Doc> scope,Table *ptr)
    {
     set(scope,ptr->border);
     set(scope,ptr->table.cells);
    }

   void subs(IntAnyObjPtr<Scope,Doc> scope,Link *ptr)
    {
     set(scope,ptr->page);
    }

   void subs(IntAnyObjPtr<Scope,Doc> scope,FixedText *ptr)
    {
     set(scope,ptr->format);
     set(scope,ptr->list);
    }

   void subs(IntAnyObjPtr<Scope,Doc>,OneLine *)
    {
    }

   void subs(IntAnyObjPtr<Scope,Doc>,MultiLine *)
    {
    }

   void subs(IntAnyObjPtr<Scope,Doc> scope,Text *ptr)
    {
     set(scope,ptr->placement);
     set(scope,ptr->format);
     set(scope,ptr->list);
    }

  private:

   template <class T>
   void set(IntAnyObjPtr<Scope,Doc> scope,T *ptr)
    {
     LockUse lock(level);

     ptr->scope=scope;

     subs(scope,ptr);
    }

   template <class ... TT>
   void set(IntAnyObjPtr<Scope,Doc> scope,AnyPtr<TT...> anyptr)
    {
     anyptr.apply( [&] (auto *obj) { if( obj ) set(scope,obj); } );
    }

   template <class T>
   void set(IntAnyObjPtr<Scope,Doc> scope,IntObjPtr<T> ptr)
    {
     if( +ptr ) set(scope,ptr.getPtr());
    }

   void set(IntAnyObjPtr<Scope,Doc> scope,IntObjPtr<Scope> ptr)
    {
     if( +ptr )
       {
        LockUse lock(level);

        ptr->scope=scope;

        subs(ptr,ptr.getPtr());
       }
    }

   template <class ... TT>
   void set(IntAnyObjPtr<Scope,Doc> scope,IntAnyObjPtr<TT...> anyptr)
    {
     anyptr.apply( [&] (IntObjPtr<auto> ptr) { set(scope,ptr); } );
    }

  private:

   template <class ... TT>
   void set(IntAnyObjPtr<Scope,Doc> scope,NamedPtr<TT...> &obj)
    {
     if( obj.isAnonym() ) set(scope,obj.ptr.getPtr());
    }

   void set(IntAnyObjPtr<Scope,Doc> scope,Defaults &obj)
    {
     set(scope,obj.singleLine);
     set(scope,obj.doubleLine);
     set(scope,obj.collapseFormat);
     set(scope,obj.bulletFormat);
     set(scope,obj.border);
     set(scope,obj.textFormat);
     set(scope,obj.fixedFormat);
     set(scope,obj.placement);
    }

   void set(IntAnyObjPtr<Scope,Doc> scope,Element &obj)
    {
     set(scope,obj.ptr);
    }

   void set(IntAnyObjPtr<Scope,Doc> scope,Frame &obj)
    {
     set(scope,obj.line);
     set(scope,obj.body);
    }

   void set(IntAnyObjPtr<Scope,Doc> scope,Item &obj)
    {
     set(scope,obj.list);
    }

   void set(IntAnyObjPtr<Scope,Doc> scope,Span &span)
    {
     set(scope,span.format);
     set(scope,span.ref);
    }

   void set(IntAnyObjPtr<Scope,Doc> scope,TextLine &line)
    {
     set(scope,line.list);
    }

   template <OneOfTypes<ElementList,FrameList,ItemList> List>
   void set(IntAnyObjPtr<Scope,Doc> scope,List &list)
    {
     for(auto &obj : ForIntList(list) ) set(scope,obj);
    }

   template <class T>
   void set(IntAnyObjPtr<Scope,Doc> scope,DynArray<T> &list)
    {
     for(T &obj : list ) set(scope,obj);
    }

  public:

   ScopeContext() {}

   void set(IntObjPtr<Doc> ptr)
    {
     set(ptr,ptr->start);
     set(ptr,ptr->defs);
     set(ptr,ptr->list);
    }
 };

/* class Book */

void Book::setScope()
 {
  if( +doc )
    {
     ScopeContext ctx;

     ctx.set(doc);
    }
 }

template <class T>
NamedPtr<T> Book::clone(NamedPtr<T> obj)
 {
  if( +obj.ptr ) return {obj.name,clone(obj.ptr.getPtr())};

  return {obj.name};
 }

void Book::clone(FrameList &dst,FrameList &src) // TODO
 {
  Used(dst);
  Used(src);
 }

void Book::clone(ElementList &dst,ElementList &src) // TODO
 {
  Used(dst);
  Used(src);
 }

void Book::clone(ItemList &dst,ItemList &src) // TODO
 {
  Used(dst);
  Used(src);
 }

void Book::clone(Defaults &dst,Defaults &src) // TODO
 {
  Used(dst);
  Used(src);
 }

ExtObjPtr<Font> Book::clone(Font *ptr)
 {
  ExtObjPtr<Font> ret(domain);

  ret->open=ptr->open;
  ret->name=ptr->name;

  ret->face=ptr->face;
  ret->size=ptr->size;
  ret->bold=ptr->bold;
  ret->italic=ptr->italic;
  ret->strength=ptr->strength;

  return ret;
 }

ExtObjPtr<Format> Book::clone(Format *ptr)
 {
  ExtObjPtr<Format> ret(domain);

  ret->open=ptr->open;
  ret->name=ptr->name;

  ret->font=clone(ptr->font);
  ret->back=ptr->back;
  ret->fore=ptr->fore;
  ret->effect=ptr->effect;

  return ret;
 }

ExtObjPtr<SingleLine> Book::clone(SingleLine *ptr)
 {
  ExtObjPtr<SingleLine> ret(domain);

  ret->open=ptr->open;
  ret->name=ptr->name;

  ret->width=ptr->width;
  ret->line=ptr->line;

  return ret;
 }

ExtObjPtr<DoubleLine> Book::clone(DoubleLine *ptr)
 {
  ExtObjPtr<DoubleLine> ret(domain);

  ret->open=ptr->open;
  ret->name=ptr->name;

  ret->width=ptr->width;
  ret->gray=ptr->gray;
  ret->snow=ptr->snow;

  return ret;
 }

ExtObjPtr<Page> Book::clone(Page *ptr)
 {
  ExtObjPtr<Page> ret(domain);

  ret->open=ptr->open;
  ret->name=ptr->name;

  ret->title=ptr->title;
  ret->back=ptr->back;
  ret->fore=ptr->fore;

  ret->up.name=ptr->up.name;

  clone(ret->list,ptr->list);

  return ret;
 }

ExtObjPtr<Scope> Book::clone(Scope *ptr)
 {
  ExtObjPtr<Scope> ret(domain);

  ret->open=ptr->open;
  ret->name=ptr->name;

  clone(ret->defs,ptr->defs);
  clone(ret->list,ptr->list);

  return ret;
 }

ExtObjPtr<Section> Book::clone(Section *ptr)
 {
  ExtObjPtr<Section> ret(domain);

  ret->open=ptr->open;
  ret->comment=ptr->comment;

  clone(ret->list,ptr->list);

  return ret;
 }

ExtObjPtr<Bitmap> Book::clone(Bitmap *ptr)
 {
  ExtObjPtr<Bitmap> ret(domain);

  ret->name=ptr->name;
  ret->file_name=ptr->file_name;

  return ret;
 }

ExtObjPtr<Collapse> Book::clone(Collapse *ptr)
 {
  ExtObjPtr<Collapse> ret(domain);

  ret->open=ptr->open;
  ret->name=ptr->name;

  ret->title=ptr->title;
  ret->format=clone(ptr->format);
  ret->openlist=ptr->openlist;
  ret->hide=ptr->hide;

  clone(ret->list,ptr->list);

  return ret;
 }

ExtObjPtr<TextList> Book::clone(TextList *ptr)
 {
  ExtObjPtr<TextList> ret(domain);

  ret->open=ptr->open;
  ret->name=ptr->name;

  ret->format=clone(ptr->format);
  ret->bullet_space=ptr->bullet_space;
  ret->item_space=ptr->item_space;

  clone(ret->list,ptr->list);

  return ret;
 }

ExtObjPtr<Border> Book::clone(Border *ptr)
 {
  ExtObjPtr<Border> ret(domain);

  ret->open=ptr->open;
  ret->name=ptr->name;

  ret->space=ptr->space;
  ret->width=ptr->width;
  ret->line=ptr->line;

  return ret;
 }

ExtObjPtr<Cell> Book::clone(Cell *ptr)
 {
  ExtObjPtr<Cell> ret(domain);

  ret->open=ptr->open;
  ret->name=ptr->name;

  ret->span_x=ptr->span_x;
  ret->span_y=ptr->span_y;

  clone(ret->list,ptr->list);

  return ret;
 }

ExtObjPtr<Table> Book::clone(Table *ptr) // TODO
 {
  ExtObjPtr<Table> ret(domain);

  ret->open=ptr->open;
  ret->name=ptr->name;

  return ret;
 }

ExtObjPtr<Link> Book::clone(Link *ptr)
 {
  ExtObjPtr<Link> ret(domain);

  ret->open=ptr->open;
  ret->name=ptr->name;

  ret->page=clone(ptr->page);
  ret->index_list=ptr->index_list;

  return ret;
 }

ExtObjPtr<FixedText> Book::clone(FixedText *ptr) // TODO
 {
  ExtObjPtr<FixedText> ret(domain);

  ret->open=ptr->open;
  ret->name=ptr->name;

  return ret;
 }

ExtObjPtr<OneLine> Book::clone(OneLine *ptr)
 {
  ExtObjPtr<OneLine> ret(domain);

  ret->open=ptr->open;
  ret->name=ptr->name;

  ret->align=ptr->align;

  return ret;
 }

ExtObjPtr<MultiLine> Book::clone(MultiLine *ptr)
 {
  ExtObjPtr<MultiLine> ret(domain);

  ret->open=ptr->open;
  ret->name=ptr->name;

  ret->line_space=ptr->line_space;
  ret->first_line_space=ptr->first_line_space;

  return ret;
 }

ExtObjPtr<Text> Book::clone(Text *ptr) // TODO
 {
  ExtObjPtr<Text> ret(domain);

  ret->open=ptr->open;
  ret->name=ptr->name;

  return ret;
 }

template <class ... TT>
IntAnyObjPtr<TT...> Book::clone(AnyPtr<TT...> anyptr)
 {
  IntAnyObjPtr<TT...> ret;

  anyptr.apply( [&] (auto *ptr) { ret=clone(ptr); } );

  return ret;
 }

Book::Book()
 {
 }

Book::~Book()
 {
 }

void Book::blank()
 {
  doc=Null;
  linked=true;

  domain.collect();
 }

ExtObjPtr<Element> Book::clone(Element *ptr)
 {
  ExtObjPtr<Element> ret(domain);

  ret->ptr=clone(ptr->ptr.getPtr());

  return ret;
 }

ErrorText Book::link(PtrLen<char> ebuf) // TODO
 {
  PrintBuf eout(ebuf);
  ReportExceptionTo report(eout);

  try
    {
     Printf(Exception,"not implemented");

     return Success;
    }
  catch(CatchType)
    {
     return eout.close();
    }
 }

} // namespace BookLab
} // namespace App

