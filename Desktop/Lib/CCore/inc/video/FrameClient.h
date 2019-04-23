/* FrameClient.h */
//----------------------------------------------------------------------------------------
//
//  Project: CCore 3.60
//
//  Tag: Desktop
//
//  License: Boost Software License - Version 1.0 - August 17th, 2003
//
//            see http://www.boost.org/LICENSE_1_0.txt or the local copy
//
//  Copyright (c) 2019 Sergey Strukov. All rights reserved.
//
//----------------------------------------------------------------------------------------

#ifndef CCore_inc_video_FrameClient_h
#define CCore_inc_video_FrameClient_h

#include <CCore/inc/video/lib/Window.DragFrame.h>

#include <CCore/inc/video/Layout.h>

namespace CCore {
namespace Video {

/* classes */

template <class W> class FrameClient;

/* class FrameClient<W> */

template <class W>
class FrameClient : public DragFrame
 {
  public:

   struct Config
    {
     RefVal<Ratio> pos_ry = Div(5,12) ;

     CtorRefVal<DragFrame::ConfigType> frame_cfg;
     CtorRefVal<typename W::ConfigType> client_cfg;

     Config() noexcept {}

     template <class Bag,class Proxy>
     void bind(const Bag &bag,Proxy proxy)
      {
       pos_ry.bind(bag.frame_pos_ry);

       frame_cfg.bind(proxy);
       client_cfg.bind(proxy);
      }
    };

   using ConfigType = Config ;

  protected:

   const Config &cfg;

   W client;

  public:

   template <class ... TT>
   FrameClient(Desktop *desktop,const Config &cfg_,TT && ... tt)
    : DragFrame(desktop,cfg_.frame_cfg),
      cfg(cfg_),
      client(*this,cfg_.client_cfg, std::forward<TT>(tt)... )
    {
     bindClient(client);
    }

   virtual ~FrameClient()
    {
    }

   // create

   Pane getPane(StrLen title,Point base) const
    {
     Point size=getMinSize(false,title,client.getMinSize());

     return FitToScreen(base,size,getScreenSize());
    }

   Pane getPane(StrLen title) const
    {
     Point size=getMinSize(false,title,client.getMinSize());

     return GetWindowPlace(getDesktop(),+cfg.pos_ry,size);
    }

   void create(Point base,const String &title)
    {
     DragFrame::create(getPane(Range(title),base),title);
    }

   void create(FrameWindow *parent,Point base,const String &title)
    {
     DragFrame::create(parent,getPane(Range(title),base),title);
    }

   void create(const String &title)
    {
     DragFrame::create(getPane(Range(title)),title);
    }

   void create(FrameWindow *parent,const String &title)
    {
     DragFrame::create(parent,getPane(Range(title)),title);
    }
 };

} // namespace Video
} // namespace CCore

#endif

