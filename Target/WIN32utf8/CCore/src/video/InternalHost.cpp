/* InternalHost.cpp */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 3.01
//
//  Tag: Target/WIN32
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2017 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#include <CCore/inc/video/InternalHost.h>

#include <CCore/inc/CapString.h>

#include <CCore/inc/Exception.h>

namespace CCore {
namespace Video {
namespace Internal {

/* class WindowClass */

void WindowClass::regClass()
 {
  Win32::HModule hModule=(Win32::HModule)Win32::GetModuleHandleW(0);

  if( hModule==0 )
    {
     error=Sys::NonNullError();

     return;
    }

  Win32::WindowClass wndcls;

  wndcls.cb=sizeof wndcls;
  wndcls.class_extra=0;
  wndcls.window_extra=sizeof (Win32::UPtrType);

  wndcls.hModule=hModule;

  wndcls.style=Win32::ClassStyle_VRedraw|Win32::ClassStyle_HRedraw|Win32::ClassStyle_DClick;

  wndcls.hCursor=WindowsHost::GetCursor(Mouse_Arrow);

  wndcls.hBrush=0;
  wndcls.hIcon=hIcon;
  wndcls.hIconSm=hIconSm;
  wndcls.menu_res=0;

  wndcls.class_name="9613CA28BE7A78F0-2DD3FC07C7330F49-WindowsHost";
  wndcls.wnd_proc=WindowsHost::WndProc;

  atom=Win32::RegisterClassExA(&wndcls);

  if( atom==0 )
    {
     error=Sys::NonNullError();
    }
  else
    {
     error=Sys::NoError;
    }
 }

Win32::HIcon WindowClass::CreateIcon(Picture pict,Coord dx,Coord dy)
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::WindowClass::CreateIcon(...) : #;";

  Win32::IconInfo info{};

  WindowBitmap mask_bmp({dx,dy});
  WindowBitmap bmp({dx,dy});
  DesktopColor ground=pict->defaultGround();

  DrawBuf color_buf(bmp.getPlane());

  color_buf.erase(ground);

  pict->draw(color_buf,dx,dy);

  DrawBuf mask_buf(mask_bmp.getPlane());

  mask_buf.erase(Black);

  info.icon_flag=true;
  info.bmpMask=mask_bmp.getHandle();
  info.bmpColor=bmp.getHandle();

  auto ret=Win32::CreateIconIndirect(&info);

  SysGuard(format,ret!=0);

  return ret;
 }

WindowClass::WindowClass()
 : atom(0),error(Sys::NoError),hIcon(0),hIconSm(0)
 {
 }

WindowClass::~WindowClass()
 {
  if( hIcon ) Win32::DestroyIcon(hIcon);
  if( hIconSm ) Win32::DestroyIcon(hIconSm);
 }

void WindowClass::setIcon(Picture pict)
 {
  if( !hIcon )
    {
     Coord dx=Coord(Win32::GetSystemMetrics(Win32::SysMetric_DXIcon));
     Coord dy=Coord(Win32::GetSystemMetrics(Win32::SysMetric_DYIcon));

     hIcon=CreateIcon(pict,dx,dy);
    }

  if( !hIconSm )
    {
     Coord dx=Coord(Win32::GetSystemMetrics(Win32::SysMetric_DXIconSm));
     Coord dy=Coord(Win32::GetSystemMetrics(Win32::SysMetric_DYIconSm));

     hIconSm=CreateIcon(pict,dx,dy);
    }
 }

Win32::Atom WindowClass::getAtom(const char *format)
 {
  if( error ) SysGuardFailed(format,error);

  if( atom!=0 ) return atom;

  regClass();

  if( error ) SysGuardFailed(format,error);

  return atom;
 }

/* class WindowPaint */

WindowPaint::WindowPaint(Win32::HWindow hWnd_)
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::WindowPaint::WindowPaint(...) : #;";

  if( hWnd_==0 )
    {
     Printf(Exception,format,"null hWnd");
    }

  hWnd=hWnd_;

  hGD=Win32::BeginPaint(hWnd_,&pd);

