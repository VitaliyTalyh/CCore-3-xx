/* AM3359.INTC.gen.h */

/* struct Type_SysConfig */

enum Bits_SysConfig : uint32
 {
  SysConfig_Idle  = 0x00000001u,
  SysConfig_Reset = 0x00000002u
 };
 
inline Bits_SysConfig operator | (Bits_SysConfig a,Bits_SysConfig b)
 { return Bits_SysConfig(uint32(a)|uint32(b)); }
 
struct Type_SysConfig
 {
  using Type = uint32 ;

  Type value;


  explicit Type_SysConfig(Type value_=0) : value(value_) {}
 

  operator Type() const { return value; }
 
  void operator = (Type value_) { value=value_; }
 
  template <class Bar>
  Type_SysConfig & setTo(Bar &bar) { bar.set_SysConfig(*this); return *this; }
 

  template <class Bar,class AddressType>
  Type_SysConfig & setTo(Bar &bar,AddressType ind) { bar.set_SysConfig(ind,*this); return *this; }
 

  template <class T>
  Type_SysConfig & set(T to) { to(*this); return *this; }
 

  Type_SysConfig & setbit(Bits_SysConfig bits) { value|=Type(bits); return *this; }
 
  Type_SysConfig & setbitIf(bool cond,Bits_SysConfig bits) { if( cond ) value|=Type(bits); return *this; }
 
  Type_SysConfig & clearbit(Bits_SysConfig bits) { value&=~Type(bits); return *this; }
 
  Type_SysConfig & clearbitIf(bool cond,Bits_SysConfig bits) { if( cond ) value&=~Type(bits); return *this; }
 
  Type maskbit(Bits_SysConfig bits) const { return value&bits; }
 
  bool testbit(Bits_SysConfig bits) const { return (value&bits)==Type(bits); }
 

  template <class P>
  void print(P &out) const
   {
    bool first=true;

    if( value&SysConfig_Idle )
      {
       if( first )
         {
          Putobj(out,"Idle");

          first=false;
         }
       else
         {
          out.put('|');

          Putobj(out,"Idle");
         }
      }

    if( value&SysConfig_Reset )
      {
       if( first )
         {
          Putobj(out,"Reset");

          first=false;
         }
       else
         {
          out.put('|');

          Putobj(out,"Reset");
         }
      }

    if( first ) out.put('0');
   }
 };
 
/* struct Type_SysStatus */

enum Bits_SysStatus : uint32
 {
  SysStatus_ResetDone = 0x00000001u
 };
 
inline Bits_SysStatus operator | (Bits_SysStatus a,Bits_SysStatus b)
 { return Bits_SysStatus(uint32(a)|uint32(b)); }
 
struct Type_SysStatus
 {
  using Type = uint32 ;

  Type value;


  explicit Type_SysStatus(Type value_=0) : value(value_) {}
 

  operator Type() const { return value; }
 
  void operator = (Type value_) { value=value_; }
 
  template <class Bar>
  Type_SysStatus & setTo(Bar &bar) { bar.set_SysStatus(*this); return *this; }
 

  template <class Bar,class AddressType>
  Type_SysStatus & setTo(Bar &bar,AddressType ind) { bar.set_SysStatus(ind,*this); return *this; }
 

  template <class T>
  Type_SysStatus & set(T to) { to(*this); return *this; }
 

  Type_SysStatus & setbit(Bits_SysStatus bits) { value|=Type(bits); return *this; }
 
  Type_SysStatus & setbitIf(bool cond,Bits_SysStatus bits) { if( cond ) value|=Type(bits); return *this; }
 
  Type_SysStatus & clearbit(Bits_SysStatus bits) { value&=~Type(bits); return *this; }
 
  Type_SysStatus & clearbitIf(bool cond,Bits_SysStatus bits) { if( cond ) value&=~Type(bits); return *this; }
 
  Type maskbit(Bits_SysStatus bits) const { return value&bits; }
 
  bool testbit(Bits_SysStatus bits) const { return (value&bits)==Type(bits); }
 

  template <class P>
  void print(P &out) const
   {
    bool first=true;

    if( value&SysStatus_ResetDone )
      {
       if( first )
         {
          Putobj(out,"ResetDone");

          first=false;
         }
       else
         {
          out.put('|');

          Putobj(out,"ResetDone");
         }
      }

    if( first ) out.put('0');
   }
 };
 
