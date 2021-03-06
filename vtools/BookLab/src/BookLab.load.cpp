/* BookLab.load.cpp */
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

#include <CCore/inc/ddl/DDLEngine.h>
#include <CCore/inc/ddl/DDLTypeSet.h>

#include <CCore/inc/FileName.h>
#include <CCore/inc/FileToMem.h>

#include <CCore/inc/Exception.h>

namespace App {
namespace BookLab {

#include "BookLab.TypeDef.gen.h"
#include "BookLab.TypeSet.gen.h"

/* struct Book::LoadType<T> */

template <>
struct Book::LoadType<TypeDef::Font> : Meta::DefType<Font> {};

template <>
struct Book::LoadType<TypeDef::Format> : Meta::DefType<Format> {};

template <>
struct Book::LoadType<TypeDef::SingleLine> : Meta::DefType<SingleLine> {};

template <>
struct Book::LoadType<TypeDef::DoubleLine> : Meta::DefType<DoubleLine> {};

template <>
struct Book::LoadType<TypeDef::Page> : Meta::DefType<Page> {};

template <>
struct Book::LoadType<TypeDef::Scope> : Meta::DefType<Scope> {};

template <>
struct Book::LoadType<TypeDef::Section> : Meta::DefType<Section> {};

template <>
struct Book::LoadType<TypeDef::Bitmap> : Meta::DefType<Bitmap> {};

template <>
struct Book::LoadType<TypeDef::Collapse> : Meta::DefType<Collapse> {};

template <>
struct Book::LoadType<TypeDef::TextList> : Meta::DefType<TextList> {};

template <>
struct Book::LoadType<TypeDef::Border> : Meta::DefType<Border> {};

template <>
struct Book::LoadType<TypeDef::Cell> : Meta::DefType<Cell> {};

template <>
struct Book::LoadType<TypeDef::Table> : Meta::DefType<Table> {};

template <>
struct Book::LoadType<TypeDef::Link> : Meta::DefType<Link> {};

template <>
struct Book::LoadType<TypeDef::FixedText> : Meta::DefType<FixedText> {};

template <>
struct Book::LoadType<TypeDef::OneLine> : Meta::DefType<OneLine> {};

template <>
struct Book::LoadType<TypeDef::MultiLine> : Meta::DefType<MultiLine> {};

template <>
struct Book::LoadType<TypeDef::Text> : Meta::DefType<Text> {};

template <>
struct Book::LoadType<TypeDef::Include> : Meta::DefType<Include> {};

template <>
struct Book::LoadType<TypeDef::Extern> : Meta::DefType<Extern> {};

#if 0

template <>
struct Book::LoadType<TypeDef::> : Meta::DefType<> {};

#endif

/* class Book::LoadContext */

class Book::LoadContext : NoCopy
 {
   ObjectDomain &domain;

   unsigned level = 100 ;

   struct Rec
    {
     IntObjPtr<Frame> *ptr;
     TypeDef::Frame *frame;
    };

   CompactList<Rec> recs;
   Collector<ExtObjPtr<Frame> > frames;

  private:

   void addFramePtr(IntObjPtr<Frame> &ptr,TypeDef::Frame *frame)
    {
     if( frame )
       {
        recs.ins(Rec{&ptr,frame});
       }
    }

   void addFrame(ExtObjPtr<Frame> ptr,TypeDef::Frame *frame)
    {
     ulen index=frames.getLen()+1;

     frames.append_copy(ptr);

     frame->ext=index;
    }

   void setLink(IntObjPtr<Frame> *ptr,TypeDef::Frame *frame,PtrLen<ExtObjPtr<Frame> > frame_list)
    {
     if( ulen index=frame->ext )
       {
        (*ptr)=frame_list[index-1];
       }
    }

   void setLinks()
    {
     auto frame_list=frames.flat();

     recs.apply( [&] (Rec rec) { setLink(rec.ptr,rec.frame,frame_list); } );
    }

  private:

   template <OneOfTypes<VColor,Coord,Effect,Align,bool,Strength,ulen,String> T,class S>
   static void Cast(T &ret,S obj)
    {
     ret=T(obj);
    }

   template <class S>
   static void Cast(Point &ret,S obj)
    {
     Cast(ret.x,obj.x);
     Cast(ret.y,obj.y);
    }

