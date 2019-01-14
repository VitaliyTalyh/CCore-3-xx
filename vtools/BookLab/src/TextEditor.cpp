/* TextEditor.cpp */
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

#include <inc/TextEditor.h>

#include <CCore/inc/CharUtils.h>
#include <CCore/inc/SymCount.h>

#include <CCore/inc/video/LayoutCombo.h>
#include <CCore/inc/video/FigureLib.h>

#include <CCore/inc/algon/SimpleRotate.h>
#include <CCore/inc/RangeDel.h>

#include <CCore/inc/Exception.h>

namespace App {

/* InsAt() */

template <class A>
auto InsAt(A &array,ulen ind)
 {
  array.append_default();

  auto r=Range(array).part(ind);

  Algon::RangeRotateRight(r);

  return r.ptr;
 }

/* DelPrefix() */

template <class A>
void DelPrefix(A &array,ulen delta)
 {
  auto *base=array.getPtr();

  ulen len=array.getLen()-delta;

  for(ulen i : IndLim(len) ) base[i]=base[i+delta];

  array.shrink(delta);
 }

/* class TextBuf */

TextBuf::TextBuf()
 {
 }

TextBuf::~TextBuf()
 {
 }

BookLab::TextLine * TextBuf::insLine(ulen index)
 {
  return InsAt(*pad,index);
 }

void TextBuf::delLine(ulen index)
 {
  RangeSwapDel(Range(*pad),index);

  pad->shrink_one();
 }

void TextBuf::blank()
 {
  pad=0;
 }

void TextBuf::load(DynArray<BookLab::TextLine> *pad_)
 {
  pad=pad_;
 }

void TextBuf::save() const
 {
 }

/* class TextWindow */

void TextWindow::addXPos(ulen delta)
 {
  sx.add(delta);

  scroll_x.assert(sx.pos);

  redraw();
 }

void TextWindow::subXPos(ulen delta)
 {
  sx.sub(delta);

  scroll_x.assert(sx.pos);

  redraw();
 }

void TextWindow::addYPos(ulen delta)
 {
  sy.add(delta);

  scroll_y.assert(sy.pos);

  redraw();
 }

void TextWindow::subYPos(ulen delta)
 {
  sy.sub(delta);

  scroll_y.assert(sy.pos);

  redraw();
 }

void TextWindow::clean()
 {
  block_cache=false;
  ok=false;

  sx.beg();
  sy.beg();

  cursor={};
  spanlen=0;
 }

Coord TextWindow::Cache(const Font &font,BookLab::Span &span)
 {
  TextSize ts=font->text(Range(span.body));

  Coord ret=ts.dx;

  span.dx=ret;

  return ret;
 }

Coord TextWindow::Cache(const Font &font,BookLab::TextLine &line,Coord space_dx)
 {
  if( ulen count=line.list.getLen() )
    {
     Coord dx=MulSize(count-1,space_dx);

     for(BookLab::Span &span : line.list )
       {
        dx=AddSize(dx,Cache(font,span));
       }

     line.dx=dx;

     return dx;
    }
  else
    {
     line.dx=0;

     return 0;
    }
 }

Coord TextWindow::Cache(BookLab::TextLine &line,Coord space_dx)
 {
  if( ulen count=line.list.getLen() )
    {
     Coord dx=MulSize(count-1,space_dx);

     for(BookLab::Span &span : line.list )
       {
        dx=AddSize(dx,span.dx);
       }

     line.dx=dx;

     return dx;
    }
  else
    {
     line.dx=0;

     return 0;
    }
 }

void TextWindow::SizeData::prepare(const Font &font)
 {
  fs=font->getSize();

  space_dx=font->text(" "_c).dx;

  text_dx=0;
 }

void TextWindow::SizeData::update(const Font &font,BookLab::TextLine &line)
 {
  Replace_max(text_dx,Cache(font,line,space_dx));
 }

void TextWindow::SizeData::update(BookLab::TextLine &line)
 {
  Replace_max(text_dx,Cache(line,space_dx));
 }

[[nodiscard]] bool TextWindow::cache() const
 {
  if( block_cache )
    {
     return false;
    }

  try
    {
     if( !ok )
       {
        const Font &font=cfg.font.get();

        data.prepare(font);

        ulen count=text.getLineCount();

        for(ulen i : IndLim(count) ) data.update(font,text.getLine(i));

        ok=true;
       }

     return true;
    }
  catch(...)
    {
     block_cache=true;

     return false;
    }
 }

void TextWindow::posX(ulen pos)
 {
  sx.setPos(pos);

  redraw();
 }

void TextWindow::posY(ulen pos)
 {
  sy.setPos(pos);

  redraw();
 }

void TextWindow::updated(unsigned flags)
 {
  if( flags&LayoutUpdate ) ok=false;
 }

void TextWindow::tick()
 {
  if( tick_count )
    {
     tick_count--;
    }
  else
    {
     tick_count=PosSub(+cfg.period,1u);

     cursor_on=!cursor_on;

     redraw();
    }
 }

void TextWindow::tickStart()
 {
  cursor_on=true;

  defer_tick.start();
 }

void TextWindow::tickStop()
 {
  cursor_on=false;

  defer_tick.stop();
 }

template <class Func>
bool TextWindow::applyToSpan(Func func)
 {
  if( cursor.y<text.getLineCount() )
    {
     BookLab::TextLine &line=text.getLine(cursor.y);

     if( cursor.span<line.list.getLen() )
       {
        func(line.list[cursor.span]);

        return true;
       }
    }

  return false;
 }

template <class Func>
bool TextWindow::applyToSpan(Func func) const
 {
  if( cursor.y<text.getLineCount() )
    {
     BookLab::TextLine &line=text.getLine(cursor.y);

     if( cursor.span<line.list.getLen() )
       {
        func(line.list[cursor.span]);

        return true;
       }
    }

  return false;
 }

void TextWindow::fill(StrLen str)
 {
  FillCharBuf result(Range(spanbuf),str);

  if( result.overflow )
    {
     Printf(Exception,"App::TextWindow::fill() : overflow, too long span");
    }
  else
    {
     spanlen=result.len;
    }
 }

void TextWindow::extend(StrLen str)
 {
  FillCharBuf result(Range(spanbuf).part(spanlen),str);

  if( result.overflow )
    {
     Printf(Exception,"App::TextWindow::extend() : overflow, too long span");
    }
  else
    {
     spanlen+=result.len;
    }
 }

void TextWindow::cleanNames()
 {
  showFormat.assert(Null,false);
  showLink.assert(Null,false);
 }

void TextWindow::fill()
 {
  spanlen=0;

  if( !applyToSpan( [&] (BookLab::Span &span)
                  {
                   fill(Range(span.body));

                   showFormat.assert(span.format.name,span.format.notResolved());
                   showLink.assert(span.ref.name,span.ref.notResolved());

                  } ) )
    {
     cleanNames();
    }
 }

void TextWindow::setPosX(ulen x)
 {
  sx.setPos(x);

  scroll_x.assert(sx.pos);

  redraw();
 }

void TextWindow::setPosY(ulen y)
 {
  sy.setPos(y);

  scroll_y.assert(sy.pos);

  redraw();
 }

void TextWindow::setPosXY(ulen x,ulen y)
 {
  sx.setPos(x);
  sy.setPos(y);

  scroll_x.assert(sx.pos);
  scroll_y.assert(sy.pos);

  redraw();
 }

ulen TextWindow::getSpanCount() const
 {
  if( cursor.y>=text.getLineCount() ) return 0;

  BookLab::TextLine &line=text.getLine(cursor.y);

  return line.list.getLen();
 }

struct TextWindow::Split
 {
  PtrLen<const Char> str1;
  PtrLen<const Char> str2;

