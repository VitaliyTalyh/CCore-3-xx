/* EditWindow.cpp */
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

#include <inc/EditWindow.h>

#include <CCore/inc/video/FigureLib.h>
#include <CCore/inc/video/LayoutCombo.h>

namespace App {

/* class InnerBookLabWindow */

void InnerBookLabWindow::clean()
 {
  block_cache=false;

  ok=false;
  refs.erase();
  tree={};
  cursor=Null;
  size=Null;

  sx.beg();
  sy.beg();

  field_frame.setField(Null);

  if( field_frame.isAlive() ) field_frame.askClose();
 }

void InnerBookLabWindow::update(bool mod)
 {
  ok=false;
  refs.erase();
  tree={};
  size=Null;

  field_frame.setField(cursor.ref.pad);

  changed.assert();

  if( mod )
    {
     book.unlink();

     modified.assert();
    }
 }

bool InnerBookLabWindow::cache() const
 {
  if( block_cache )
    {
     noCursor();

     return false;
    }

  try
    {
     if( !ok )
       {
        refs.erase();
        tree={};

        auto result=book.prepare(cfg,refs,cursor);

        size=result.size;

        if( result.erase_cursor && cursor.isPad() ) noCursor();

        struct Span
         {
          Coord a;
          Coord b;

          explicit Span(const BookLab::PaneRef &ref)
           {
            Coord y=ref.pane.y;
            Coord dy=ref.pane.dy;

            a=y;
            b=y+dy;
           }
         };

        tree=IntervalTree<Coord>(Range(refs), [] (const BookLab::PaneRef &ref) { return Span(ref); } );

        ok=true;
       }

     return true;
    }
  catch(...)
    {
     block_cache=true;

     noCursor();

     return false;
    }
 }

BookLab::PaneRef InnerBookLabWindow::getRef(Point &point) const
 {
  Point base=getBase();

  point+=base;

  if( !cache() ) return Null;

  const BookLab::PaneRef *ptr=refs.getPtr();

  BookLab::PaneRef ret;

  tree.find(point.y, [ptr,point,&ret] (ulen index)
                                      {
                                       auto &obj=ptr[index];

                                       if( obj.pane.contains(point) )
                                        {
                                         ret=obj;

                                         return false;
                                        }

                                       return true;

                                      } );

  return ret;
 }

void InnerBookLabWindow::setCursor(BookLab::PaneRef cur)
 {
  cursor=cur;

  redraw();

  field_frame.setField(cur.ref.pad);

  if( field_frame.isDead() ) field_frame.create(getFrame());

  temp_frame.probe(cursor.ref);
 }

void InnerBookLabWindow::noCursor() const
 {
  if( cursor.isPad() )
    {
     cursor=Null;

     field_frame.setField(Null);

     temp_frame.probe(Null);
    }
 }

bool InnerBookLabWindow::insItem(BookLab::FrameList *ptr)
 {
  book.insAfter(ptr);

  return true;
 }

bool InnerBookLabWindow::insItem(BookLab::ItemList *ptr)
 {
  book.insAfter(ptr);

  return true;
 }

bool InnerBookLabWindow::insItem(BookLab::Element *ptr)
 {
  if( ins_frame.isDead() )
    {
     auto anyptr=ptr->ptr.getPtr();

     ins_frame.enablePlace(true, anyptr.hasType<BookLab::Scope>() || anyptr.hasType<BookLab::Section>() ,false);

     ins_frame.create(getFrame());

     disableFrameReact();
    }

  return false;
 }

void InnerBookLabWindow::insFirstElement()
 {
  if( ins_frame.isDead() )
    {
     ins_frame.enablePlace(false,false,false);

     ins_frame.create(getFrame());

     disableFrameReact();
    }
 }

bool InnerBookLabWindow::insExtern(BookLab::Element *ptr)
 {
  if( ins_frame.isDead() )
    {
     auto anyptr=ptr->ptr.getPtr();

     ins_frame.enablePlace(true, anyptr.hasType<BookLab::Scope>() || anyptr.hasType<BookLab::Section>() ,true);

     ins_frame.create(getFrame());

     disableFrameReact();
    }

  return false;
 }

void InnerBookLabWindow::listPrev()
 {
  if( cursor.handleListPrev()==BookLab::HandleUpdate ) update(false);
 }

void InnerBookLabWindow::listNext()
 {
  if( cursor.handleListNext()==BookLab::HandleUpdate ) update(false);
 }

void InnerBookLabWindow::listBeg()
 {
  if( cursor.handleListBeg()==BookLab::HandleUpdate ) update(false);
 }

void InnerBookLabWindow::listEnd()
 {
  if( cursor.handleListEnd()==BookLab::HandleUpdate ) update(false);
 }

void InnerBookLabWindow::addXPos(ulen delta,bool mul_flag)
 {
  sx.add(Delta(delta,mul_flag));

  scroll_x.assert(sx.pos);

  redraw();
 }

void InnerBookLabWindow::subXPos(ulen delta,bool mul_flag)
 {
  sx.sub(Delta(delta,mul_flag));

  scroll_x.assert(sx.pos);

  redraw();
 }

void InnerBookLabWindow::addYPos(ulen delta,bool mul_flag)
 {
  sy.add(Delta(delta,mul_flag));

  scroll_y.assert(sy.pos);

  redraw();
 }

void InnerBookLabWindow::subYPos(ulen delta,bool mul_flag)
 {
  sy.sub(Delta(delta,mul_flag));

  scroll_y.assert(sy.pos);

  redraw();
 }

void InnerBookLabWindow::begXPos()
 {
  sx.beg();

  scroll_x.assert(sx.pos);

  redraw();
 }

void InnerBookLabWindow::endXPos()
 {
  sx.end();

  scroll_x.assert(sx.pos);

  redraw();
 }

void InnerBookLabWindow::begYPos()
 {
  sy.beg();

  scroll_y.assert(sy.pos);

  redraw();
 }

void InnerBookLabWindow::endYPos()
 {
  sy.end();

  scroll_y.assert(sy.pos);

  redraw();
 }

void InnerBookLabWindow::addYPosPage()
 {
  sy.addPage();

  scroll_y.assert(sy.pos);

  redraw();
 }

void InnerBookLabWindow::subYPosPage()
 {
  sy.subPage();

  scroll_y.assert(sy.pos);

  redraw();
 }

void InnerBookLabWindow::posX(ulen pos)
 {
  sx.setPos(pos);

  redraw();
 }

void InnerBookLabWindow::posY(ulen pos)
 {
  sy.setPos(pos);

  redraw();
 }

void InnerBookLabWindow::updated(unsigned flags)
 {
  if( flags&LayoutUpdate ) ok=false;
 }

void InnerBookLabWindow::ins_destroyed()
 {
  enableFrameReact();

  bool ret=false;

  if( cursor.isElement() )
    {
     ret=book.insElement(ins_frame.getData(),cursor);
    }
  else
    {
     ret=book.insElement(ins_frame.getData());
    }

  if( ret )
    {
     update(true);
    }
 }

void InnerBookLabWindow::field_modified(bool flag)
 {
  if( flag )
    {
     update(true);
    }
  else
    {
     book.unlink();

     modified.assert();
    }
 }

void InnerBookLabWindow::askCopy(ulen slot)
 {
  temp_frame.copy(slot,cursor.ref);
 }

void InnerBookLabWindow::askPast(ulen slot)
 {
  if( temp_frame.past(slot,cursor.ref) ) update(true);
 }

void InnerBookLabWindow::askProbe()
 {
  temp_frame.probe(cursor.ref);
 }

InnerBookLabWindow::InnerBookLabWindow(SubWindowHost &host,const Config &cfg_,Signal<> &update)
 : SubWindow(host),
   cfg(cfg_),

