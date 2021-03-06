/* BookLab.save.cpp */
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

/* namespace SaveAdapter */

namespace SaveAdapter {

template <class T> struct Adapter;

template <>
struct Adapter<Index>
 {
  Index data;

  explicit Adapter(Index obj) : data(obj) {}

  void print(PrinterType &out) const
   {
    Printf(out,"o#;",data.index);
   }
 };

template <>
struct Adapter<String>
 {
  DDLPrintableString data;

  explicit Adapter(const String &obj) : data(obj) {}

  void print(PrinterType &out) const
   {
    Putobj(out,data);
   }
 };

template <>
struct Adapter<bool>
 {
  bool data;

  explicit Adapter(bool obj) : data(obj) {}

  void print(PrinterType &out) const
   {
    Putobj(out,DDLBool(data));
   }
 };

template <OneOfTypes<Coord,Strength,ulen> T>
struct Adapter<T>
 {
  T data;

  explicit Adapter(T obj) : data(obj) {}

  void print(PrinterType &out) const
   {
    Putobj(out,data);
   }
 };

template <>
struct Adapter<Effect>
 {
  Effect data;

  explicit Adapter(Effect obj) : data(obj) {}

  void print(PrinterType &out) const
   {
    Putobj(out,(uint8)data);
   }
 };

template <>
struct Adapter<Align>
 {
  Align data;

  explicit Adapter(Align obj) : data(obj) {}

  void print(PrinterType &out) const
   {
    Putobj(out,(uint8)data);
   }
 };

template <>
struct Adapter<VColor>
 {
  VColor data;

  explicit Adapter(VColor obj) : data(obj) {}

  void print(PrinterType &out) const
   {
    if( data==NoColor )
      Putobj(out,"NoColor"_c);
    else
      Printf(out,"0#.h;",(uint32)data);
   }
 };

template <>
struct Adapter<Point>
 {
  Point data;

  explicit Adapter(Point obj) : data(obj) {}

  void print(PrinterType &out) const
   {
    Printf(out,"{ #; , #; }",data.x,data.y);
   }
 };

template <>
struct Adapter<Ratio>
 {
  Ratio data;

  explicit Adapter(Ratio obj) : data(obj) {}

  void print(PrinterType &out) const
   {
    Printf(out,"{ #; , #; }",data.a,data.b);
   }
 };

template <class T,auto Def>
struct Adapter<OptData<T,Def> >
 {
  T data;
  bool def;

  explicit Adapter(const OptData<T,Def> &obj) : data(obj.data),def(obj.def) {}

  void print(PrinterType &out) const
   {
    Printf(out,"{ #; , #; }",DDLBool(def), Adapter<T>(data) );
   }
 };

template <class ... TT>
void AdaptPrintf(PrinterType &out,const char *format,const TT & ... tt)
 {
  Printf(out,format,Adapter<TT>(tt)...);
 }

template <class Ctx,class T>
struct Adapter<BindCtx<Ctx,NamedPtr<T> > >
 {
  const BindCtx<Ctx,NamedPtr<T> > &bind;

  explicit Adapter(const BindCtx<Ctx,NamedPtr<T> > &bind_) : bind(bind_) {}

  void print(PrinterType &out) const
   {
    auto &ref=bind.obj;

    if( ref.hasName() )
      {
       AdaptPrintf(out,"{ #; , null }",ref.name);
      }
    else if( ref.hasObj() )
      {
       Index index=bind.ctx->getIndex();

       AdaptPrintf(out,"{ null , & #; }",index);

       bind.ctx->queue(index,ref.ptr.getPtr());
      }
    else
      {
       Putobj(out,"{ null , null }"_c);
      }
   }
 };

template <class Ctx,class ... TT>
struct Adapter<BindCtx<Ctx,NamedPtr<TT...> > >
 {
  const BindCtx<Ctx,NamedPtr<TT...> > &bind;

  explicit Adapter(const BindCtx<Ctx,NamedPtr<TT...> > &bind_) : bind(bind_) {}

