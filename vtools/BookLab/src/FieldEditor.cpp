/* FieldEditor.cpp */
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

#include <inc/FieldEditor.h>

#include <CCore/inc/video/LayoutCombo.h>

namespace App {

/* class FieldBool */

FieldBool::FieldBool(SubWindowHost &host,const Config &cfg_)
 : ComboWindow(host),
   cfg(cfg_),

   check_true(wlist,cfg.check_cfg),
   lab_true(wlist,cfg.lab_cfg,"True"_def)
 {
  wlist.insTop(check_true,lab_true);
 }

FieldBool::~FieldBool()
 {
 }

 // methods

Point FieldBool::getMinSize() const
 {
  Coord space=+cfg.space_dxy;

  LayToRightCenter lay{Lay(check_true),LayLeft(lab_true)};

  return lay.getMinSize(space);
 }

void FieldBool::setField(bool *pad_)
 {
  pad=pad_;

  if( pad ) setValue(*pad);
 }

void FieldBool::set(bool *def_pad,bool def)
 {
  if( def_pad )
    {
     *def_pad=def;

     if( !def && pad ) *pad=getValue();
    }
  else
    {
     if( pad ) *pad=getValue();
    }
 }

void FieldBool::noField()
 {
  pad=0;
 }

 // drawing

void FieldBool::layout()
 {
  Coord space=+cfg.space_dxy;

  LayToRightCenter lay{Lay(check_true),LayLeft(lab_true)};

  lay.setPlace(getPane(),space);
 }

/* class CoordWindow */

bool CoordWindow::CheckText(PtrLen<const Char> text)
 {
  for(; +text && SymCharIsSpace(*text) ;++text);

  if( !text ) return false;

  if(Char ch=*text; ch=='+' || ch=='-' )
    {
     ++text;

     if( !text ) return false;
    }

  for(; +text && SymCharDecValue(*text)>=0 ;++text);

  return !text;
 }

Coord CoordWindow::TextToValue(PtrLen<const Char> text)
 {
  for(; +text && SymCharIsSpace(*text) ;++text);

  if( !text ) return 0;

  bool neg=false;

  if(Char ch=*text; ch=='+' || ch=='-' )
    {
     if( ch=='-' ) neg=true;

     ++text;

     if( !text ) return 0;
    }

  Coord val=0;

  for(int dig; +text && (dig=SymCharDecValue(*text))>=0 ;++text)
    {
     val=10*val+dig;
    }

  if( neg ) val=-val;

  return val;
 }

void CoordWindow::edit_changed()
 {
  alert(!CheckText(getText()));
 }

CoordWindow::CoordWindow(SubWindowHost &host,const ConfigType &cfg)
 : LineEditWindow(host,cfg),

   connector_edit_changed(this,&CoordWindow::edit_changed,changed)
 {
 }

CoordWindow::~CoordWindow()
 {
 }

 // methods

Coord CoordWindow::getValue() const
 {
  return TextToValue(getText());
 }

void CoordWindow::setValue(Coord val)
 {
  printf("#;",val);

  alert(false);
 }

/* class ULenWindow */

bool ULenWindow::CheckText(PtrLen<const Char> text)
 {
  for(; +text && SymCharIsSpace(*text) ;++text);

  if( !text ) return false;

  for(; +text && SymCharDecValue(*text)>=0 ;++text);

  return !text;
 }

ulen ULenWindow::TextToValue(PtrLen<const Char> text)
 {
  for(; +text && SymCharIsSpace(*text) ;++text);

  if( !text ) return 0;

  ulen val=0;

  for(int dig; +text && (dig=SymCharDecValue(*text))>=0 ;++text)
    {
     val=10*val+dig;
    }

  return val;
 }

void ULenWindow::edit_changed()
 {
  alert(!CheckText(getText()));
 }

ULenWindow::ULenWindow(SubWindowHost &host,const ConfigType &cfg)
 : LineEditWindow(host,cfg),

   connector_edit_changed(this,&ULenWindow::edit_changed,changed)
 {
 }

ULenWindow::~ULenWindow()
 {
 }