  SysGuard(format,hGD!=0);
 }

WindowPaint::~WindowPaint()
 {
  Win32::EndPaint(hWnd,&pd);
 }

/* class WindowsHost */

Win32::HCursor WindowsHost::CursorTable[]=
 {
  0,
  Win32::LoadCursorA(0,Win32::MakeIntResource(Win32::SysCursor_Arrow)),
  Win32::LoadCursorA(0,Win32::MakeIntResource(Win32::SysCursor_IBeam)),
  Win32::LoadCursorA(0,Win32::MakeIntResource(Win32::SysCursor_Wait)),
  Win32::LoadCursorA(0,Win32::MakeIntResource(Win32::SysCursor_Cross)),
  Win32::LoadCursorA(0,Win32::MakeIntResource(Win32::SysCursor_Hand)),
  Win32::LoadCursorA(0,Win32::MakeIntResource(Win32::SysCursor_No)),
  Win32::LoadCursorA(0,Win32::MakeIntResource(Win32::SysCursor_Help)),
  Win32::LoadCursorA(0,Win32::MakeIntResource(Win32::SysCursor_SizeLeftRight)),
  Win32::LoadCursorA(0,Win32::MakeIntResource(Win32::SysCursor_SizeUpDown)),
  Win32::LoadCursorA(0,Win32::MakeIntResource(Win32::SysCursor_SizeUpLeft)),
  Win32::LoadCursorA(0,Win32::MakeIntResource(Win32::SysCursor_SizeUpRight)),
  Win32::LoadCursorA(0,Win32::MakeIntResource(Win32::SysCursor_SizeAll)),
  Win32::LoadCursorA(0,Win32::MakeIntResource(Win32::SysCursor_UpArrow)),
  Win32::LoadCursorA(0,Win32::MakeIntResource(Win32::SysCursor_AppStarting))
 };

WindowClass WindowsHost::WindowClassObject CCORE_INITPRI_3 ;

Win32::HWindow WindowsHost::HMainWindow=0;

PlatformRandom WindowsHost::Random CCORE_INITPRI_3 ;

void WindowsHost::guardAlive(const char *format)
 {
  if( hWnd==0 )
    {
     Printf(Exception,format,"window is dead");
    }
 }

void WindowsHost::guardDead(const char *format)
 {
  if( hWnd!=0 )
    {
     Printf(Exception,format,"window is alive");
    }
 }

void WindowsHost::GuardMaxSize(const char *format,Point max_size)
 {
  if( max_size<=Null )
    {
     Printf(Exception,format,"bad max_size");
    }
 }

void WindowsHost::GuardPane(const char *format,Pane pane,Point max_size)
 {
  if( !(pane.getSize()<=max_size) )
    {
     Printf(Exception,format,"bad pane size");
    }
 }

void WindowsHost::guardCreate(const char *format,Point max_size)
 {
  guardDead(format);

  GuardMaxSize(format,max_size);
 }

void WindowsHost::guardCreate(const char *format,Pane pane,Point max_size)
 {
  guardDead(format);

  GuardMaxSize(format,max_size);

  GuardPane(format,pane,max_size);
 }

VKey WindowsHost::ToVKey(Win32::MsgWParam wParam)
 {
  switch( wParam )
    {
     case Win32::VK_Escape    : return VKey_Esc;
     case Win32::VK_F1        : return VKey_F1;
     case Win32::VK_F2        : return VKey_F2;
     case Win32::VK_F3        : return VKey_F3;
     case Win32::VK_F4        : return VKey_F4;
     case Win32::VK_F5        : return VKey_F5;
     case Win32::VK_F6        : return VKey_F6;
     case Win32::VK_F7        : return VKey_F7;
     case Win32::VK_F8        : return VKey_F8;
     case Win32::VK_F9        : return VKey_F9;
     case Win32::VK_F10       : return VKey_F10;
     case Win32::VK_F11       : return VKey_F11;
     case Win32::VK_F12       : return VKey_F12;

     case Win32::VK_Tilda     : return VKey_Tilda;

     case '1'                 : return VKey_1;
     case '2'                 : return VKey_2;
     case '3'                 : return VKey_3;
     case '4'                 : return VKey_4;
     case '5'                 : return VKey_5;
     case '6'                 : return VKey_6;
     case '7'                 : return VKey_7;
     case '8'                 : return VKey_8;
     case '9'                 : return VKey_9;
     case '0'                 : return VKey_0;

     case Win32::VK_Minus     : return VKey_Minus;
     case Win32::VK_Plus      : return VKey_Equal;
     case Win32::VK_BackSlash : return VKey_BackSlash;
     case Win32::VK_Back      : return VKey_BackSpace;
     case Win32::VK_Tab       : return VKey_Tab;

     case 'Q'                 : return VKey_q;
     case 'W'                 : return VKey_w;
     case 'E'                 : return VKey_e;
     case 'R'                 : return VKey_r;
     case 'T'                 : return VKey_t;
     case 'Y'                 : return VKey_y;
     case 'U'                 : return VKey_u;
     case 'I'                 : return VKey_i;
     case 'O'                 : return VKey_o;
     case 'P'                 : return VKey_p;

     case Win32::VK_OBracket  : return VKey_OpenBracket;
     case Win32::VK_CBracket  : return VKey_CloseBracket;
     case Win32::VK_Return    : return VKey_Enter;

     case Win32::VK_CapsLock  : return VKey_CapsLock;

     case 'A'                 : return VKey_a;
     case 'S'                 : return VKey_s;
     case 'D'                 : return VKey_d;
     case 'F'                 : return VKey_f;
     case 'G'                 : return VKey_g;
     case 'H'                 : return VKey_h;
     case 'J'                 : return VKey_j;
     case 'K'                 : return VKey_k;
     case 'L'                 : return VKey_l;

     case Win32::VK_Colon     : return VKey_Semicolon;
     case Win32::VK_Quote     : return VKey_Quote;

     case Win32::VK_Shift     : return VKey_Shift;

     case 'Z'                 : return VKey_z;
     case 'X'                 : return VKey_x;
     case 'C'                 : return VKey_c;
     case 'V'                 : return VKey_v;
     case 'B'                 : return VKey_b;
     case 'N'                 : return VKey_n;
     case 'M'                 : return VKey_m;

     case Win32::VK_Comma     : return VKey_Comma;
     case Win32::VK_Period    : return VKey_Period;
     case Win32::VK_Slash     : return VKey_Slash;

     case Win32::VK_Control   : return VKey_Ctrl;
     case Win32::VK_Alt       : return VKey_Alt;

     case Win32::VK_Space     : return VKey_Space;

     case Win32::VK_Scroll    : return VKey_ScrollLock;
     case Win32::VK_Pause     : return VKey_Pause;

     case Win32::VK_Insert    : return VKey_Insert;
     case Win32::VK_Home      : return VKey_Home;
     case Win32::VK_PgUp      : return VKey_PageUp;
     case Win32::VK_Delete    : return VKey_Delete;
     case Win32::VK_End       : return VKey_End;
     case Win32::VK_PgDown    : return VKey_PageDown;

     case Win32::VK_Up        : return VKey_Up;
     case Win32::VK_Left      : return VKey_Left;
     case Win32::VK_Down      : return VKey_Down;
     case Win32::VK_Right     : return VKey_Right;

     case Win32::VK_NumLock   : return VKey_NumLock;
     case Win32::VK_Div       : return VKey_NumSlash;
     case Win32::VK_Mul       : return VKey_NumAsterisk;
     case Win32::VK_Sub       : return VKey_NumMinus;
     case Win32::VK_Add       : return VKey_NumPlus;

     case Win32::VK_Numpad7   : return VKey_Num7;
     case Win32::VK_Numpad8   : return VKey_Num8;
     case Win32::VK_Numpad9   : return VKey_Num9;
     case Win32::VK_Numpad4   : return VKey_Num4;
     case Win32::VK_Numpad5   : return VKey_Num5;
     case Win32::VK_Numpad6   : return VKey_Num6;
     case Win32::VK_Numpad1   : return VKey_Num1;
     case Win32::VK_Numpad2   : return VKey_Num2;
     case Win32::VK_Numpad3   : return VKey_Num3;

     case Win32::VK_Numpad0   : return VKey_NumIns;
     case Win32::VK_Decimal   : return VKey_NumDel;

     default: return VKey_Null;
    }
 }

KeyMod WindowsHost::GetKeyMod(bool ext)
 {
  KeyMod kmod=KeyMod_Null;

  if( ext ) kmod|=KeyMod_Ext;

  if( Win32::GetKeyState(Win32::VK_Shift)&Win32::KeyStateDown ) kmod|=KeyMod_Shift;

  if( Win32::GetKeyState(Win32::VK_Control)&Win32::KeyStateDown ) kmod|=KeyMod_Ctrl;

  if( Win32::GetKeyState(Win32::VK_CapsLock)&Win32::KeyStateToggle ) kmod|=KeyMod_CapsLock;

  if( Win32::GetKeyState(Win32::VK_NumLock)&Win32::KeyStateToggle ) kmod|=KeyMod_NumLock;

  if( Win32::GetKeyState(Win32::VK_Scroll)&Win32::KeyStateToggle ) kmod|=KeyMod_ScrollLock;

  return kmod;
 }

KeyMod WindowsHost::GetKeyMod()
 {
  KeyMod kmod=KeyMod_Null;

  if( Win32::GetKeyState(Win32::VK_Shift)&Win32::KeyStateDown ) kmod|=KeyMod_Shift;

  if( Win32::GetKeyState(Win32::VK_Control)&Win32::KeyStateDown ) kmod|=KeyMod_Ctrl;

  if( Win32::GetKeyState(Win32::VK_Alt)&Win32::KeyStateDown ) kmod|=KeyMod_Alt;

  if( Win32::GetKeyState(Win32::VK_CapsLock)&Win32::KeyStateToggle ) kmod|=KeyMod_CapsLock;

  if( Win32::GetKeyState(Win32::VK_NumLock)&Win32::KeyStateToggle ) kmod|=KeyMod_NumLock;

  if( Win32::GetKeyState(Win32::VK_Scroll)&Win32::KeyStateToggle ) kmod|=KeyMod_ScrollLock;

  return kmod;
 }

MouseKey WindowsHost::ToMouseKey(Win32::MsgWParam wParam)
 {
  MouseKey mkey=MouseKey_Null;

  if( wParam&Win32::MouseKey_Left ) mkey|=MouseKey_Left;

  if( wParam&Win32::MouseKey_Right ) mkey|=MouseKey_Right;

  if( wParam&Win32::MouseKey_Shift ) mkey|=MouseKey_Shift;

  if( wParam&Win32::MouseKey_Control ) mkey|=MouseKey_Ctrl;

  if( Win32::GetKeyState(Win32::VK_Alt)&Win32::KeyStateDown ) mkey|=MouseKey_Alt;

  return mkey;
 }

Point WindowsHost::ToPoint(Win32::MsgLParam lParam)
 {
  return Point((Coord)Win32::SLoWord(lParam),(Coord)Win32::SHiWord(lParam));
 }

Point WindowsHost::ToSize(Win32::MsgLParam lParam)
 {
  return Point((Coord)Win32::LoWord(lParam),(Coord)Win32::HiWord(lParam));
 }

Coord WindowsHost::RandomLen(Coord len)
 {
  int percent=Random.select(128);

  return Coord( (len/2)+((len/4)*percent)/128 );
 }

Coord WindowsHost::RandomPos(Coord len)
 {
  int percent=Random.select(128);

  return Coord( (len*percent)/128 );
 }

void WindowsHost::setTrack()
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::setTrack() : #;";