  void print(PrinterType &out) const
   {
    auto &ref=bind.obj;

    if( ref.hasName() )
      {
       AdaptPrintf(out,"{ #; , null }",ref.name);
      }
    else if( ref.hasObj() )
      {
       Index index=bind.ctx->getIndex();

       AdaptPrintf(out,"{ null , & #; }",index);

       bind.ctx->queueCast(index,ref.ptr.getPtr());
      }
    else
      {
       Putobj(out,"{ null , null }"_c);
      }
   }
 };

template <class Ctx>
struct Adapter<BindCtx<Ctx,Defaults> >
 {
  const BindCtx<Ctx,Defaults> &bind;

  explicit Adapter(const BindCtx<Ctx,Defaults> &bind_) : bind(bind_) {}

  void printPtr(PrinterType &out,auto *ptr) const
   {
    if( ptr )
      {
       Index index=bind.ctx->getIndex();

       AdaptPrintf(out,"& #;",index);

       bind.ctx->queue(index,ptr);
      }
    else
      {
       Putobj(out,"null"_c);
      }
   }

  void printAnyPtr(PrinterType &out,AnyPtr<OneLine,MultiLine> objptr) const
   {
    if( +objptr )
      objptr.apply( [&] (auto *ptr) { printPtr(out,ptr); } );
    else
      Putobj(out,"null"_c);
   }

  void print(PrinterType &out) const
   {
    auto &defs=bind.obj;

    AdaptPrintf(out,"{ #; , #; , #; , #; , ",defs.inner
                                            ,defs.outer
                                            ,defs.bulletSpace
                                            ,defs.itemSpace);

    printPtr(out,SafePtr(defs.collapseFormat));

    Putobj(out," , "_c);

    printPtr(out,SafePtr(defs.bulletFormat));

    Putobj(out," , "_c);

    printPtr(out,SafePtr(defs.border));

    Putobj(out," , "_c);

    printPtr(out,SafePtr(defs.textFormat));

    Putobj(out," , "_c);

    printPtr(out,SafePtr(defs.fixedFormat));

    Putobj(out," , "_c);

    printAnyPtr(out,defs.placement.getPtr());

    Putobj(out," }"_c);
   }
 };

template <class Ctx>
struct Adapter<BindCtx<Ctx,ElementList> >
 {
  const BindCtx<Ctx,ElementList> &bind;

  explicit Adapter(const BindCtx<Ctx,ElementList> &bind_) : bind(bind_) {}

  void print(PrinterType &out) const
   {
    Putobj(out,"\n\n{\n"_c);

    bool flag=false;

    for(Element *ptr=SafePtr(bind.obj.beg); ptr ;ptr=SafePtr(ptr->next))
      {
       auto objptr=ptr->ptr.getPtr();

       if( +objptr )
         {
          Index index=bind.ctx->getIndex();

          if( !Change(flag,true) ) Putobj(out,",\n"_c);

          AdaptPrintf(out,"& #;",index);

          bind.ctx->queueCast(index,objptr);
         }
      }

    Putobj(out,"\n}\n\n"_c);
   }
 };

template <class Ctx>
struct Adapter<BindCtx<Ctx,FrameList> >
 {
  const BindCtx<Ctx,FrameList> &bind;

  explicit Adapter(const BindCtx<Ctx,FrameList> &bind_) : bind(bind_) {}

  void print(PrinterType &out) const
   {
    Putobj(out,"{\n\n{\n"_c);

    bool flag=false;

    ulen cur=0;
    ulen ind=0;

    Frame *curptr=SafePtr(bind.obj.cur);

    for(Frame *ptr=SafePtr(bind.obj.beg); ptr ;ptr=SafePtr(ptr->next),ind++)
      {
       if( !Change(flag,true) ) Putobj(out,",\n"_c);

       AdaptPrintf(out,"{ #; , #; , #; , #; , #; }",ptr->inner
                                                   ,ptr->outer
                                                   ,ptr->col
                                                   ,bind.ctx->bind(ptr->line)
                                                   ,bind.ctx->bind(ptr->body));

       if( ptr==curptr ) cur=ind;
      }

    Printf(out,"\n}\n\n , #; }",cur);
   }
 };

template <class Ctx>
struct Adapter<BindCtx<Ctx,ItemList> >
 {
  const BindCtx<Ctx,ItemList> &bind;