  Split(PtrLen<const Char> str,ulen pos)
   {
    ulen split=Min(pos,str.len);

    str1=str.prefix(split);
    str2=str.part(split);
   }
 };

void TextWindow::changeSpan(ulen span)
 {
  flush();

  cursor.span=span;

  fill();
 }

void TextWindow::showCursor()
 {
  if( cursor.y<sy.pos )
    {
     setPosY(cursor.y);
    }
  else if( cursor.y>=sy.pos+sy.page )
    {
     setPosY(cursor.y-sy.page+1);
    }

  const Font &font=cfg.font.get();

  Coord dxc=+cfg.cursor_dx;

  Coord x=data.fs.dx0+dxc;

  if( cursor.y<text.getLineCount() )
    {
     BookLab::TextLine &line=text.getLine(cursor.y);

     for(ulen j : IndLim(line.list.getLen()) )
       if( j==cursor.span )
         {
          Split split(getCurSpan(),cursor.x);

          x+=font->text(split.str1).dx;

          break;
         }
       else
         {
          BookLab::Span &span=line.list[j];

          x+=span.dx+data.space_dx;
         }
    }

  ulen X=(ulen)x;

  if( X<sx.pos )
    {
     setPosX(PosSub(X,(ulen)dxc));
    }
  else if( X>=sx.pos+sx.page )
    {
     setPosX(X-sx.page+1+(ulen)dxc+(ulen)data.space_dx);
    }
 }

void TextWindow::keySelect(bool on)
 {
  if( selection_on )
    {
     if( !on )
       {
        selection_on=false;
       }
    }
  else
    {
     if( on )
       {
        selection_on=true;
        selection=cursor;
       }
    }
 }

void TextWindow::moveLeft(ulen delta)
 {
  if( delta==0 || ( cursor.span==0 && cursor.x==0 ) ) return;

  while( delta )
    {
     if( cursor.x>=delta )
       {
        cursor.x-=delta;
        delta=0;
       }
     else
       {
        if( cursor.span )
          {
           delta-=cursor.x+1;

           changeSpan(cursor.span-1);

           cursor.x=spanlen;
          }
        else
          {
           cursor.x=0;
           delta=0;
          }
       }
    }

  showCursor();

  redraw();
 }

bool TextWindow::moveRight(ulen delta)
 {
  if( delta==0 ) return false;

  ulen count=getSpanCount();

  if( count==0 || ( cursor.span==count-1 && cursor.x==spanlen ) ) return false;

  while( delta )
    {
     ulen len=PosSub(spanlen,cursor.x);

     if( delta<=len )
       {
        cursor.x+=delta;
        delta=0;
       }
     else
       {
        if( cursor.span<count-1 )
          {
           delta-=len+1;

           changeSpan(cursor.span+1);

           cursor.x=0;
          }
        else
          {
           cursor.x=spanlen;
           delta=0;
          }
       }
    }

  showCursor();

  redraw();

  return true;
 }

void TextWindow::moveHome()
 {
  if( cursor.span )
    {
     changeSpan(0);
    }
  else
    {
     if( cursor.x==0 ) return;
    }

  cursor.x=0;

  showCursor();

  redraw();
 }

void TextWindow::moveEnd()
 {
  ulen count=getSpanCount();

  if( count==0 ) return;

  if( cursor.span<count-1 )
    {
     changeSpan(count-1);
    }
  else
    {
     if( cursor.x==spanlen ) return;
    }

  cursor.x=spanlen;

  showCursor();

  redraw();
 }

void TextWindow::moveTab()
 {
  ulen count=getSpanCount();

  if( count==0 || cursor.span>=count-1 )
    {
     cursor.x=spanlen;
    }
  else
    {
     changeSpan(cursor.span+1);

     cursor.x=0;
    }

  showCursor();

  redraw();
 }

ulen TextWindow::getPosX() const
 {
  if( cursor.y<text.getLineCount() )
    {
     BookLab::TextLine &line=text.getLine(cursor.y);

     ulen ind=cursor.span;

     if( ind>=line.list.getLen() ) return 0;

     ulen len=0;

     while( ind-- )
       {
        len+=1+SymLen(Range(line.list[ind].body));
       }

     return cursor.x+len;
    }
  else
    {
     return 0;
    }
 }

void TextWindow::setPos(ulen x,ulen y)
 {
  flush();

  cursor.y=y;
  cursor.span=0;
  cursor.x=0;

  fill();

  if( moveRight(x) ) return;

  showCursor();

  redraw();
 }

void TextWindow::moveUp(ulen delta)
 {
  if( delta==0 || cursor.y==0 ) return;

  setPos(getPosX(),PosSub(cursor.y,delta));
 }

void TextWindow::moveDown(ulen delta)
 {
  if( delta==0 ) return;

  ulen lim=text.getLineCount();

  if( lim==0 || cursor.y==lim-1 ) return;

  setPos(getPosX(),AddToCap(cursor.y,delta,lim-1));
 }

void TextWindow::moveTop()
 {
  moveUp(cursor.y);
 }

void TextWindow::moveBottom()
 {
  ulen lim=text.getLineCount();

  if( cursor.y<lim ) moveDown(lim-1-cursor.y);
 }

void TextWindow::startDrag(Point point)
 {
  if( Change(drag,true) )
    {
     captureMouse();

     if( mouse_pos )
       {
        startPosCursor(point);
       }
     else
       {
        startPosWindow(point);
       }
    }
 }

void TextWindow::dragTo(Point point)
 {
  if( mouse_pos )
    {
     posCursor(point);
    }
  else
    {
     posWindow(point);
    }
 }

void TextWindow::endDrag()
 {
  drag=false;

  releaseMouse();
 }

void TextWindow::endDrag(Point point)
 {
  endDrag();

  dragTo(point);
 }

Coord TextWindow::Div(Coord a,Coord b)
 {
  if( a>0 ) return a/b;

  return a/b-1;
 }

ulen TextWindow::DragPos(ulen pos,Coord from,Coord to,ulen cap)
 {
  if( to>from )
    return PosSub(pos,(ulen)to-(ulen)from) ;
  else
    return AddToCap(pos,(ulen)from-(ulen)to,cap);
 }

void TextWindow::startPosWindow(Point point)
 {
  drag_base=point;

  posx_base=sx.pos;
  posy_base=sy.pos;
 }

void TextWindow::posWindow(Point point)
 {
  Coord dxc=+cfg.cursor_dx;
  Coord div=data.fs.dy;

  setPosXY(DragPos(posx_base,drag_base.x,point.x,sx.getMaxPos()),
           DragPos(posy_base,Div(drag_base.y-dxc,div),Div(point.y-dxc,div),sy.getMaxPos()));
 }

auto TextWindow::toCursor(Point point) -> Cursor
 {
  if( !cache() ) return {};

  ulen count=text.getLineCount();

  if( !count ) return {};

  Coord dxc=+cfg.cursor_dx;

  point=point.subXY(dxc);

  // y

  Coord py=Div(point.y,data.fs.dy);
  ulen y;

  if( py>0 )
    {
     y=AddToCap(sy.pos,(ulen)py,count-1);
    }
  else
    {
     y=PosSub(sy.pos,UIntNeg((ulen)py));
    }

  Replace_min(y,count-1);

  // x

  ulen span=0;
  ulen x=0;

  BookLab::TextLine &line=text.getLine(y);

  if( ulen spancount=line.list.getLen() )
    {
     Coord px=Coord(sx.pos)+point.x;

     if( px<0 ) px=0;

     for(; span<spancount ;span++)
       {
        BookLab::Span &obj=line.list[span];

        if( px>=obj.dx )
          {
           px-=obj.dx;

           if( px>=data.space_dx )
             {
              px-=data.space_dx;
             }
           else
             {
              x=SymLen(Range(obj.body));

              break;
             }
          }
        else
          {
           const Font &font=cfg.font.get();

           x=font->position(Range(obj.body),{px,0})-1;

           break;
          }
       }

     if( span==spancount )
       {
        span=spancount-1;

        BookLab::Span &obj=line.list[span];

        x=SymLen(Range(obj.body));
       }
    }

  return {y,span,x};
 }

void TextWindow::startPosCursor(Point point)
 {
  Cursor cur=toCursor(point);

  flush();

  cursor=cur;
  selection_on=true;
  selection=cur;

  fill();

  redraw();

  showCursor();
 }

void TextWindow::posCursor(Point point)
 {
  Cursor cur=toCursor(point);

  flush();

  cursor=cur;

  fill();

  redraw();

  showCursor();
 }

void TextWindow::makeNonEmpty()
 {
  if( !text.getLineCount() ) text.addLine();
 }

Coord TextWindow::updateCache(BookLab::TextLine &line)
 {
  ulen count=line.list.getLen();

  Coord dx=MulSize(count-1,data.space_dx);

  for(ulen i : IndLim(count) )
    {
     BookLab::Span &span=line.list[i];

     if( i==cursor.span )
       {
        const Font &font=cfg.font.get();

        TextSize ts=font->text(getCurSpan());

        span.dx=ts.dx;
       }

     dx=AddSize(dx,span.dx);
    }

  line.dx=dx;

  return dx;
 }

void TextWindow::updateData()
 {
  data.text_dx=0;

  ulen count=text.getLineCount();

  for(ulen i : IndLim(count) ) Replace_max(data.text_dx,text.getLine(i).dx);
 }

void TextWindow::updateData(BookLab::TextLine &line)
 {
  updateCache(line);

  updateData();
 }

void TextWindow::insSpanChar(BookLab::TextLine &line,Char ch)
 {
  if( spanlen<spanbuf.getLen() )
    {
     InsChar(spanbuf.getPtr(),spanlen,Min(cursor.x,spanlen),ch);

     spanlen++;
     cursor.x++;

     Replace_max(data.text_dx,updateCache(line));

     changed.assert();

     showCursor();
    }
 }

void TextWindow::insChar(Char ch)
 {
  if( !SymCharIsPrintable(ch) ) return;

  makeNonEmpty();

  if( ulen count=text.getLineCount() )
    {
     if( cursor.y<count )
       {
        BookLab::TextLine &line=text.getLine(cursor.y);

        if( !line.list.getLen() )
          {
           line.list.append_default();

           cursor.span=0;
           cursor.x=0;

           spanlen=0;

           cleanNames();
          }

        insSpanChar(line,ch);
       }
    }
 }

void TextWindow::delSpanChar(BookLab::TextLine &line)
 {
  DelCharRange(spanbuf.getPtr(),spanlen,cursor.x,1);

  spanlen--;

  updateData(line);

  changed.assert();

  showCursor();
 }

void TextWindow::joinLine()
 {
  ulen count=text.getLineCount();

  if( count<2 || cursor.y>=count-1 ) return;

  BookLab::TextLine &line1=text.getLine(cursor.y);
  BookLab::TextLine &line2=text.getLine(cursor.y+1);

  line1.list.extend_copy(Range(line2.list));

  text.delLine(cursor.y+1);

  Replace_max(data.text_dx,Cache(line1,data.space_dx));

  changed.assert();

  showCursor();
 }

void TextWindow::delEmptyLine(bool prev)
 {
  text.delLine(cursor.y);

  bool toend=false;

  ulen count=text.getLineCount();

  if( prev || cursor.y>=count-1 )
    {
     if( cursor.y==0 )
       {
        cursor.span=0;
        cursor.x=0;
       }
     else
       {
        cursor.y--;

        BookLab::TextLine &line=text.getLine(cursor.y);

        if( ulen spancount=line.list.getLen() )
          {
           cursor.span=spancount-1;
           toend=true;
          }
        else
          {
           cursor.span=0;
           cursor.x=0;
          }
       }
    }
  else
    {
     cursor.span=0;
     cursor.x=0;
    }

  fill();

  if( toend ) cursor.x=spanlen;

  changed.assert();

  showCursor();
 }

void TextWindow::joinSpan(BookLab::TextLine &line,bool prev)
 {
  if( prev )
    {
     if( cursor.span )
       {
        changeSpan(cursor.span-1);

        cursor.x=spanlen;
       }
     else
       {
        if( cursor.y )
          {
           flush();

           cursor.y--;

           if( ulen count=text.getLine(cursor.y).list.getLen() )
             {
              cursor.span=count-1;

              fill();

              cursor.x=spanlen;

              joinLine();
             }
           else
             {
              cursor.span=0;
              cursor.x=0;

              delEmptyLine(false);
             }
          }

        return;
       }
    }

  ulen count=line.list.getLen();

  if( cursor.span<count-1 )
    {
     BookLab::Span &span2=line.list[cursor.span+1];

     extend(Range(span2.body));

     RangeSwapDel(Range(line.list),cursor.span+1);

     line.list.shrink_one();

     updateData(line);

     changed.assert();

     showCursor();
    }
  else
    {
     joinLine();
    }
 }

void TextWindow::delChar(bool prev)
 {
  if( ulen count=text.getLineCount() )
    {
     if( cursor.y<count )
       {
        BookLab::TextLine &line=text.getLine(cursor.y);

        if( ulen spancount=line.list.getLen() )
          {
           if( cursor.span<spancount )
             {
              if( prev )
                {
                 if( cursor.x==0 )
                   {
                    joinSpan(line,true);

                    return;
                   }

                 cursor.x--;
                }

               if( cursor.x<spanlen )
                 {
                  delSpanChar(line);
                 }
               else
                 {
                  joinSpan(line,false);
                 }
             }
          }
        else
          {
           delEmptyLine(prev);
          }
       }
    }
 }

void TextWindow::splitSpan()
 {
  makeNonEmpty();

  if( ulen count=text.getLineCount() )
    {
     if( cursor.y<count )
       {
        BookLab::TextLine &line=text.getLine(cursor.y);

        if( ulen spancount=line.list.getLen() )
          {
           if( cursor.span>=spancount ) return;

           BookLab::Span *span=InsAt(line.list,cursor.span);

           Split split(getCurSpan(),cursor.x);

           span[0].body=String(split.str1);
           span[1].body=String(split.str2);

           span[0].format=span[1].format;
           span[0].ref=span[1].ref;

           cursor.span++;
           cursor.x=0;

           fill();

           const Font &font=cfg.font.get();

           Cache(font,span[0]);
           Cache(font,span[1]);

           data.update(line);
          }
        else
          {
           line.list.append_default();

           cursor.span=0;
           cursor.x=0;

           spanlen=0;

           cleanNames();
          }

        changed.assert();

        showCursor();
       }
    }
 }

void TextWindow::splitLine()
 {
  makeNonEmpty();

  if( ulen count=text.getLineCount() )
    {
     if( cursor.y<count )
       {
        BookLab::TextLine &line=text.getLine(cursor.y);

        if( ulen spancount=line.list.getLen() )
          {
           if( cursor.span>=spancount ) return;

           BookLab::TextLine *lineptr=text.insLine(cursor.y);

           cursor.y++;

           BookLab::TextLine &line1=lineptr[0];
           BookLab::TextLine &line2=lineptr[1];

           Split split(getCurSpan(),cursor.x);

           BookLab::Span &old=line2.list[cursor.span];

           if( cursor.span>0 )
             {
              line1.list.reserve(cursor.span+1);

              line1.list.extend_copy(cursor.span,line2.list.getPtr());
             }

           BookLab::Span *span=line1.list.append_default();

           span->body=String(split.str1);
           span->format=old.format;
           span->ref=old.ref;

           old.body=String(split.str2);

           const Font &font=cfg.font.get();

           Cache(font,line1.list[cursor.span]);
           Cache(font,line2.list[cursor.span]);

           if( cursor.span>0 )
             {
              DelPrefix(line2.list,cursor.span);

              cursor.span=0;
             }

           cursor.x=0;

           fill();

           Cache(line1,data.space_dx);
           Cache(line2,data.space_dx);

           updateData();
          }
        else
          {
           text.insLine(cursor.y);

           cursor.y++;

           cursor.span=0;
           cursor.x=0;

           spanlen=0;

           cleanNames();
          }

        changed.assert();

        showCursor();
       }
    }
 }

TextWindow::TextWindow(SubWindowHost &host,const Config &cfg_)
 : SubWindow(host),
   cfg(cfg_),