   ins_frame(host.getFrameDesktop(),cfg.ins_cfg,update),
   field_frame(host.getFrameDesktop(),cfg.field_cfg,update,book),
   temp_frame(host.getFrameDesktop(),cfg.temp_cfg,update,book),

   connector_posX(this,&InnerBookLabWindow::posX),
   connector_posY(this,&InnerBookLabWindow::posY),

   connector_updated(this,&InnerBookLabWindow::updated,host.getFrame()->updated),
   connector_ins_destroyed(this,&InnerBookLabWindow::ins_destroyed,ins_frame.destroyed),
   connector_field_modified(this,&InnerBookLabWindow::field_modified,field_frame.modified),

   connector_askCopy(this,&InnerBookLabWindow::askCopy,temp_frame.askCopy),
   connector_askPast(this,&InnerBookLabWindow::askPast,temp_frame.askPast),
   connector_askProbe(this,&InnerBookLabWindow::askProbe,temp_frame.askProbe),

   keyPressed(field_frame.keyPressed)
 {
 }

InnerBookLabWindow::~InnerBookLabWindow()
 {
 }

 // methods

Point InnerBookLabWindow::getMinSize(Point cap) const
 {
  if( !cache() ) return Inf(Point(100,100),cap);

  Point delta=2*Point::Diag(+cfg.border_dxy);

  return Inf(size,cap-delta)+delta;
 }

void InnerBookLabWindow::blank()
 {
  clean();

  book.blank();

  changed.assert();
 }

ErrorText InnerBookLabWindow::load(StrLen file_name,PtrLen<char> ebuf)
 {
  clean();

  ErrorText ret=book.load(file_name,ebuf);

  changed.assert();

  return ret;
 }

ErrorText InnerBookLabWindow::save(StrLen file_name,PtrLen<char> ebuf) const
 {
  field_frame.flush();

  return book.save(file_name,ebuf);
 }

ErrorText InnerBookLabWindow::link(PtrLen<char> ebuf)
 {
  if( book.isLinked() ) return Success;

  field_frame.flush();

  ErrorText ret=book.link(ebuf);

  try { field_frame.link(); } catch(...) {}

  changed.assert();

  return ret;
 }

ErrorText InnerBookLabWindow::bookTo(StrLen file_name,PtrLen<char> ebuf) const
 {
  return book.book(file_name,ebuf);
 }

ErrorText InnerBookLabWindow::bookincTo(StrLen file_name,PtrLen<char> ebuf) const
 {
  return book.bookinc(file_name,ebuf);
 }

void InnerBookLabWindow::showTemp()
 {
  if( temp_frame.isDead() ) temp_frame.create(getFrame());
 }

void InnerBookLabWindow::insItem()
 {
  bool ret=false;

  if( auto result=book.insFirst() )
    {
     if( result==BookLab::HandleUpdate )
       {
        ret=true;
       }
     else
       {
        insFirstElement();
       }
    }
  else
    {
     if( cursor.isPad() )
       {
        cursor.applyToPad( [&] (auto *ptr) { if( ptr ) ret=insItem(ptr); } );
       }
    }

  if( ret )
    {
     update(true);
    }
 }

void InnerBookLabWindow::insExtern()
 {
  bool ret=false;

  if( cursor.isPad() )
    {
     cursor.applyToPad( [&] (auto *ptr) { if( ptr ) ret=insExtern(ptr); } );
    }

  if( ret )
    {
     update(true);
    }
 }

void InnerBookLabWindow::delItem()
 {
  temp_frame.copy(cursor.ref);

  showTemp();

  if( book.delItem(cursor) )
    {
     update(true);
    }
 }

void InnerBookLabWindow::upItem()
 {
  if( cursor.handleMovePrev()==BookLab::HandleUpdate ) update(true);
 }

void InnerBookLabWindow::downItem()
 {
  if( cursor.handleMoveNext()==BookLab::HandleUpdate ) update(true);
 }