  explicit Adapter(const BindCtx<Ctx,ItemList> &bind_) : bind(bind_) {}

  void print(PrinterType &out) const
   {
    Putobj(out,"{\n\n{\n"_c);

    bool flag=false;

    ulen cur=0;
    ulen ind=0;

    Item *curptr=SafePtr(bind.obj.cur);

    for(Item *ptr=SafePtr(bind.obj.beg); ptr ;ptr=SafePtr(ptr->next),ind++)
      {
       if( !Change(flag,true) ) Putobj(out,",\n"_c);

       AdaptPrintf(out,"{ #; , #; }",ptr->bullet
                                    ,bind.ctx->bind(ptr->list));

       if( ptr==curptr ) cur=ind;
      }

    Printf(out,"\n}\n\n , #; }",cur);
   }
 };

template <class Ctx>
struct Adapter<BindCtx<Ctx,TextLine> >
 {
  const BindCtx<Ctx,TextLine> &bind;

  explicit Adapter(const BindCtx<Ctx,TextLine> &bind_) : bind(bind_) {}

  void print(PrinterType &out) const
   {
    Putobj(out,"\n\n{\n"_c);

    bool flag=false;

    for(const Span &span : bind.obj.list )
      {
       if( !Change(flag,true) ) Putobj(out,",\n"_c);

       AdaptPrintf(out,"#;",bind.ctx->bind(span));
      }

    Putobj(out,"\n}\n\n"_c);
   }
 };

template <class Ctx>
struct Adapter<BindCtx<Ctx,Span> >
 {
  const BindCtx<Ctx,Span> &bind;

  explicit Adapter(const BindCtx<Ctx,Span> &bind_) : bind(bind_) {}

  void print(PrinterType &out) const
   {
    const Span &span=bind.obj;

    AdaptPrintf(out,"{ #; , #; , #; }",span.body,bind.ctx->bind(span.format),bind.ctx->bind(span.ref));
   }
 };

template <class Ctx,class ... TT>
struct Adapter<BindCtx<Ctx,IntAnyObjPtr<TT...> > >
 {
  const BindCtx<Ctx,IntAnyObjPtr<TT...> > &bind;

  explicit Adapter(const BindCtx<Ctx,IntAnyObjPtr<TT...> > &bind_) : bind(bind_) {}

  void print(PrinterType &out) const
   {
    auto &ptr=bind.obj;

    if( +ptr )
      {
       Index index=bind.ctx->getIndex();

       AdaptPrintf(out,"& #;",index);

       bind.ctx->queueCast(index,ptr.getPtr());
      }
    else
      {
       AdaptPrintf(out,"null");
      }
   }
 };

} // namespace SaveAdapter

/* class Book::SaveLinkContext */

