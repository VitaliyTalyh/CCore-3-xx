/* LayoutCombo.h */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 3.50
//
//  Tag: Desktop
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2017 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#ifndef CCore_inc_video_LayoutCombo_h
#define CCore_inc_video_LayoutCombo_h

#include <CCore/inc/video/Layout.h>

#include <CCore/inc/Tuple.h>

namespace CCore {
namespace Video {

/* concept LayRangeType<R> */

template <NothrowCopyCtorType R>
concept bool LayRangeType = requires(R r)
 {
  typename R::AdapterType;

  { r.getLen() } -> ulen ;

  +r;

  ++r;

  *r;

  (typename R::AdapterType)(*r);

 } ;

/* classes */

template <class ... LL> class LaySet;

template <class ... LL> class LayToTop;

template <class ... LL> class LayToTopExt;

template <class ... LL> class LaySupCenterXExt;

class LayNull;

template <class W> class LayAll;

template <class W> class LayExtX;

template <class W> class LayExtXCap;

template <class W> class LayCenterX;

template <class W> class LayCenterXExt;

/* class LaySet<LL> */

template <class ... LL>
class LaySet
 {
   Tuple<LL...> list;

  private:

   template <class FirstFunc,class LastFunc>
   struct Call
    {
     FirstFunc first;
     LastFunc last;

     Call(const FirstFunc &first_,const LastFunc &last_) : first(first_),last(last_) {}

     template <class T>
     void operator () (const T &t)
      {
       last(t);
      }

     template <class T,class ... TT>
     void operator () (const T &t,const TT & ... tt)
      {
       first(t);

       (*this)(tt...);
      }
    };

   template <class Func>
   struct CallSame
    {
     Func func;

     explicit CallSame(const Func &func_) : func(func_) {}

     template <class T>
     void operator () (const T &t)
      {
       func(t);
      }

     template <class T,class ... TT>
     void operator () (const T &t,const TT & ... tt)
      {
       func(t);

       (*this)(tt...);
      }
    };

  public:

   explicit LaySet(const LL & ... list_) : list(list_...) {}

   ulen getCount() const { return sizeof ... (LL); }

   template <class FirstFunc,class LastFunc>
   void apply(FirstFunc first,LastFunc last) const
    {
     list.call( Call<FirstFunc,LastFunc>(first,last) );
    }

   template <class Func>
   void apply(Func func) const
    {
     list.call( CallSame<Func>(func) );
    }
 };

template <LayRangeType R>
class LaySet<R>
 {
   R range;

   using L = typename R::AdapterType ;

  public:

   explicit LaySet(const R &range_) : range(range_) {}

   ulen getCount() const { return range.getLen(); }

   template <class FirstFunc,class LastFunc>
   void apply(FirstFunc first,LastFunc last) const
    {
     if( auto len=range.getLen() ; len>0 )
       {
        R r(range);

        for(len--; len>0 ;len--,++r)
          {
           L obj(*r);

           first(obj);
          }

        {
         L obj(*r);

         last(obj);
        }
       }
    }

   template <class Func>
   void apply(Func func) const
    {
     R r(range);

     for(; +r ;++r)
       {
        L obj(*r);

        func(obj);
       }
    }
 };

/* class LayToTop<LL> */

template <class ... LL>
class LayToTop : protected LaySet<LL...>
 {
   using LaySet<LL...>::apply;

  public:

   using LaySet<LL...>::LaySet;

   Point getMinSize(Coord space) const
    {
     Coordinate dx;
     Coordinate dy;

     apply( [space,&dx,&dy] (auto &obj)
                            {
                             Point s=obj.getMinSize(space);

                             dy+=s.y;
                             dy+=space;

                             dx=Sup(dx,s.x);

                            } ,

            [space,&dx,&dy] (auto &obj)
                            {
                             Point s=obj.getMinSize(space);

                             dy+=s.y;

                             dx=Sup(dx,s.x);

                            } );

     return {dx,dy};
    }

   void setPlace(Pane pane,Coord space) const
    {
     apply( [&pane,space] (auto &obj)
                          {
                           Coord dy=obj.getMinSize(space).y;
                           Pane p;

                           if( dy<=pane.dy )
                             {
                              p=SplitY(pane,dy);

                              SplitY(pane,space);
                             }
                           else
                             {
                              p=Replace_null(pane);
                             }

                           obj.setPlace(p,space);
                          } ,

            [&pane,space] (auto &obj)
                          {
                           obj.setPlace(pane,space);

                          } );
    }
 };

template <class ... LL>
LayToTop(const LL & ...) -> LayToTop<LL...> ;

/* class LayToTopExt<LL> */

template <class ... LL>
class LayToTopExt : protected LaySet<LL...>
 {
   using LaySet<LL...>::apply;

  public:

   using LaySet<LL...>::LaySet;

   Point getMinSize(Coord space) const
    {
     Coordinate dx;
     Coordinate dy;

     apply( [space,&dx,&dy] (auto &obj)
                            {
                             Point s=obj.getMinSize(space);

                             dy+=s.y;
                             dy+=space;

                             dx=Sup(dx,s.x);

                            } );

     dy+=space;

     return {dx,dy};
    }