 // special methods

void InnerBookLabWindow::adjustScrollPos()
 {
  sx.adjustPos();
  sy.adjustPos();
 }

 // drawing

void InnerBookLabWindow::layout()
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

  Point s=getSize()-2*Point::Diag(+cfg.border_dxy);

  if( s>Null )
    {
     sx.total=(ulen)AddSize(size.x,size.x/2);
     sx.page=(ulen)s.x;

     sy.total=(ulen)AddSize(size.y,s.y/2);
     sy.page=(ulen)s.y;
    }
  else
    {
     sx.total=(ulen)size.x;
     sx.page=1;

     sy.total=(ulen)AddSize(size.y,s.y/2);
     sy.page=1;
    }
 }

void InnerBookLabWindow::draw(DrawBuf buf,DrawParam draw_param) const
 {
  if( !cache() )
    {
     buf.erase(Black);

     return;
    }

  draw_param.erase(buf,+cfg.back);

  Point base=getBase();

  Pane pane=getPane();

  SmoothDrawArt art(buf);

  // back

  MCoord width=+cfg.width;

  // border

  MPane p(pane);

  if( !p ) return;

  FigureBox fig(p);

  if( focus ) fig.loop(art,width,+cfg.focus);

  // body

  pane=pane.shrink(+cfg.border_dxy);

  if( !pane ) return;

  buf=buf.cutRebase(pane);

  if( cursor.isPad() )
    {
     buf.erase(cursor.pane-base,focus? +cfg.cursor : +cfg.gray_cursor );
    }

  book.draw(cfg,buf,-base);
 }

 // base