class Book::SaveLinkContext : NoCopy
 {
   struct FrameRec
    {
     Index index;
     FrameList *list;
    };

   struct ItemRec
    {
     Index index;
     ItemList *list;
    };

   struct LinkRec
    {
     Index index;
     Link *link;
    };

   CompactList<FrameRec> frame_list;
   CompactList<ItemRec> item_list;
   CompactList<LinkRec> link_list;

   ulen next_index = 1 ;

  private:

   void erase(FrameList &list)
    {
     for(Frame &frame : ForIntList(list) ) frame.index=MaxULen;
    }

   void erase(ItemList &list)
    {
     for(Item &item : ForIntList(list) ) erase(item.list);
    }

   void erase(Link *link) { link->frame->index=MaxULen; }

   ulen set(ulen &index)
    {
     if( index==MaxULen ) index=next_index++;

     return index;
    }

   void set(PrintBase &out,Index index,Link *ptr)
    {
     ulen f=set(ptr->frame->index);

     SaveAdapter::AdaptPrintf(out,"Link #; = { #; , #; , f#; };\n\n",index
                                                                    ,ptr->name
                                                                    ,ptr->open
                                                                    ,f);

    }

   void gen(PrintBase &out,Index oind,FrameList &list)
    {
     ulen index=0;

     for(Frame &frame : ForIntList(list) )
       {
        ulen f=frame.index;

        if( Change(frame.index,MaxULen) )
          SaveAdapter::AdaptPrintf(out,"Frame *f#; = #;.list.list+#; ;\n\n",f,oind,index);

        index++;
       }
    }

   void gen(PrintBase &out,Index oind,ItemList &list)
    {
     ulen index1=0;

     for(Item &item : ForIntList(list) )
       {
        ulen index2=0;

        for(Frame &frame : ForIntList(item.list) )
          {
           ulen f=frame.index;

           if( Change(frame.index,MaxULen) )
             SaveAdapter::AdaptPrintf(out,"Frame *f#; = #;.list.list[#;].list.list+#; ;\n\n",f,oind,index1,index2);

           frame.index=MaxULen;

           index2++;
          }

        index1++;
       }
    }

   void reset(PrintBase &out,ulen &index)
    {
     ulen f=index;

     if( Change(index,MaxULen) )
       {
        SaveAdapter::AdaptPrintf(out,"Frame *f#; = null ;\n\n",f);
       }
    }

   void reset(PrintBase &out,Link *link)
    {
     reset(out,link->frame->index);
    }

  public:

   SaveLinkContext() {}

   ~SaveLinkContext() {}

   void addList(Index index,FrameList *list) { frame_list.ins(FrameRec{index,list}); }

   void addList(Index index,ItemList *list) { item_list.ins(ItemRec{index,list}); }

   void addLink(Index index,Link *link) { link_list.ins(LinkRec{index,link}); }

   void print(PrintBase &out)
    {
     frame_list.apply( [&] (auto rec) { erase(*rec.list); } );

     item_list.apply( [&] (auto rec) { erase(*rec.list); } );

     link_list.apply( [&] (auto rec) { erase(rec.link); } );

     link_list.apply( [&] (auto rec) { set(out,rec.index,rec.link); } );

     frame_list.apply( [&] (auto rec) { gen(out,rec.index,*rec.list); } );

     item_list.apply( [&] (auto rec) { gen(out,rec.index,*rec.list); } );

     link_list.apply( [&] (auto rec) { reset(out,rec.link); } );
    }
 };

/* class Book::SaveContext */