/* struct Type_Protection */

enum Bits_Protection : uint32
 {
  Protection_Enable = 0x00000001u
 };
 
inline Bits_Protection operator | (Bits_Protection a,Bits_Protection b)
 { return Bits_Protection(uint32(a)|uint32(b)); }
 
struct Type_Protection
 {
  using Type = uint32 ;

  Type value;


  explicit Type_Protection(Type value_=0) : value(value_) {}
 

  operator Type() const { return value; }
 
  void operator = (Type value_) { value=value_; }
 
  template <class Bar>
  Type_Protection & setTo(Bar &bar) { bar.set_Protection(*this); return *this; }
 

  template <class Bar,class AddressType>
  Type_Protection & setTo(Bar &bar,AddressType ind) { bar.set_Protection(ind,*this); return *this; }
 

  template <class T>
  Type_Protection & set(T to) { to(*this); return *this; }
 

  Type_Protection & setbit(Bits_Protection bits) { value|=Type(bits); return *this; }
 
  Type_Protection & setbitIf(bool cond,Bits_Protection bits) { if( cond ) value|=Type(bits); return *this; }
 
  Type_Protection & clearbit(Bits_Protection bits) { value&=~Type(bits); return *this; }
 
  Type_Protection & clearbitIf(bool cond,Bits_Protection bits) { if( cond ) value&=~Type(bits); return *this; }
 
  Type maskbit(Bits_Protection bits) const { return value&bits; }
 
  bool testbit(Bits_Protection bits) const { return (value&bits)==Type(bits); }
 

  template <class P>
  void print(P &out) const
   {
    bool first=true;

    if( value&Protection_Enable )
      {
       if( first )
         {
          Putobj(out,"Enable");

          first=false;
         }
       else
         {
          out.put('|');

          Putobj(out,"Enable");
         }
      }

    if( first ) out.put('0');
   }
 };
 
/* struct Type_Idle */

enum Bits_Idle : uint32
 {
  Idle_Func  = 0x00000001u,
  Idle_Turbo = 0x00000002u
 };
 
inline Bits_Idle operator | (Bits_Idle a,Bits_Idle b)
 { return Bits_Idle(uint32(a)|uint32(b)); }
 
struct Type_Idle
 {
  using Type = uint32 ;

  Type value;


  explicit Type_Idle(Type value_=0) : value(value_) {}
 

  operator Type() const { return value; }
 
  void operator = (Type value_) { value=value_; }
 
  template <class Bar>
  Type_Idle & setTo(Bar &bar) { bar.set_Idle(*this); return *this; }
 

  template <class Bar,class AddressType>
  Type_Idle & setTo(Bar &bar,AddressType ind) { bar.set_Idle(ind,*this); return *this; }
 

  template <class T>
  Type_Idle & set(T to) { to(*this); return *this; }
 

  Type_Idle & setbit(Bits_Idle bits) { value|=Type(bits); return *this; }
 
  Type_Idle & setbitIf(bool cond,Bits_Idle bits) { if( cond ) value|=Type(bits); return *this; }
 
  Type_Idle & clearbit(Bits_Idle bits) { value&=~Type(bits); return *this; }
 
  Type_Idle & clearbitIf(bool cond,Bits_Idle bits) { if( cond ) value&=~Type(bits); return *this; }
 
  Type maskbit(Bits_Idle bits) const { return value&bits; }
 
  bool testbit(Bits_Idle bits) const { return (value&bits)==Type(bits); }
 

  template <class P>
  void print(P &out) const
   {
    bool first=true;

    if( value&Idle_Func )
      {
       if( first )
         {
          Putobj(out,"Func");

          first=false;
         }
       else
         {
          out.put('|');

          Putobj(out,"Func");
         }
      }

    if( value&Idle_Turbo )
      {
       if( first )
         {
          Putobj(out,"Turbo");

          first=false;
         }
       else
         {
          out.put('|');

          Putobj(out,"Turbo");
         }
      }

    if( first ) out.put('0');
   }
 };
 