   spanbuf(1_KByte),

   connector_posX(this,&TextWindow::posX),
   connector_posY(this,&TextWindow::posY),

   connector_updated(this,&TextWindow::updated,host.getFrame()->updated),

   input(this)
 {
  defer_tick=input.create(&TextWindow::tick);
 }

TextWindow::~TextWindow()
 {
 }

 // methods

Point TextWindow::getMinSize(Point) const
 {
  FontSize fs=cfg.font->getSize();

  Coord dy=10*fs.dy;

  return Point(2*dy,dy);
 }

void TextWindow::blank()
 {
  flush();

  clean();

  text.blank();
 }

void TextWindow::load(DynArray<BookLab::TextLine> *pad)
 {
  flush();

  clean();

  text.load(pad);

  fill();
 }

void TextWindow::flush()
 {
  applyToSpan( [&] (BookLab::Span &span) { span.body=String(getCurSpan()); } );
 }

void TextWindow::setFormat(String name)
 {
  applyToSpan( [&] (BookLab::Span &span) { span.format.setName(name); } );
 }

void TextWindow::setLink(String name)
 {
  applyToSpan( [&] (BookLab::Span &span) { span.ref.setName(name); } );
 }

void TextWindow::link()
 {
  applyToSpan( [&] (BookLab::Span &span)
                   {
                    showFormat.assert(span.format.name,span.format.notResolved());
                    showLink.assert(span.ref.name,span.ref.notResolved());

                   } );

  redraw();
 }