void InnerBookLabWindow::open()
 {
  focus=false;
 }

 // keyboard

void InnerBookLabWindow::gainFocus()
 {
  if( Change(focus,true) ) redraw();
 }

void InnerBookLabWindow::looseFocus()
 {
  if( Change(focus,false) ) redraw();
 }

 // mouse

MouseShape InnerBookLabWindow::getMouseShape(Point point,KeyMod) const
 {
  BookLab::PaneRef ref=getRef(point);

  if( ref.testMode() ) return Mouse_Hand;

  return Mouse_Arrow;
 }

 // user input

void InnerBookLabWindow::react(UserAction action)
 {
  action.dispatch(*this);
 }

void InnerBookLabWindow::react_Key(VKey vkey,KeyMod kmod,unsigned repeat)
 {
  switch( vkey )
    {
     case VKey_Insert :
      {
       if( kmod&KeyMod_Alt )
         insExtern();
       else
         insItem();
      }
     break;

     case VKey_Delete :
      {
       delItem();
      }
     break;

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

     case VKey_Comma :
      {
       upItem();
      }
     break;

     case VKey_Period :
      {
       downItem();
      }
     break;

     case VKey_Up :
      {
       if( kmod&KeyMod_Ctrl )
         listPrev();
       else
         subYPos(repeat,!(kmod&KeyMod_Shift));
      }
     break;

     case VKey_Down :
      {
       if( kmod&KeyMod_Ctrl )
         listNext();
       else
         addYPos(repeat,!(kmod&KeyMod_Shift));
      }
     break;

     case VKey_Home :
      {
       if( kmod&KeyMod_Ctrl )
         listBeg();
       else
         begXPos();
      }
     break;

     case VKey_End :
      {
       if( kmod&KeyMod_Ctrl )
         listEnd();
       else
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

void InnerBookLabWindow::react_LeftClick(Point point,MouseKey mkey)
 {
  BookLab::PaneRef pane_ref=getRef(point);

  bool move_flag=mkey&MouseKey_Shift;

  if( auto result=pane_ref.handleMode(point,move_flag) )
    {
     if( result==BookLab::HandleUpdate )
       {
        update(move_flag);
       }

     return;
    }

  if( pane_ref.isPad() )
    {
     setCursor(pane_ref);
    }
 }

void InnerBookLabWindow::react_RightClick(Point point,MouseKey mkey)
 {
  Used(point);
  Used(mkey);
 }

void InnerBookLabWindow::react_Wheel(Point point,MouseKey mkey,Coord delta)
 {
  BookLab::PaneRef pane_ref=getRef(point);

  bool move_flag=mkey&MouseKey_Shift;

  if( auto result=pane_ref.handleList(point, delta>0 ,move_flag) )
    {
     if( result==BookLab::HandleUpdate )
       {
        update(move_flag);
       }

     return;
    }

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

/* class BookLabWindow */

void BookLabWindow::changed()
 {
  layout();

  redraw();
 }

BookLabWindow::BookLabWindow(SubWindowHost &host,const ConfigType &cfg,Signal<> &update)
 : ScrollableWindow<InnerBookLabWindow>(host,cfg,update),

   connector_changed(this,&BookLabWindow::changed,window.changed),

   modified(window.modified),
   keyPressed(window.keyPressed)
 {
  wlist.enableTabFocus(false);
  wlist.enableClickFocus(false);

  setDockY(DockLeft,false);
 }

BookLabWindow::~BookLabWindow()
 {
 }

 // drawing

void BookLabWindow::drawBack(DrawBuf,DrawParam &draw_param) const
 {
  draw_param.back_done=false;
 }

/* class EditWindow */

void EditWindow::errorMsg(StrLen etext)
 {
  try
    {
     String text(etext);

     msg_frame.setInfo(text);

     msg_frame.create(getFrame(),+cfg.text_Error);

     disableFrameReact();
    }
  catch(CatchType)
    {
    }
 }

bool EditWindow::saveFile(StrLen file_name)
 {
  SimpleArray<char> temp(64_KByte);

  auto result=book.save(file_name,Range(temp));

  if( result.ok )
    {
     clearModified();

     return true;
    }
  else
    {
     errorMsg(result.etext);

     return false;
    }
 }

void EditWindow::book_modified()
 {
  text_file.alert();
 }

void EditWindow::save_pressed()
 {
  askSave.assert();
 }

void EditWindow::msg_destroyed()
 {
  enableFrameReact();
 }

void EditWindow::book_destroyed()
 {
  enableFrameReact();

  StrLen file_name=book_frame.getFilePath();

  if( +file_name )
    {
     SimpleArray<char> temp(64_KByte);

     auto result=book.book(file_name,Range(temp));

     if( !result.ok )
       {
        errorMsg(result.etext);
       }
    }
 }

void EditWindow::bookinc_destroyed()
 {
  enableFrameReact();

  StrLen file_name=bookinc_frame.getFilePath();

  if( +file_name )
    {
     SimpleArray<char> temp(64_KByte);

     auto result=book.bookinc(file_name,Range(temp));

     if( !result.ok )
       {
        errorMsg(result.etext);
       }
    }
 }

void EditWindow::tick()
 {
  if( !tick_count )
    {
     tick_count=60_sectick;

     book.collect();
    }

  tick_count--;
 }

EditWindow::EditWindow(SubWindowHost &host,const Config &cfg_,Signal<> &update)
 : ComboWindow(host),
   cfg(cfg_),

   label_file(wlist,cfg.label_cfg,cfg.text_File),
   text_file(wlist,cfg.text_cfg,+cfg.text_NoFile),

   btn_save(wlist,cfg.btn_cfg,cfg.text_Save),
   btn_link(wlist,cfg.btn_cfg,cfg.text_Link),
   btn_book(wlist,cfg.btn_cfg,cfg.text_Book),

   line1(wlist,cfg.dline_cfg),

   knob_ins(wlist,cfg.knob_cfg,KnobShape::FacePlus),
   knob_up(wlist,cfg.knob_cfg,KnobShape::FaceUp),
   knob_down(wlist,cfg.knob_cfg,KnobShape::FaceDown),

   line2(wlist,cfg.dline_cfg),

   knob_del(wlist,cfg.knob_cfg,KnobShape::FaceCross),

   line3(wlist,cfg.dline_cfg),

   btn_extern(wlist,cfg.btn_cfg,cfg.text_Extern),
   btn_temp(wlist,cfg.btn_cfg,cfg.text_Temp),

   book(wlist,cfg.book_cfg,update),

   msg_frame(host.getFrameDesktop(),cfg.msg_cfg,update),
   book_frame(host.getFrameDesktop(),cfg.file_cfg,update,{true,".book.ddl"_str}),
   bookinc_frame(host.getFrameDesktop(),cfg.file_cfg,update,{true,".bookinc.ddl"_str}),

   connector_book_modified(this,&EditWindow::book_modified,book.modified),
   connector_save_pressed(this,&EditWindow::save_pressed,btn_save.pressed),
   connector_link_pressed(this,&EditWindow::link_pressed,btn_link.pressed),
   connector_book_pressed(this,&EditWindow::saveBook,btn_book.pressed),
   connector_extern_pressed(&book,&BookLabWindow::insExtern,btn_extern.pressed),
   connector_temp_pressed(&book,&BookLabWindow::showTemp,btn_temp.pressed),
   connector_msg_destroyed(this,&EditWindow::msg_destroyed,msg_frame.destroyed),
   connector_book_destroyed(this,&EditWindow::book_destroyed,book_frame.destroyed),
   connector_bookinc_destroyed(this,&EditWindow::bookinc_destroyed,bookinc_frame.destroyed),

   input(this),

   connector_ins_pressed(&book,&BookLabWindow::insItem,knob_ins.pressed),
   connector_up_pressed(&book,&BookLabWindow::upItem,knob_up.pressed),
   connector_down_pressed(&book,&BookLabWindow::downItem,knob_down.pressed),
   connector_del_pressed(&book,&BookLabWindow::delItem,knob_del.pressed),

   keyPressed(book.keyPressed)
 {
  defer_tick=input.create(&EditWindow::tick);

  wlist.insTop(label_file,text_file,btn_save,btn_link,btn_book,line1,knob_ins,knob_up,knob_down,line2,knob_del,line3,btn_extern,btn_temp,book);

  // book_frame

  book_frame.addFilter("*.book.ddl"_c);
  book_frame.addFilter("*"_c,false);

  // bookinc_frame

  bookinc_frame.addFilter("*.bookinc.ddl"_c);
  bookinc_frame.addFilter("*"_c,false);
 }

EditWindow::~EditWindow()
 {
 }

 // methods

Point EditWindow::getMinSize() const
 {
  Coord space=+cfg.space_dxy;

  LayToRightCenter lay1{Lay(label_file),Lay(text_file)};

  LayToRight lay2{LayCenterY(btn_save),LayCenterY(btn_link),LayCenterY(btn_book),Lay(line1),
                  LayCenterY(knob_ins),LayCenterY(knob_up),LayCenterY(knob_down),Lay(line2),
                  LayCenterY(knob_del),Lay(line3),
                  LayCenterY(btn_extern),LayAlignLeft(LayCenterY{btn_temp})};

  LayToBottom lay{ExtLayNoSpace{LayToBottom{lay1,lay2}},Lay(book)};

  return lay.getMinSize(space);
 }

bool EditWindow::isModified() const
 {
  return text_file.isAlerted();
 }

void EditWindow::blank()
 {
  book.blank();

  text_file.setText(+cfg.text_NoFile);

  has_file=false;

  clearModified();

  book.setFocus();

  layout();

  redraw();
 }

void EditWindow::load(StrLen file_name)
 {
  blank();

  String text(file_name);

  SimpleArray<char> temp(64_KByte);

  auto result=book.load(file_name,Range(temp));

  if( result.ok )
    {
     text_file.setText(text);

     has_file=true;
    }
  else
    {
     text_file.setText(+cfg.text_NoFile);

     errorMsg(result.etext);
    }

  layout();

  redraw();
 }

bool EditWindow::save()
 {
  if( !has_file ) return false;

  return saveFile(Range(text_file.getText()));
 }

void EditWindow::save(StrLen file_name)
 {
  String text(file_name);

  if( saveFile(file_name) )
    {
     text_file.setText(text);

     has_file=true;

     layout();

     redraw();
    }
 }

bool EditWindow::link()
 {
  SimpleArray<char> temp(64_KByte);

  auto result=book.link(Range(temp));

  if( !result.ok )
    {
     errorMsg(result.etext);

     return false;
    }

  return true;
 }

void EditWindow::saveBook()
 {
  if( !link() ) return;

  if( book.hasStartPage() )
    {
     book_frame.create(getFrame(),+cfg.text_SaveFile);
    }
  else
    {
     bookinc_frame.create(getFrame(),+cfg.text_SaveFile);
    }

  disableFrameReact();
 }

 // drawing

void EditWindow::layout()
 {
  Coord space=+cfg.space_dxy;

  LayToRightCenter lay1{Lay(label_file),Lay(text_file)};

  LayToRight lay2{LayCenterY(btn_save),LayCenterY(btn_link),LayCenterY(btn_book),Lay(line1),
                  LayCenterY(knob_ins),LayCenterY(knob_up),LayCenterY(knob_down),Lay(line2),
                  LayCenterY(knob_del),Lay(line3),
                  LayCenterY(btn_extern),LayAlignLeft(LayCenterY{btn_temp})};

  LayToBottom lay{ExtLayNoSpace{LayToBottom{lay1,lay2}},Lay(book)};

  lay.setPlace(getPane(),space);
 }

void EditWindow::drawBack(DrawBuf buf,DrawParam &draw_param) const
 {
  PaneSub sub(getPane(),book.getPlace());

  draw_param.erase(buf,sub,+cfg.back);
 }

 // base

void EditWindow::open()
 {
  ComboWindow::open();

  book.setFocus();

  tick_count=0;

  defer_tick.start();
 }

void EditWindow::close()
 {
  defer_tick.stop();

  ComboWindow::close();
 }

} // namespace App