  Win32::TrackMouseDesc desc;

  desc.cb=sizeof desc;
  desc.flags=track_flags;
  desc.hWnd=hWnd;
  desc.hover_time=hover_time;

  SysGuard(format, Win32::TrackMouseEvent(&desc) );
 }

void WindowsHost::mouseShape(VKey vkey,KeyMod kmod)
 {
  if( vkey==VKey_Shift || vkey==VKey_Ctrl || vkey==VKey_Alt )
    {
     frame->setMouseShape(getMousePos(),kmod);
    }
 }

Win32::MsgResult WindowsHost::msgProc(Win32::HWindow hWnd_,Win32::MsgCode message,Win32::MsgWParam wParam,Win32::MsgLParam lParam)
 {
  switch( message )
    {
     case Win32::WM_GetMinMaxInfo :
      {
       Win32::MinMaxInfo *info=(Win32::MinMaxInfo *)lParam;

       Replace_min<int>(info->max_size.x,max_size.x);
       Replace_min<int>(info->max_size.y,max_size.y);
      }
     return 0;

     case Win32::WM_NcCreate :
      {
       hWnd=hWnd_;
       is_alive=true;

       if( is_main ) HMainWindow=hWnd_;

       auto ret=Win32::DefWindowProcA(hWnd_,message,wParam,lParam);

       try { frame->alive(); } catch(...) {}

       return ret;
      }

     case Win32::WM_NcDestroy :
      {
       try { frame->dead(); } catch(...) {}

       hWnd=0;
       is_alive=false;

       if( is_main )
         {
          HMainWindow=0;

          Win32::PostQuitMessage(0);
         }

       return Win32::DefWindowProcA(hWnd_,message,wParam,lParam);
      }

     case Win32::WM_Paint :
      {
       WindowPaint wp(hWnd);

       if( !buf_dirty ) buf.draw(wp.getGD(),wp.getPane());

       frame->paintDone(Replace_null(token));
      }
     return 0;

     case Win32::WM_Move :
      {
       origin=ToPoint(lParam);
      }
     return 0;

     case Win32::WM_Size :
      {
       frame->setSize(ToSize(lParam),buf_dirty);
      }
     return 0;

     case Win32::WM_SetFocus :
      {
       frame->gainFocus();
      }
     return 0;

     case Win32::WM_KillFocus :
      {
       frame->looseFocus();
      }
     return 0;

     case Win32::WM_CaptureChanged :
      {
       frame->looseCapture();
      }
     return 0;

     case Win32::WM_KeyDown :
      {
       unsigned repeat=lParam&0xFFFFu;
       bool ext=(lParam>>24)&1;

       VKey vkey=ToVKey(wParam);
       KeyMod kmod=GetKeyMod(ext);

       mouseShape(vkey,kmod);

       if( repeat>1 )
         frame->put_Key(vkey,kmod,repeat);
       else
         frame->put_Key(vkey,kmod);
      }
     return 0;

     case Win32::WM_SysKeyDown :
      {
       unsigned repeat=lParam&0xFFFFu;
       bool ext=(lParam>>24)&1u;
       bool alt=(lParam>>29)&1u;

       VKey vkey=ToVKey(wParam);
       KeyMod kmod=GetKeyMod(ext);

       if( alt ) kmod|=KeyMod_Alt;

       mouseShape(vkey,kmod);

       if( repeat>1 )
         frame->put_Key(vkey,kmod,repeat);
       else
         frame->put_Key(vkey,kmod);
      }
     return 0;

     case Win32::WM_KeyUp :
      {
       unsigned repeat=lParam&0xFFFFu;
       bool ext=(lParam>>24)&1u;

       VKey vkey=ToVKey(wParam);
       KeyMod kmod=GetKeyMod(ext);

       mouseShape(vkey,kmod);

       if( repeat>1 )
         frame->put_KeyUp(vkey,kmod,repeat);
       else
         frame->put_KeyUp(vkey,kmod);
      }
     return 0;

     case Win32::WM_SysKeyUp :
      {
       unsigned repeat=lParam&0xFFFFu;
       bool ext=(lParam>>24)&1u;
       bool alt=(lParam>>29)&1u;

       VKey vkey=ToVKey(wParam);
       KeyMod kmod=GetKeyMod(ext);

       if( alt ) kmod|=KeyMod_Alt;

       mouseShape(vkey,kmod);

       if( repeat>1 )
         frame->put_KeyUp(vkey,kmod,repeat);
       else
         frame->put_KeyUp(vkey,kmod);
      }
     return 0;

     case Win32::WM_Char :
      {
       if( wParam<256 )
         {
          char ch=(char)wParam;
          unsigned repeat=lParam&0xFFFFu;

          if( repeat>1 )
            frame->put_Char(ch,repeat);
          else
            frame->put_Char(ch);
         }
      }
     return 0;

     case Win32::WM_SysChar :
      {
       if( wParam<256 )
         {
          char ch=(char)wParam;
          unsigned repeat=lParam&0xFFFFu;

          if( repeat>1 )
            frame->put_AltChar(ch,repeat);
          else
            frame->put_AltChar(ch);
         }
      }
     return 0;

     case Win32::WM_LButtonDown :
      {
       MouseKey mkey=ToMouseKey(wParam);
       Point point=ToPoint(lParam);

       frame->put_LeftClick(point,mkey);
      }
     return 0;

     case Win32::WM_LButtonUp :
      {
       MouseKey mkey=ToMouseKey(wParam);
       Point point=ToPoint(lParam);

       frame->put_LeftUp(point,mkey);
      }
     return 0;

     case Win32::WM_LButtonDClick :
      {
       MouseKey mkey=ToMouseKey(wParam);
       Point point=ToPoint(lParam);

       frame->put_LeftDClick(point,mkey);
      }
     return 0;

     case Win32::WM_RButtonDown :
      {
       MouseKey mkey=ToMouseKey(wParam);
       Point point=ToPoint(lParam);

       frame->put_RightClick(point,mkey);
      }
     return 0;

     case Win32::WM_RButtonUp :
      {
       MouseKey mkey=ToMouseKey(wParam);
       Point point=ToPoint(lParam);

       frame->put_RightUp(point,mkey);
      }
     return 0;

     case Win32::WM_RButtonDClick :
      {
       MouseKey mkey=ToMouseKey(wParam);
       Point point=ToPoint(lParam);

       frame->put_RightDClick(point,mkey);
      }
     return 0;

     case Win32::WM_MouseMove :
      {
       if( track_flags )
         {
          if( !track_on )
            {
             setTrack();

             track_on=true;
            }
         }

       MouseKey mkey=ToMouseKey(wParam);
       Point point=ToPoint(lParam);

       frame->put_Move(point,mkey);
      }
     return 0;

     case Win32::WM_MouseWheel :
      {
       MouseKey mkey=ToMouseKey(Win32::LoWord(wParam));
       Coord delta=Win32::SHiWord(wParam)/Win32::WheelDelta;
       Point point=ToPoint(lParam)-origin;

       frame->put_Wheel(point,mkey,delta);
      }
     return 0;

     case Win32::WM_MouseHover :
      {
       MouseKey mkey=ToMouseKey(wParam);
       Point point=ToPoint(lParam);

       track_on=false;

       frame->put_Hover(point,mkey);
      }
     return 0;

     case Win32::WM_MouseLeave :
      {
       track_on=false;

       frame->put_Leave();
      }
     return 0;

     case Win32::WM_NcHitTest :
      {
       Point point=ToPoint(lParam);

       frame->setMouseShape(point-origin,GetKeyMod());
      }
     return Win32::HitCode_Client;

     case Win32::WM_SetCursor :
      {
       // do nothing
      }
     return true;

     case Win32::WM_Close :
      {
       frame->askClose();
      }
     return 0;

     default:
      {
       //Printf(Con,"msg #;\n",message);

       return Win32::DefWindowProcA(hWnd_,message,wParam,lParam);
      }
    }
 }