 // drawing

void TextWindow::layout()
 {
  if( !cache() )
    {
     sx.pos=0;
     sx.total=1;
     sx.page=1;

     sy.pos=0;
     sy.total=1;
     sy.page=1;

     return;
    }

  Point size=getSize();

  Coord dxc=+cfg.cursor_dx;

  size.subXY(2*dxc);

  if( size.x>0 )
    {
     sx.page=(ulen)size.x;
    }
  else
    {
     sx.page=1;
    }

  if( size.y>=data.fs.dy )
    {
     sy.page=ulen(size.y/data.fs.dy);
    }
  else
    {
     sy.page=1;
    }

  sx.total=(ulen)AddSize(data.text_dx,data.fs.dx0+data.fs.dx1+2*dxc);
  sy.total=text.getLineCount();

  sx.total+=sx.page/8;
  sy.total+=sy.page/4;

  sx.adjustPos();
  sy.adjustPos();
 }

bool TextWindow::HasSpec(BookLab::Span &span)
 {
  return span.format.name.getLen() || span.ref.name.getLen() ;
 }

bool TextWindow::Alert(BookLab::Span &span)
 {
  return span.format.notResolved() || span.ref.notResolved() ;
 }

class TextWindow::Draw : SizeData , NoCopy
 {
   SmoothDrawArt art;

