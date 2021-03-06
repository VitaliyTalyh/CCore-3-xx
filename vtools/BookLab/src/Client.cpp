/* Client.cpp */
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

#include <inc/Client.h>

#include <CCore/inc/video/LayoutCombo.h>

namespace App {

/* class ClientWindow */

void ClientWindow::menuOff()
 {
  if( cascade_menu.isAlive() ) cascade_menu.destroy();

  menu.unselect();
 }

void ClientWindow::fileOff()
 {
  if( file_frame.isAlive() )
    {
     cont=ContinueNone;

     file_frame.destroy();
    }
 }

void ClientWindow::msgOff()
 {
  if( msg_frame.isAlive() )
    {
     cont=ContinueNone;

     msg_frame.destroy();
    }
 }

void ClientWindow::askSave(Continue cont_)
 {
  msgOff();

  cont=cont_;

  msg_frame.create(getFrame(),+cfg.text_Alert);

  disableFrameReact();
 }

void ClientWindow::startOpen(Point point)
 {
  fileOff();

  file_frame.setNewFile(false);

  cont=ContinueOpen;

  file_frame.create(getFrame(),point,+cfg.text_LoadFile);

  disableFrameReact();
 }

void ClientWindow::startSave(Point point)
 {
  fileOff();

  file_frame.setNewFile(true);

  cont=ContinueSaveAs;

  file_frame.create(getFrame(),point,+cfg.text_SaveFile);

  disableFrameReact();
 }

void ClientWindow::menuAction(int id,Point point)
 {
  switch( id )
    {
     case MenuFileNew :
      {
       if( sub_win.isModified() )
         {
          askSave(ContinueNew);
         }
       else
         {
          sub_win.blank();
         }
      }
     break;

     case MenuFileOpen :
      {
       if( sub_win.isModified() )
         {
          file_point=point;

          askSave(ContinueStartOpen);
         }
       else
         {
          startOpen(point);
         }
      }
     break;

     case MenuFileSave :
      {
       if( !sub_win.save() ) startSave(point);
      }
     break;

     case MenuFileSaveAs :
      {
       startSave(point);
      }
     break;

     case MenuFileExit :
      {
       askFrameClose();
      }
     break;

     case MenuOptionsUserPref :
      {
       doUserPref.assert(point);
      }
     break;

     case MenuOptionsAppPref :
      {
       doAppPref.assert(point);
      }
     break;
    }
 }

void ClientWindow::menuAction(int id)
 {
  menuAction(id,toScreen(action_base));
 }

void ClientWindow::menu_selected(int id,Point point)
 {
  if( cascade_menu.isAlive() ) cascade_menu.destroy();

  switch( id )
    {
     case MenuFile :
      {
       cascade_menu.create(getFrame(),menu_file_data,point);
      }
     break;

     case MenuOptions :
      {
       cascade_menu.create(getFrame(),menu_opt_data,point);
      }
     break;
    }
 }

void ClientWindow::cascade_menu_selected(int id,Point point)
 {
  menuOff();

  sub_win.setFocus();

  menuAction(id,point);
 }

void ClientWindow::cascade_menu_pressed(VKey vkey,KeyMod kmod)
 {
  menu.put_Key(vkey,kmod);
 }

void ClientWindow::file_destroyed()
 {
  enableFrameReact();

  switch( Replace(cont,ContinueNone) )
    {
     case ContinueOpen :
      {
       StrLen file_name=file_frame.getFilePath();

       if( +file_name )
         {
          sub_win.load(file_name);
         }
      }
     break;

     case ContinueSaveAs :
      {
       StrLen file_name=file_frame.getFilePath();

       if( +file_name )
         {
          sub_win.save(file_name);
         }
      }
     break;
    }
 }

void ClientWindow::msg_destroyed()
 {
  enableFrameReact();

  switch( msg_frame.getButtonId() )
    {
     case Button_Yes :
      {
       sub_win.save();
      }
     break;

     case Button_Cancel :
      {
       cont=ContinueNone;
      }
     return;
    }

  switch( Replace(cont,ContinueNone) )
    {
     case ContinueNew :
      {
       sub_win.blank();
      }
     break;

     case ContinueStartOpen :
      {
       startOpen(file_point);
      }
     break;

     case ContinueExit :
      {
       destroyFrame();
      }
     break;
    }
 }

void ClientWindow::ask_save()
 {
  menuAction(MenuFileSave);
 }

void ClientWindow::field_key(UserAction action)
 {
  struct React
   {
    ClientWindow *obj;

    void react_Key(VKey vkey,KeyMod kmod)
     {
      switch( vkey )
        {
         case VKey_F2 :
         case VKey_F7 :
         case VKey_F8 :
         case VKey_Insert :
          {
           obj->react_Key(vkey,kmod);
          }
         break;
        };
     }

   } react{this};

  action.dispatch(react);
 }

ClientWindow::ClientWindow(SubWindowHost &host,const Config &cfg_,OptFileName opt_,Signal<> &update)
 : ComboWindow(host),
   cfg(cfg_),
   opt(opt_),