Win32::MsgResult WindowsHost::ObjWndProc(WindowsHost *obj,Win32::HWindow hWnd,Win32::MsgCode message,Win32::MsgWParam wParam,Win32::MsgLParam lParam)
 {
  try
    {
     return obj->msgProc(hWnd,message,wParam,lParam);
    }
  catch(...)
    {
     return 0;
    }
 }

Win32::MsgResult WIN32_CALLTYPE WindowsHost::WndProc(Win32::HWindow hWnd,Win32::MsgCode message,Win32::MsgWParam wParam,Win32::MsgLParam lParam)
 {
  TaskEventHost.add<MsgEvent>(message,MsgEvent::Entry);

  if( message==Win32::WM_NcCreate )
    {
     Win32::CreateData *ctx=(Win32::CreateData *)lParam;

     Win32::SetWindowLongA(hWnd,0,(Win32::UPtrType)(ctx->arg));
    }

  void *arg=(void *)Win32::GetWindowLongA(hWnd,0);

  Win32::MsgResult ret;

  if( !arg )
    {
     // WM_GetMinMaxInfo comes before WM_NcCreate

     ret=Win32::DefWindowProcA(hWnd,message,wParam,lParam);
    }
  else
    {
     ret=ObjWndProc(static_cast<WindowsHost *>(arg),hWnd,message,wParam,lParam);
    }

  TaskEventHost.add<MsgEvent>(message,MsgEvent::Leave);

  return ret;
 }