   Pane pane;

   const Font &font;

   Coord dxc;

   MCoord width;
   MCoord skew;
   MCoord delta;

   VColor vc_cursor;
   VColor vc_end;
   VColor vc_text;
   VColor vc_line;
   VColor vc_alert;

  public:

   Draw(const DrawBuf &buf,Pane pane_,const Config &cfg,const SizeData &data)
    : SizeData(data),

      art(buf),
      pane(pane_),
      font(cfg.font.get())
    {
     dxc=+cfg.cursor_dx;

     width=+cfg.width;

     skew=Fraction(fs.skew);
     delta=MulDiv(skew,fs.dy-fs.by,fs.dy);

     vc_cursor=+cfg.cursor;
     vc_end=+cfg.endspan;
     vc_text=+cfg.text;
     vc_line=+cfg.line;
     vc_alert=+cfg.alert;
    }

   Point getBase() const
    {
     Point base(fs.dx0,fs.by);

     return base.addXY(dxc);
    }

   Point getBase(Coord shift_x) const
    {
     return getBase().subX(shift_x);
    }

   Coord dY() const { return fs.dy; }

   void cursor(Point base,bool on)
    {
     MCoord width=Fraction(dxc);
     MCoord dy=Fraction(fs.dy);

     MCoord x=Fraction(base.x)-delta;
     MCoord y=Fraction(base.y-fs.by);

     FigureCursor fig(x,y,y+dy,width,skew);

     if( on )
       {
        fig.solid(art,vc_cursor);
       }
     else
       {
        fig.loop(art,HalfPos,width/3,vc_cursor);
       }
    }