/* struct Type_PriorityMask */

struct Type_PriorityMask
 {
  using Type = uint32 ;

  Type value;


  explicit Type_PriorityMask(Type value_=0) : value(value_) {}
 

  operator Type() const { return value; }
 
  void operator = (Type value_) { value=value_; }
 
  template <class Bar>
  Type_PriorityMask & setTo(Bar &bar) { bar.set_PriorityMask(*this); return *this; }
 

  template <class Bar,class AddressType>
  Type_PriorityMask & setTo(Bar &bar,AddressType ind) { bar.set_PriorityMask(ind,*this); return *this; }
 

  template <class T>
  Type_PriorityMask & set(T to) { to(*this); return *this; }
 

  Type get_Threshold() const
   {
    return (value>>0)&0xFFu;
   }
 
  Type_PriorityMask & set_Threshold(Type field)
   {
    value=((field&0xFFu)<<0)|(value&0xFFFFFF00u);

    return *this;
   }
 

  template <class P>
  void print(P &out) const
   {
    bool first=true;

    if( first )
      {
       Printf(out,"Threshold(#;)",get_Threshold());

       first=false;
      }
    else
      {
       out.put('|');

       Printf(out,"Threshold(#;)",get_Threshold());
      }

    if( first ) out.put('0');
   }
 };
 
/* struct Type_TypePriorityCfg */

enum Bits_TypePriorityCfg : uint32
 {
  TypePriorityCfg_AsFIQ = 0x00000001u
 };
 
inline Bits_TypePriorityCfg operator | (Bits_TypePriorityCfg a,Bits_TypePriorityCfg b)
 { return Bits_TypePriorityCfg(uint32(a)|uint32(b)); }
 
struct Type_TypePriorityCfg
 {
  using Type = uint32 ;

  Type value;


  explicit Type_TypePriorityCfg(Type value_=0) : value(value_) {}
 

  operator Type() const { return value; }
 
  void operator = (Type value_) { value=value_; }
 
  template <class Bar>
  Type_TypePriorityCfg & setTo(Bar &bar) { bar.set_TypePriorityCfg(*this); return *this; }
 

  template <class Bar,class AddressType>
  Type_TypePriorityCfg & setTo(Bar &bar,AddressType ind) { bar.set_TypePriorityCfg(ind,*this); return *this; }
 

  template <class T>
  Type_TypePriorityCfg & set(T to) { to(*this); return *this; }
 

  Type_TypePriorityCfg & setbit(Bits_TypePriorityCfg bits) { value|=Type(bits); return *this; }
 
  Type_TypePriorityCfg & setbitIf(bool cond,Bits_TypePriorityCfg bits) { if( cond ) value|=Type(bits); return *this; }
 
  Type_TypePriorityCfg & clearbit(Bits_TypePriorityCfg bits) { value&=~Type(bits); return *this; }
 
  Type_TypePriorityCfg & clearbitIf(bool cond,Bits_TypePriorityCfg bits) { if( cond ) value&=~Type(bits); return *this; }
 
  Type maskbit(Bits_TypePriorityCfg bits) const { return value&bits; }
 
  bool testbit(Bits_TypePriorityCfg bits) const { return (value&bits)==Type(bits); }
 

  Type get_Priority() const
   {
    return (value>>2)&0x3Fu;
   }
 
  Type_TypePriorityCfg & set_Priority(Type field)
   {
    value=((field&0x3Fu)<<2)|(value&0xFFFFFF03u);

    return *this;
   }
 

  template <class P>
  void print(P &out) const
   {
    bool first=true;

    if( value&TypePriorityCfg_AsFIQ )
      {
       if( first )
         {
          Putobj(out,"AsFIQ");

          first=false;
         }
       else
         {
          out.put('|');

          Putobj(out,"AsFIQ");
         }
      }

    if( first )
      {
       Printf(out,"Priority(#;)",get_Priority());

       first=false;
      }
    else
      {
       out.put('|');

       Printf(out,"Priority(#;)",get_Priority());
      }

    if( first ) out.put('0');
   }
 };
 
