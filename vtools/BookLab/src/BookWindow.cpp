/* BookWindow.cpp */
//----------------------------------------------------------------------------------------
//
//  Project: BookLab 1.00
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2017 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#include <inc/BookWindow.h>

#include <CCore/inc/Scope.h>

#include <CCore/inc/video/FigureLib.h>
#include <CCore/inc/video/LayoutCombo.h>

namespace App {

/* class InnerBookWindow */

void InnerBookWindow::cache() const
 {
  Coord dx=getSize().x-2*RoundUpLen(+cfg.width);

  if( !ok || cache_dx!=dx )
    {
     if( shapes.getLen()!=frames.len )
       {
        shapes.erase();
        shapes.extend_default(frames.len);
       }

     Size s;

     for(ulen i=0; i<frames.len ;i++)
       {
        Shape &shape=shapes[i];

        shape.set(cfg,font_map,bmp_map,frames[i],dx);

        s=StackY(s,shape.size);
       }

     size=s;

     ok=true;
     cache_dx=dx;
    }
 }

void InnerBookWindow::addXPos(ulen delta,bool mul_flag)
 {
  sx.add(Delta(delta,mul_flag));

  scroll_x.assert(sx.pos);

  redraw();
 }

void InnerBookWindow::subXPos(ulen delta,bool mul_flag)
 {
  sx.sub(Delta(delta,mul_flag));

  scroll_x.assert(sx.pos);

  redraw();
 }

void InnerBookWindow::addYPos(ulen delta,bool mul_flag)
 {
  sy.add(Delta(delta,mul_flag));

  scroll_y.assert(sy.pos);

  redraw();
 }

void InnerBookWindow::subYPos(ulen delta,bool mul_flag)
 {
  sy.sub(Delta(delta,mul_flag));

  scroll_y.assert(sy.pos);

  redraw();
 }

void InnerBookWindow::begXPos()
 {
  sx.beg();

  scroll_x.assert(sx.pos);

  redraw();
 }

void InnerBookWindow::endXPos()
 {
  sx.end();

  scroll_x.assert(sx.pos);

  redraw();
 }

void InnerBookWindow::begYPos()
 {
  sy.beg();

  scroll_y.assert(sy.pos);

  redraw();
 }

void InnerBookWindow::endYPos()
 {
  sy.end();

  scroll_y.assert(sy.pos);

  redraw();
 }

void InnerBookWindow::addYPosPage()
 {
  sy.addPage();

  scroll_y.assert(sy.pos);

  redraw();
 }

void InnerBookWindow::subYPosPage()
 {
  sy.subPage();

  scroll_y.assert(sy.pos);

  redraw();
 }

void InnerBookWindow::posX(ulen pos)
 {
  sx.setPos(pos);

  redraw();
 }

void InnerBookWindow::posY(ulen pos)
 {
  sy.setPos(pos);

  redraw();
 }

void InnerBookWindow::updated(unsigned flags)
 {
  if( flags&LayoutUpdate ) ok=false;
 }

InnerBookWindow::InnerBookWindow(SubWindowHost &host,const Config &cfg_,FontMap &font_map_)
 : SubWindow(host),
   cfg(cfg_),

   font_map(font_map_),

   connector_posX(this,&InnerBookWindow::posX),
   connector_posY(this,&InnerBookWindow::posY),

   connector_updated(this,&InnerBookWindow::updated,host.getFrame()->updated)
 {
 }

InnerBookWindow::~InnerBookWindow()
 {
 }

 // methods

Point InnerBookWindow::getMinSize(Point cap) const
 {
  cache();

  if( frames.len )
    {
     Coord dx=CapSize(size.dx,cap.x);
     Coord dy=CapSize(size.dy,cap.y);

     return Point(dx,dy)+2*Point::Diag(RoundUpLen(+cfg.width));
    }
  else
    {
     return Point(500,300);
    }
 }

void InnerBookWindow::setPage(StrLen file_name,Book::TypeDef::Page *page,VColor back_,VColor fore_)
 {
  frames=Null;

  bmp_map.erase();

  bmp_map.setRoot(file_name);

  if( page )
    {
     frames=page->list;

     back=Combine(page->back,back_);
     fore=Combine(page->fore,fore_);
    }

  sx.beg();
  sy.beg();

  ok=false;
 }