class Book::SaveContext : public NextIndex
 {
   PrintBase &out;

   using ObjPtr = AnyPtr<Font,Format,SingleLine,DoubleLine,Page,Scope,Section,Bitmap,Collapse,TextList,
                         Border,Cell,Table,Link,FixedText,OneLine,MultiLine,Text,Include,Extern> ;

   struct Rec
    {
     Index index;
     ObjPtr objptr;
    };

   CompactList2<Rec> list;

  private:

   template <class ... TT>
   void printf(const char *format,const TT & ... tt)
    {
     Printf(out,format,SaveAdapter::Adapter<TT>(tt)...);
    }

   void queue(Index index,ObjPtr objptr)
    {
     list.insLast(Rec{index,objptr});
    }

   template <class ... TT>
   void queueCast(Index index,AnyPtr<TT...> objptr)
    {
     queue(index,CastAnyPtr<ObjPtr>(objptr));
    }

   void printAny(Index index,ObjPtr objptr)
    {
     objptr.apply( [&] (auto *ptr) { print(index,ptr); } );
    }

   void printQueue()
    {
     while( +list )
       {
        Rec rec=*list.getFirst();

        printAny(rec.index,rec.objptr);

        list.delFirst();
       }
    }

  private:

   template <class T>
   friend struct SaveAdapter::Adapter;

   auto bind(const auto &obj) { return BindCtx(this,obj); }

   template <class R>
   void printRange(R r)
    {
     printf("\n\n{\n");

     {
      bool flag=false;

      for(const auto &obj : r )
        {
         if( !Change(flag,true) ) printf(",\n");

         printf("#;",obj);
        }
     }

     printf("\n}\n\n");
    }

   template <class R>
   void printRangeBind(R r)
    {
     printf("\n\n{\n");

     {
      bool flag=false;

      for(const auto &obj : r )
        {
         if( !Change(flag,true) ) printf(",\n");

         printf("#;",bind(obj));
        }
     }

     printf("\n}\n\n");
    }

  private:

   SaveLinkContext link_ctx;

   void addList(Index index,FrameList &list) { link_ctx.addList(index,&list); }

   void addList(Index index,ItemList &list) { link_ctx.addList(index,&list); }

   void addLink(Index index,Link *link) { link_ctx.addLink(index,link); }

  private:

   void print(Index index,Font *ptr)
    {
     printf("Font #; = { #; , #; , #; , #; , #; , #; , #; };\n\n",index
                                                                 ,ptr->name
                                                                 ,ptr->open
                                                                 ,ptr->face
                                                                 ,ptr->size
                                                                 ,ptr->bold
                                                                 ,ptr->italic
                                                                 ,ptr->strength);
    }

   void print(Index index,Format *ptr)
    {
     printf("Format #; = { #; , #; , #; , #; , #; , #; };\n\n",index
                                                              ,ptr->name
                                                              ,ptr->open
                                                              ,bind(ptr->font)
                                                              ,ptr->back
                                                              ,ptr->fore
                                                              ,ptr->effect);
    }

   void print(Index index,SingleLine *ptr)
    {
     printf("SingleLine #; = { #; , #; , #; , #; };\n\n",index
                                                        ,ptr->name
                                                        ,ptr->open
                                                        ,ptr->width
                                                        ,ptr->line);
    }

   void print(Index index,DoubleLine *ptr)
    {
     printf("DoubleLine #; = { #; , #; , #; , #; , #; };\n\n",index
                                                             ,ptr->name
                                                             ,ptr->open
                                                             ,ptr->width
                                                             ,ptr->gray
                                                             ,ptr->snow);
    }

   void print(Index index,Page *ptr)
    {
     printf("Page #; = { #; , #; , #; , #; , #; , #; , #; , #; , #; };\n\n",index
                                                                           ,ptr->name
                                                                           ,ptr->open
                                                                           ,ptr->title
                                                                           ,ptr->back
                                                                           ,ptr->fore
                                                                           ,bind(ptr->up)
                                                                           ,bind(ptr->prev)
                                                                           ,bind(ptr->next)
                                                                           ,bind(ptr->list));

     addList(index,ptr->list);
    }

   void print(Index index,Scope *ptr)
    {
     printf("Scope #; = { #; , #; , #; , #; };\n\n",index
                                                   ,ptr->name
                                                   ,ptr->open
                                                   ,bind(ptr->defs)
                                                   ,bind(ptr->list));
    }

   void print(Index index,Section *ptr)
    {
     printf("Section #; = { #; , #; , #; };\n\n",index
                                                ,ptr->open
                                                ,ptr->comment
                                                ,bind(ptr->list));
    }

   void print(Index index,Bitmap *ptr)
    {
     printf("Bitmap #; = { #; , #; };\n\n",index
                                          ,ptr->name
                                          ,ptr->file_name);
    }

   void print(Index index,Collapse *ptr)
    {
     printf("Collapse #; = { #; , #; , #; , #; , #; , #; , #; };\n\n",index
                                                                     ,ptr->name
                                                                     ,ptr->open
                                                                     ,ptr->title
                                                                     ,bind(ptr->format)
                                                                     ,ptr->openlist
                                                                     ,ptr->hide
                                                                     ,bind(ptr->list));

     addList(index,ptr->list);
    }

   void print(Index index,TextList *ptr)
    {
     printf("TextList #; = { #; , #; , #; , #; , #; , #; , #; , #; , #; , #; };\n\n",index
                                                                                    ,ptr->name
                                                                                    ,ptr->open
                                                                                    ,bind(ptr->format)
                                                                                    ,ptr->bullet_space
                                                                                    ,ptr->item_space
                                                                                    ,ptr->frame_inner
                                                                                    ,ptr->frame_outer
                                                                                    ,bind(ptr->text_format)
                                                                                    ,bind(ptr->placement)
                                                                                    ,bind(ptr->list));

     addList(index,ptr->list);
    }

   void print(Index index,Border *ptr)
    {
     printf("Border #; = { #; , #; , #; , #; , #; };\n\n",index
                                                         ,ptr->name
                                                         ,ptr->open
                                                         ,ptr->space
                                                         ,ptr->width
                                                         ,ptr->line);

    }

   void print(Index index,Cell *ptr)
    {
     printf("Cell #; = { #; , #; , #; , #; , #; };\n\n",index
                                                       ,ptr->name
                                                       ,ptr->open
                                                       ,ptr->span_x
                                                       ,ptr->span_y
                                                       ,bind(ptr->list));

     addList(index,ptr->list);
    }

   void print(Index index,Table *ptr)
    {
     printf("Table #; = { #; , #; , #; , #; , ",index
                                               ,ptr->name
                                               ,ptr->open
                                               ,bind(ptr->border)
                                               ,ptr->hard);

     printRange(Range(ptr->table.width));

     printf(" , ");

     printRangeBind(Range(ptr->table.cells));

     printf(" };\n\n");
    }

   void print(Index index,Link *ptr)
    {
     auto frame=ptr->frame;

     if( +frame )
       {
        addLink(index,ptr);
       }
     else
       {
        printf("Link #; = { #; , #; , null };\n\n",index
                                                  ,ptr->name
                                                  ,ptr->open);
       }
    }

   void print(Index index,FixedText *ptr)
    {
     printf("FixedText #; = { #; , #; , #; , ",index
                                              ,ptr->name
                                              ,ptr->open
                                              ,bind(ptr->format));

     printRangeBind(Range(ptr->list));

     printf(" };\n\n");
    }

   void print(Index index,OneLine *ptr)
    {
     printf("OneLine #; = { #; , #; , #; };\n\n",index
                                                ,ptr->name
                                                ,ptr->open
                                                ,ptr->align);
    }

   void print(Index index,MultiLine *ptr)
    {
     printf("MultiLine #; = { #; , #; , #; , #; };\n\n",index
                                                       ,ptr->name
                                                       ,ptr->open
                                                       ,ptr->line_space
                                                       ,ptr->first_line_space);
    }

   void print(Index index,Text *ptr)
    {
     printf("Text #; = { #; , #; , #; , #; , ",index
                                              ,ptr->name
                                              ,ptr->open
                                              ,bind(ptr->placement)
                                              ,bind(ptr->format));

     printRangeBind(Range(ptr->list));

     printf(" };\n\n");
    }

   void print(Index index,Include *ptr)
    {
     printf("Include #; = { #; };\n\n",index
                                      ,ptr->file_name);
    }

   void print(Index index,Extern *ptr)
    {
     printf("Extern #; = { #; };\n\n",index
                                     ,bind(ptr->ptr));
    }

  public:

   explicit SaveContext(PrintBase &out_) : out(out_) {}

   void print(Doc *doc)
    {
     printf("Doc Data = { #; , #; , #; , #; , #; , #; };\n\n",doc->title
                                                             ,doc->back
                                                             ,doc->fore
                                                             ,bind(doc->start)
                                                             ,bind(doc->defs)
                                                             ,bind(doc->list));

     printQueue();

     link_ctx.print(out);
    }

   void printEmpty()
    {
     printf("Doc Data = { '' , {True} , {True} , {'',null} , {{True},{True},{True},{True}} , {} };\n\n");
    }
 };

/* class Book */

ErrorText Book::save(StrLen file_name,PtrLen<char> ebuf) const
 {
  PrintBuf eout(ebuf);
  ReportExceptionTo report(eout);

  try
    {
     PrintFile out(file_name);
     SaveContext ctx(out);

     if( +doc )
       ctx.print(doc.getPtr());
     else
       ctx.printEmpty();

     report.guard();

     return Success;
    }
  catch(CatchType)
    {
     Printf(eout,"\n@ #.q;",file_name);

     return eout.close();
    }
 }

} // namespace BookLab
} // namespace App