/* struct Type_ActiveIRQ */

struct Type_ActiveIRQ
 {
  using Type = uint32 ;

  Type value;


  explicit Type_ActiveIRQ(Type value_=0) : value(value_) {}
 

  operator Type() const { return value; }
 
  void operator = (Type value_) { value=value_; }
 
  template <class Bar>
  Type_ActiveIRQ & setTo(Bar &bar) { bar.set_ActiveIRQ(*this); return *this; }
 

  template <class Bar,class AddressType>
  Type_ActiveIRQ & setTo(Bar &bar,AddressType ind) { bar.set_ActiveIRQ(ind,*this); return *this; }
 

  template <class T>
  Type_ActiveIRQ & set(T to) { to(*this); return *this; }
 

  Type get_Number() const
   {
    return (value>>0)&0x7Fu;
   }
 
  Type_ActiveIRQ & set_Number(Type field)
   {
    value=((field&0x7Fu)<<0)|(value&0xFFFFFF80u);

    return *this;
   }
 

  template <class P>
  void print(P &out) const
   {
    bool first=true;

    if( first )
      {
       Printf(out,"Number(#;)",get_Number());

       first=false;
      }
    else
      {
       out.put('|');

       Printf(out,"Number(#;)",get_Number());
      }

    if( first ) out.put('0');
   }
 };
 
/* struct Type_NextActive */

enum Bits_NextActive : uint32
 {
  NextActive_IRQ = 0x00000001u,
  NextActive_FIQ = 0x00000002u
 };
 
inline Bits_NextActive operator | (Bits_NextActive a,Bits_NextActive b)
 { return Bits_NextActive(uint32(a)|uint32(b)); }
 
struct Type_NextActive
 {
  using Type = uint32 ;

  Type value;


  explicit Type_NextActive(Type value_=0) : value(value_) {}
 

  operator Type() const { return value; }
 
  void operator = (Type value_) { value=value_; }
 
  template <class Bar>
  Type_NextActive & setTo(Bar &bar) { bar.set_NextActive(*this); return *this; }
 

  template <class Bar,class AddressType>
  Type_NextActive & setTo(Bar &bar,AddressType ind) { bar.set_NextActive(ind,*this); return *this; }
 

  template <class T>
  Type_NextActive & set(T to) { to(*this); return *this; }
 

  Type_NextActive & setbit(Bits_NextActive bits) { value|=Type(bits); return *this; }
 
  Type_NextActive & setbitIf(bool cond,Bits_NextActive bits) { if( cond ) value|=Type(bits); return *this; }
 
  Type_NextActive & clearbit(Bits_NextActive bits) { value&=~Type(bits); return *this; }
 
  Type_NextActive & clearbitIf(bool cond,Bits_NextActive bits) { if( cond ) value&=~Type(bits); return *this; }
 
  Type maskbit(Bits_NextActive bits) const { return value&bits; }
 
  bool testbit(Bits_NextActive bits) const { return (value&bits)==Type(bits); }
 

  template <class P>
  void print(P &out) const
   {
    bool first=true;

    if( value&NextActive_IRQ )
      {
       if( first )
         {
          Putobj(out,"IRQ");

          first=false;
         }
       else
         {
          out.put('|');

          Putobj(out,"IRQ");
         }
      }

    if( value&NextActive_FIQ )
      {
       if( first )
         {
          Putobj(out,"FIQ");

          first=false;
         }
       else
         {
          out.put('|');

          Putobj(out,"FIQ");
         }
      }

    if( first ) out.put('0');
   }
 };
 
/* type Type_Mask */

using Type_Mask = uint32 ;

/* struct INTCBar<RW> */

