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

#include <CCore/inc/Exception.h>

namespace App {

/* class TextBuf */

TextBuf::TextBuf()
 {
 }

TextBuf::~TextBuf()
 {
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

void TextWindow::clean()
 {
  block_cache=false;
  ok=false;

  sx.beg();
  sy.beg();

  cursor={};
  spanlen=0;
 }

Coord TextWindow::Cache(const Font &font,BookLab::TextLine &line,Coord space_dx)
 {
  Coord dx;

  if( ulen count=line.list.getLen() )
    dx=MulSize(count-1,space_dx);
  else
    dx=0;

  for(BookLab::Span &span : line.list )
    {
     TextSize ts=font->text(Range(span.body));

     Coord sdx=ts.dx;

     span.dx=sdx;

     dx=AddSize(dx,sdx);
    }

  line.dx=dx;

  return dx;
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

        fs=font->getSize();

        space_dx=font->text(" "_c).dx;

        text_dx=0;

        ulen count=text.getLineCount();

        for(ulen i : IndLim(count) )
          {
           Coord dx=Cache(font,text.getLine(i),space_dx);

           Replace_max(text_dx,dx);
          }

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
void TextWindow::applyToSpan(Func func)
 {
  if( cursor.y<text.getLineCount() )
    {
     BookLab::TextLine &line=text.getLine(cursor.y);

     if( cursor.span<line.list.getLen() )
       {
        func(line.list[cursor.span]);
       }
    }
 }

template <class Func>
void TextWindow::applyToSpan(Func func) const
 {
  if( cursor.y<text.getLineCount() )
    {
     BookLab::TextLine &line=text.getLine(cursor.y);

     if( cursor.span<line.list.getLen() )
       {
        func(line.list[cursor.span]);
       }
    }
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

void TextWindow::fill()
 {
  spanlen=0;

  applyToSpan( [&] (BookLab::Span &span)
                   {
                    fill(Range(span.body));

                    showFormat.assert(span.format.name,span.format.notResolved());
                    showLink.assert(span.ref.name,span.ref.notResolved());

                   } );
 }

void TextWindow::flush() const
 {
  applyToSpan( [&] (BookLab::Span &span) { span.body=String(getCurSpan()); } );
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

ulen TextWindow::getSpanCount() const
 {
  if( cursor.y>=text.getLineCount() ) return 0;

  BookLab::TextLine &line=text.getLine(cursor.y);

  return line.list.getLen();
 }

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

  Coord x=fs.dx0+dxc;

  if( cursor.y<text.getLineCount() )
    {
     BookLab::TextLine &line=text.getLine(cursor.y);

     for(ulen j : IndLim(line.list.getLen()) )
       if( j==cursor.span )
         {
          auto str=getCurSpan();

          ulen split=Min(cursor.x,str.len);

          auto str1=str.prefix(split);

          x+=font->text(str1).dx;

          break;
         }
       else
         {
          BookLab::Span &span=line.list[j];

          x+=span.dx+space_dx;
         }
    }

  ulen X=(ulen)x;

  if( X<sx.pos )
    {
     setPosX(PosSub(X,(ulen)dxc));
    }
  else if( X>=sx.pos+sx.page )
    {
     setPosX(X-sx.page+1+(ulen)dxc+(ulen)space_dx);
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

void TextWindow::insChar(Char ch) // TODO
 {
  if( SymCharIsPrintable(ch) && spanlen<spanbuf.getLen() && cursor.y<text.getLineCount() )
    {
     BookLab::TextLine &line=text.getLine(cursor.y);

     ulen count=line.list.getLen();

     if( cursor.span<count )
       {
        InsChar(spanbuf.getPtr(),spanlen,Min(cursor.x,spanlen),ch);

        spanlen++;
        cursor.x++;

        Coord dx=MulSize(count-1,space_dx);

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

        Replace_max(text_dx,dx);

        changed.assert();

        showCursor();
       }
     else
       {
        // TODO
       }
    }
 }

void TextWindow::splitSpan() // TODO
 {
  changed.assert();
 }

void TextWindow::splitLine() // TODO
 {
  changed.assert();
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
  save();

  clean();

  text.blank();

  changed.assert();
 }

void TextWindow::load(DynArray<BookLab::TextLine> *pad)
 {
  clean();

  text.load(pad);

  fill();

  changed.assert();
 }

void TextWindow::save() const
 {
  flush();

  text.save();
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

  if( size.y>=fs.dy )
    {
     sy.page=ulen(size.y/fs.dy);
    }
  else
    {
     sy.page=1;
    }

  sx.total=(ulen)AddSize(text_dx,fs.dx0+fs.dx1+2*dxc);
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

void TextWindow::draw(DrawBuf buf,bool) const
 {
  if( !cache() )
    {
     buf.erase(Black);

     return;
    }

  struct Draw : NoCopy
   {
    Coord dxc;
    const FontSize &fs;

    MCoord skew;
    MCoord delta;

    VColor vc_cursor;
    VColor vc_end;

    Draw(const Config &cfg,const FontSize &fs_)
     : fs(fs_)
     {
      dxc=+cfg.cursor_dx;

      skew=Fraction(fs.skew);
      delta=MulDiv(skew,fs.dy-fs.by,fs.dy);

      vc_cursor=+cfg.cursor;
      vc_end=+cfg.endspan;
     }

    void cursor(SmoothDrawArt &art,Point base,bool on)
     {
      MCoord w=Fraction(dxc);
      MCoord x=Fraction(base.x);
      MCoord y=Fraction(base.y-fs.by);
      MCoord h=Fraction(fs.dy);

      FigureCursor fig(x-delta,y,y+h,w,skew);

      if( on )
        {
         fig.solid(art,vc_cursor);
        }
      else
        {
         fig.loop(art,HalfPos,w/3,vc_cursor);
        }
     }

    void end(SmoothDrawArt &art,Point base,Coord space_dx)
     {
      Pane end(base.x,base.y-fs.by,space_dx,fs.dy);

      FigureSkew fig(MPane(end).subX(delta),skew);

      fig.solid(art,vc_end);
     }
   };

  Draw draw(cfg,fs);

  const Font &font=cfg.font.get();

  VColor vc=+cfg.text;

  ulen count=text.getLineCount();

  Coord shift_x=Coord(sx.pos);

  Point base(fs.dx0-shift_x,fs.by);

  base=base.addXY(draw.dxc);

  Pane pane=getPane();

  SmoothDrawArt art(buf);

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
             BookLab::Span &span=line.list[j];

             Coord dx=0;

             {
              Point q=p;

              auto str=getCurSpan();

              ulen split=Min(cursor.x,str.len);

              auto str1=str.prefix(split);
              auto str2=str.part(split);

              Coord dx1=font->text(str1).dx;
              Coord dx2=font->text(str2).dx;

              font->text(buf,pane,q,str1,vc);

              q.x+=dx1;

              {
               draw.cursor(art,q,cursor_on);

               q.x+=draw.dxc;

               dx=draw.dxc;
              }

              font->text(buf,pane,q,str2,vc);

              dx+=dx1+dx2;
             }

             if( HasSpec(span) )
               {
                VColor vc = Alert(span)? +cfg.alert : +cfg.line ;

                art.path(+cfg.width,vc,p,p.addX(dx-1));
               }

             p.x+=dx;

             draw.end(art,p,space_dx);

             p.x+=space_dx;
            }
          else
            {
             BookLab::Span &span=line.list[j];

             font->text(buf,pane,p,Range(span.body),vc);

             if( HasSpec(span) )
               {
                VColor vc = Alert(span)? +cfg.alert : +cfg.line ;

                art.path(+cfg.width,vc,p,p.addX(span.dx-1));
               }

             p.x+=span.dx;

             draw.end(art,p,space_dx);

             p.x+=space_dx;
            }
       }
     else
       {
        if( i==cursor.y ) draw.cursor(art,base,cursor_on);
       }

     base.y+=fs.dy;
    }
 }

 // base

void TextWindow::open()
 {
  focus=false;
  cursor_on=false;

  defer_tick.stop();
 }

void TextWindow::close()
 {
  defer_tick.stop();
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

void TextWindow::looseCapture() // TODO
 {
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
       moveLeft(repeat);
      }
     break;

     case VKey_Right :
      {
       moveRight(repeat);
      }
     break;

     case VKey_Home :
      {
       moveHome();
      }
     break;

     case VKey_End :
      {
       moveEnd();
      }
     break;

     case VKey_Tab :
      {
       moveTab();
      }
     break;

     case VKey_Up :
      {
       moveUp(repeat);
      }
     break;

     case VKey_Down :
      {
       moveDown(repeat);
      }
     break;

     case VKey_PageUp :
      {
       if( kmod&KeyMod_Ctrl )
         moveTop();
       else
         moveUp(repeat*sy.page);
      }
     break;

     case VKey_PageDown :
      {
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
       // TODO
      }
     break;

     case VKey_BackSpace :
      {
       // TODO
      }
     break;
    }
 }

void TextWindow::react_Char(Char ch)
 {
  if( ch!=' ' ) insChar(ch);
 }

void TextWindow::react_LeftClick(Point point,MouseKey mkey) // TODO
 {
  Used(point);
  Used(mkey);
 }

void TextWindow::react_LeftUp(Point point,MouseKey mkey) // TODO
 {
  Used(point);
  Used(mkey);
 }

void TextWindow::react_Move(Point point,MouseKey mkey) // TODO
 {
  Used(point);
  Used(mkey);
 }

void TextWindow::react_Leave() // TODO
 {
 }

void TextWindow::react_Wheel(Point point,MouseKey mkey,Coord delta) // TODO
 {
  Used(point);
  Used(mkey);
  Used(delta);
 }

/* class ScrollTextWindow */

void ScrollTextWindow::changed()
 {
  layout();

  redraw();
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

/* class TextEditor */

void TextEditor::format_pressed()
 {
  String name=edit_format.getString();

  edit_text.setFormat(name);

  edit_format.alert(name.getLen()!=0);
 }

void TextEditor::link_pressed()
 {
  String name=edit_link.getString();

  edit_text.setLink(name);

  edit_link.alert(name.getLen()!=0);
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
   connector_show_link(this,&TextEditor::show_link,edit_text.showLink)
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

void TextEditor::blank()
 {
  edit_text.blank();
 }

void TextEditor::load(DynArray<BookLab::TextLine> *pad)
 {
  show_format(Null,false);
  show_link(Null,false);

  edit_text.load(pad);
 }

void TextEditor::save() const
 {
  edit_text.save();
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