 // drawing

void InnerBookWindow::layout()
 {
  cache();

  Point s=getSize()-2*Point::Diag(RoundUpLen(+cfg.width));

  if( s>Null )
    {
     sx.total=size.dx;
     sx.page=(ulen)s.x;

     sy.total=size.dy;
     sy.page=(ulen)s.y;
    }
  else
    {
     sx.total=size.dx;
     sx.page=1;

     sy.total=size.dy;
     sy.page=1;
    }
 }

void InnerBookWindow::draw(DrawBuf buf,bool) const
 {
  cache();

  Pane pane=getPane();

  buf=buf.cut(pane);

  SmoothDrawArt art(buf);

  // back , fore

  MCoord width=+cfg.width;

  VColor back=Combine(this->back,+cfg.back);
  VColor fore=Combine(this->fore,+cfg.fore);

  art.erase(back);

  // border

  {
   MPane p(pane);

   FigureBox fig(p);

   VColor vc = focus? +cfg.focus : +cfg.border ;

   fig.loop(art,width,vc);
  }

  // frames

  Pane inner=pane.shrink(RoundUpLen(width));

  buf=buf.cutRebase(inner);

  Point s=inner.getSize();

  ulen wdy=(ulen)s.y;

  ulen pos_x=sx.getPos();
  ulen pos_y=sy.getPos();
  ulen y=0;

  for(ulen i=0,len=shapes.getLen(); i<len ;i++)
    {
     auto &shape=shapes[i];

     Size size=shape.getSize();

     if( y>=pos_y )
       {
        ulen delta=y-pos_y;

        if( delta<wdy )
          {
           if( pos_x<size.dx ) shape.draw(cfg,font_map,bmp_map,fore,buf,pos_x,delta,false);
          }
        else
          {
           break;
          }
       }
     else
       {
        ulen delta=pos_y-y;

        if( delta<size.dy && pos_x<size.dx )
          {
           shape.draw(cfg,font_map,bmp_map,fore,buf,pos_x,delta,true);
          }
       }

     y+=size.dy;
    }
 }

 // base

void InnerBookWindow::open()
 {
  focus=false;
 }

 // keyboard

void InnerBookWindow::gainFocus()
 {
  if( Change(focus,true) ) redraw();
 }

void InnerBookWindow::looseFocus()
 {
  if( Change(focus,false) ) redraw();
 }

 // mouse

MouseShape InnerBookWindow::getMouseShape(Point point,KeyMod kmod) const // TODO
 {
  Used(point);
  Used(kmod);

  return Mouse_Arrow;
 }

 // user input

void InnerBookWindow::react(UserAction action)
 {
  action.dispatch(*this);
 }

void InnerBookWindow::react_Key(VKey vkey,KeyMod kmod,unsigned repeat)
 {
  switch( vkey )
    {
     case VKey_Left :
      {
       subXPos(repeat,!(kmod&KeyMod_Shift));
      }
     break;

     case VKey_Right :
      {
       addXPos(repeat,!(kmod&KeyMod_Shift));
      }
     break;

     case VKey_Up :
      {
       subYPos(repeat,!(kmod&KeyMod_Shift));
      }
     break;

     case VKey_Down :
      {
       addYPos(repeat,!(kmod&KeyMod_Shift));
      }
     break;

     case VKey_Home :
      {
       begXPos();
      }
     break;

     case VKey_End :
      {
       endXPos();
      }
     break;

     case VKey_PageUp :
      {
       if( kmod&KeyMod_Ctrl )
         begYPos();
       else
         subYPosPage();
      }
     break;

     case VKey_PageDown :
      {
       if( kmod&KeyMod_Ctrl )
         endYPos();
       else
         addYPosPage();
      }
     break;
    }
 }

void InnerBookWindow::react_LeftClick(Point point,MouseKey) // TODO
 {
  Used(point);
 }

void InnerBookWindow::react_Wheel(Point,MouseKey mkey,Coord delta)
 {
  if( delta<0 )
    {
     if( mkey&MouseKey_Shift )
       addXPos(IntAbs(delta),true);
     else
       addYPos(IntAbs(delta),true);
    }
  else
    {
     if( mkey&MouseKey_Shift )
       subXPos(IntAbs(delta),true);
     else
       subYPos(IntAbs(delta),true);
    }
 }

/* class DisplayBookWindow */

DisplayBookWindow::DisplayBookWindow(SubWindowHost &host,const ConfigType &cfg,FontMap &font_map)
 : Base(host,cfg,font_map),

   link(window.link),
   hint(window.hint)
 {
 }

DisplayBookWindow::~DisplayBookWindow()
 {
 }

 // methods

void DisplayBookWindow::setPage(StrLen file_name,Book::TypeDef::Page *page,VColor back,VColor fore)
 {
  window.setPage(file_name,page,back,fore);

  layout();

  redraw();
 }

/* class BookWindow::ProgressControl */

BookWindow::ProgressControl::ProgressControl(ArrowProgressWindow &window_)
 : window(window_)
 {
 }

BookWindow::ProgressControl::~ProgressControl()
 {
 }