   void end(Point base)
    {
     MCoord dx=Fraction(space_dx);
     MCoord dy=Fraction(fs.dy);

     MCoord x=Fraction(base.x)-delta;
     MCoord y=Fraction(base.y-fs.by);

     FigureSkew fig(x,x+dx,y,y+dy,skew);

     fig.solid(art,vc_end);
    }

   template <class T>
   void text(Point base,T str)
    {
     font->text(art.getBuf(),pane,base,str,vc_text);
    }

   template <class T>
   Coord text(T str)
    {
     return font->text(str).dx;
    }

   void under(Point base,Coord len,bool alert)
    {
     VColor vc = alert? vc_alert : vc_line ;

     art.path(width,vc,base,base.addX(len-1));
    }

   Point span(Point base,BookLab::Span &span)
    {
     text(base,Range(span.body));

     if( HasSpec(span) ) under(base,span.dx,Alert(span));

     base.x+=span.dx;

     end(base);

     base.x+=space_dx;

     return base;
    }

   Point text(Point base,PtrLen<const Char> str,ulen pos,bool on)
    {
     Split split(str,pos);

     Coord dx1=text(split.str1);
     Coord dx2=text(split.str2);

     text(base,split.str1);

     base.x+=dx1;

     cursor(base,on);

     base.x+=dxc;

     text(base,split.str2);

     base.x+=dx2;

     return base;
    }