   template <class S>
   static void Cast(Ratio &ret,S obj)
    {
     Cast(ret.a,obj.a);
     Cast(ret.b,obj.b);
    }

   template <class T,class S>
   static void Cast(OptDataBase<T> &ret,const S &obj)
    {
     Cast(ret.data,obj.data);

     ret.def=obj.def;
    }

   template <class T,class S>
   static void Cast(DynArray<T> &ret,const S &obj)
    {
     auto r=obj.getRange();

     auto *out=ret.extend_default(r.len).ptr;

     for(ulen i : IndLim(r.len) ) Cast(out[i],r[i]);
    }

   template <class T,class S>
   static void Cast(RefArray<T> &ret,const S &obj)
    {
     auto r=obj.getRange();

     auto *out=ret.extend_default(r.len).ptr;

     for(ulen i : IndLim(r.len) ) Cast(out[i],r[i]);
    }

   static void GuardName(StrLen name)
    {
     if( +name && !TestName(name) )
       {
        Printf(Exception,"App::BookLab::Book::load(...) : bad object name #.q;",name);
       }
    }

   template <class S>
   static void CastName(String &ret,S obj)
    {
     GuardName(obj.getStr());

     ret=String(obj);
    }

  private:

   void init(Font *ret,const TypeDef::Font *ptr)
    {
     CastName(ret->name,ptr->name);
     Cast(ret->open,ptr->open);

     Cast(ret->face,ptr->face);
     Cast(ret->size,ptr->size);
     Cast(ret->bold,ptr->bold);
     Cast(ret->italic,ptr->italic);
     Cast(ret->strength,ptr->strength);
    }

   void init(Format *ret,const TypeDef::Format *ptr)
    {
     CastName(ret->name,ptr->name);
     Cast(ret->open,ptr->open);

     Cast(ret->back,ptr->back);
     Cast(ret->fore,ptr->fore);
     Cast(ret->effect,ptr->effect);

     cast(ret->font,ptr->font);
    }

   void init(SingleLine *ret,const TypeDef::SingleLine *ptr)
    {
     CastName(ret->name,ptr->name);
     Cast(ret->open,ptr->open);

     Cast(ret->width,ptr->width);
     Cast(ret->line,ptr->line);
    }

   void init(DoubleLine *ret,const TypeDef::DoubleLine *ptr)
    {
     CastName(ret->name,ptr->name);
     Cast(ret->open,ptr->open);

     Cast(ret->width,ptr->width);
     Cast(ret->gray,ptr->gray);
     Cast(ret->snow,ptr->snow);
    }

   void init(ExtObjPtr<Frame> ret,TypeDef::Frame &obj)
    {
     Cast(ret->inner,obj.inner);
     Cast(ret->outer,obj.outer);
     Cast(ret->col,obj.col);

     cast(ret->line,obj.line);
     cast(ret->body,obj.body);

     addFrame(ret,&obj);
    }

   void init(Page *ret,const TypeDef::Page *ptr)
    {
     CastName(ret->name,ptr->name);
     Cast(ret->open,ptr->open);

     Cast(ret->title,ptr->title);
     Cast(ret->back,ptr->back);
     Cast(ret->fore,ptr->fore);

     Cast(ret->up.name,ptr->up.name);
     Cast(ret->prev.name,ptr->prev.name);
     Cast(ret->next.name,ptr->next.name);

     cast(ret->list,ptr->list);
    }

   void init(Element *ret,const TypeDef::Element &obj)
    {
     create(ret->ptr,obj);
    }

   void init(Scope *ret,const TypeDef::Scope *ptr)
    {
     CastName(ret->name,ptr->name);
     Cast(ret->open,ptr->open);

     cast(ret->defs,ptr->defs);
     cast(ret->list,ptr->list);
    }

   void init(Section *ret,const TypeDef::Section *ptr)
    {
     Cast(ret->open,ptr->open);

     Cast(ret->comment,ptr->comment);

     cast(ret->list,ptr->list);
    }

   void init(Bitmap *ret,const TypeDef::Bitmap *ptr)
    {
     CastName(ret->name,ptr->name);

     Cast(ret->file_name,ptr->file_name);
    }

   void init(Collapse *ret,const TypeDef::Collapse *ptr)
    {
     CastName(ret->name,ptr->name);
     Cast(ret->open,ptr->open);

     Cast(ret->title,ptr->title);
     Cast(ret->openlist,ptr->openlist);
     Cast(ret->hide,ptr->hide);

     cast(ret->format,ptr->format);
     cast(ret->list,ptr->list);
    }