 // methods

ulen ULenWindow::getValue() const
 {
  return TextToValue(getText());
 }

void ULenWindow::setValue(ulen val)
 {
  printf("#;",val);

  alert(false);
 }

/* class FieldCoord */

FieldCoord::FieldCoord(SubWindowHost &host,const Config &cfg_)
 : ComboWindow(host),
   cfg(cfg_),

   edit(wlist,cfg.edit_cfg)
 {
  wlist.insTop(edit);
 }

FieldCoord::~FieldCoord()
 {
 }

 // methods

Point FieldCoord::getMinSize() const
 {
  return edit.getMinSize();
 }

void FieldCoord::setField(Coord *pad_)
 {
  pad=pad_;

  if( pad ) setValue(*pad);
 }

void FieldCoord::set(bool *def_pad,bool def)
 {
  if( def_pad )
    {
     *def_pad=def;

     if( !def && pad ) *pad=getValue();
    }
  else
    {
     if( pad ) *pad=getValue();
    }
 }

void FieldCoord::noField()
 {
  pad=0;
 }

 // drawing

void FieldCoord::layout()
 {
  LayTop(edit).setPlace(getPane(),0);
 }

/* class FieldString */

FieldString::FieldString(SubWindowHost &host,const Config &cfg_)
 : ComboWindow(host),
   cfg(cfg_),

   edit(wlist,cfg.edit_cfg)
 {
  wlist.insTop(edit);
 }

FieldString::~FieldString()
 {
 }

 // methods

Point FieldString::getMinSize() const
 {
  return edit.getMinSize();
 }

void FieldString::setField(String *pad_)
 {
  pad=pad_;

  if( pad ) setValue(*pad);
 }

void FieldString::set(bool *def_pad,bool def)
 {
  if( def_pad )
    {
     *def_pad=def;

     if( !def && pad ) *pad=getValue();
    }
  else
    {
     if( pad ) *pad=getValue();
    }
 }

void FieldString::noField()
 {
  pad=0;
 }

 // drawing

void FieldString::layout()
 {
  LayTop(edit).setPlace(getPane(),0);
 }

/* class FieldULen */

FieldULen::FieldULen(SubWindowHost &host,const Config &cfg_)
 : ComboWindow(host),
   cfg(cfg_),

   edit(wlist,cfg.edit_cfg)
 {
  wlist.insTop(edit);
 }

FieldULen::~FieldULen()
 {
 }

 // methods

Point FieldULen::getMinSize() const
 {
  return edit.getMinSize();
 }

void FieldULen::setField(ulen *pad_)
 {
  pad=pad_;

  if( pad ) setValue(*pad);
 }

void FieldULen::set(bool *def_pad,bool def)
 {
  if( def_pad )
    {
     *def_pad=def;

     if( !def && pad ) *pad=getValue();
    }
  else
    {
     if( pad ) *pad=getValue();
    }
 }

void FieldULen::noField()
 {
  pad=0;
 }