void WindowsHost::reset()
 {
  origin=Null;
  buf_dirty=true;
  track_flags=0;
  track_on=false;
  max_flag=false;
 }

void WindowsHost::do_move(Pane pane)
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::do_move(...) : #;";

  guardAlive(format);

  GuardPane(format,pane,max_size);

  unsigned pos_flags=Win32::WindowPos_NoZOrder|Win32::WindowPos_NoCopyBits|Win32::WindowPos_NoRedraw|Win32::WindowPos_DeferErase;

  SysGuard(format, Win32::SetWindowPos(hWnd,(Win32::HWindow)0,pane.x,pane.y,pane.dx,pane.dy,pos_flags) );
 }

WindowsHost::WindowsHost()
 {
 }

WindowsHost::~WindowsHost()
 {
  if( is_alive )
    {
     Win32::DestroyWindow(hWnd);
    }
 }

 // msg boxes

void WindowsHost::AbortMsgBox(StrLen text)
 {
  CapString<> cap(text);

  Win32::MessageBoxA(HMainWindow,cap,"Abort",Win32::MessageBox_Ok|Win32::MessageBox_IconError);
 }

void WindowsHost::ErrorMsgBox(StrLen text,StrLen title)
 {
  CapString<> cap(text);
  CapString<> cap_title(title);

  Win32::MessageBoxA(HMainWindow,cap,cap_title,Win32::MessageBox_Ok|Win32::MessageBox_IconError);
 }

 // icons