   menu(wlist,cfg.menu_cfg,menu_data),
   cascade_menu(host.getFrameDesktop(),cfg.cascade_menu_cfg),
   sub_win(wlist,cfg.sub_win_cfg,update),
   file_frame(host.getFrameDesktop(),cfg.file_cfg,{true,".booklab.ddl"_str}),
   msg_frame(host.getFrameDesktop(),cfg.msg_cfg),

   connector_menu_selected(this,&ClientWindow::menu_selected,menu.selected),
   connector_cascade_menu_selected(this,&ClientWindow::cascade_menu_selected,cascade_menu.selected),
   connector_cascade_menu_pressed(this,&ClientWindow::cascade_menu_pressed,cascade_menu.pressed),
   connector_file_destroyed(this,&ClientWindow::file_destroyed,file_frame.destroyed),
   connector_msg_destroyed(this,&ClientWindow::msg_destroyed,msg_frame.destroyed),
   connector_ask_save(this,&ClientWindow::ask_save,sub_win.askSave),
   connector_field_key(this,&ClientWindow::field_key,sub_win.keyPressed)
 {
  cascade_menu.connectUpdate(update);

  wlist.insTop(menu,sub_win);

  wlist.enableTabFocus(false);

  menu_data(+cfg.menu_File,MenuFile)
           (+cfg.menu_Options,MenuOptions);

  menu_file_data(+cfg.menu_New,MenuFileNew)
                (+cfg.menu_Open,MenuFileOpen)
                (MenuSeparator)
                (+cfg.menu_Save,MenuFileSave)
                (+cfg.menu_SaveAs,MenuFileSaveAs)
                (MenuSeparator)
                (+cfg.menu_Exit,MenuFileExit);

  menu_opt_data(+cfg.menu_Global,MenuOptionsUserPref)
               (+cfg.menu_App,MenuOptionsAppPref);

  // file frame

  file_frame.addFilter("*.booklab.ddl"_c);
  file_frame.addFilter("*"_c,false);

  // msg frame

  msg_frame.setInfo(+cfg.text_AskSave)
           .add(+cfg.text_Yes,Button_Yes)
           .add(+cfg.text_No,Button_No)
           .add(+cfg.text_Cancel,Button_Cancel);
 }

ClientWindow::~ClientWindow()
 {
 }

 // methods

void ClientWindow::prepare(const AppState &app_state)
 {
  sub_win.prepare(app_state);
 }

Point ClientWindow::getMinSize() const
 {
  LayToBottom lay{Lay(menu),Lay(sub_win)};

  return lay.getMinSize(0);
 }

 // base

void ClientWindow::open()
 {
  wlist.open();

  sub_win.setFocus();

  if( Change(opt.ok,false) )
    {
     sub_win.load(opt.file_name);
    }
 }

 // drawing

void ClientWindow::layout()
 {
  LayToBottom lay{Lay(menu),Lay(sub_win)};

  lay.setPlace(getPane(),0);

  // action_base

  action_base=Point::Diag( menu.getPlace().dy );
 }

 // user input

void ClientWindow::react(UserAction action)
 {
  action.dispatch(*this);
 }

void ClientWindow::react_Key(VKey vkey,KeyMod kmod)
 {
  switch( vkey )
    {
     case VKey_F2 :
      {
       menuAction(MenuFileSave);
      }
     break;

     case VKey_F3 :
      {
       menuAction(MenuFileOpen);
      }
     break;

     case VKey_F7 :
      {
       sub_win.link();
      }
     break;

     case VKey_F8 :
      {
       sub_win.saveBook();
      }
     break;

     case VKey_F10 :
      {
       menu.setFocus();
      }
     break;

     case VKey_Esc :
      {
       menuOff();

       sub_win.setFocus();
      }
     break;

     default:
      {
       wlist.put_Key(vkey,kmod);
      }
    }
 }

void ClientWindow::react_LeftClick(Point point,MouseKey mkey)
 {
  menuOff();

  wlist.put_LeftClick(point,mkey);
 }

void ClientWindow::react_RightClick(Point point,MouseKey mkey)
 {
  menuOff();

  wlist.put_RightClick(point,mkey);
 }

void ClientWindow::react_other(UserAction action)
 {
  wlist.react(action);
 }

 // AliveControl

void ClientWindow::dying()
 {
  AppState app_state;

  app_state.place.set(getFrameHost()->getPlace());

  sub_win.save(app_state);

  app_state.save();
 }

bool ClientWindow::askDestroy()
 {
  if( sub_win.isModified() )
    {
     askSave(ContinueExit);

     return false;
    }

  return true;
 }

} // namespace App