   void init(Item *ret,const TypeDef::Item &obj)
    {
     Cast(ret->bullet,obj.bullet);

     cast(ret->list,obj.list);
    }

   void init(TextList *ret,const TypeDef::TextList *ptr)
    {
     CastName(ret->name,ptr->name);
     Cast(ret->open,ptr->open);

     Cast(ret->bullet_space,ptr->bullet_space);
     Cast(ret->item_space,ptr->item_space);

     cast(ret->format,ptr->format);

     Cast(ret->frame_inner,ptr->frame_inner);
     Cast(ret->frame_outer,ptr->frame_outer);

     cast(ret->text_format,ptr->text_format);
     cast(ret->placement,ptr->placement);

     cast(ret->list,ptr->list);
    }

   void init(Border *ret,const TypeDef::Border *ptr)
    {
     CastName(ret->name,ptr->name);
     Cast(ret->open,ptr->open);

     Cast(ret->space,ptr->space);
     Cast(ret->width,ptr->width);
     Cast(ret->line,ptr->line);
    }

   void init(Cell *ret,const TypeDef::Cell *ptr)
    {
     CastName(ret->name,ptr->name);
     Cast(ret->open,ptr->open);

     Cast(ret->span_x,ptr->span_x);
     Cast(ret->span_y,ptr->span_y);

     cast(ret->list,ptr->list);
    }

   void init(Table *ret,const TypeDef::Table *ptr)
    {
     CastName(ret->name,ptr->name);
     Cast(ret->open,ptr->open);

     Cast(ret->hard,ptr->hard);
     Cast(ret->table.width,ptr->width);

     cast(ret->border,ptr->border);
     cast(ret->table.cells,ptr->table);
    }

   void init(Link *ret,const TypeDef::Link *ptr)
    {
     CastName(ret->name,ptr->name);
     Cast(ret->open,ptr->open);

     addFramePtr(ret->frame,ptr->frame);
    }

   void init(FixedText *ret,const TypeDef::FixedText *ptr)
    {
     CastName(ret->name,ptr->name);
     Cast(ret->open,ptr->open);

     cast(ret->format,ptr->format);
     cast(ret->list,ptr->list);
    }

   void init(OneLine *ret,const TypeDef::OneLine *ptr)
    {
     CastName(ret->name,ptr->name);
     Cast(ret->open,ptr->open);

     Cast(ret->align,ptr->align);
    }

   void init(MultiLine *ret,const TypeDef::MultiLine *ptr)
    {
     CastName(ret->name,ptr->name);
     Cast(ret->open,ptr->open);

     Cast(ret->line_space,ptr->line_space);
     Cast(ret->first_line_space,ptr->first_line_space);
    }

   void init(Text *ret,const TypeDef::Text *ptr)
    {
     CastName(ret->name,ptr->name);
     Cast(ret->open,ptr->open);

     cast(ret->placement,ptr->placement);
     cast(ret->format,ptr->format);
     cast(ret->list,ptr->list);
    }

   void init(Include *ret,const TypeDef::Include *ptr)
    {
     Cast(ret->file_name,ptr->file_name);
    }

   void init(Extern *ret,const TypeDef::Extern *ptr)
    {
     create(ret->ptr,ptr->ptr);
    }

  private:

   template <class T,class S>
   void create(IntObjPtr<T> &ret,const S &obj)
    {
     if( +obj )
       {
        LockUse lock(level);

        ret.create(domain);

        init(ret.getPtr(),obj.getPtr());
       }
    }

   template <class S,class ... TT>
   void createPtr(IntAnyObjPtr<TT...> &ret,const S *ptr)
    {
     using T=typename LoadType<S>::Ret;

     if( +ptr )
       {
        LockUse lock(level);

        ExtObjPtr<T> temp(domain);

        ret=temp;

        init(temp.getPtr(),ptr);
       }
    }

   template <class S,class ... TT>
   void create(IntAnyObjPtr<TT...> &ret,const S &obj)
    {
     auto anyptr=obj.getPtr();

     anyptr.apply( [&] (auto *ptr) { createPtr(ret,ptr); } );
    }

  private:

   template <class T,class S>
   void cast(DynArray<T> &ret,const S &obj)
    {
     auto r=obj.getRange();

     auto *out=ret.extend_default(r.len).ptr;

     for(ulen i : IndLim(r.len) ) cast(out[i],r[i]);
    }

   template <class S,class ... TT>
   void cast(NamedPtr<TT...> &ret,const S &obj)
    {
     Cast(ret.name,obj.name);

     if( !Range(ret.name) ) create(ret.ptr,obj.ptr);
    }

   void cast(FrameList &ret,const TypeDef::FrameList &obj)
    {
     LockUse lock(level);

     auto list=obj.list.getRange();

     for(ulen i : IndLim(list.len) )
       {
        ExtObjPtr<Frame> elem(domain);

        init(elem,list[i]);

        ret.append(elem);

        if( i==obj.cur ) ret.cur=elem;
       }

     if( !ret.cur ) ret.cur=ret.beg;
    }

   void cast(ItemList &ret,const TypeDef::ItemList &obj)
    {
     LockUse lock(level);

     auto list=obj.list.getRange();

     for(ulen i : IndLim(list.len) )
       {
        ExtObjPtr<Item> elem(domain);

        init(elem.getPtr(),list[i]);

        ret.append(elem);

        if( i==obj.cur ) ret.cur=elem;
       }

     if( !ret.cur ) ret.cur=ret.beg;
    }

   void cast(ElementList &ret,PtrLen<TypeDef::Element> list)
    {
     LockUse lock(level);

     for(const auto &obj : list )
       {
        ExtObjPtr<Element> elem(domain);

        init(elem.getPtr(),obj);

        ret.append(elem);
       }
    }

   void cast(Defaults &ret,const TypeDef::Defaults &obj)
    {
     Cast(ret.inner,obj.inner);
     Cast(ret.outer,obj.outer);
     Cast(ret.bulletSpace,obj.bulletSpace);
     Cast(ret.itemSpace,obj.itemSpace);

     create(ret.collapseFormat,obj.collapseFormat);
     create(ret.bulletFormat,obj.bulletFormat);
     create(ret.border,obj.border);
     create(ret.textFormat,obj.textFormat);
     create(ret.fixedFormat,obj.fixedFormat);
     create(ret.placement,obj.placement);
    }

   void cast(Span &ret,const TypeDef::Span &obj)
    {
     Cast(ret.body,obj.body);
     cast(ret.format,obj.format);
     cast(ret.ref,obj.ref);
    }

   void cast(TextLine &ret,const TypeDef::TextLine &obj)
    {
     cast(ret.list,obj);
    }

  public:

   explicit LoadContext(ObjectDomain &domain_) : domain(domain_) {}

   ExtObjPtr<Doc> process(const TypeDef::Doc *doc)
    {
     ExtObjPtr<Doc> ret(domain,domain);

     Cast(ret->title,doc->title);
     Cast(ret->back,doc->back);
     Cast(ret->fore,doc->fore);

     cast(ret->start,doc->start);
     cast(ret->defs,doc->defs);
     cast(ret->list,doc->list);

     setLinks();

     return ret;
    }
 };

/* class Book */

StrLen Book::Pretext()
 {
  return

#include "BookLab.Pretext.gen.h"

  ""_c;
 }

ErrorText Book::load(StrLen file_name,PtrLen<char> ebuf)
 {
  PrintBuf eout(ebuf);
  ReportExceptionTo report(eout);

  try
    {
     DDL::FileEngine<FileName,FileToMem> engine(eout);

     auto result=engine.process(file_name,Pretext());

     if( !result )
       {
        Printf(eout,"\n@ #.q;",file_name);

        return eout.close();
       }

     DDL::TypedMap<TypeSet> map(result);
     MemAllocGuard guard(map.getLen());

     map(guard);

     if( TypeDef::Doc *doc_=map.findConst<TypeDef::Doc>("Data"_c) )
       {
        LoadContext ctx(domain);

        doc=ctx.process(doc_);

        linked=false;
       }
     else
       {
        Printf(Exception,"App::BookLab::Book::load(...) : cannot find document data");
       }

     report.guard();

     return Success;
    }
  catch(CatchType)
    {
     blank();

     Printf(eout,"\n@ #.q;",file_name);

     return eout.close();
    }
 }

} // namespace BookLab
} // namespace App