void WindowsHost::SetAppIcon(Picture pict)
 {
  WindowClassObject.setIcon(pict);
 }

 // WinControl
 // create/destroy

void WindowsHost::createMain(Point max_size)
 {
  Pane work=GetWorkPane();

  Point size;

  size.x=RandomLen(work.dx);
  size.y=RandomLen(work.dy);

  size=Inf(size,max_size);

  Point base;

  base.x=RandomPos(work.dx-size.x);
  base.y=RandomPos(work.dy-size.y);

  Pane pane=Pane(work.getBase()+base,size);

  createMain(pane,max_size);
 }

void WindowsHost::createMain(Pane pane,Point max_size_)
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::createMain(...) : #;";

  guardCreate(format,pane,max_size_);

  if( HMainWindow!=0 )
    {
     Printf(Exception,format,"main window is already created");
    }

  is_main=true;
  max_size=max_size_;

  reset();

  buf.setSize(max_size_);

  Win32::HWindow hWnd=Win32::CreateWindowExA(0,
                                             Win32::MakeIntAtom(WindowClassObject.getAtom(format)),
                                             "",
                                             Win32::WindowStyle_Popup,
                                             pane.x,pane.y,pane.dx,pane.dy,
                                             0,0,0,
                                             (void *)this);

  SysGuard(format,hWnd!=0);
 }