   Point span(Point base,BookLab::Span &span,PtrLen<const Char> str,ulen pos,bool on)
    {
     Point p=text(base,str,pos,on);

     if( HasSpec(span) ) under(base,p.x-base.x,Alert(span));

     end(p);

     p.x+=space_dx;

     return p;
    }
 };

void TextWindow::draw(DrawBuf buf,bool) const
 {
  if( !cache() )
    {
     buf.erase(Black);

     return;
    }

  Draw draw(buf,getPane(),cfg,data);

  Coord shift_x=Coord(sx.pos);

  Point base=draw.getBase(shift_x);

  if( ulen count=text.getLineCount() )
    {
     for(ulen i : IndLim(sy.pos,sy.pos+sy.page) )
       {
        if( i>=count ) break;

        BookLab::TextLine &line=text.getLine(i);

        if( ulen spancount=line.list.getLen() )
          {
           Point p=base;

           for(ulen j : IndLim(spancount) )
             if( i==cursor.y && j==cursor.span )
               {
                p=draw.span(p,line.list[j],getCurSpan(),cursor.x,cursor_on);
               }
             else
               {
                p=draw.span(p,line.list[j]);
               }
          }
        else
          {
           if( i==cursor.y ) draw.cursor(base,cursor_on);
          }

        base.y+=draw.dY();
       }
    }
  else
    {
     draw.cursor(base,cursor_on);
    }
 }

 // base

void TextWindow::open()
 {
  focus=false;
  cursor_on=false;
  drag=false;
  mouse_pos=false;

  defer_tick.stop();
 }

void TextWindow::close()
 {
  defer_tick.stop();

  flush();
 }

 // keyboard

void TextWindow::gainFocus()
 {
  if( Change(focus,true) )
    {
     tickStart();

     redraw();
    }
 }

void TextWindow::looseFocus()
 {
  if( Change(focus,false) )
    {
     tickStop();

     redraw();
    }
 }

 // mouse

void TextWindow::looseCapture()
 {
  drag=false;
 }

MouseShape TextWindow::getMouseShape(Point,KeyMod) const
 {
  return Mouse_IBeem;
 }

 // user input

void TextWindow::react(UserAction action)
 {
  action.dispatch(*this);
 }

void TextWindow::react_Key(VKey vkey,KeyMod kmod,unsigned repeat) // TODO
 {
  switch( vkey )
    {
     case VKey_Left :
      {
       keySelect(kmod&KeyMod_Shift);

       moveLeft(repeat);
      }
     break;

     case VKey_Right :
      {
       keySelect(kmod&KeyMod_Shift);

       moveRight(repeat);
      }
     break;

     case VKey_Home :
      {
       keySelect(kmod&KeyMod_Shift);

       moveHome();
      }
     break;

     case VKey_End :
      {
       keySelect(kmod&KeyMod_Shift);

       moveEnd();
      }
     break;

     case VKey_Tab :
      {
       keySelect(kmod&KeyMod_Shift);

       moveTab();
      }
     break;

     case VKey_Up :
      {
       keySelect(kmod&KeyMod_Shift);

       moveUp(repeat);
      }
     break;

     case VKey_Down :
      {
       keySelect(kmod&KeyMod_Shift);

       moveDown(repeat);
      }
     break;

     case VKey_PageUp :
      {
       keySelect(kmod&KeyMod_Shift);

       if( kmod&KeyMod_Ctrl )
         moveTop();
       else
         moveUp(repeat*sy.page);
      }
     break;

     case VKey_PageDown :
      {
       keySelect(kmod&KeyMod_Shift);

       if( kmod&KeyMod_Ctrl )
         moveBottom();
       else
         moveDown(repeat*sy.page);
      }
     break;

     case VKey_Enter :
      {
       splitLine();
      }
     break;

     case VKey_Space :
      {
       if( kmod&KeyMod_Shift )
         insChar(' ');
       else
         splitSpan();
      }
     break;

     case VKey_Delete :
      {
       delChar(false);
      }
     break;

     case VKey_BackSpace :
      {
       delChar(true);
      }
     break;
    }
 }

void TextWindow::react_Char(Char ch) // TODO
 {
  if( ch!=' ' ) insChar(ch);
 }

void TextWindow::react_LeftClick(Point point,MouseKey mkey)
 {
  mouse_pos = !(mkey&MouseKey_Ctrl) ;

  startDrag(point);
 }

void TextWindow::react_LeftUp(Point point,MouseKey)
 {
  if( drag )
    {
     endDrag(point);
    }
 }

void TextWindow::react_Move(Point point,MouseKey mkey)
 {
  if( drag )
    {
     if( mkey&MouseKey_Left )
       {
        dragTo(point);
       }
     else
       {
        endDrag();
       }
    }
 }

void TextWindow::react_Leave()
 {
  // do nothing
 }

void TextWindow::react_Wheel(Point,MouseKey mkey,Coord delta_)
 {
  unsigned delta=IntAbs(delta_);

  if( mkey&MouseKey_Shift )
    {
     delta*=data.fs.medDX();

     if( delta_>0 )
       subXPos(delta);
     else
       addXPos(delta);
    }
  else
    {
     if( delta_>0 )
       subYPos(delta);
     else
       addYPos(delta);
    }
 }

/* class ScrollTextWindow */

void ScrollTextWindow::changed()
 {
  layout();

  redraw();

  modified.assert();
 }

ScrollTextWindow::ScrollTextWindow(SubWindowHost &host,const ConfigType &cfg)
 : ScrollableWindow<TextWindow>(host,cfg),