 // IncrementalProgress

void BookWindow::ProgressControl::start()
 {
 }

void BookWindow::ProgressControl::setTotal(unsigned total)
 {
  window.setTotal(total);
 }

bool BookWindow::ProgressControl::setPos(unsigned pos)
 {
  window.setPosPing(pos);

  return true;
 }

void BookWindow::ProgressControl::stop() noexcept
 {
 }

/* class BookWindow */

void BookWindow::error(DefString etext)
 {
  if( msg.isDead() )
    {
     msg.setInfo(etext);

     msg.create(getFrame(),+cfg.text_Error);

     disableFrameReact();
    }
 }

void BookWindow::enableFrame()
 {
  enableFrameReact();
 }

void BookWindow::font_completed(bool ok)
 {
  font_flag=false;

  if( ok )
    {
     wlist.del(progress);

     wlist.insTop(label_title,text_title,label_page,text_page,book);

     redraw();
    }
 }

BookWindow::BookWindow(SubWindowHost &host,const Config &cfg_,Signal<> &update)
 : ComboWindow(host),
   cfg(cfg_),

   label_title(wlist,cfg.label_cfg,cfg.text_Title),
   text_title(wlist,cfg.text_cfg),

   label_page(wlist,cfg.label_cfg,cfg.text_Page),
   text_page(wlist,cfg.text_cfg),

   book(wlist,cfg.book_cfg,font_map),
   progress(wlist,cfg.progress_cfg),

   msg(host.getFrameDesktop(),cfg.msg_cfg,update),

   progress_control(progress),
   font_inc(progress_control),

   connector_msg_destroyed(this,&BookWindow::enableFrame,msg.destroyed),
   connector_font_completed(this,&BookWindow::font_completed,font_inc.completed)
 {
  wlist.insTop(progress);
 }

BookWindow::~BookWindow()
 {
 }

 // methods

Point BookWindow::getMinSize() const
 {
  Coord space=+cfg.space_dxy;

  LayToRight lay1{Lay(label_title),Lay(text_title),Lay(label_page),LayLeft(text_page)};

  LayToBottom lay2{ExtLayNoSpace(lay1),Lay(book)};

  LaySame lay(lay2,ExtLay{LayTop(progress)});

  return lay.getMinSize(space);
 }

void BookWindow::blank()
 {
  book.setPage(Null,0,Book::NoColor,Book::NoColor);

  font_map.erase();

  text_title.setText(""_def);
  text_page.setText(""_def);

  layout();

  redraw();
 }

void BookWindow::load(StrLen file_name)
 {
  if( font_flag )
    {
     error(+cfg.text_NotReady);

     return;
    }

  blank();

  SimpleArray<char> temp(64_KByte);

  auto result=book_map.load(file_name,Range(temp));

  if( result.ok )
    {
     auto *ptr=book_map.get();

     text_title.setText(DefString(ptr->title.getStr()));

     auto list=ptr->list.getRange();

     if( list.len )
       {
        auto *page=list[0].getPtr();

        text_page.setText(DefString(page->name.getStr()));

        layout();

        book.setPage(file_name,page,Cast(ptr->back),Cast(ptr->fore));
       }
     else
       {
        text_page.setText(""_def);

        layout();

        book.setPage(Null,0,Cast(ptr->back),Cast(ptr->fore));
       }

     redraw();
    }
  else
    {
     error(DefString(result.etext));
    }
 }

 // drawing

void BookWindow::layout()
 {
  Coord space=+cfg.space_dxy;

  LayToRight lay1{Lay(label_title),Lay(text_title),Lay(label_page),LayLeft(text_page)};

  LayToBottom lay2{ExtLayNoSpace(lay1),Lay(book)};

  LaySame lay(lay2,ExtLay{LayTop(progress)});

  lay.setPlace(getPane(),space);
 }

void BookWindow::drawBack(DrawBuf buf,bool) const
 {
  VColor back=+cfg.back;

  if( book.isListed() )
    {
     PaneSub sub(getPane(),book.getPlace());

     buf.erase(sub.top,back);
     buf.erase(sub.bottom,back);
     buf.erase(sub.left,back);
     buf.erase(sub.right,back);
    }
  else
    {
     buf.erase(back);
    }
 }

 // base

void BookWindow::open()
 {
  ComboWindow::open();

  if( font_flag )
    {
     font_map.cache(font_inc);
    }
 }

} // namespace App