void WindowsHost::create(Pane pane,Point max_size)
 {
  create(0,pane,max_size);
 }

void WindowsHost::create(WindowHost *parent,Pane pane,Point max_size_)
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::create(...) : #;";

  guardCreate(format,pane,max_size_);

  is_main=false;
  max_size=max_size_;

  reset();

  buf.setSize(max_size_);

  Win32::HWindow hParent;

  if( parent )
    {
     WindowsHost *ptr=dynamic_cast<WindowsHost *>(parent);

     if( !ptr )
       {
        Printf(Exception,format,"bad parent");
       }

     hParent=ptr->hWnd;

     if( hParent==0 )
       {
        Printf(Exception,format,"dead parent");
       }
    }
  else
    {
     hParent=HMainWindow;
    }

  Win32::HWindow hWnd=Win32::CreateWindowExA(0,
                                             Win32::MakeIntAtom(WindowClassObject.getAtom(format)),
                                             "",
                                             Win32::WindowStyle_Popup,
                                             pane.x,pane.y,pane.dx,pane.dy,
                                             hParent,0,0,
                                             (void *)this);

  SysGuard(format,hWnd!=0);
 }

void WindowsHost::destroy()
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::destroy() : #;";

  guardAlive(format);

  SysGuard(format, Win32::DestroyWindow(hWnd) );
 }

 // operations

void WindowsHost::setTitle(StrLen title)
 {
  CapString<> cap(title);

  const char *format="CCore::Video::Private_Desktop::WindowsHost::setTitle(...) : #;";

  guardAlive(format);

  if( is_main )
    SysGuard(format, Win32::SetWindowTextA(hWnd,cap) );
 }

void WindowsHost::setMaxSize(Point max_size_)
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::setMaxSize(...) : #;";

  GuardMaxSize(format,max_size_);

  buf.setSize(max_size_);

  max_size=max_size_;

  buf_dirty=true;
 }

bool WindowsHost::enableUserInput(bool en)
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::enableUserInput(...) : #;";

  guardAlive(format);

  return !Win32::EnableWindow(hWnd,en);
 }

void WindowsHost::display(CmdDisplay cmd_display)
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::display(...) : #;";

  guardAlive(format);

  switch( cmd_display )
    {
     default:
     case CmdDisplay_Normal :
      {
       Win32::ShowWindow(hWnd,Win32::CmdShow_Normal); // error unavailable
      }
     break;

     case CmdDisplay_Minimized :
      {
       if( is_main )
         Win32::ShowWindow(hWnd,Win32::CmdShow_Minimized); // error unavailable
      }
     break;

     case CmdDisplay_Maximized :
      {
       if( !max_flag )
         {
          max_flag=true;

          restore=getPlace();

          Pane pane=GetWorkPane(restore);

          Replace_min(pane.dx,max_size.x);
          Replace_min(pane.dy,max_size.y);

          do_move(pane);

          Win32::InvalidateRect(hWnd,0,true); // ignore error
         }

       Win32::ShowWindow(hWnd,Win32::CmdShow_Normal); // error unavailable
      }
     break;

     case CmdDisplay_Restore :
      {
       if( max_flag )
         {
          max_flag=false;

          do_move(restore);

          Win32::InvalidateRect(hWnd,0,true); // ignore error
         }

       Win32::ShowWindow(hWnd,Win32::CmdShow_Normal); // error unavailable
      }
     break;
    }
 }