   connector_changed(this,&ScrollTextWindow::changed,window.changed),

   showFormat(window.showFormat),
   showLink(window.showLink)
 {
  wlist.enableTabFocus(false);
 }

ScrollTextWindow::~ScrollTextWindow()
 {
 }

void ScrollTextWindow::blank()
 {
  window.blank();

  layout();

  redraw();
 }

void ScrollTextWindow::load(DynArray<BookLab::TextLine> *pad)
 {
  window.load(pad);

  layout();

  redraw();
 }

/* class TextEditor */

void TextEditor::format_pressed()
 {
  String name=edit_format.getString();

  edit_text.setFormat(name);

  edit_format.alert(name.getLen()!=0);

  modified.assert();
 }

void TextEditor::link_pressed()
 {
  String name=edit_link.getString();

  edit_text.setLink(name);

  edit_link.alert(name.getLen()!=0);

  modified.assert();
 }

void TextEditor::show_format(String name,bool alert)
 {
  edit_format.setText(Range(name));

  edit_format.alert(alert);
 }

void TextEditor::show_link(String name,bool alert)
 {
  edit_link.setText(Range(name));

  edit_link.alert(alert);
 }

TextEditor::TextEditor(SubWindowHost &host,const Config &cfg_)
 : ComboWindow(host),
   cfg(cfg_),

   btn_format(wlist,cfg.btn_cfg,"Format"_def),
   btn_link(wlist,cfg.btn_cfg,"Link"_def),

   edit_format(wlist,cfg.edit_cfg),
   edit_link(wlist,cfg.edit_cfg),
   cont(wlist,cfg.cont_cfg),

   edit_text(wlist,cfg.text_cfg),

   connector_format_pressed(this,&TextEditor::format_pressed,btn_format.pressed),
   connector_link_pressed(this,&TextEditor::link_pressed,btn_link.pressed),

   connector_show_format(this,&TextEditor::show_format,edit_text.showFormat),
   connector_show_link(this,&TextEditor::show_link,edit_text.showLink),

   modified(edit_text.modified)
 {
  wlist.insTop(btn_format,edit_format,btn_link,edit_link,edit_text,cont);

  edit_format.hideInactiveCursor();
  edit_link.hideInactiveCursor();

  wlist.enableTabFocus(false);
 }

TextEditor::~TextEditor()
 {
 }

 // methods

Point TextEditor::getMinSize() const
 {
  Coord space=+cfg.space_dxy;

  LayToRightCenter lay1{Lay(btn_format),Lay(edit_format)};

  LayToRightCenter lay2{Lay(btn_link),Lay(edit_link)};

  LayInner lay3{cont,Lay{edit_text}};

  LayToBottom lay{lay1,lay2,lay3};

  return lay.getMinSize(space);
 }

void TextEditor::load(DynArray<BookLab::TextLine> *pad)
 {
  show_format(Null,false);
  show_link(Null,false);

  edit_text.load(pad);
 }

 // base

void TextEditor::open()
 {
  ComboWindow::open();

  edit_text.setFocus();
 }

 // drawing

void TextEditor::layout()
 {
  Coord space=+cfg.space_dxy;

  LayToRightCenter lay1{Lay(btn_format),Lay(edit_format)};

  LayToRightCenter lay2{Lay(btn_link),Lay(edit_link)};

  LayInner lay3{cont,Lay{edit_text}};

  LayToBottom lay{lay1,lay2,lay3};

  lay.setPlace(getPane(),space);
 }

void TextEditor::drawBack(DrawBuf buf,bool) const
 {
  buf.erase(+cfg.back);
 }

} // namespace App