 // drawing

void FieldULen::layout()
 {
  LayTop(edit).setPlace(getPane(),0);
 }

/* class FieldWindow */

void FieldWindow::noField()
 {
  if( field_ctrl )
    {
     def_pad=0;

     field_ctrl->noField();

     field_ctrl=0;

     wlist.del(field);

     field=0;

     btn_set.disable();
     check_def.disable();
     lab_def.disable();

     redraw();
    }
 }

void FieldWindow::setFieldCtrl(FieldControl *field_ctrl_,SubWindow *field_,bool withdef)
 {
  if( field_ctrl==field_ctrl_ )
    {
     btn_set.enable();

     check_def.enable(withdef);
     lab_def.enable(withdef);
    }
  else
    {
     if( field_ctrl )
       {
        field_ctrl->noField();

        wlist.del(field);
       }

     field_ctrl=field_ctrl_;
     field=field_;

     wlist.insBottom(field);

     btn_set.enable();

     check_def.enable(withdef);
     lab_def.enable(withdef);

     redraw();
    }
 }

template <class W,class T>
void FieldWindow::setFieldCtrl(W &sub,T *pad)
 {
  def_pad=0;

  sub.setField(pad);

  setFieldCtrl(&sub,&sub,false);
 }

template <class W,class T>
void FieldWindow::setFieldCtrl(W &sub,BookLab::OptDataBase<T> *pad)
 {
  def_pad=&pad->def;

  sub.setField(&pad->data);

  setFieldCtrl(&sub,&sub,true);

  check_def.check(*def_pad);
 }

void FieldWindow::setField(bool *pad)
 {
  setFieldCtrl(field_bool,pad);
 }

void FieldWindow::setField(BookLab::OptDataBase<bool> *pad)
 {
  setFieldCtrl(field_bool,pad);
 }

void FieldWindow::setField(Coord *pad)
 {
  setFieldCtrl(field_Coord,pad);
 }

void FieldWindow::setField(BookLab::OptDataBase<Coord> *pad)
 {
  setFieldCtrl(field_Coord,pad);
 }

void FieldWindow::setField(String *pad)
 {
  setFieldCtrl(field_String,pad);
 }

void FieldWindow::setField(BookLab::OptDataBase<ulen> *pad)
 {
  setFieldCtrl(field_ulen,pad);
 }

void FieldWindow::set_pressed()
 {
  if( field_ctrl )
    {
     field_ctrl->set(def_pad,check_def.isChecked());

     modified.assert();
    }
 }

FieldWindow::FieldWindow(SubWindowHost &host,const Config &cfg_,BookLab::Book &book_)
 : ComboWindow(host),
   cfg(cfg_),

   book(book_),

   btn_set(wlist,cfg.btn_cfg,"Set"_def),
   check_def(wlist,cfg.check_cfg),
   lab_def(wlist,cfg.lab_cfg,"default"_def),

   field_bool(wlist,cfg.field_bool_cfg),
   field_Coord(wlist,cfg.field_Coord_cfg),
   field_String(wlist,cfg.field_String_cfg),
   field_ulen(wlist,cfg.field_ulen_cfg),

   connector_set_pressed(this,&FieldWindow::set_pressed,btn_set.pressed)
 {
  wlist.insTop(btn_set,check_def,lab_def);

  btn_set.disable();
  check_def.disable();
  lab_def.disable();
 }

FieldWindow::~FieldWindow()
 {
 }

 // methods

Point FieldWindow::getMinSize() const
 {
  Coord space=+cfg.space_dxy;

  LayToRightCenter lay1{Lay(check_def),LayLeft(lab_def)};

  LaySame lay2{Lay(field_bool),Lay(field_Coord),Lay(field_String),Lay(field_ulen)};

  LayToBottom lay{LayLeft(btn_set),lay1,lay2};

  return ExtLay(lay).getMinSize(space);
 }

void FieldWindow::setField(BookLab::PadType pad)
 {
  if( +pad )
    pad.apply( [&] (auto *pad) { setField(pad); } );
  else
    noField();
 }

 // drawing

void FieldWindow::layout()
 {
  Coord space=+cfg.space_dxy;

  LayToRightCenter lay1{Lay(check_def),LayLeft(lab_def)};

  LaySame lay2{Lay(field_bool),Lay(field_Coord),Lay(field_String),Lay(field_ulen)};

  LayToBottom lay{LayLeft(btn_set),lay1,lay2};

  ExtLay(lay).setPlace(getPane(),space);
 }

void FieldWindow::drawBack(DrawBuf buf,bool) const
 {
  buf.erase(+cfg.back);
 }

/* class FieldFrame */

FieldFrame::FieldFrame(Desktop *desktop,const Config &cfg_,BookLab::Book &book,Signal<> &update)
 : DragFrame(desktop,cfg_.frame_cfg,update),
   cfg(cfg_),

   client(*this,cfg.client_cfg,book),

   modified(client.modified)
 {
  bindClient(client);
 }

FieldFrame::~FieldFrame()
 {
 }

 // base

void FieldFrame::dying()
 {
  DragFrame::dying();

  place=host->getPlace();
  has_place=true;
 }

 // create

Pane FieldFrame::getPane(StrLen title) const
 {
  Point size=getMinSize(false,title,client.getMinSize());

  if( has_place ) return Pane(place.getBase(),Sup(place.getSize(),size));

  return GetWindowPlace(desktop,+cfg.pos_ry,size);
 }

} // namespace App