void WindowsHost::show()
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::show() : #;";

  guardAlive(format);

  Win32::ShowWindow(hWnd,Win32::CmdShow_Show); // error unavailable
 }

void WindowsHost::hide()
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::hide() : #;";

  guardAlive(format);

  Win32::ShowWindow(hWnd,Win32::CmdShow_Hide); // error unavailable
 }

 // drawing

void WindowsHost::update()
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::update() : #;";

  guardAlive(format);

  SysGuard(format, Win32::UpdateWindow(hWnd) );

  buf_dirty=false;
 }

void WindowsHost::invalidate(Pane pane,unsigned token_)
 {
  if( !pane ) return;

  token|=token_;

  Win32::Rectangle rect;

  rect.left=pane.x;
  rect.right=pane.x+pane.dx;

  rect.top=pane.y;
  rect.bottom=pane.y+pane.dy;

  Win32::InvalidateRect(hWnd,&rect,true); // ignore error

  buf_dirty=false;
 }

void WindowsHost::invalidate(unsigned token_)
 {
  token|=token_;

  Win32::InvalidateRect(hWnd,0,true); // ignore error

  buf_dirty=false;
 }

ColorPlane WindowsHost::getDrawPlane()
 {
  return buf.getPlane();
 }

 // keyboard

void WindowsHost::setFocus()
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::setFocus() : #;";

  guardAlive(format);

  Win32::SetFocus(hWnd); // error unavailable
 }

 // mouse

Point WindowsHost::getMousePos()
 {
  Win32::Point point_;

  if( Win32::GetCursorPos(&point_) )
    {
     Point point(point_.x,point_.y);

     return point-origin;
    }

  return Null;
 }

void WindowsHost::captureMouse()
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::captureMouse() : #;";

  guardAlive(format);

  Win32::SetCapture(hWnd); // error unavailable
 }

void WindowsHost::releaseMouse()
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::releaseMouse() : #;";

  guardAlive(format);

  SysGuard(format, Win32::ReleaseCapture() );
 }

void WindowsHost::trackMouseHover()
 {
  BitSet(track_flags,Win32::MouseTrack_Hover);

  hover_time=Win32::HoverTimeDefault;

  setTrack();
 }

void WindowsHost::trackMouseHover(MSec time)
 {
  BitSet(track_flags,Win32::MouseTrack_Hover);

  hover_time=+time;

  setTrack();
 }

void WindowsHost::untrackMouseHover()
 {
  BitClear(track_flags,Win32::MouseTrack_Hover);
 }

void WindowsHost::trackMouseLeave()
 {
  BitSet(track_flags,Win32::MouseTrack_Leave);

  setTrack();
 }

void WindowsHost::untrackMouseLeave()
 {
  BitClear(track_flags,Win32::MouseTrack_Leave);
 }

void WindowsHost::setMouseShape(MouseShape mshape)
 {
  Win32::SetCursor(GetCursor(mshape)); // error unavailable
 }

 // place

Pane WindowsHost::getPlace()
 {
  const char *format="CCore::Video::Private_Desktop::WindowsHost::getPlace() : #;";

  guardAlive(format);

  Win32::Rectangle rect;

  SysGuard(format, Win32::GetWindowRect(hWnd,&rect) );

  return ToPane(rect);
 }

void WindowsHost::setPlace(Pane pane)
 {
  max_flag=false;

  do_move(pane);
 }

 // clipboard

void WindowsHost::textToClipboard(StrLen text)
 {
  TextToClipboard obj(text);

  Clipboard cbd(hWnd);

  ulen len=obj.getLen();

  PutToClipboard put(len);

  obj.fill(put.getMem());

  put.commit(Win32::ClipboardFormat_Text);
 }

void WindowsHost::textFromClipboard(Function<void (StrLen)> func)
 {
  Clipboard cbd(hWnd);
  GetFromClipboard get(Win32::ClipboardFormat_Text);

  const char *ptr=static_cast<const char *>(get.getMem());
  ulen len=get.getLen();

  auto text=Range(ptr,len);

  for(auto r=text; +r ;++r)
    {
     if( !*r )
       {
        text=text.prefix(r);

        break;
       }
    }

  func(text);
 }

} // namespace Internal
} // namespace Video
} // namespace CCore