template <class RW>
struct INTCBar
 {
  RW rw;

  using AddressType = typename RW::AddressType ;

  template <class ... TT>
  explicit INTCBar(TT && ... tt) : rw( std::forward<TT>(tt)... ) {}
 
  template <class T>
  struct Setter
   {
    RW &rw;
    AddressType address;

    Setter(RW &rw_,AddressType address_) : rw(rw_),address(address_) {}

    void operator () (T value) { rw.set(address,value.value); }
   };

  //--- SysConfig

  Type_SysConfig get_SysConfig() { return Type_SysConfig(rw.template get<uint32>(0x10u)); }
 
  void set_SysConfig(Type_SysConfig value) { rw.set(0x10u,value.value); }
 
  Setter<Type_SysConfig> to_SysConfig() { return Setter<Type_SysConfig>(rw,0x10u); }
 
  static Type_SysConfig null_SysConfig() { return Type_SysConfig(0); }
 
  static Type_SysConfig ones_SysConfig() { return Type_SysConfig(Type_SysConfig::Type(-1)); }
 
  //--- SysStatus

  Type_SysStatus get_SysStatus() { return Type_SysStatus(rw.template get<uint32>(0x14u)); }
 
  void set_SysStatus(Type_SysStatus value) { rw.set(0x14u,value.value); }
 
  Setter<Type_SysStatus> to_SysStatus() { return Setter<Type_SysStatus>(rw,0x14u); }
 
  static Type_SysStatus null_SysStatus() { return Type_SysStatus(0); }
 
  static Type_SysStatus ones_SysStatus() { return Type_SysStatus(Type_SysStatus::Type(-1)); }
 
  //--- Protection

  Type_Protection get_Protection() { return Type_Protection(rw.template get<uint32>(0x4Cu)); }
 
  void set_Protection(Type_Protection value) { rw.set(0x4Cu,value.value); }
 
  Setter<Type_Protection> to_Protection() { return Setter<Type_Protection>(rw,0x4Cu); }
 
  static Type_Protection null_Protection() { return Type_Protection(0); }
 
  static Type_Protection ones_Protection() { return Type_Protection(Type_Protection::Type(-1)); }
 
  //--- Idle

  Type_Idle get_Idle() { return Type_Idle(rw.template get<uint32>(0x50u)); }
 
  void set_Idle(Type_Idle value) { rw.set(0x50u,value.value); }
 
  Setter<Type_Idle> to_Idle() { return Setter<Type_Idle>(rw,0x50u); }
 
  static Type_Idle null_Idle() { return Type_Idle(0); }
 
  static Type_Idle ones_Idle() { return Type_Idle(Type_Idle::Type(-1)); }
 
  //--- PriorityMask

  Type_PriorityMask get_PriorityMask() { return Type_PriorityMask(rw.template get<uint32>(0x68u)); }
 
  void set_PriorityMask(Type_PriorityMask value) { rw.set(0x68u,value.value); }
 
  Setter<Type_PriorityMask> to_PriorityMask() { return Setter<Type_PriorityMask>(rw,0x68u); }
 
  static Type_PriorityMask null_PriorityMask() { return Type_PriorityMask(0); }
 
  static Type_PriorityMask ones_PriorityMask() { return Type_PriorityMask(Type_PriorityMask::Type(-1)); }
 
  //--- TypePriorityCfg

  Type_TypePriorityCfg get_TypePriorityCfg(AddressType ind) { return Type_TypePriorityCfg(rw.template get<uint32>(0x100u + ind*4u)); }
 
  void set_TypePriorityCfg(AddressType ind,Type_TypePriorityCfg value) { rw.set(0x100u + ind*4u,value.value); }
 
  Setter<Type_TypePriorityCfg> to_TypePriorityCfg(AddressType ind) { return Setter<Type_TypePriorityCfg>(rw,0x100u + ind*4u); }
 
  static Type_TypePriorityCfg null_TypePriorityCfg() { return Type_TypePriorityCfg(0); }
 
  static Type_TypePriorityCfg ones_TypePriorityCfg() { return Type_TypePriorityCfg(Type_TypePriorityCfg::Type(-1)); }
 
  //--- ActiveIRQ

  Type_ActiveIRQ get_ActiveIRQ() { return Type_ActiveIRQ(rw.template get<uint32>(0x40u)); }
 
  void set_ActiveIRQ(Type_ActiveIRQ value) { rw.set(0x40u,value.value); }
 
  Setter<Type_ActiveIRQ> to_ActiveIRQ() { return Setter<Type_ActiveIRQ>(rw,0x40u); }
 
  static Type_ActiveIRQ null_ActiveIRQ() { return Type_ActiveIRQ(0); }
 
  static Type_ActiveIRQ ones_ActiveIRQ() { return Type_ActiveIRQ(Type_ActiveIRQ::Type(-1)); }
 
  //--- NextActive

  Type_NextActive get_NextActive() { return Type_NextActive(rw.template get<uint32>(0x48u)); }
 
  void set_NextActive(Type_NextActive value) { rw.set(0x48u,value.value); }
 
  Setter<Type_NextActive> to_NextActive() { return Setter<Type_NextActive>(rw,0x48u); }
 
  static Type_NextActive null_NextActive() { return Type_NextActive(0); }
 
  static Type_NextActive ones_NextActive() { return Type_NextActive(Type_NextActive::Type(-1)); }
 
  //--- Raw0

  Type_Mask get_Raw0() { return Type_Mask(rw.template get<uint32>(0x80u)); }
 
  void set_Raw0(Type_Mask value) { rw.set(0x80u,value); }
 
  void set_Raw0_null() { rw.set(0x80u,Type_Mask(0)); }
 
  void set_Raw0_ones() { rw.set(0x80u,Type_Mask(-1)); }
 
  //--- Mask0

  Type_Mask get_Mask0() { return Type_Mask(rw.template get<uint32>(0x84u)); }
 
  void set_Mask0(Type_Mask value) { rw.set(0x84u,value); }
 
  void set_Mask0_null() { rw.set(0x84u,Type_Mask(0)); }
 
  void set_Mask0_ones() { rw.set(0x84u,Type_Mask(-1)); }
 
  //--- MaskedIRQ0

  Type_Mask get_MaskedIRQ0() { return Type_Mask(rw.template get<uint32>(0x98u)); }
 
  void set_MaskedIRQ0(Type_Mask value) { rw.set(0x98u,value); }
 
  void set_MaskedIRQ0_null() { rw.set(0x98u,Type_Mask(0)); }
 
  void set_MaskedIRQ0_ones() { rw.set(0x98u,Type_Mask(-1)); }
 
  //--- MaskedFIQ0

  Type_Mask get_MaskedFIQ0() { return Type_Mask(rw.template get<uint32>(0x9Cu)); }
 
  void set_MaskedFIQ0(Type_Mask value) { rw.set(0x9Cu,value); }
 
  void set_MaskedFIQ0_null() { rw.set(0x9Cu,Type_Mask(0)); }
 
  void set_MaskedFIQ0_ones() { rw.set(0x9Cu,Type_Mask(-1)); }
 
  //--- Raw1

  Type_Mask get_Raw1() { return Type_Mask(rw.template get<uint32>(0xA0u)); }
 
  void set_Raw1(Type_Mask value) { rw.set(0xA0u,value); }
 
  void set_Raw1_null() { rw.set(0xA0u,Type_Mask(0)); }
 
  void set_Raw1_ones() { rw.set(0xA0u,Type_Mask(-1)); }
 
  //--- Mask1

  Type_Mask get_Mask1() { return Type_Mask(rw.template get<uint32>(0xA4u)); }
 
  void set_Mask1(Type_Mask value) { rw.set(0xA4u,value); }
 
  void set_Mask1_null() { rw.set(0xA4u,Type_Mask(0)); }
 
  void set_Mask1_ones() { rw.set(0xA4u,Type_Mask(-1)); }
 
  //--- MaskedIRQ1

  Type_Mask get_MaskedIRQ1() { return Type_Mask(rw.template get<uint32>(0xB8u)); }
 
  void set_MaskedIRQ1(Type_Mask value) { rw.set(0xB8u,value); }
 
  void set_MaskedIRQ1_null() { rw.set(0xB8u,Type_Mask(0)); }
 
  void set_MaskedIRQ1_ones() { rw.set(0xB8u,Type_Mask(-1)); }
 
  //--- MaskedFIQ1

  Type_Mask get_MaskedFIQ1() { return Type_Mask(rw.template get<uint32>(0xBCu)); }
 
  void set_MaskedFIQ1(Type_Mask value) { rw.set(0xBCu,value); }
 
  void set_MaskedFIQ1_null() { rw.set(0xBCu,Type_Mask(0)); }
 
  void set_MaskedFIQ1_ones() { rw.set(0xBCu,Type_Mask(-1)); }
 
  //--- SetMask0

  Type_Mask get_SetMask0() { return Type_Mask(rw.template get<uint32>(0x8Cu)); }
 
  void set_SetMask0(Type_Mask value) { rw.set(0x8Cu,value); }
 
  void set_SetMask0_null() { rw.set(0x8Cu,Type_Mask(0)); }
 
  void set_SetMask0_ones() { rw.set(0x8Cu,Type_Mask(-1)); }
 
  //--- SetMask1

  Type_Mask get_SetMask1() { return Type_Mask(rw.template get<uint32>(0xACu)); }
 
  void set_SetMask1(Type_Mask value) { rw.set(0xACu,value); }
 
  void set_SetMask1_null() { rw.set(0xACu,Type_Mask(0)); }
 
  void set_SetMask1_ones() { rw.set(0xACu,Type_Mask(-1)); }
 
  //--- SetMask2

  Type_Mask get_SetMask2() { return Type_Mask(rw.template get<uint32>(0xCCu)); }
 
  void set_SetMask2(Type_Mask value) { rw.set(0xCCu,value); }
 
  void set_SetMask2_null() { rw.set(0xCCu,Type_Mask(0)); }
 
  void set_SetMask2_ones() { rw.set(0xCCu,Type_Mask(-1)); }
 
  //--- SetMask3

  Type_Mask get_SetMask3() { return Type_Mask(rw.template get<uint32>(0xECu)); }
 
  void set_SetMask3(Type_Mask value) { rw.set(0xECu,value); }
 
  void set_SetMask3_null() { rw.set(0xECu,Type_Mask(0)); }
 
  void set_SetMask3_ones() { rw.set(0xECu,Type_Mask(-1)); }
 
  //--- ClearMask0

  Type_Mask get_ClearMask0() { return Type_Mask(rw.template get<uint32>(0x88u)); }
 
  void set_ClearMask0(Type_Mask value) { rw.set(0x88u,value); }
 
  void set_ClearMask0_null() { rw.set(0x88u,Type_Mask(0)); }
 
  void set_ClearMask0_ones() { rw.set(0x88u,Type_Mask(-1)); }
 
  //--- ClearMask1

  Type_Mask get_ClearMask1() { return Type_Mask(rw.template get<uint32>(0xA8u)); }
 
  void set_ClearMask1(Type_Mask value) { rw.set(0xA8u,value); }
 
  void set_ClearMask1_null() { rw.set(0xA8u,Type_Mask(0)); }
 
  void set_ClearMask1_ones() { rw.set(0xA8u,Type_Mask(-1)); }
 
  //--- ClearMask2

  Type_Mask get_ClearMask2() { return Type_Mask(rw.template get<uint32>(0xC8u)); }
 
  void set_ClearMask2(Type_Mask value) { rw.set(0xC8u,value); }
 
  void set_ClearMask2_null() { rw.set(0xC8u,Type_Mask(0)); }
 
  void set_ClearMask2_ones() { rw.set(0xC8u,Type_Mask(-1)); }
 
  //--- ClearMask3

  Type_Mask get_ClearMask3() { return Type_Mask(rw.template get<uint32>(0xE8u)); }
 
  void set_ClearMask3(Type_Mask value) { rw.set(0xE8u,value); }
 
  void set_ClearMask3_null() { rw.set(0xE8u,Type_Mask(0)); }
 
  void set_ClearMask3_ones() { rw.set(0xE8u,Type_Mask(-1)); }
 
 };
 