   Point getMinSize(Coord space,Point cap) const
    {
     Coordinate dx;
     Coordinate dy(space);

     apply( [space,&dx,&dy] (auto &obj)
                            {
                             Point s=obj.getMinSize(space);

                             dy+=s.y;
                             dy+=space;

                             dx=Sup(dx,s.x);

                            } ,

            [space,&dx,&dy,cap] (auto &obj)
                                {
                                 dy+=space;

                                 Point s=obj.getMinSize(space,cap.subY(+dy));

                                 dy+=s.y;

                                 dx=Sup(dx,s.x);

                                } );

     return {dx,dy};
    }

   void setPlace(Pane pane,Coord space) const
    {
     pane=pane.shrink({0,space});

     apply( [&pane,space] (auto &obj)
                          {
                           Coord dy=obj.getMinSize(space).y;
                           Pane p;

                           if( dy<=pane.dy )
                             {
                              p=SplitY(pane,dy);

                              SplitY(pane,space);
                             }
                           else
                             {
                              p=Replace_null(pane);
                             }

                           obj.setPlace(p,space);
                          } ,

            [&pane,space] (auto &obj)
                          {
                           obj.setPlace(pane,space);

                          } );
    }
 };

template <class ... LL>
LayToTopExt(const LL & ...) -> LayToTopExt<LL...> ;

/* class LaySupCenterXExt<LL> */

template <class ... LL>
class LaySupCenterXExt : protected LaySet<LL...>
 {
   using LaySet<LL...>::apply;
   using LaySet<LL...>::getCount;

   mutable Point size;
   mutable Coord size_space = MinCoord ;

  private:

   Point getSize(Coord space) const
    {
     if( space==size_space ) return size;

     Point s;

     apply( [&s,space] (auto &obj) { s=Sup(s,obj.getMinSize(space)); } );

     size=s;
     size_space=space;

     return s;
    }

  public:

   explicit LaySupCenterXExt(const LL & ... list)
    : LaySet<LL...>(list...)
    {
    }

   Point getMinSize(Coord space) const
    {
     Point size=getSize(space);

     auto count=CountToCoordinate(getCount());

     return {count*size.x+(count+1)*space,size.y};
    }

   void setPlace(Pane pane,Coord space) const
    {
     Point size=getSize(space);

     ulen count=getCount();
     Coord dx=size.x;

     Coord off=PosSubMul(pane.dx,count,dx);

     if( count ) off=PosSubMul(off,count-1,space);

     off/=2;

     SplitX(off,pane);

     apply( [&pane,space,dx] (auto &obj)
                             {
                              Pane p;

                              if( dx<=pane.dx )
                                {
                                 p=SplitX(dx,pane);

                                 SplitX(space,pane);
                                }
                              else
                                {
                                 p=Replace_null(pane);
                                }

                              obj.setPlace(p,space);
                             } ,

            [&pane,space,dx] (auto &obj)
                             {
                              Pane p;

                              if( dx<=pane.dx )
                                {
                                 p=SplitX(dx,pane);
                                }
                              else
                                {
                                 p=Replace_null(pane);
                                }

                              obj.setPlace(p,space);

                             } );
    }
 };

/* class LayNull */

class LayNull
 {
  public:

   LayNull() {}

   Point getMinSize(Coord) const { return Null; }

   void setPlace(Pane,Coord) const {}
 };

/* class LayAll<W> */

template <class W>
class LayAll
 {
   W &obj;
   Point s;

  public:

   explicit LayAll(W &obj_) : obj(obj_) { s=GetMinSize(obj); }

   Point getMinSize(Coord) const { return s; }

   void setPlace(Pane pane,Coord) const { obj.setPlace(pane); }
 };

/* class LayExtX<W> */

template <class W>
class LayExtX
 {
   W &obj;
   Point s;

  public:

   explicit LayExtX(W &obj_) : obj(obj_) { s=GetMinSize(obj); }

   Point getMinSize(Coord space) const { return s+2*Point(space,0); }

   void setPlace(Pane pane,Coord space) const { obj.setPlace(pane.shrink({space,0})); }
 };

/* class LayExtXCap<W> */

template <class W>
class LayExtXCap
 {
   W &obj;

  public:

   explicit LayExtXCap(W &obj_) : obj(obj_) {}

   Point getMinSize(Coord space,Point cap) const
    {
     Point delta=2*Point(space,0);

     return obj.getMinSize(cap-delta)+delta;
    }

   void setPlace(Pane pane,Coord space) const { obj.setPlace(pane.shrink({space,0})); }
 };

/* class LayCenterX<W> */

template <class W>
class LayCenterX
 {
   W &obj;
   Point s;

  public:

   explicit LayCenterX(W &obj_) : obj(obj_) { s=GetMinSize(obj); }

   Point getMinSize(Coord) const { return s; }

   void setPlace(Pane pane,Coord) const { obj.setPlace(AlignCenterX(pane,s.x)); }
 };

/* class LayCenterXExt<W> */

template <class W>
class LayCenterXExt
 {
   W &obj;
   Point s;

  public:

   explicit LayCenterXExt(W &obj_) : obj(obj_) { s=GetMinSize(obj); }

   Point getMinSize(Coord space) const { return s+2*Point(space,0); }

   void setPlace(Pane pane,Coord) const { obj.setPlace(AlignCenterX(pane,s.x)); }
 };

} // namespace Video
} // namespace CCore

#endif

