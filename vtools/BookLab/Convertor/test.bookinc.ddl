scope page {

Text b0 = { {
 { "XXX" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/XXX.h" , & fmt_text_Files_b }
 ,{ "CCore/src/XXX.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Page page = { "CCore -> XXX" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
} , NoColor , NoColor , & content , null , & page_Abort#page };

Link link = { &page } ;

}

scope page_Abort {

Text b0 = { {
 { "Abort" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/Abort.h" , & fmt_text_Files_b }
 ,{ "CCore/src/AbortMsgFunc.cpp" , & fmt_text_Files_b }
 ,{ "HCore/src/Abort.cpp" , & fmt_text_Files_b }
 ,{ "XCore/src/Abort.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "There" }
 ,{ "are" }
 ,{ "two" }
 ,{ "functions" }
 ,{ "to" }
 ,{ "abort" }
 ,{ "a" }
 ,{ "program" }
 ,{ "execution" }
 ,{ "with" }
 ,{ "a" }
 ,{ "diagnostic" }
 ,{ "message:" }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "First" }
 ,{ "of" }
 ,{ "them" }
 ,{ "accepts" }
 ,{ "a" }
 ,{ "message" }
 ,{ "text" }
 ,{ "as" }
 ,{ "a" }
 ,{ "StrLen" , & fmt_text_b }
 ,{ "argument," }
 ,{ "second" }
 ,{ "—" }
 ,{ "as" }
 ,{ "a" }
 ,{ "zero-terminated" }
 ,{ "character" }
 ,{ "string." }
 ,{ "The" }
 ,{ "exact" }
 ,{ "method" }
 ,{ "of" }
 ,{ "the" }
 ,{ "sending" }
 ,{ "a" }
 ,{ "diagnostic" }
 ,{ "message" }
 ,{ "is" }
 ,{ "target-dependent" }
 ,{ "and" }
 ,{ "implemented" }
 ,{ "differently" }
 ,{ "for" }
 ,{ "HCore" , & fmt_text_b }
 ,{ "and" }
 ,{ "XCore" , & fmt_text_b }
 ,{ "targets." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "There" }
 ,{ "is" }
 ,{ "also" }
 ,{ "the" }
 ,{ "global" }
 ,{ "constant" }
 ,{ "function" }
 ,{ "pointer," }
 ,{ "which" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "alter" }
 ,{ "the" }
 ,{ "Abort()" , & fmt_text_b }
 ,{ "behavior." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "You" }
 ,{ "may" }
 ,{ "link" }
 ,{ "an" }
 ,{ "object" }
 ,{ "file" }
 ,{ "in" }
 ,{ "your" }
 ,{ "project" }
 ,{ "with" }
 ,{ "this" }
 ,{ "constant" }
 ,{ "defined" }
 ,{ "to" }
 ,{ "introduce" }
 ,{ "a" }
 ,{ "hook" }
 ,{ "in" }
 ,{ "Abort()" , & fmt_text_b }
 ,{ "." }
 ,{ "Be" }
 ,{ "reasonable" }
 ,{ "with" }
 ,{ "hook" }
 ,{ "actions:" }
 ,{ "on" }
 ,{ "XCore" , & fmt_text_b }
 ,{ "targets" }
 ,{ "it" }
 ,{ "may" }
 ,{ "be" }
 ,{ "called" }
 ,{ "in" }
 ,{ "any" }
 ,{ "context," }
 ,{ "so" }
 ,{ "you" }
 ,{ "cannot" }
 ,{ "do" }
 ,{ "any" }
 ,{ "\"heavy\"" }
 ,{ "job" }
 ,{ "inside." }
 ,{ "The" }
 ,{ "same" }
 ,{ "is" }
 ,{ "true" }
 ,{ "on" }
 ,{ "HCore" , & fmt_text_b }
 ,{ "targets:" }
 ,{ "use" }
 ,{ "it" }
 ,{ "just" }
 ,{ "to" }
 ,{ "show" }
 ,{ "or" }
 ,{ "log" }
 ,{ "a" }
 ,{ "message" }
 ,{ "(using" }
 ,{ "MessageBox()" , & fmt_text_b }
 ,{ "," }
 ,{ "for" }
 ,{ "example)." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Abort" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page#page , & page_AES#page };

Link link = { &page } ;

}

scope page_AES {

Text b0 = { {
 { "AES" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/crypton/AES.h" , & fmt_text_Files_b }
 ,{ "CCore/src/crypton/AES.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Files" }
 ,{ "CCore/inc/crypton/PlatformAES.h" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b3 = { {
 { "Software" }
 ,{ "AES" }
 ,{ "implementation" }
} , & fmt_h4 , & align_h4 } ;

Text b4 = { {
 { "There" }
 ,{ "are" }
 ,{ "six" }
 ,{ "AES-related" }
 ,{ "types." }
 ,{ "All" }
 ,{ "of" }
 ,{ "them" }
 ,{ "are" }
 ,{ "BlockCipher<....>" , & fmt_text_a , & ..#page_BlockCipher#link }
 ,{ "and" }
 ,{ "implement" }
 ,{ "AES" }
 ,{ "cipher" }
 ,{ "algorithms." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "AES128" , & fmt_text_b }
 ,{ "implements" }
 ,{ "direct" }
 ,{ "AES-128" }
 ,{ "cipher." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "AES192" , & fmt_text_b }
 ,{ "implements" }
 ,{ "direct" }
 ,{ "AES-192" }
 ,{ "cipher." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "AES256" , & fmt_text_b }
 ,{ "implements" }
 ,{ "direct" }
 ,{ "AES-256" }
 ,{ "cipher." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "AESInverse128" , & fmt_text_b }
 ,{ "implements" }
 ,{ "inverse" }
 ,{ "AES-128" }
 ,{ "cipher." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "AESInverse192" , & fmt_text_b }
 ,{ "implements" }
 ,{ "inverse" }
 ,{ "AES-192" }
 ,{ "cipher." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "AESInverse256" , & fmt_text_b }
 ,{ "implements" }
 ,{ "inverse" }
 ,{ "AES-256" }
 ,{ "cipher." }
} , & fmt_text , & align_text } ;

Link link_PlatformAES = { & page , { 11 } } ;

Text b11 = { {
 { "Platform" }
 ,{ "AES" }
} , & fmt_h4 , & align_h4 } ;

Text b12 = { {
 { "The" }
 ,{ "file" }
 ,{ "PlatformAES.h" , & fmt_text_b }
 ,{ "contains" }
 ,{ "stub" }
 ,{ "definitions" }
 ,{ "for" }
 ,{ "AES" }
 ,{ "cipher" }
 ,{ "types." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "A" }
 ,{ "target" }
 ,{ "may" }
 ,{ "override" }
 ,{ "this" }
 ,{ "header" }
 ,{ "file" }
 ,{ "and" }
 ,{ "provide" }
 ,{ "its" }
 ,{ "own" }
 ,{ "definitions" }
 ,{ "with" }
 ,{ "efficient" }
 ,{ "platform-dependent" }
 ,{ "AES" }
 ,{ "implementation." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> AES" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b3 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Abort#page , & page_Algon#page };

Link link = { &page } ;

}

scope page_Algon {

Text b0 = { {
 { "Algon" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Subfolders" }
 ,{ "CCore/inc/algon" , & fmt_text_Files_b }
 ,{ "CCore/src/algon" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Algon" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "namespace," }
 ,{ "it" }
 ,{ "contains" }
 ,{ "a" }
 ,{ "collection" }
 ,{ "of" }
 ,{ "algorithms." }
 ,{ "Code" }
 ,{ "is" }
 ,{ "located" }
 ,{ "in" }
 ,{ "the" }
 ,{ "subfolder" }
 ,{ "/algon" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Algon" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_AES#page , & page_AntiSem#page };

Link link = { &page } ;

}

scope page_AntiSem {

Text b0 = { {
 { "AntiSem" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/AntiSem.h" , & fmt_text_Files_b }
 ,{ "CCore/src/AntiSem.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "AntiSem" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "\"gateway\"" }
 ,{ "synchronization" }
 ,{ "class." }
 ,{ "I.e." }
 ,{ "it" }
 ,{ "may" }
 ,{ "allow" }
 ,{ "or" }
 ,{ "block" }
 ,{ "a" }
 ,{ "thread" }
 ,{ "execution," }
 ,{ "if" }
 ,{ "some" }
 ,{ "condition" }
 ,{ "is" }
 ,{ "met." }
 ,{ "The" }
 ,{ "difference" }
 ,{ "with" }
 ,{ "a" }
 ,{ "\"consuming\"" }
 ,{ "synchronization" }
 ,{ "class" }
 ,{ "is" }
 ,{ "the" }
 ,{ "blocking" }
 ,{ "calls" }
 ,{ "does" }
 ,{ "not" }
 ,{ "change" }
 ,{ "the" }
 ,{ "state." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "AntiSem" , & fmt_text_b }
 ,{ "has" }
 ,{ "an" }
 ,{ "internal" }
 ,{ "counter." }
 ,{ "You" }
 ,{ "may" }
 ,{ "increase" }
 ,{ "or" }
 ,{ "decrease" }
 ,{ "this" }
 ,{ "counter." }
 ,{ "If" }
 ,{ "the" }
 ,{ "counter" }
 ,{ "is" }
 ,{ "below" }
 ,{ "the" }
 ,{ "given" }
 ,{ "level," }
 ,{ "AntiSem" , & fmt_text_b }
 ,{ "is" }
 ,{ "opened," }
 ,{ "otherwise" }
 ,{ "it" }
 ,{ "is" }
 ,{ "closed." }
 ,{ "When" }
 ,{ "it" }
 ,{ "is" }
 ,{ "closed," }
 ,{ "the" }
 ,{ "method" }
 ,{ "wait()" , & fmt_text_b }
 ,{ "blocks" }
 ,{ "the" }
 ,{ "calling" }
 ,{ "thread" }
 ,{ "while" }
 ,{ "the" }
 ,{ "AntiSem" , & fmt_text_b }
 ,{ "is" }
 ,{ "closed." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "The" }
 ,{ "constructor" }
 ,{ "argument" }
 ,{ "level" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "sensitive" }
 ,{ "level" }
 ,{ "of" }
 ,{ "the" }
 ,{ "AntiSem" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "object" }
 ,{ "is" }
 ,{ "opened" }
 ,{ "if" }
 ,{ "counter" , & fmt_text_b }
 ,{ "<=" , & fmt_text_b }
 ,{ "level" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "has" }
 ,{ "zero" }
 ,{ "value" }
 ,{ "by" }
 ,{ "default." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "add()" , & fmt_text_b }
 ,{ "increases" }
 ,{ "the" }
 ,{ "counter" }
 ,{ "by" }
 ,{ "the" }
 ,{ "given" }
 ,{ "value." }
 ,{ "If" }
 ,{ "the" }
 ,{ "overflow" }
 ,{ "happens," }
 ,{ "the" }
 ,{ "Abort()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "sub()" , & fmt_text_b }
 ,{ "decreases" }
 ,{ "the" }
 ,{ "counter" }
 ,{ "by" }
 ,{ "the" }
 ,{ "given" }
 ,{ "value." }
 ,{ "If" }
 ,{ "the" }
 ,{ "underflow" }
 ,{ "happens," }
 ,{ "the" }
 ,{ "Abort()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called." }
 ,{ "If" }
 ,{ "the" }
 ,{ "counter" }
 ,{ "value" }
 ,{ "becomes" }
 ,{ "<=" , & fmt_text_b }
 ,{ "level" , & fmt_text_b }
 ,{ "," }
 ,{ "all" }
 ,{ "blocked" }
 ,{ "on" }
 ,{ "the" }
 ,{ "AntiSem" , & fmt_text_b }
 ,{ "threads" }
 ,{ "are" }
 ,{ "released." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "inc()" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "counter" }
 ,{ "increment," }
 ,{ "this" }
 ,{ "method" }
 ,{ "is" }
 ,{ "equivalent" }
 ,{ "add(1)" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "dec()" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "counter" }
 ,{ "decrement," }
 ,{ "this" }
 ,{ "method" }
 ,{ "is" }
 ,{ "equivalent" }
 ,{ "dec(1)" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "also" }
 ,{ "a" }
 ,{ "releasing" }
 ,{ "method." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "try_wait()" , & fmt_text_b }
 ,{ "checks," }
 ,{ "if" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "opened." }
 ,{ "This" }
 ,{ "method" }
 ,{ "never" }
 ,{ "blocks." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "wait()" , & fmt_text_b }
 ,{ "blocks" }
 ,{ "the" }
 ,{ "calling" }
 ,{ "thread" }
 ,{ "indefinitely" }
 ,{ "until" }
 ,{ "the" }
 ,{ "object" }
 ,{ "becomes" }
 ,{ "opened." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "wait(MSec)" , & fmt_text_b }
 ,{ "and" }
 ,{ "wait(TimeScope)" , & fmt_text_b }
 ,{ "are" }
 ,{ "timed" }
 ,{ "variants" }
 ,{ "of" }
 ,{ "the" }
 ,{ "wait()" , & fmt_text_b }
 ,{ "." }
 ,{ "These" }
 ,{ "methods" }
 ,{ "wait" }
 ,{ "up" }
 ,{ "to" }
 ,{ "the" }
 ,{ "specified" }
 ,{ "timeout" }
 ,{ "is" }
 ,{ "expired," }
 ,{ "then" }
 ,{ "operation" }
 ,{ "failed." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "method" }
 ,{ "was" }
 ,{ "successful." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "The" }
 ,{ "most" }
 ,{ "common" }
 ,{ "usage" }
 ,{ "of" }
 ,{ "the" }
 ,{ "AntiSem" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "implementation" }
 ,{ "of" }
 ,{ "the" }
 ,{ "atomic" }
 ,{ "reference" }
 ,{ "counter" }
 ,{ "with" }
 ,{ "waiting." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "HCore" }
 ,{ "AntiSem" }
} , & fmt_h4 , & align_h4 } ;

Text b14 = { {
 { "HCore" , & fmt_text_b }
 ,{ "AntiSem" , & fmt_text_b }
 ,{ "has" }
 ,{ "the" }
 ,{ "common" }
 ,{ "interface." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "XCore" }
 ,{ "AntiSem" }
} , & fmt_h4 , & align_h4 } ;

Text b16 = { {
 { "XCore" , & fmt_text_b }
 ,{ "AntiSem" , & fmt_text_b }
 ,{ "is" }
 ,{ "essentially" }
 ,{ "the" }
 ,{ "same," }
 ,{ "but" }
 ,{ "has" }
 ,{ "add()" , & fmt_text_b }
 ,{ "," }
 ,{ "sub()" , & fmt_text_b }
 ,{ "," }
 ,{ "inc()" , & fmt_text_b }
 ,{ "," }
 ,{ "dec()" , & fmt_text_b }
 ,{ "methods" }
 ,{ "variants" }
 ,{ "for" }
 ,{ "different" }
 ,{ "execution" }
 ,{ "contexts." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> AntiSem" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b16 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Algon#page , & page_AnyCore_PlatformBase#page };

Link link = { &page } ;

}

scope page_AnyCore_PlatformBase {

Text b0 = { {
 { "AnyCore" }
 ,{ "PlatformBase" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/base/PlatformBase.h" , & fmt_text_Files_b }
 ,{ "CCore/src/base/PlatformBase.cpp" , & fmt_text_Files_b }
 ,{ "CCore/src/base/PlatformBase.s" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "defines" }
 ,{ "some" }
 ,{ "basic" }
 ,{ "types," }
 ,{ "constants" }
 ,{ "and" }
 ,{ "other" }
 ,{ "entities," }
 ,{ "related" }
 ,{ "with" }
 ,{ "the" }
 ,{ "target" }
 ,{ "hardware" }
 ,{ "and" }
 ,{ "software" }
 ,{ "platform." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Defines" }
 ,{ "and" }
 ,{ "includes" }
} , & fmt_h4 , & align_h4 } ;

Text b4 = { {
 { "Macro" }
 ,{ "CCORE_TARGET" , & fmt_text_b }
 ,{ "defines" }
 ,{ "the" }
 ,{ "target" }
 ,{ "label," }
 ,{ "like" }
 ,{ "WIN32" , & fmt_text_b }
 ,{ "," }
 ,{ "WIN64" , & fmt_text_b }
 ,{ "etc..." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "Macros" }
 ,{ "CCORE_INITPRI_0" , & fmt_text_b }
 ,{ "," }
 ,{ "CCORE_INITPRI_1" , & fmt_text_b }
 ,{ "," }
 ,{ "CCORE_INITPRI_2" , & fmt_text_b }
 ,{ "and" }
 ,{ "CCORE_INITPRI_3" , & fmt_text_b }
 ,{ "are" }
 ,{ "used" }
 ,{ "to" }
 ,{ "specify" }
 ,{ "initialization" }
 ,{ "priorities" }
 ,{ "of" }
 ,{ "global" }
 ,{ "objects." }
 ,{ "For" }
 ,{ "the" }
 ,{ "gcc" , & fmt_text_b }
 ,{ "family" }
 ,{ "of" }
 ,{ "compilers" }
 ,{ "they" }
 ,{ "have" }
 ,{ "values" }
 ,{ "shown" }
 ,{ "above." }
 ,{ "If" }
 ,{ "the" }
 ,{ "target" }
 ,{ "use" }
 ,{ "another" }
 ,{ "compiler" }
 ,{ "you" }
 ,{ "must" }
 ,{ "provide" }
 ,{ "a" }
 ,{ "proper" }
 ,{ "substitution." }
 ,{ "This" }
 ,{ "feature" }
 ,{ "is" }
 ,{ "not" }
 ,{ "standard." }
 ,{ "Priority" }
 ,{ "0" }
 ,{ "is" }
 ,{ "highest." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "CCORE_NOINLINE" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "disable" }
 ,{ "function" }
 ,{ "inlining." }
 ,{ "This" }
 ,{ "macro" }
 ,{ "may" }
 ,{ "be" }
 ,{ "left" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "CCORE_UTF8" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "defined," }
 ,{ "if" }
 ,{ "the" }
 ,{ "target" }
 ,{ "is" }
 ,{ "UTF8-compatible." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "The" }
 ,{ "set" }
 ,{ "of" }
 ,{ "standard" }
 ,{ "include" }
 ,{ "files," }
 ,{ "shown" }
 ,{ "above," }
 ,{ "must" }
 ,{ "be" }
 ,{ "included," }
 ,{ "you" }
 ,{ "may" }
 ,{ "add" }
 ,{ "any" }
 ,{ "other" }
 ,{ "desirable" }
 ,{ "includes" }
 ,{ "here." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "restrict" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "restrict" , & fmt_text_i }
 ,{ "keyword." }
 ,{ "This" }
 ,{ "feature" }
 ,{ "is" }
 ,{ "still" }
 ,{ "missing" }
 ,{ "in" }
 ,{ "the" }
 ,{ "C++" }
 ,{ "standard," }
 ,{ "but" }
 ,{ "major" }
 ,{ "compilers" }
 ,{ "support" }
 ,{ "it." }
 ,{ "You" }
 ,{ "must" }
 ,{ "provide" }
 ,{ "a" }
 ,{ "proper" }
 ,{ "definition" }
 ,{ "of" }
 ,{ "this" }
 ,{ "macro." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "Basic" }
 ,{ "types" }
} , & fmt_h4 , & align_h4 } ;

Text b11 = { {
 { "This" }
 ,{ "set" }
 ,{ "of" }
 ,{ "type" }
 ,{ "definitions" }
 ,{ "must" }
 ,{ "be" }
 ,{ "provided." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "uintXXX" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type" }
 ,{ "with" }
 ,{ "the" }
 ,{ "XXX" , & fmt_text_b }
 ,{ "bit" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "sintXXX" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "2'c" }
 ,{ "signed" }
 ,{ "integral" }
 ,{ "types" }
 ,{ "with" }
 ,{ "the" }
 ,{ "XXX" , & fmt_text_b }
 ,{ "bit" }
 ,{ "length." }
 ,{ "Such" }
 ,{ "types" }
 ,{ "must" }
 ,{ "be" }
 ,{ "available" }
 ,{ "on" }
 ,{ "the" }
 ,{ "target" }
 ,{ "platform." }
 ,{ "For" , & fmt_text_Alert }
 ,{ "the" , & fmt_text_Alert }
 ,{ "latest" , & fmt_text_Alert }
 ,{ "gcc" , & fmt_text_Alert }
 ,{ "family" , & fmt_text_Alert }
 ,{ "of" , & fmt_text_Alert }
 ,{ "compilers" , & fmt_text_Alert }
 ,{ "you" , & fmt_text_Alert }
 ,{ "should" , & fmt_text_Alert }
 ,{ "turn" , & fmt_text_Alert }
 ,{ "on" , & fmt_text_Alert }
 ,{ "the" , & fmt_text_Alert }
 ,{ "option" , & fmt_text_Alert }
 ,{ "-fwrapv" , & fmt_text_Alert }
 ,{ "to" , & fmt_text_Alert }
 ,{ "ensure" , & fmt_text_Alert }
 ,{ "the" , & fmt_text_Alert }
 ,{ "proper" , & fmt_text_Alert }
 ,{ "type" , & fmt_text_Alert }
 ,{ "behavior" , & fmt_text_Alert }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "ulen" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type" }
 ,{ "with" }
 ,{ "the" }
 ,{ "\"address" }
 ,{ "length\"" }
 ,{ "bit" }
 ,{ "length." }
 ,{ "You" }
 ,{ "can" }
 ,{ "use" }
 ,{ "the" }
 ,{ "standard" }
 ,{ "type" }
 ,{ "size_t" , & fmt_text_b }
 ,{ "for" }
 ,{ "it." }
 ,{ "This" }
 ,{ "type" }
 ,{ "must" }
 ,{ "have" }
 ,{ "the" }
 ,{ "sufficient" }
 ,{ "value" }
 ,{ "range" }
 ,{ "to" }
 ,{ "represent" }
 ,{ "any" }
 ,{ "object" }
 ,{ "range" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "uptr" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type." }
 ,{ "It" }
 ,{ "must" }
 ,{ "be" }
 ,{ "large" }
 ,{ "enough" }
 ,{ "to" }
 ,{ "represent" }
 ,{ "any" }
 ,{ "pointer" }
 ,{ "value." }
 ,{ "I.e." }
 ,{ "two-cast" }
 ,{ "(T" , & fmt_text_b }
 ,{ "*)(uptr)ptr" , & fmt_text_b }
 ,{ "must" }
 ,{ "restore" }
 ,{ "the" }
 ,{ "original" }
 ,{ "value" }
 ,{ "of" }
 ,{ "any" }
 ,{ "pointer." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "Basic" }
 ,{ "constants" }
} , & fmt_h4 , & align_h4 } ;

Text b17 = { {
 { "IsLEPlatform" , & fmt_text_b }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "iff" }
 ,{ "the" }
 ,{ "target" }
 ,{ "is" }
 ,{ "little-endian." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "Is2sComplementArithmetic" , & fmt_text_b }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "iff" }
 ,{ "the" }
 ,{ "target" }
 ,{ "integral" }
 ,{ "arithmetic" }
 ,{ "is" }
 ,{ "2's" }
 ,{ "complement." }
 ,{ "Currently" }
 ,{ "it's" }
 ,{ "the" }
 ,{ "only" }
 ,{ "option!" }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "MaxBitLen" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "maximum" }
 ,{ "bit" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "types." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "MaxAlign" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "maximum" }
 ,{ "of" }
 ,{ "alignment" }
 ,{ "of" }
 ,{ "the" }
 ,{ "target" }
 ,{ "types." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "DefaultPacketCount" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "packets" }
 ,{ "in" }
 ,{ "the" }
 ,{ "default" , & fmt_text_a , & ..#page_PacketPool#link }
 ,{ "packet" , & fmt_text_a , & ..#page_PacketPool#link }
 ,{ "pool" , & fmt_text_a , & ..#page_PacketPool#link }
 ,{ "by" , & fmt_text_a , & ..#page_PacketPool#link }
 ,{ "default" , & fmt_text_a , & ..#page_PacketPool#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "DefaultEventElementCount" , & fmt_text_b }
 ,{ "this" }
 ,{ "constant" }
 ,{ "is" }
 ,{ "used" }
 ,{ "in" }
 ,{ "the" }
 ,{ "numbering" }
 ,{ "of" }
 ,{ "the" }
 ,{ "event-generating" }
 ,{ "objects." }
 ,{ "It" }
 ,{ "should" }
 ,{ "have" }
 ,{ "the" }
 ,{ "value" }
 ,{ "like" }
 ,{ "5000-10000." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "Bits::unsigned_ttt" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "bit" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "Extra" }
 ,{ "integral" }
 ,{ "types" }
} , & fmt_h4 , & align_h4 } ;

Text b25 = { {
 { "The" }
 ,{ "structure" }
 ,{ "ExtraInt::Prop" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "support" }
 ,{ "extra" }
 ,{ "integral" }
 ,{ "types," }
 ,{ "i.e." }
 ,{ "types" }
 ,{ "not" }
 ,{ "from" }
 ,{ "the" }
 ,{ "standard" }
 ,{ "list" }
 ,{ "of" }
 ,{ "the" }
 ,{ "integral" }
 ,{ "types," }
 ,{ "if" }
 ,{ "such" }
 ,{ "types" }
 ,{ "are" }
 ,{ "supported" }
 ,{ "by" }
 ,{ "the" }
 ,{ "compiler." }
 ,{ "If" }
 ,{ "you" }
 ,{ "want" }
 ,{ "to" }
 ,{ "use" }
 ,{ "any" }
 ,{ "of" }
 ,{ "such" }
 ,{ "type" }
 ,{ "with" }
 ,{ "the" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "," }
 ,{ "you" }
 ,{ "should" }
 ,{ "provide" }
 ,{ "its" }
 ,{ "properties," }
 ,{ "using" }
 ,{ "a" }
 ,{ "specialization" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "ExtraInt::Prop" , & fmt_text_b }
 ,{ "as" }
 ,{ "shown" }
 ,{ "above." }
 ,{ "For" }
 ,{ "a" }
 ,{ "signed" }
 ,{ "integral" }
 ,{ "type" }
 ,{ "the" }
 ,{ "specialized" }
 ,{ "structure" }
 ,{ "defines" }
 ,{ "both" }
 ,{ "signed" }
 ,{ "and" }
 ,{ "unsigned" }
 ,{ "types" }
 ,{ "and" }
 ,{ "desirable" }
 ,{ "promote" }
 ,{ "types." }
 ,{ "For" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type" }
 ,{ "the" }
 ,{ "specialized" }
 ,{ "structure" }
 ,{ "defines" }
 ,{ "bit" }
 ,{ "length" }
 ,{ "and" }
 ,{ "desirable" }
 ,{ "promote" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "Meta" }
 ,{ "tools" }
} , & fmt_h4 , & align_h4 } ;

Text b27 = { {
 { "This" }
 ,{ "is" }
 ,{ "a" }
 ,{ "small" }
 ,{ "collection" }
 ,{ "of" }
 ,{ "meta-tools." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "DoubleUInt" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "Meta-type" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "yields" }
 ,{ "the" }
 ,{ "double" }
 ,{ "bit" }
 ,{ "length" }
 ,{ "type" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type" }
 ,{ "or" }
 ,{ "the" }
 ,{ "void" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "such" }
 ,{ "type" }
 ,{ "does" }
 ,{ "not" }
 ,{ "exist." }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "Special" }
 ,{ "functions" }
} , & fmt_h4 , & align_h4 } ;

Text b30 = { {
 { "Used()" , & fmt_text_b }
 ,{ "this" }
 ,{ "function" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "disable" }
 ,{ "the" }
 ,{ "\"unused" }
 ,{ "argument\"" }
 ,{ "(or" }
 ,{ "local" }
 ,{ "variable)" }
 ,{ "warning." }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "OptimizeBarrier()" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "suppress" }
 ,{ "the" }
 ,{ "compiler" }
 ,{ "optimization." }
 ,{ "It" }
 ,{ "should" }
 ,{ "be" }
 ,{ "implemented" }
 ,{ "in" }
 ,{ "such" }
 ,{ "a" }
 ,{ "way," }
 ,{ "that" }
 ,{ "compiler" }
 ,{ "could" }
 ,{ "not" }
 ,{ "be" }
 ,{ "able" }
 ,{ "to" }
 ,{ "learn" }
 ,{ "its" }
 ,{ "semantic." }
 ,{ "For" }
 ,{ "example," }
 ,{ "using" }
 ,{ "assembler." }
 ,{ "This" }
 ,{ "function" }
 ,{ "does" }
 ,{ "nothing." }
 ,{ "From" }
 ,{ "the" }
 ,{ "compiler" }
 ,{ "perspective," }
 ,{ "however," }
 ,{ "this" }
 ,{ "function" }
 ,{ "does" }
 ,{ "something" }
 ,{ "unknown" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "memory" }
 ,{ "range." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> AnyCore PlatformBase" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_AntiSem#page , & page_AnyCore_Quick#page };

Link link = { &page } ;

}

scope page_AnyCore_Quick {

Text b0 = { {
 { "AnyCore" }
 ,{ "Quick" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/base/Quick.h" , & fmt_text_Files_b }
 ,{ "CCore/src/base/Quick.cpp" , & fmt_text_Files_b }
 ,{ "CCore/src/base/Quick.s" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "contains" }
 ,{ "some" }
 ,{ "\"quick\"" }
 ,{ "functions." }
 ,{ "These" }
 ,{ "functions" }
 ,{ "may" }
 ,{ "use" }
 ,{ "hardware" }
 ,{ "capabilities" }
 ,{ "to" }
 ,{ "accelerate" }
 ,{ "its" }
 ,{ "operations." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "ScanLSBit()" , & fmt_text_b }
 ,{ "scans" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "for" }
 ,{ "the" }
 ,{ "less" }
 ,{ "significant" }
 ,{ "bit" }
 ,{ "equals" }
 ,{ "1" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "its" }
 ,{ "number" }
 ,{ "(bits" }
 ,{ "are" }
 ,{ "numbered" }
 ,{ "from" }
 ,{ "LSB" }
 ,{ "to" }
 ,{ "MSB)." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "ScanMSBit()" , & fmt_text_b }
 ,{ "scans" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "for" }
 ,{ "the" }
 ,{ "most" }
 ,{ "significant" }
 ,{ "bit" }
 ,{ "equals" }
 ,{ "1" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "its" }
 ,{ "number" }
 ,{ "(bits" }
 ,{ "are" }
 ,{ "numbered" }
 ,{ "from" }
 ,{ "LSB" }
 ,{ "to" }
 ,{ "MSB)." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "Both" }
 ,{ "scan" }
 ,{ "functions" }
 ,{ "operate" }
 ,{ "on" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "ScanUInt" , & fmt_text_b }
 ,{ "," }
 ,{ "which" }
 ,{ "must" }
 ,{ "be" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type." }
 ,{ "If" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "null," }
 ,{ "the" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "not" }
 ,{ "specified." }
 ,{ "Flags" }
 ,{ "ScanLSBitIsFast" , & fmt_text_b }
 ,{ "and" }
 ,{ "ScanMSBitIsFast" , & fmt_text_b }
 ,{ "are" }
 ,{ "set," }
 ,{ "if" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "function" }
 ,{ "has" }
 ,{ "a" }
 ,{ "fast" }
 ,{ "implementation." }
 ,{ "The" }
 ,{ "type" }
 ,{ "ScanUInt" , & fmt_text_b }
 ,{ "should" }
 ,{ "be" }
 ,{ "a" }
 ,{ "machine" }
 ,{ "word" }
 ,{ "size" }
 ,{ "type," }
 ,{ "the" }
 ,{ "wider" }
 ,{ "it" }
 ,{ "is" }
 ,{ "the" }
 ,{ "better." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "ByteSwap16()" , & fmt_text_b }
 ,{ "swaps" }
 ,{ "the" }
 ,{ "bytes" }
 ,{ "of" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "result." }
 ,{ "I.e." }
 ,{ "if" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "consists" }
 ,{ "of" }
 ,{ "the" }
 ,{ "bytes" }
 ,{ "(b" }
 ,{ "0" }
 ,{ ",b" }
 ,{ "1" }
 ,{ ")," }
 ,{ "then" }
 ,{ "the" }
 ,{ "result" }
 ,{ "is" }
 ,{ "(b" }
 ,{ "1" }
 ,{ ",b" }
 ,{ "0" }
 ,{ ")." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "ByteSwap32()" , & fmt_text_b }
 ,{ "swaps" }
 ,{ "the" }
 ,{ "bytes" }
 ,{ "of" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "result." }
 ,{ "I.e." }
 ,{ "if" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "consists" }
 ,{ "of" }
 ,{ "the" }
 ,{ "bytes" }
 ,{ "(b" }
 ,{ "0" }
 ,{ ",b" }
 ,{ "1" }
 ,{ ",b" }
 ,{ "2" }
 ,{ ",b" }
 ,{ "3" }
 ,{ ")," }
 ,{ "then" }
 ,{ "the" }
 ,{ "result" }
 ,{ "is" }
 ,{ "(b" }
 ,{ "3" }
 ,{ ",b" }
 ,{ "2" }
 ,{ ",b" }
 ,{ "1" }
 ,{ ",b" }
 ,{ "0" }
 ,{ ")." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "ByteSwap64()" , & fmt_text_b }
 ,{ "swaps" }
 ,{ "the" }
 ,{ "bytes" }
 ,{ "of" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "result." }
 ,{ "I.e." }
 ,{ "if" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "consists" }
 ,{ "of" }
 ,{ "the" }
 ,{ "bytes" }
 ,{ "(b" }
 ,{ "0" }
 ,{ ",b" }
 ,{ "1" }
 ,{ ",b" }
 ,{ "2" }
 ,{ ",b" }
 ,{ "3" }
 ,{ ",b" }
 ,{ "4" }
 ,{ ",b" }
 ,{ "5" }
 ,{ ",b" }
 ,{ "6" }
 ,{ ",b" }
 ,{ "7" }
 ,{ ")," }
 ,{ "then" }
 ,{ "the" }
 ,{ "result" }
 ,{ "is" }
 ,{ "(b" }
 ,{ "7" }
 ,{ ",b" }
 ,{ "6" }
 ,{ ",b" }
 ,{ "5" }
 ,{ ",b" }
 ,{ "4" }
 ,{ ",b" }
 ,{ "3" }
 ,{ ",b" }
 ,{ "2" }
 ,{ ",b" }
 ,{ "1" }
 ,{ ",b" }
 ,{ "0" }
 ,{ ")." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "Integer" }
 ,{ "multiplicative" }
 ,{ "operations" }
} , & fmt_h4 , & align_h4 } ;

Text b10 = { {
 { "The" }
 ,{ "rest" }
 ,{ "is" }
 ,{ "to" }
 ,{ "support" }
 ,{ "integer" }
 ,{ "multiplicative" }
 ,{ "operations." }
 ,{ "This" }
 ,{ "is" }
 ,{ "done" }
 ,{ "using" }
 ,{ "the" }
 ,{ "Meta-Type" , & fmt_text_b }
 ,{ "UIntMulSelect" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "template" }
 ,{ "UIntMulFunc" , & fmt_text_b }
 ,{ "." }
 ,{ "These" }
 ,{ "structures" }
 ,{ "are" }
 ,{ "not" }
 ,{ "defined" }
 ,{ "itself," }
 ,{ "but" }
 ,{ "its" }
 ,{ "specializations" }
 ,{ "must" }
 ,{ "be" }
 ,{ "given." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "UIntMulSelect" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "specialized" }
 ,{ "for" }
 ,{ "the" }
 ,{ "four" }
 ,{ "following" }
 ,{ "values:" }
 ,{ "8" , & fmt_text_b }
 ,{ "," }
 ,{ "16" , & fmt_text_b }
 ,{ "," }
 ,{ "32" , & fmt_text_b }
 ,{ "," }
 ,{ "64" , & fmt_text_b }
 ,{ "as" }
 ,{ "following:" }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "Ret" , & fmt_text_b }
 ,{ "is" }
 ,{ "some" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type." }
 ,{ "Either" }
 ,{ "this" }
 ,{ "type" }
 ,{ "has" }
 ,{ "the" }
 ,{ "bit" }
 ,{ "width" }
 ,{ "greater" }
 ,{ "or" }
 ,{ "equal" }
 ,{ "than" }
 ,{ "2*N" , & fmt_text_b }
 ,{ "," }
 ,{ "or" }
 ,{ "Ret" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "N-bit" , & fmt_text_b }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type." }
 ,{ "In" }
 ,{ "the" }
 ,{ "first" }
 ,{ "case" }
 ,{ "extended" }
 ,{ "multiplicative" }
 ,{ "operations" }
 ,{ "for" }
 ,{ "the" }
 ,{ "type" }
 ,{ "uintN" , & fmt_text_b }
 ,{ "are" }
 ,{ "implemented" }
 ,{ "using" }
 ,{ "the" }
 ,{ "operations" }
 ,{ "on" }
 ,{ "the" }
 ,{ "type" }
 ,{ "Ret" , & fmt_text_b }
 ,{ "." }
 ,{ "Otherwise" }
 ,{ "the" }
 ,{ "specialization" }
 ,{ "UIntMulFunc<uintN>" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "given." }
 ,{ "Such" }
 ,{ "specialization" }
 ,{ "must" }
 ,{ "provide" }
 ,{ "the" }
 ,{ "following:" }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "Mul()" , & fmt_text_b }
 ,{ "performs" }
 ,{ "the" }
 ,{ "full" }
 ,{ "multiplication" }
 ,{ "of" }
 ,{ "the" }
 ,{ "arguments" }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "result" }
 ,{ "in" }
 ,{ "the" }
 ,{ "pair" }
 ,{ "hi" , & fmt_text_b }
 ,{ "and" }
 ,{ "lo" , & fmt_text_b }
 ,{ "," }
 ,{ "where" }
 ,{ "hi" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "high" }
 ,{ "part" }
 ,{ "of" }
 ,{ "the" }
 ,{ "product" }
 ,{ "and" }
 ,{ "the" }
 ,{ "lo" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "lower" }
 ,{ "part" }
 ,{ "of" }
 ,{ "the" }
 ,{ "product." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "Div()" , & fmt_text_b }
 ,{ "performs" }
 ,{ "the" }
 ,{ "division" }
 ,{ "of" }
 ,{ "the" }
 ,{ "double-size" }
 ,{ "value," }
 ,{ "given" }
 ,{ "by" }
 ,{ "the" }
 ,{ "arguments" }
 ,{ "hi" , & fmt_text_b }
 ,{ "and" }
 ,{ "lo" , & fmt_text_b }
 ,{ "," }
 ,{ "by" }
 ,{ "the" }
 ,{ "third" }
 ,{ "argument" }
 ,{ "den" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "assumed," }
 ,{ "that" }
 ,{ "hi" , & fmt_text_b }
 ,{ "<" , & fmt_text_b }
 ,{ "den" , & fmt_text_b }
 ,{ "," }
 ,{ "in" }
 ,{ "such" }
 ,{ "case" }
 ,{ "the" }
 ,{ "result" }
 ,{ "is" }
 ,{ "represented" }
 ,{ "by" }
 ,{ "the" }
 ,{ "single-size" }
 ,{ "value." }
 ,{ "Otherwise" }
 ,{ "the" }
 ,{ "behavior" }
 ,{ "is" }
 ,{ "unspecified" }
 ,{ "(it" }
 ,{ "may" }
 ,{ "cause" }
 ,{ "hardware" }
 ,{ "trap)." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "Mod()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "the" }
 ,{ "remainder" }
 ,{ "of" }
 ,{ "the" }
 ,{ "division" }
 ,{ "of" }
 ,{ "the" }
 ,{ "double-size" }
 ,{ "value," }
 ,{ "given" }
 ,{ "by" }
 ,{ "the" }
 ,{ "arguments" }
 ,{ "hi" , & fmt_text_b }
 ,{ "and" }
 ,{ "lo" , & fmt_text_b }
 ,{ "," }
 ,{ "by" }
 ,{ "the" }
 ,{ "third" }
 ,{ "argument" }
 ,{ "den" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "assumed," }
 ,{ "that" }
 ,{ "hi" , & fmt_text_b }
 ,{ "<" , & fmt_text_b }
 ,{ "den" , & fmt_text_b }
 ,{ "." }
 ,{ "Otherwise" }
 ,{ "the" }
 ,{ "behavior" }
 ,{ "is" }
 ,{ "unspecified" }
 ,{ "(it" }
 ,{ "may" }
 ,{ "cause" }
 ,{ "hardware" }
 ,{ "trap)." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "MulDiv()" , & fmt_text_b }
 ,{ "multiplies" }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "and" }
 ,{ "divides" }
 ,{ "the" }
 ,{ "full" }
 ,{ "double-size" }
 ,{ "product" }
 ,{ "by" }
 ,{ "den" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "high" }
 ,{ "part" }
 ,{ "of" }
 ,{ "the" }
 ,{ "product" }
 ,{ "must" }
 ,{ "be" }
 ,{ "less" }
 ,{ "than" }
 ,{ "den" , & fmt_text_b }
 ,{ "," }
 ,{ "otherwise" }
 ,{ "the" }
 ,{ "behavior" }
 ,{ "is" }
 ,{ "unspecified" }
 ,{ "(it" }
 ,{ "may" }
 ,{ "cause" }
 ,{ "hardware" }
 ,{ "trap)." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "DivMod()" , & fmt_text_b }
 ,{ "performs" }
 ,{ "both" }
 ,{ "operations" }
 ,{ "Div()" , & fmt_text_b }
 ,{ "and" }
 ,{ "Mod()" , & fmt_text_b }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "result" }
 ,{ "in" }
 ,{ "the" }
 ,{ "fields" }
 ,{ "div" , & fmt_text_b }
 ,{ "and" }
 ,{ "mod" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "ModMul()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "the" }
 ,{ "product" }
 ,{ "of" }
 ,{ "the" }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "by" }
 ,{ "the" }
 ,{ "module" }
 ,{ "mod" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "assumed," }
 ,{ "that" }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "<" , & fmt_text_b }
 ,{ "mod" , & fmt_text_b }
 ,{ "," }
 ,{ "otherwise" }
 ,{ "the" }
 ,{ "behavior" }
 ,{ "is" }
 ,{ "unspecified" }
 ,{ "(it" }
 ,{ "may" }
 ,{ "cause" }
 ,{ "hardware" }
 ,{ "trap)." }
 ,{ "The" }
 ,{ "result" }
 ,{ "is" }
 ,{ "less" }
 ,{ "than" }
 ,{ "mod" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "ModMac()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "the" }
 ,{ "expression" }
 ,{ "s+a*b" , & fmt_text_b }
 ,{ "by" }
 ,{ "the" }
 ,{ "module" }
 ,{ "mod" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "assumed," }
 ,{ "that" }
 ,{ "a" , & fmt_text_b }
 ,{ "," }
 ,{ "b" , & fmt_text_b }
 ,{ "and" }
 ,{ "s" , & fmt_text_b }
 ,{ "<" , & fmt_text_b }
 ,{ "mod" , & fmt_text_b }
 ,{ "," }
 ,{ "otherwise" }
 ,{ "the" }
 ,{ "behavior" }
 ,{ "is" }
 ,{ "unspecified" }
 ,{ "(it" }
 ,{ "may" }
 ,{ "cause" }
 ,{ "hardware" }
 ,{ "trap)." }
 ,{ "The" }
 ,{ "result" }
 ,{ "is" }
 ,{ "less" }
 ,{ "than" }
 ,{ "mod" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> AnyCore Quick" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_AnyCore_PlatformBase#page , & page_AnyCore_SysAtomic#page };

Link link = { &page } ;

}

scope page_AnyCore_SysAtomic {

Text b0 = { {
 { "AnyCore" }
 ,{ "SysAtomic" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysAtomic.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysAtomic.cpp" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysAtomic.s" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "is" }
 ,{ "a" }
 ,{ "target-dependent" }
 ,{ "atomic" }
 ,{ "operations" }
 ,{ "implementation." }
 ,{ "It's" }
 ,{ "done" }
 ,{ "using" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "Atomic" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "only" }
 ,{ "one" }
 ,{ "non-static" }
 ,{ "data" }
 ,{ "member" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "Atomic::Type" , & fmt_text_b }
 ,{ "." }
 ,{ "So" }
 ,{ "you" }
 ,{ "may" }
 ,{ "do" }
 ,{ "a" }
 ,{ "static" }
 ,{ "initialization" }
 ,{ "of" }
 ,{ "a" }
 ,{ "variable" }
 ,{ "of" }
 ,{ "this" }
 ,{ "type:" }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "You" }
 ,{ "may" }
 ,{ "copy" }
 ,{ "this" }
 ,{ "structure," }
 ,{ "but" }
 ,{ "it" }
 ,{ "is" }
 ,{ "not" }
 ,{ "atomic" }
 ,{ "and" }
 ,{ "doing" }
 ,{ "so" }
 ,{ "is" }
 ,{ "not" }
 ,{ "recommended." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "set_null()" , & fmt_text_b }
 ,{ "sets" }
 ,{ "the" }
 ,{ "atomic" }
 ,{ "value" }
 ,{ "to" }
 ,{ "the" }
 ,{ "null," }
 ,{ "this" , & fmt_text_Alert }
 ,{ "is" , & fmt_text_Alert }
 ,{ "not" , & fmt_text_Alert }
 ,{ "an" , & fmt_text_Alert }
 ,{ "atomic" , & fmt_text_Alert }
 ,{ "operation!" , & fmt_text_Alert }
 ,{ "Other" }
 ,{ "operations" }
 ,{ "are" }
 ,{ "atomic." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "operator" , & fmt_text_b }
 ,{ "Type()" , & fmt_text_b }
 ,{ "reads" }
 ,{ "the" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "atomic." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "a" }
 ,{ "read" }
 ,{ "operation" }
 ,{ "and" }
 ,{ "it" }
 ,{ "does" }
 ,{ "not" }
 ,{ "apply" }
 ,{ "any" }
 ,{ "memory" }
 ,{ "fence," }
 ,{ "only" }
 ,{ "atomicity" }
 ,{ "is" }
 ,{ "guaranteed." }
 ,{ "Other" }
 ,{ "operations" }
 ,{ "are" }
 ,{ "modifying" }
 ,{ "operations," }
 ,{ "they" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "previous" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "atomic" }
 ,{ "and" }
 ,{ "apply" }
 ,{ "a" }
 ,{ "memory" }
 ,{ "fence." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "operator" , & fmt_text_b }
 ,{ "=" , & fmt_text_b }
 ,{ "sets" }
 ,{ "the" }
 ,{ "new" }
 ,{ "value" }
 ,{ "to" }
 ,{ "the" }
 ,{ "atomic." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "operator" , & fmt_text_b }
 ,{ "+=" , & fmt_text_b }
 ,{ "increases" }
 ,{ "the" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "atomic" }
 ,{ "by" }
 ,{ "the" }
 ,{ "argument." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "operator" , & fmt_text_b }
 ,{ "-=" , & fmt_text_b }
 ,{ "decreases" }
 ,{ "the" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "atomic" }
 ,{ "by" }
 ,{ "the" }
 ,{ "argument." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "postfix" , & fmt_text_b }
 ,{ "operator" , & fmt_text_b }
 ,{ "++" , & fmt_text_b }
 ,{ "increments" }
 ,{ "the" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "atomic." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "postfix" , & fmt_text_b }
 ,{ "operator" , & fmt_text_b }
 ,{ "--" , & fmt_text_b }
 ,{ "decrements" }
 ,{ "the" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "atomic." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "trySet()" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "conditional" }
 ,{ "set" }
 ,{ "operation." }
 ,{ "It" }
 ,{ "does" }
 ,{ "the" }
 ,{ "following:" }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "In" }
 ,{ "the" }
 ,{ "following" }
 ,{ "example," }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "c" , & fmt_text_b }
 ,{ "is" }
 ,{ "guaranteed" }
 ,{ "to" }
 ,{ "be" }
 ,{ "1." }
 ,{ "The" }
 ,{ "implementation" }
 ,{ "requires" }
 ,{ "not" }
 ,{ "only" }
 ,{ "a" }
 ,{ "proper" }
 ,{ "hardware" }
 ,{ "support," }
 ,{ "but" }
 ,{ "also" }
 ,{ "the" }
 ,{ "prevention" }
 ,{ "the" }
 ,{ "compiler" }
 ,{ "to" }
 ,{ "overoptimize" }
 ,{ "the" }
 ,{ "atomic" }
 ,{ "operations." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "Here" }
 ,{ "is" }
 ,{ "a" }
 ,{ "typical" }
 ,{ "structure" }
 ,{ "implementation." }
 ,{ "Usually" }
 ,{ "you" }
 ,{ "have" }
 ,{ "to" }
 ,{ "give" }
 ,{ "an" }
 ,{ "atomic" }
 ,{ "type" }
 ,{ "and" }
 ,{ "tree" }
 ,{ "atomic" }
 ,{ "functions:" }
 ,{ "Set()" , & fmt_text_b }
 ,{ "," }
 ,{ "Add()" , & fmt_text_b }
 ,{ "and" }
 ,{ "TrySet()" , & fmt_text_b }
 ,{ "." }
 ,{ "These" }
 ,{ "functions" }
 ,{ "are" }
 ,{ "typically" }
 ,{ "implemented" }
 ,{ "using" }
 ,{ "an" }
 ,{ "assembler." }
 ,{ "Each" }
 ,{ "of" }
 ,{ "them" }
 ,{ "applies" }
 ,{ "a" }
 ,{ "memory-fence" }
 ,{ "operation" }
 ,{ "to" }
 ,{ "make" }
 ,{ "sure" }
 ,{ "any" }
 ,{ "changes" }
 ,{ "of" }
 ,{ "any" }
 ,{ "variable," }
 ,{ "made" }
 ,{ "before" }
 ,{ "the" }
 ,{ "function" }
 ,{ "call," }
 ,{ "becomes" }
 ,{ "visible" }
 ,{ "to" }
 ,{ "any" }
 ,{ "thread" }
 ,{ "of" }
 ,{ "execution." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "You" }
 ,{ "may" }
 ,{ "derive" }
 ,{ "functions" }
 ,{ "Sub()" , & fmt_text_b }
 ,{ "," }
 ,{ "Inc()" , & fmt_text_b }
 ,{ "," }
 ,{ "Dec()" , & fmt_text_b }
 ,{ "from" }
 ,{ "the" }
 ,{ "Add()" , & fmt_text_b }
 ,{ "as" }
 ,{ "shown" }
 ,{ "above," }
 ,{ "or" }
 ,{ "give" }
 ,{ "an" }
 ,{ "independent" }
 ,{ "implementation." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "The" }
 ,{ "function" }
 ,{ "Get()" , & fmt_text_b }
 ,{ "usually" }
 ,{ "can" }
 ,{ "be" }
 ,{ "implemented" }
 ,{ "directly," }
 ,{ "as" }
 ,{ "shown" }
 ,{ "above," }
 ,{ "but" }
 ,{ "you" }
 ,{ "can" }
 ,{ "provide" }
 ,{ "another" }
 ,{ "implementation," }
 ,{ "if" }
 ,{ "necessary." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "Get()" , & fmt_text_b }
 ,{ "reads" }
 ,{ "the" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "atomic." }
 ,{ "No" }
 ,{ "memory" }
 ,{ "fence" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "applied" }
 ,{ "(but" }
 ,{ "atomicity" }
 ,{ "is" }
 ,{ "guaranteed)." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "Set()" , & fmt_text_b }
 ,{ "sets" }
 ,{ "the" }
 ,{ "new" }
 ,{ "value" }
 ,{ "to" }
 ,{ "the" }
 ,{ "atomic." }
 ,{ "The" }
 ,{ "old" }
 ,{ "value" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "A" }
 ,{ "memory" }
 ,{ "fence" }
 ,{ "is" }
 ,{ "applied." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "Add()" , & fmt_text_b }
 ,{ "adds" }
 ,{ "the" }
 ,{ "value" }
 ,{ "to" }
 ,{ "the" }
 ,{ "atomic." }
 ,{ "The" }
 ,{ "old" }
 ,{ "value" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "A" }
 ,{ "memory" }
 ,{ "fence" }
 ,{ "is" }
 ,{ "applied." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "TrySet()" , & fmt_text_b }
 ,{ "performs" }
 ,{ "the" }
 ,{ "conditional" }
 ,{ "set." }
 ,{ "If" }
 ,{ "the" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "atomic" }
 ,{ "equals" }
 ,{ "the" }
 ,{ "old_value" , & fmt_text_b }
 ,{ "," }
 ,{ "the" }
 ,{ "new_value" , & fmt_text_b }
 ,{ "is" }
 ,{ "set." }
 ,{ "The" }
 ,{ "previous" }
 ,{ "value" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "A" }
 ,{ "memory" }
 ,{ "fence" }
 ,{ "is" }
 ,{ "applied." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> AnyCore SysAtomic" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_AnyCore_Quick#page , & page_AnyPtr#page };

Link link = { &page } ;

}

scope page_AnyPtr {

Text b0 = { {
 { "AnyPtr" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/AnyPtr.h" , & fmt_text_Files_b }
 ,{ "CCore/src/AnyPtr.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Pointer" }
 ,{ "classes" }
} , & fmt_h3 , & align_h3 } ;

Text b3 = { {
 { "Two" }
 ,{ "similar" }
 ,{ "classes" }
 ,{ "implement" }
 ,{ "a" }
 ,{ "\"polymorphic" }
 ,{ "pointer\"" }
 ,{ "type." }
 ,{ "They" }
 ,{ "can" }
 ,{ "store" }
 ,{ "multiple" }
 ,{ "type" }
 ,{ "pointers." }
 ,{ "The" }
 ,{ "pointee" }
 ,{ "type" }
 ,{ "list" }
 ,{ "is" }
 ,{ "the" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "list." }
 ,{ "AnyPtr" , & fmt_text_b }
 ,{ "stores" }
 ,{ "pointers" }
 ,{ "to" }
 ,{ "non-constants" }
 ,{ "and" }
 ,{ "AnyPtr_const" , & fmt_text_b }
 ,{ "stores" }
 ,{ "pointers" }
 ,{ "to" }
 ,{ "constants." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Default" }
 ,{ "constructor" }
 ,{ "creates" }
 ,{ "a" }
 ,{ "null" }
 ,{ "object." }
 ,{ "There" }
 ,{ "are" }
 ,{ "also" }
 ,{ "constructors" }
 ,{ "from" }
 ,{ "NothingType" , & fmt_text_b }
 ,{ "words" }
 ,{ "and" }
 ,{ "nullptr" , & fmt_text_b }
 ,{ "literal." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "The" }
 ,{ "last" }
 ,{ "implicit" }
 ,{ "constructor" }
 ,{ "creates" }
 ,{ "an" }
 ,{ "object" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "pointer" }
 ,{ "stored." }
 ,{ "The" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "a" }
 ,{ "type" }
 ,{ "from" }
 ,{ "the" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "list." }
 ,{ "Even" }
 ,{ "if" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "is" }
 ,{ "null," }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "not" }
 ,{ "null:" }
 ,{ "it" }
 ,{ "remembers" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "operator" , & fmt_text_b }
 ,{ "+" , & fmt_text_b }
 ,{ "and" }
 ,{ "operator" , & fmt_text_b }
 ,{ "!" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "check," }
 ,{ "if" , & fmt_text_Alert }
 ,{ "the" , & fmt_text_Alert }
 ,{ "pointer" , & fmt_text_Alert }
 ,{ "is" , & fmt_text_Alert }
 ,{ "non-null" , & fmt_text_Alert }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "hasType()" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "check" }
 ,{ "the" }
 ,{ "type" }
 ,{ "of" }
 ,{ "the" }
 ,{ "pointer." }
 ,{ "The" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "T" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "from" }
 ,{ "the" }
 ,{ "list" }
 ,{ "TT" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "castPtr()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "original" }
 ,{ "pointer" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "," }
 ,{ "or" }
 ,{ "null" }
 ,{ "if" }
 ,{ "the" }
 ,{ "stored" }
 ,{ "pointer" }
 ,{ "has" }
 ,{ "another" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "The" }
 ,{ "method" }
 ,{ "apply()" , & fmt_text_b }
 ,{ "applies" }
 ,{ "the" }
 ,{ "given" }
 ,{ "functor," }
 ,{ "using" }
 ,{ "the" }
 ,{ "Functor" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "Init" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "Pattern" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "," }
 ,{ "to" }
 ,{ "the" }
 ,{ "stored" }
 ,{ "pointer." }
 ,{ "It" }
 ,{ "does" }
 ,{ "nothing" }
 ,{ "for" }
 ,{ "the" }
 ,{ "null" }
 ,{ "object," }
 ,{ "but" }
 ,{ "if" }
 ,{ "it" }
 ,{ "is" }
 ,{ "not" }
 ,{ "null," }
 ,{ "the" }
 ,{ "proper" }
 ,{ "variant" }
 ,{ "of" }
 ,{ "the" }
 ,{ "functor" }
 ,{ "is" }
 ,{ "applied" }
 ,{ "to" }
 ,{ "the" }
 ,{ "initial" }
 ,{ "pointer." }
 ,{ "The" }
 ,{ "functor" }
 ,{ "must" }
 ,{ "be" }
 ,{ "polymorphic" }
 ,{ "and" }
 ,{ "capable" }
 ,{ "to" }
 ,{ "handle" }
 ,{ "all" }
 ,{ "possible" }
 ,{ "pointer" }
 ,{ "types." }
 ,{ "Extra" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "passed" }
 ,{ "as" }
 ,{ "extra" }
 ,{ "arguments" }
 ,{ "to" }
 ,{ "the" }
 ,{ "functor" }
 ,{ "call." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "An" }
 ,{ "example:" }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "applyFor()" , & fmt_text_b }
 ,{ "applies" }
 ,{ "the" }
 ,{ "functor" }
 ,{ "to" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "type." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "null" }
 ,{ "or" }
 ,{ "stores" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "of" }
 ,{ "another" }
 ,{ "type," }
 ,{ "this" }
 ,{ "method" }
 ,{ "does" }
 ,{ "nothing." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "AnyPtr" , & fmt_text_b }
 ,{ "can" }
 ,{ "print" }
 ,{ "the" }
 ,{ "pointed" }
 ,{ "object." }
 ,{ "If" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "is" }
 ,{ "null," }
 ,{ "the" }
 ,{ "\"(null)\"" }
 ,{ "is" }
 ,{ "printed," }
 ,{ "otherwise" }
 ,{ "the" }
 ,{ "object." }
 ,{ "Printing" }
 ,{ "is" }
 ,{ "implemented" }
 ,{ "with" }
 ,{ "the" }
 ,{ "following" }
 ,{ "functor:" }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "The" }
 ,{ "static" }
 ,{ "method" }
 ,{ "Binary" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "with" }
 ,{ "two" }
 ,{ "any-pointers." }
 ,{ "If" }
 ,{ "pointer" }
 ,{ "types" }
 ,{ "are" }
 ,{ "different" }
 ,{ "then" }
 ,{ "the" }
 ,{ "return" }
 ,{ "object" }
 ,{ "is" }
 ,{ "constructed" }
 ,{ "as" }
 ,{ "Ret(a.type,b.type)" , & fmt_text_b }
 ,{ "," }
 ,{ "so" }
 ,{ "you" }
 ,{ "can" }
 ,{ "handle" }
 ,{ "this" }
 ,{ "case" }
 ,{ "separately." }
 ,{ "This" }
 ,{ "case" }
 ,{ "happens" }
 ,{ "also" }
 ,{ "if" }
 ,{ "one" }
 ,{ "of" }
 ,{ "the" }
 ,{ "pointers" }
 ,{ "is" }
 ,{ "null" }
 ,{ "and" }
 ,{ "the" }
 ,{ "other" }
 ,{ "is" }
 ,{ "not" }
 ,{ "(" }
 ,{ "type" , & fmt_text_b }
 ,{ "is" }
 ,{ "0" }
 ,{ "for" }
 ,{ "null" }
 ,{ "pointer)." }
 ,{ "Otherwise" }
 ,{ "if" }
 ,{ "both" }
 ,{ "any-pointers" }
 ,{ "are" }
 ,{ "not" }
 ,{ "null" }
 ,{ "objects," }
 ,{ "then" }
 ,{ "the" }
 ,{ "functor" }
 ,{ "with" }
 ,{ "two" }
 ,{ "elaborated" }
 ,{ "pointers" }
 ,{ "is" }
 ,{ "called." }
 ,{ "Finally," }
 ,{ "Ret()" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned" }
 ,{ "if" }
 ,{ "both" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "null." }
 ,{ "An" }
 ,{ "example:" }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "This" }
 ,{ "method" }
 ,{ "is" }
 ,{ "useful" }
 ,{ "for" }
 ,{ "a" }
 ,{ "comparison" }
 ,{ "implementation." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "ElaborateAnyPtr()" }
} , & fmt_h3 , & align_h3 } ;

Text b16 = { {
 { "The" }
 ,{ "global" }
 ,{ "function" }
 ,{ "ElaborateAnyPtr" , & fmt_text_b }
 ,{ "is" }
 ,{ "another" }
 ,{ "great" }
 ,{ "way" }
 ,{ "to" }
 ,{ "demultiplex" }
 ,{ "any-pointers." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "This" }
 ,{ "function" }
 ,{ "simply" }
 ,{ "calls" }
 ,{ "obj(ss...)" , & fmt_text_b }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "arguments." }
 ,{ "But" }
 ,{ "if" }
 ,{ "one" }
 ,{ "of" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "AnyPtr" , & fmt_text_b }
 ,{ "," }
 ,{ "then" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "pointer" }
 ,{ "is" }
 ,{ "extracted" }
 ,{ "and" }
 ,{ "passed" }
 ,{ "instead." }
 ,{ "If" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "object" }
 ,{ "is" }
 ,{ "null," }
 ,{ "there" }
 ,{ "will" }
 ,{ "be" }
 ,{ "no" }
 ,{ "call." }
 ,{ "An" }
 ,{ "example:" }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "CastAnyPtr()" }
} , & fmt_h3 , & align_h3 } ;

Text b19 = { {
 { "To" }
 ,{ "cast" }
 ,{ "one" }
 ,{ "AnyPtr" , & fmt_text_b }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "another" }
 ,{ "with" }
 ,{ "an" }
 ,{ "extended" }
 ,{ "type" }
 ,{ "list" }
 ,{ "you" }
 ,{ "can" }
 ,{ "use" }
 ,{ "the" }
 ,{ "following" }
 ,{ "generic" }
 ,{ "function:" }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> AnyPtr" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b19 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_AnyCore_SysAtomic#page , & page_ApplyToList#page };

Link link = { &page } ;

}

scope page_ApplyToList {

Text b0 = { {
 { "ApplyToList" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/algon/ApplyToList.h" , & fmt_text_Files_b }
 ,{ "CCore/src/algon/ApplyToList.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "ApplyToList()" , & fmt_text_b }
 ,{ "applies" }
 ,{ "a" }
 ,{ "functor" }
 ,{ "to" }
 ,{ "the" }
 ,{ "list" }
 ,{ "of" }
 ,{ "arguments." }
 ,{ "A" }
 ,{ "result" }
 ,{ "is" }
 ,{ "returned" }
 ,{ "using" }
 ,{ "the" }
 ,{ "GetResult()" , & fmt_text_a , & ..#page_ApplyToRange#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> ApplyToList" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_AnyPtr#page , & page_ApplyToRange#page };

Link link = { &page } ;

}

scope page_ApplyToRange {

Text b0 = { {
 { "ApplyToRange" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/algon/ApplyToRange.h" , & fmt_text_Files_b }
 ,{ "CCore/src/algon/ApplyToRange.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "GetResult()" }
} , & fmt_h3 , & align_h3 } ;

Text b3 = { {
 { "GetResult()" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "extract" }
 ,{ "a" }
 ,{ "result" }
 ,{ "from" }
 ,{ "the" }
 ,{ "object." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "has" }
 ,{ "the" }
 ,{ "method" }
 ,{ "getResult()" , & fmt_text_b }
 ,{ "it" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "extract" }
 ,{ "a" }
 ,{ "result." }
 ,{ "Otherwise" }
 ,{ "void" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "ApplyToRange()" }
} , & fmt_h3 , & align_h3 } ;

Text b5 = { {
 { "ApplyToRange()" , & fmt_text_b }
 ,{ "applies" }
 ,{ "a" }
 ,{ "functor" }
 ,{ "to" }
 ,{ "a" }
 ,{ "set" }
 ,{ "of" }
 ,{ "elements." }
 ,{ "This" }
 ,{ "algorithm" }
 ,{ "uses" }
 ,{ "the" }
 ,{ "Functor" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "Init" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "Pattern" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "Cursor" , & fmt_text_b }
 ,{ "or" }
 ,{ "Recursor" , & fmt_text_b }
 ,{ "," }
 ,{ "the" }
 ,{ "second" }
 ,{ "is" }
 ,{ "a" }
 ,{ "functor" }
 ,{ "initializer." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "A" }
 ,{ "result" }
 ,{ "(or" }
 ,{ "void" , & fmt_text_b }
 ,{ ")" }
 ,{ "is" }
 ,{ "returned" }
 ,{ "from" }
 ,{ "the" }
 ,{ "functor" }
 ,{ "using" }
 ,{ "the" }
 ,{ "function" }
 ,{ "GetResult()" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "the" }
 ,{ "functor" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "boolable" }
 ,{ "value," }
 ,{ "it" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "stop" }
 ,{ "the" }
 ,{ "processing" }
 ,{ "if" }
 ,{ "false" , & fmt_text_b }
 ,{ "is" }
 ,{ "obtained." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "Recursor" , & fmt_text_b }
 ,{ "variants" }
 ,{ "use" }
 ,{ "recursion" }
 ,{ "to" }
 ,{ "run" }
 ,{ "over" }
 ,{ "the" }
 ,{ "set." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> ApplyToRange" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_ApplyToList#page , & page_APRTest#page };

Link link = { &page } ;

}

scope page_APRTest {

Text b0 = { {
 { "APRTest" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/math/APRTest.h" , & fmt_text_Files_b }
 ,{ "CCore/src/math/APRTest.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "APRTest" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "primality" }
 ,{ "test" }
 ,{ "(stands" }
 ,{ "for" }
 ,{ "Adelman-Pomerance-Rumely)." }
 ,{ "It" }
 ,{ "can" }
 ,{ "determine" }
 ,{ "for" }
 ,{ "the" }
 ,{ "given" }
 ,{ "Integer" }
 ,{ "is" }
 ,{ "it" }
 ,{ "prime" }
 ,{ "or" }
 ,{ "not." }
 ,{ "The" }
 ,{ "all" }
 ,{ "related" }
 ,{ "software" }
 ,{ "entities" }
 ,{ "are" }
 ,{ "enclosed" }
 ,{ "in" }
 ,{ "the" }
 ,{ "namespace" }
 ,{ "APRTest" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "To" }
 ,{ "run" }
 ,{ "the" }
 ,{ "test" }
 ,{ "you" }
 ,{ "need" }
 ,{ "a" }
 ,{ "TestEngine" , & fmt_text_b }
 ,{ "object." }
 ,{ "The" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "is" }
 ,{ "an" }
 ,{ "Integer" , & fmt_text_a , & ..#page_Integer#link }
 ,{ "class." }
 ,{ "This" }
 ,{ "test" }
 ,{ "can" }
 ,{ "work" }
 ,{ "with" }
 ,{ "numbers" }
 ,{ "below" }
 ,{ "the" }
 ,{ "cap" }
 ,{ "equals" }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "This" }
 ,{ "number" }
 ,{ "has" }
 ,{ "9021" , & fmt_text_b }
 ,{ "bit" }
 ,{ "length." }
 ,{ "So" }
 ,{ "numbers" }
 ,{ "with" }
 ,{ "9020" , & fmt_text_b }
 ,{ "bit" }
 ,{ "length" }
 ,{ "or" }
 ,{ "less" }
 ,{ "can" }
 ,{ "be" }
 ,{ "tested." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "To" }
 ,{ "test" }
 ,{ "the" }
 ,{ "given" }
 ,{ "Integer" }
 ,{ "use" }
 ,{ "the" }
 ,{ "operator" , & fmt_text_b }
 ,{ "()" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "to" }
 ,{ "be" }
 ,{ "tested." }
 ,{ "The" }
 ,{ "second" }
 ,{ "is" }
 ,{ "the" }
 ,{ "reference" }
 ,{ "to" }
 ,{ "a" }
 ,{ "report" }
 ,{ "object." }
 ,{ "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "default" }
 ,{ "silent" }
 ,{ "Report" , & fmt_text_b }
 ,{ "class:" }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "Any" }
 ,{ "report" }
 ,{ "class" }
 ,{ "must" }
 ,{ "have" }
 ,{ "the" }
 ,{ "same" }
 ,{ "interface." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "A" }
 ,{ "test" }
 ,{ "result" }
 ,{ "is" }
 ,{ "returned" }
 ,{ "as" }
 ,{ "the" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "enumeration" }
 ,{ "TestResult" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "IsPrime" , & fmt_text_b }
 ,{ "equals" }
 ,{ "0" }
 ,{ "means" }
 ,{ "the" }
 ,{ "number" }
 ,{ "is" }
 ,{ "prime." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "NoPrime" , & fmt_text_b }
 ,{ "means" }
 ,{ "the" }
 ,{ "number" }
 ,{ "is" }
 ,{ "no" }
 ,{ "prime." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "HasDivisor" , & fmt_text_b }
 ,{ "means" }
 ,{ "the" }
 ,{ "number" }
 ,{ "is" }
 ,{ "no" }
 ,{ "prime" }
 ,{ "and" }
 ,{ "some" }
 ,{ "divisor" }
 ,{ "can" }
 ,{ "be" }
 ,{ "presented." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "HardCase" , & fmt_text_b }
 ,{ "means" }
 ,{ "the" }
 ,{ "test" }
 ,{ "was" }
 ,{ "unable" }
 ,{ "to" }
 ,{ "determine" }
 ,{ "the" }
 ,{ "primality" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "number." }
 ,{ "This" }
 ,{ "is" }
 ,{ "a" }
 ,{ "very" }
 ,{ "rare" }
 ,{ "case." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "TooLarge" , & fmt_text_b }
 ,{ "means" }
 ,{ "the" }
 ,{ "number" }
 ,{ "is" }
 ,{ "above" }
 ,{ "the" }
 ,{ "test" }
 ,{ "cap." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "Report" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "called" }
 ,{ "to" }
 ,{ "indicate" }
 ,{ "some" }
 ,{ "stages" }
 ,{ "of" }
 ,{ "the" }
 ,{ "test." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "start()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "at" }
 ,{ "the" }
 ,{ "start" }
 ,{ "of" }
 ,{ "the" }
 ,{ "test." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "to" }
 ,{ "be" }
 ,{ "tested." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "sanity()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "if" }
 ,{ "some" }
 ,{ "sanity" }
 ,{ "checks" }
 ,{ "are" }
 ,{ "failed." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "text" }
 ,{ "description" }
 ,{ "of" }
 ,{ "the" }
 ,{ "situation." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "isSmallPrime()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "if" }
 ,{ "the" }
 ,{ "number" }
 ,{ "been" }
 ,{ "tested" }
 ,{ "is" }
 ,{ "a" }
 ,{ "small" }
 ,{ "prime." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "testP()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "at" }
 ,{ "the" }
 ,{ "beginning" }
 ,{ "of" }
 ,{ "a" }
 ,{ "series" }
 ,{ "of" }
 ,{ "subtests." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "small" }
 ,{ "prime" }
 ,{ "number" }
 ,{ "p" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "testQ()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "at" }
 ,{ "the" }
 ,{ "beginning" }
 ,{ "of" }
 ,{ "a" }
 ,{ "subtest." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "small" }
 ,{ "prime" }
 ,{ "number" }
 ,{ "q" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "couple" }
 ,{ "(p,q)" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "subtest" }
 ,{ "index." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "startProbe()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "at" }
 ,{ "the" }
 ,{ "beginning" }
 ,{ "of" }
 ,{ "the" }
 ,{ "searching" }
 ,{ "divisors." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "probe()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "during" }
 ,{ "the" }
 ,{ "searching" }
 ,{ "divisors." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "remaining" }
 ,{ "possible" }
 ,{ "divisor" }
 ,{ "count." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "div()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "if" }
 ,{ "some" }
 ,{ "divisor" }
 ,{ "has" }
 ,{ "been" }
 ,{ "found." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "that" }
 ,{ "divisor." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "hard()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "if" }
 ,{ "it" }
 ,{ "is" }
 ,{ "the" }
 ,{ "hard" }
 ,{ "case." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "isPrime()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "if" }
 ,{ "the" }
 ,{ "number" }
 ,{ "been" }
 ,{ "tested" }
 ,{ "is" }
 ,{ "prime." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "noPrime()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "if" }
 ,{ "the" }
 ,{ "number" }
 ,{ "been" }
 ,{ "tested" }
 ,{ "is" }
 ,{ "not" }
 ,{ "prime." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "faster" }
 ,{ "parallel" }
 ,{ "variant" }
 ,{ "of" }
 ,{ "this" }
 ,{ "test." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "This" }
 ,{ "variant" }
 ,{ "is" }
 ,{ "working" }
 ,{ "fatser" }
 ,{ "on" }
 ,{ "multi-core" }
 ,{ "systems." }
 ,{ "To" }
 ,{ "achieve" }
 ,{ "a" }
 ,{ "greater" }
 ,{ "efficiency" }
 ,{ "you" }
 ,{ "have" }
 ,{ "to" }
 ,{ "use" }
 ,{ "TaskHeap" , & fmt_text_a , & ..#page_TaskHeap#link }
 ,{ "." }
 ,{ "Here" }
 ,{ "is" }
 ,{ "an" }
 ,{ "example" }
 ,{ "of" }
 ,{ "the" }
 ,{ "proper" }
 ,{ "usage:" }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> APRTest" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_ApplyToRange#page , & page_Arrays#page };

Link link = { &page } ;

}

scope page_Arrays {

Text b0 = { {
 { "Arrays" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/Array.h" , & fmt_text_Files_b }
 ,{ "CCore/src/Array.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Subfolders" }
 ,{ "CCore/inc/array" , & fmt_text_Files_b }
 ,{ "CCore/src/array" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b3 = { {
 { "Helpers" }
} , & fmt_h3 , & align_h3 } ;

Text b4 = { {
 { "There" }
 ,{ "are" }
 ,{ "several" }
 ,{ "types" }
 ,{ "that" }
 ,{ "are" }
 ,{ "used" }
 ,{ "to" }
 ,{ "specify" }
 ,{ "the" }
 ,{ "constructor" }
 ,{ "behavior." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "DoBuild" , & fmt_text_b }
 ,{ "and" }
 ,{ "DoReserve" , & fmt_text_b }
 ,{ "are" }
 ,{ "word" , & fmt_text_b }
 ,{ "s." }
 ,{ "They" }
 ,{ "designate" }
 ,{ "the" }
 ,{ "build" }
 ,{ "and" }
 ,{ "the" }
 ,{ "reserve" }
 ,{ "variant" }
 ,{ "of" }
 ,{ "the" }
 ,{ "constructor" }
 ,{ "respectively." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "DoRaw" , & fmt_text_b }
 ,{ "," }
 ,{ "DoFill" , & fmt_text_b }
 ,{ "," }
 ,{ "DoCopy" , & fmt_text_b }
 ,{ "," }
 ,{ "DoCast" , & fmt_text_b }
 ,{ "," }
 ,{ "DoSwap" , & fmt_text_b }
 ,{ "," }
 ,{ "DoCreate" , & fmt_text_b }
 ,{ "are" }
 ,{ "not" }
 ,{ "word" , & fmt_text_b }
 ,{ "s," }
 ,{ "but" }
 ,{ "Small" , & fmt_text_b }
 ,{ "Data" , & fmt_text_b }
 ,{ "Type" , & fmt_text_b }
 ,{ "s." }
 ,{ "They" }
 ,{ "designate" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "variant" }
 ,{ "of" }
 ,{ "the" }
 ,{ "constructor" }
 ,{ "and" }
 ,{ "carry" }
 ,{ "two" }
 ,{ "parameters:" }
 ,{ "the" }
 ,{ "array" }
 ,{ "length" }
 ,{ "and" }
 ,{ "the" }
 ,{ "reserved" }
 ,{ "length." }
 ,{ "When" }
 ,{ "the" }
 ,{ "array" }
 ,{ "is" }
 ,{ "being" }
 ,{ "created," }
 ,{ "the" }
 ,{ "reserved" }
 ,{ "length" }
 ,{ "determines" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "space" }
 ,{ "to" }
 ,{ "be" }
 ,{ "allocated," }
 ,{ "and" }
 ,{ "the" }
 ,{ "length" }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "elements" }
 ,{ "to" }
 ,{ "be" }
 ,{ "created." }
 ,{ "An" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown," }
 ,{ "if" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "greater" }
 ,{ "than" }
 ,{ "maxlen" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "Arrays" }
} , & fmt_h3 , & align_h3 } ;

Text b8 = { {
 { "Array" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "container," }
 ,{ "where" }
 ,{ "multiple" }
 ,{ "items" }
 ,{ "comprise" }
 ,{ "a" }
 ,{ "continuous" }
 ,{ "range." }
 ,{ "The" }
 ,{ "simplest" }
 ,{ "such" }
 ,{ "\"container\"" }
 ,{ "is" }
 ,{ "the" }
 ,{ "embedded" }
 ,{ "type" }
 ,{ "\"array" }
 ,{ "of\"" }
 ,{ "T[Len]" , & fmt_text_b }
 ,{ "." }
 ,{ "Unfortunately," }
 ,{ "this" }
 ,{ "type" }
 ,{ "lacks" }
 ,{ "many" }
 ,{ "abilities," }
 ,{ "required" }
 ,{ "in" }
 ,{ "applications," }
 ,{ "so" }
 ,{ "we" }
 ,{ "need" }
 ,{ "a" }
 ,{ "variety" }
 ,{ "of" }
 ,{ "Array" , & fmt_text_b }
 ,{ "s." }
 ,{ "We" }
 ,{ "don't" }
 ,{ "use" }
 ,{ "STL" }
 ,{ "vector" , & fmt_text_b }
 ,{ "," }
 ,{ "because" }
 ,{ "it" }
 ,{ "also" }
 ,{ "has" }
 ,{ "many" }
 ,{ "deficiencies." }
 ,{ "CCore" , & fmt_text_b }
 ,{ "Array" , & fmt_text_b }
 ,{ "s" }
 ,{ "use" }
 ,{ "the" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "heap" }
 ,{ "with" }
 ,{ "its" }
 ,{ "extra" }
 ,{ "functionality." }
 ,{ "They" }
 ,{ "also" }
 ,{ "customizable" }
 ,{ "using" }
 ,{ "an" }
 ,{ "Algorithm" , & fmt_text_b }
 ,{ "Package" , & fmt_text_b }
 ,{ "of" }
 ,{ "array" }
 ,{ "algorithms." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "CCore" , & fmt_text_b }
 ,{ "Array" , & fmt_text_b }
 ,{ "s" }
 ,{ "implement" }
 ,{ "Range" , & fmt_text_b }
 ,{ "Access" , & fmt_text_b }
 ,{ "Interface" , & fmt_text_b }
 ,{ "." }
 ,{ "They" }
 ,{ "also" }
 ,{ "provide" }
 ,{ "the" }
 ,{ "index" }
 ,{ "access" }
 ,{ "to" }
 ,{ "elements" }
 ,{ "through" }
 ,{ "the" }
 ,{ "overloaded" }
 ,{ "operator" , & fmt_text_b }
 ,{ "[]" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "checked" }
 ,{ "index" }
 ,{ "access" }
 ,{ "with" }
 ,{ "the" }
 ,{ "method" }
 ,{ "at()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "Constant" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "Array" , & fmt_text_b }
 ,{ "s" }
 ,{ "give" }
 ,{ "constant" }
 ,{ "access" }
 ,{ "to" }
 ,{ "its" }
 ,{ "elements." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "Allocation" }
 ,{ "errors" }
 ,{ "and" }
 ,{ "index" }
 ,{ "check" }
 ,{ "errors" }
 ,{ "throw" }
 ,{ "exceptions." }
 ,{ "Default" }
 ,{ "constructors" }
 ,{ "are" }
 ,{ "no-throw." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "The" }
 ,{ "method" }
 ,{ "apply()" , & fmt_text_b }
 ,{ "applies" }
 ,{ "the" }
 ,{ "functor," }
 ,{ "given" }
 ,{ "by" }
 ,{ "a" }
 ,{ "Functor" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "Init" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "," }
 ,{ "to" }
 ,{ "array" }
 ,{ "elements." }
 ,{ "If" }
 ,{ "the" }
 ,{ "array" }
 ,{ "is" }
 ,{ "constant," }
 ,{ "then" }
 ,{ "element" }
 ,{ "references" }
 ,{ "are" }
 ,{ "constant" }
 ,{ "too." }
 ,{ "The" }
 ,{ "variant" }
 ,{ "apply_const()" , & fmt_text_b }
 ,{ "also" }
 ,{ "enforces" }
 ,{ "constantness." }
 ,{ "It" }
 ,{ "also" }
 ,{ "may" }
 ,{ "return" , & fmt_text_a , & ..#page_ApplyToRange#link }
 ,{ "a" , & fmt_text_a , & ..#page_ApplyToRange#link }
 ,{ "functor" , & fmt_text_a , & ..#page_ApplyToRange#link }
 ,{ "result" , & fmt_text_a , & ..#page_ApplyToRange#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "The" }
 ,{ "method" }
 ,{ "applyReverse()" , & fmt_text_b }
 ,{ "applies" }
 ,{ "the" }
 ,{ "functor," }
 ,{ "given" }
 ,{ "by" }
 ,{ "a" }
 ,{ "Functor" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "Init" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "," }
 ,{ "to" }
 ,{ "array" }
 ,{ "elements" }
 ,{ "in" }
 ,{ "the" }
 ,{ "reverse" }
 ,{ "order." }
 ,{ "If" }
 ,{ "the" }
 ,{ "array" }
 ,{ "is" }
 ,{ "constant," }
 ,{ "then" }
 ,{ "element" }
 ,{ "references" }
 ,{ "are" }
 ,{ "constant" }
 ,{ "too." }
 ,{ "The" }
 ,{ "variant" }
 ,{ "applyReverse_const()" , & fmt_text_b }
 ,{ "also" }
 ,{ "enforces" }
 ,{ "constantness." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "Array" , & fmt_text_b }
 ,{ "s" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "with" }
 ,{ "most" }
 ,{ "types," }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "hard" }
 ,{ "restrictions" }
 ,{ "on" }
 ,{ "type" }
 ,{ "properties." }
 ,{ "The" }
 ,{ "only" }
 ,{ "strong" }
 ,{ "requirement" }
 ,{ "is:" }
 ,{ "the" }
 ,{ "type" }
 ,{ "destructor" }
 ,{ "must" }
 ,{ "be" }
 ,{ "no-throw." }
 ,{ "Some" }
 ,{ "operations," }
 ,{ "however," }
 ,{ "require" }
 ,{ "additional" }
 ,{ "type" }
 ,{ "properties." }
 ,{ "For" }
 ,{ "example," }
 ,{ "to" }
 ,{ "use" }
 ,{ "cloneTo()" , & fmt_text_b }
 ,{ "methods" }
 ,{ "the" }
 ,{ "type" }
 ,{ "must" }
 ,{ "be" }
 ,{ "copyable." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "All" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "Array" , & fmt_text_b }
 ,{ "s" }
 ,{ "available" }
 ,{ "through" }
 ,{ "the" }
 ,{ "header" }
 ,{ "CCore/inc/Array.h" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "TempArray" }
} , & fmt_h4 , & align_h4 } ;

Text b17 = { {
 { "TempArray" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "simplest" }
 ,{ "of" }
 ,{ "Array" , & fmt_text_b }
 ,{ "s." }
 ,{ "It" }
 ,{ "is" }
 ,{ "applicable" }
 ,{ "only" }
 ,{ "to" }
 ,{ "POD" }
 ,{ "types." }
 ,{ "This" }
 ,{ "container" }
 ,{ "combines" }
 ,{ "stack" }
 ,{ "storage" }
 ,{ "and" }
 ,{ "dynamic" }
 ,{ "storage" }
 ,{ "to" }
 ,{ "speed" }
 ,{ "up" }
 ,{ "the" }
 ,{ "array" }
 ,{ "construction/destruction" }
 ,{ "for" }
 ,{ "a" }
 ,{ "short" }
 ,{ "lengths." }
 ,{ "Use" }
 ,{ "this" }
 ,{ "Array" , & fmt_text_b }
 ,{ "if" }
 ,{ "you" }
 ,{ "need" }
 ,{ "a" }
 ,{ "temporary" }
 ,{ "buffer" }
 ,{ "with" }
 ,{ "expected" }
 ,{ "short" }
 ,{ "length" }
 ,{ "in" }
 ,{ "the" }
 ,{ "most" }
 ,{ "cases." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "If" }
 ,{ "the" }
 ,{ "array" }
 ,{ "length" }
 ,{ "is" }
 ,{ "not" }
 ,{ "greater" }
 ,{ "than" }
 ,{ "StackLen" , & fmt_text_b }
 ,{ "," }
 ,{ "then" }
 ,{ "TempArray" , & fmt_text_b }
 ,{ "uses" }
 ,{ "the" }
 ,{ "internal" }
 ,{ "buffer." }
 ,{ "Otherwise," }
 ,{ "the" }
 ,{ "space" }
 ,{ "for" }
 ,{ "elements" }
 ,{ "is" }
 ,{ "dynamically" }
 ,{ "allocated." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "provide()" , & fmt_text_b }
 ,{ "ensures" }
 ,{ "the" }
 ,{ "array" }
 ,{ "has" }
 ,{ "at" }
 ,{ "least" }
 ,{ "the" }
 ,{ "given" }
 ,{ "length," }
 ,{ "reallocating" }
 ,{ "it" }
 ,{ "if" }
 ,{ "required." }
 ,{ "The" }
 ,{ "previous" }
 ,{ "array" }
 ,{ "content" }
 ,{ "may" }
 ,{ "be" }
 ,{ "lost." }
 ,{ "The" }
 ,{ "new" }
 ,{ "content" }
 ,{ "is" }
 ,{ "not" }
 ,{ "initialized." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "reset()" , & fmt_text_b }
 ,{ "recreates" }
 ,{ "the" }
 ,{ "array" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "length," }
 ,{ "reallocating" }
 ,{ "it" }
 ,{ "if" }
 ,{ "required." }
 ,{ "The" }
 ,{ "previous" }
 ,{ "array" }
 ,{ "content" }
 ,{ "may" }
 ,{ "be" }
 ,{ "lost." }
 ,{ "The" }
 ,{ "new" }
 ,{ "content" }
 ,{ "is" }
 ,{ "not" }
 ,{ "initialized." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "extend()" , & fmt_text_b }
 ,{ "extends" }
 ,{ "the" }
 ,{ "array" }
 ,{ "up" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "length." }
 ,{ "If" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "less" }
 ,{ "or" }
 ,{ "equal" }
 ,{ "than" }
 ,{ "the" }
 ,{ "current" }
 ,{ "array" }
 ,{ "length," }
 ,{ "the" }
 ,{ "method" }
 ,{ "does" }
 ,{ "nothing" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "false" , & fmt_text_b }
 ,{ "." }
 ,{ "Otherwise" }
 ,{ "it" }
 ,{ "extends" }
 ,{ "the" }
 ,{ "array," }
 ,{ "preserving" }
 ,{ "the" }
 ,{ "current" }
 ,{ "content," }
 ,{ "and" }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "new" }
 ,{ "content" }
 ,{ "is" }
 ,{ "not" }
 ,{ "initialized." }
 ,{ "An" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown" }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "memory." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "erase()" , & fmt_text_b }
 ,{ "erases" }
 ,{ "the" }
 ,{ "array." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "Other" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "standard" }
 ,{ "array" }
 ,{ "methods." }
} , & fmt_text , & align_text } ;

Link link_SimpleArray = { & page , { 24 } } ;

Text b24 = { {
 { "SimpleArray" }
} , & fmt_h4 , & align_h4 } ;

Text b25 = { {
 { "SimpleArray" , & fmt_text_b }
 ,{ "is" }
 ,{ "another" }
 ,{ "\"simple" }
 ,{ "array\"." }
 ,{ "It" }
 ,{ "is" }
 ,{ "applicable" }
 ,{ "to" }
 ,{ "(almost)" }
 ,{ "any" }
 ,{ "types." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "The" }
 ,{ "second" }
 ,{ "template" }
 ,{ "argument" }
 ,{ "of" }
 ,{ "SimpleArray" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "Algorithm" , & fmt_text_b }
 ,{ "Package" , & fmt_text_b }
 ,{ "of" }
 ,{ "array" }
 ,{ "algorithms." }
 ,{ "SimpleArray" , & fmt_text_b }
 ,{ "uses" }
 ,{ "only" }
 ,{ "two" }
 ,{ "of" }
 ,{ "them:" }
 ,{ "Create_default()" , & fmt_text_b }
 ,{ "and" }
 ,{ "Destroy()" , & fmt_text_b }
 ,{ "." }
 ,{ "See" }
 ,{ "below" , & fmt_text_a , & link_ArrayAlgo }
 ,{ "about" }
 ,{ "array" }
 ,{ "algorithms." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "SimpleArray" , & fmt_text_b }
 ,{ "allocates" }
 ,{ "space" }
 ,{ "dynamically." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "SimpleArray" , & fmt_text_b }
 ,{ "is" }
 ,{ "std" }
 ,{ "movable." }
 ,{ "The" }
 ,{ "original" }
 ,{ "object" }
 ,{ "is" }
 ,{ "nullified" }
 ,{ "during" }
 ,{ "the" }
 ,{ "move." }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "Unlike" }
 ,{ "TempArray" , & fmt_text_b }
 ,{ "," }
 ,{ "SimpleArray" , & fmt_text_b }
 ,{ "is" }
 ,{ "swappable" }
 ,{ "and" }
 ,{ "movable." }
} , & fmt_text , & align_text } ;

Link link_DynArray = { & page , { 30 } } ;

Text b30 = { {
 { "DynArray" }
} , & fmt_h4 , & align_h4 } ;

Text b31 = { {
 { "DynArray" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "\"main\"" }
 ,{ "of" }
 ,{ "Array" , & fmt_text_b }
 ,{ "s." }
 ,{ "It" }
 ,{ "stores" }
 ,{ "elements" }
 ,{ "in" }
 ,{ "a" }
 ,{ "memory" }
 ,{ "space" }
 ,{ "with" }
 ,{ "some" }
 ,{ "reserved" }
 ,{ "memory" }
 ,{ "behind." }
 ,{ "It" }
 ,{ "can" }
 ,{ "extend" }
 ,{ "the" }
 ,{ "range" }
 ,{ "of" }
 ,{ "elements," }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "an" }
 ,{ "extra" }
 ,{ "memory." }
 ,{ "If" }
 ,{ "not" }
 ,{ "and" }
 ,{ "the" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "supports" }
 ,{ "moving" , & fmt_text_a , & ..#page_Move#link }
 ,{ "," }
 ,{ "then" }
 ,{ "the" }
 ,{ "array" }
 ,{ "extension" }
 ,{ "can" }
 ,{ "be" }
 ,{ "performed" }
 ,{ "with" }
 ,{ "either" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block" }
 ,{ "extension" }
 ,{ "(using" }
 ,{ "MemExtend()" , & fmt_text_b }
 ,{ ")" }
 ,{ "or" }
 ,{ "the" }
 ,{ "total" }
 ,{ "reallocation" }
 ,{ "with" }
 ,{ "the" }
 ,{ "content" }
 ,{ "moving." }
 ,{ "You" }
 ,{ "can" }
 ,{ "also" }
 ,{ "release" }
 ,{ "the" }
 ,{ "extra" }
 ,{ "memory." }
 ,{ "All" }
 ,{ "details" }
 ,{ "of" }
 ,{ "the" }
 ,{ "array" }
 ,{ "functionality" }
 ,{ "can" }
 ,{ "be" }
 ,{ "customized" }
 ,{ "using" }
 ,{ "the" }
 ,{ "second" }
 ,{ "template" }
 ,{ "argument," }
 ,{ "which" }
 ,{ "is" }
 ,{ "an" }
 ,{ "Algorithm" , & fmt_text_b }
 ,{ "Package" , & fmt_text_b }
 ,{ "of" }
 ,{ "array" }
 ,{ "algorithms." }
} , & fmt_text , & align_text } ;

Text b32 = { {
 { "Alone" }
 ,{ "with" }
 ,{ "standard" }
 ,{ "methods," }
 ,{ "DynArray" , & fmt_text_b }
 ,{ "has" }
 ,{ "a" }
 ,{ "bunch" }
 ,{ "of" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "initialize" }
 ,{ "and" }
 ,{ "control" }
 ,{ "the" }
 ,{ "array" }
 ,{ "content." }
} , & fmt_text , & align_text } ;

Text b33 = { {
 { "Non-default" }
 ,{ "constructors" }
 ,{ "reserve" }
 ,{ "some" }
 ,{ "space" }
 ,{ "and" }
 ,{ "build" }
 ,{ "some" }
 ,{ "elements." }
 ,{ "The" }
 ,{ "DoRaw" , & fmt_text_b }
 ,{ "," }
 ,{ "...," }
 ,{ "DoCreate" , & fmt_text_b }
 ,{ "arguments" }
 ,{ "carry" }
 ,{ "the" }
 ,{ "length" }
 ,{ "and" }
 ,{ "the" }
 ,{ "reserved" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "array" }
 ,{ "to" }
 ,{ "be" }
 ,{ "used." }
} , & fmt_text , & align_text } ;

Text b34 = { {
 { "Non-default" }
 ,{ "constructors" }
 ,{ "work" }
 ,{ "the" }
 ,{ "same" }
 ,{ "way" }
 ,{ "as" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "extend...()" , & fmt_text_b }
 ,{ "methods." }
} , & fmt_text , & align_text } ;

Text b35 = { {
 { "DynArray(std::initializer_list<S>" , & fmt_text_b }
 ,{ "il)" , & fmt_text_b }
 ,{ "uses" }
 ,{ "the" }
 ,{ "initialization" }
 ,{ "list" }
 ,{ "to" }
 ,{ "\"cast\"" }
 ,{ "elements" }
 ,{ "from" }
 ,{ "the" }
 ,{ "given." }
} , & fmt_text , & align_text } ;

Text b36 = { {
 { "DynArray(ulen" , & fmt_text_b }
 ,{ "len)" , & fmt_text_b }
 ,{ "creates" }
 ,{ "the" }
 ,{ "array" }
 ,{ "of" }
 ,{ "the" }
 ,{ "len" , & fmt_text_b }
 ,{ "elements" }
 ,{ "using" }
 ,{ "the" }
 ,{ "default" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b37 = { {
 { "DynArray(ulen" , & fmt_text_b }
 ,{ "len,ulen" , & fmt_text_b }
 ,{ "maxlen)" , & fmt_text_b }
 ,{ "also" }
 ,{ "performs" }
 ,{ "the" }
 ,{ "default" }
 ,{ "initialization" }
 ,{ "of" }
 ,{ "the" }
 ,{ "len" , & fmt_text_b }
 ,{ "elements," }
 ,{ "but" }
 ,{ "reserves" }
 ,{ "a" }
 ,{ "space" }
 ,{ "for" }
 ,{ "the" }
 ,{ "maxlen" , & fmt_text_b }
 ,{ "elements." }
 ,{ "An" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown," }
 ,{ "if" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "greater" }
 ,{ "than" }
 ,{ "maxlen" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b38 = { {
 { "DynArray(DoReserveType,ulen" , & fmt_text_b }
 ,{ "maxlen)" , & fmt_text_b }
 ,{ "just" }
 ,{ "reserves" }
 ,{ "a" }
 ,{ "space." }
} , & fmt_text , & align_text } ;

Text b39 = { {
 { "DynArray(DoRaw" , & fmt_text_b }
 ,{ "dotype)" , & fmt_text_b }
 ,{ "performs" }
 ,{ "the" }
 ,{ "\"raw\"" }
 ,{ "initialization." }
 ,{ "If" }
 ,{ "the" }
 ,{ "T" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "POD" }
 ,{ "type," }
 ,{ "elements" }
 ,{ "are" }
 ,{ "not" }
 ,{ "initialized." }
 ,{ "If" }
 ,{ "not," }
 ,{ "the" }
 ,{ "default" }
 ,{ "initialization" }
 ,{ "is" }
 ,{ "performed." }
} , & fmt_text , & align_text } ;

Text b40 = { {
 { "DynArray(DoFill" , & fmt_text_b }
 ,{ "dotype,SS" , & fmt_text_b }
 ,{ "&&" , & fmt_text_b }
 ,{ "..." , & fmt_text_b }
 ,{ "ss)" , & fmt_text_b }
 ,{ "creates" }
 ,{ "new" }
 ,{ "elements" }
 ,{ "using" }
 ,{ "some" }
 ,{ "constructor," }
 ,{ "the" }
 ,{ "specified" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "this" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b41 = { {
 { "DynArray(DoCopy" , & fmt_text_b }
 ,{ "dotype,const" , & fmt_text_b }
 ,{ "T" , & fmt_text_b }
 ,{ "src[])" , & fmt_text_b }
 ,{ "creates" }
 ,{ "new" }
 ,{ "elements" }
 ,{ "using" }
 ,{ "the" }
 ,{ "copy" }
 ,{ "constructor," }
 ,{ "src" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "range" }
 ,{ "of" }
 ,{ "length" }
 ,{ "dotype.getLen()" , & fmt_text_b }
 ,{ "," }
 ,{ "its" }
 ,{ "members" }
 ,{ "are" }
 ,{ "copied" }
 ,{ "memberwise." }
} , & fmt_text , & align_text } ;

Text b42 = { {
 { "DynArray(DoCast" , & fmt_text_b }
 ,{ "dotype,const" , & fmt_text_b }
 ,{ "S" , & fmt_text_b }
 ,{ "src[])" , & fmt_text_b }
 ,{ "creates" }
 ,{ "new" }
 ,{ "elements" }
 ,{ "using" }
 ,{ "the" }
 ,{ "\"cast\"" }
 ,{ "constructor," }
 ,{ "src" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "range" }
 ,{ "of" }
 ,{ "length" }
 ,{ "dotype.getLen()" , & fmt_text_b }
 ,{ "," }
 ,{ "its" }
 ,{ "members" }
 ,{ "are" }
 ,{ "casted" }
 ,{ "memberwise." }
} , & fmt_text , & align_text } ;

Text b43 = { {
 { "DynArray(DoSwap" , & fmt_text_b }
 ,{ "dotype,T" , & fmt_text_b }
 ,{ "objs[])" , & fmt_text_b }
 ,{ "creates" }
 ,{ "new" }
 ,{ "elements" }
 ,{ "using" }
 ,{ "the" }
 ,{ "\"swap" }
 ,{ "move\"" }
 ,{ "approach." }
 ,{ "I.e." }
 ,{ "new" }
 ,{ "elements" }
 ,{ "are" }
 ,{ "created" }
 ,{ "using" }
 ,{ "the" }
 ,{ "default" }
 ,{ "constructor" }
 ,{ "and" }
 ,{ "swapped" }
 ,{ "with" }
 ,{ "members" }
 ,{ "of" }
 ,{ "the" }
 ,{ "range" }
 ,{ "objs" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b44 = { {
 { "DynArray(DoCreate" , & fmt_text_b }
 ,{ "dotype,CreatorType<T>" , & fmt_text_b }
 ,{ "creator)" , & fmt_text_b }
 ,{ "uses" }
 ,{ "the" }
 ,{ "given" }
 ,{ "Creator" , & fmt_text_b }
 ,{ "object" }
 ,{ "to" }
 ,{ "create" }
 ,{ "new" }
 ,{ "elements." }
} , & fmt_text , & align_text } ;

Text b45 = { {
 { "DynArray(DoBuildType,BuilderType<T>" , & fmt_text_b }
 ,{ "builder)" , & fmt_text_b }
 ,{ "uses" }
 ,{ "the" }
 ,{ "given" }
 ,{ "Builder" , & fmt_text_b }
 ,{ "object" }
 ,{ "to" }
 ,{ "create" }
 ,{ "new" }
 ,{ "elements." }
} , & fmt_text , & align_text } ;

Text b46 = { {
 { "DynArray" , & fmt_text_b }
 ,{ "is" }
 ,{ "std" }
 ,{ "movable." }
 ,{ "The" }
 ,{ "original" }
 ,{ "object" }
 ,{ "is" }
 ,{ "nullified" }
 ,{ "during" }
 ,{ "the" }
 ,{ "move." }
} , & fmt_text , & align_text } ;

Text b47 = { {
 { "Range" }
 ,{ "access" }
 ,{ "and" }
 ,{ "index" }
 ,{ "access" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "standard." }
 ,{ "Two" }
 ,{ "additional" }
 ,{ "methods" }
 ,{ "report" }
 ,{ "memory" }
 ,{ "allocation." }
} , & fmt_text , & align_text } ;

Text b48 = { {
 { "getMaxLen()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "reserved" }
 ,{ "array" }
 ,{ "length" }
 ,{ "(in" }
 ,{ "objects)." }
} , & fmt_text , & align_text } ;

Text b49 = { {
 { "getExtraLen()" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "extra" }
 ,{ "space" }
 ,{ "available" }
 ,{ "(in" }
 ,{ "objects)." }
} , & fmt_text , & align_text } ;

Text b50 = { {
 { "isEmpty()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "iff" }
 ,{ "the" }
 ,{ "array" }
 ,{ "is" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Text b51 = { {
 { "notEmpty()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "iff" }
 ,{ "the" }
 ,{ "array" }
 ,{ "is" }
 ,{ "not" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Text b52 = { {
 { "cloneTo()" , & fmt_text_b }
 ,{ "clones" }
 ,{ "the" }
 ,{ "array." }
 ,{ "The" }
 ,{ "reserved" }
 ,{ "length" }
 ,{ "is" }
 ,{ "also" }
 ,{ "preserved." }
 ,{ "The" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "copyable." }
} , & fmt_text , & align_text } ;

Text b53 = { {
 { "reserve()" , & fmt_text_b }
 ,{ "reserves" }
 ,{ "the" }
 ,{ "space" }
 ,{ "for" }
 ,{ "extra_len" , & fmt_text_b }
 ,{ "objects." }
} , & fmt_text , & align_text } ;

Text b54 = { {
 { "erase()" , & fmt_text_b }
 ,{ "erases" }
 ,{ "the" }
 ,{ "array," }
 ,{ "it" }
 ,{ "gets" }
 ,{ "to" }
 ,{ "the" }
 ,{ "null" }
 ,{ "state," }
 ,{ "with" }
 ,{ "no" }
 ,{ "objects" }
 ,{ "and" }
 ,{ "no" }
 ,{ "memory" }
 ,{ "allocated." }
} , & fmt_text , & align_text } ;

Text b55 = { {
 { "shrink()" , & fmt_text_b }
 ,{ "destroys" }
 ,{ "the" }
 ,{ "last" }
 ,{ "up" }
 ,{ "to" }
 ,{ "delta_len" , & fmt_text_b }
 ,{ "elements" }
 ,{ "of" }
 ,{ "the" }
 ,{ "array." }
 ,{ "It" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "elements" }
 ,{ "destroyed." }
} , & fmt_text , & align_text } ;

Text b56 = { {
 { "shrink_one()" , & fmt_text_b }
 ,{ "destroys" }
 ,{ "the" }
 ,{ "last" }
 ,{ "element" }
 ,{ "(if" }
 ,{ "any)." }
 ,{ "It" }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "element" }
 ,{ "is" }
 ,{ "destroyed," }
 ,{ "and" }
 ,{ "false" , & fmt_text_b }
 ,{ "if" }
 ,{ "the" }
 ,{ "array" }
 ,{ "is" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Text b57 = { {
 { "shrink_all()" , & fmt_text_b }
 ,{ "destroys" }
 ,{ "all" }
 ,{ "array" }
 ,{ "elements." }
 ,{ "It" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "elements" }
 ,{ "destroyed." }
} , & fmt_text , & align_text } ;

Text b58 = { {
 { "These" }
 ,{ "three" }
 ,{ "methods" }
 ,{ "doesn't" }
 ,{ "change" }
 ,{ "the" }
 ,{ "reserved" }
 ,{ "array" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b59 = { {
 { "shrink_extra()" , & fmt_text_b }
 ,{ "shrinks" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block," }
 ,{ "returning" }
 ,{ "the" }
 ,{ "extra" }
 ,{ "memory" }
 ,{ "to" }
 ,{ "the" }
 ,{ "heap." }
 ,{ "After" }
 ,{ "this" }
 ,{ "method" }
 ,{ "the" }
 ,{ "reserved" }
 ,{ "array" }
 ,{ "length" }
 ,{ "becomes" }
 ,{ "equal" }
 ,{ "to" }
 ,{ "the" }
 ,{ "array" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b60 = { {
 { "shrink_reserve(ulen" , & fmt_text_b }
 ,{ "maxlen)" , & fmt_text_b }
 ,{ "may" }
 ,{ "shrink" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block" }
 ,{ "to" }
 ,{ "store" }
 ,{ "the" }
 ,{ "given" }
 ,{ "number" }
 ,{ "of" }
 ,{ "elements." }
 ,{ "It" }
 ,{ "gives" }
 ,{ "a" }
 ,{ "more" }
 ,{ "precise" }
 ,{ "control" }
 ,{ "over" }
 ,{ "the" }
 ,{ "reserved" }
 ,{ "memory." }
 ,{ "It" }
 ,{ "works" }
 ,{ "only" }
 ,{ "if" }
 ,{ "the" }
 ,{ "following" }
 ,{ "natural" }
 ,{ "condition" }
 ,{ "satisfied:" }
 ,{ "maxlen<getMaxLen()" , & fmt_text_b }
 ,{ "and" }
 ,{ "maxlen>=getLen()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b61 = { {
 { "shrink_reserve()" , & fmt_text_b }
 ,{ "works" }
 ,{ "as" }
 ,{ "shrink_reserve(ulen" , & fmt_text_b }
 ,{ "maxlen)" , & fmt_text_b }
 ,{ "with" }
 ,{ "maxlen" , & fmt_text_b }
 ,{ "equals" }
 ,{ "\"double" }
 ,{ "size\"" }
 ,{ "of" }
 ,{ "the" }
 ,{ "actual" }
 ,{ "array" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b62 = { {
 { "extend...()" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "family" }
 ,{ "of" }
 ,{ "methods," }
 ,{ "which" }
 ,{ "extends" }
 ,{ "the" }
 ,{ "array" }
 ,{ "with" }
 ,{ "number" }
 ,{ "elements." }
 ,{ "They" }
 ,{ "differ" }
 ,{ "in" }
 ,{ "element" }
 ,{ "construction" }
 ,{ "ways." }
 ,{ "All" }
 ,{ "of" }
 ,{ "them," }
 ,{ "except" }
 ,{ "the" }
 ,{ "last," }
 ,{ "has" }
 ,{ "the" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "delta_len" , & fmt_text_b }
 ,{ "," }
 ,{ "which" }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "new" }
 ,{ "elements." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "the" }
 ,{ "range" }
 ,{ "of" }
 ,{ "these" }
 ,{ "new" }
 ,{ "elements." }
 ,{ "extend...()" , & fmt_text_b }
 ,{ "are" }
 ,{ "transactional," }
 ,{ "i.e." }
 ,{ "if" }
 ,{ "the" }
 ,{ "method" }
 ,{ "has" }
 ,{ "failed," }
 ,{ "then" }
 ,{ "the" }
 ,{ "array" }
 ,{ "remains" }
 ,{ "in" }
 ,{ "the" }
 ,{ "original" }
 ,{ "state," }
 ,{ "an" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown." }
} , & fmt_text , & align_text } ;

Text b63 = { {
 { "extend_raw()" , & fmt_text_b }
 ,{ "for" }
 ,{ "POD" }
 ,{ "types" }
 ,{ "leaves" }
 ,{ "new" }
 ,{ "elements" }
 ,{ "uninitialized." }
 ,{ "For" }
 ,{ "other" }
 ,{ "types" }
 ,{ "it" }
 ,{ "works" }
 ,{ "like" }
 ,{ "extend_default()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b64 = { {
 { "extend_default()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "new" }
 ,{ "elements" }
 ,{ "using" }
 ,{ "the" }
 ,{ "default" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b65 = { {
 { "extend_fill()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "new" }
 ,{ "elements" }
 ,{ "using" }
 ,{ "some" }
 ,{ "constructor," }
 ,{ "the" }
 ,{ "specified" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "this" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b66 = { {
 { "extend_copy()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "new" }
 ,{ "elements" }
 ,{ "using" }
 ,{ "the" }
 ,{ "copy" }
 ,{ "constructor," }
 ,{ "src" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "range" }
 ,{ "of" }
 ,{ "length" }
 ,{ "delta_len" , & fmt_text_b }
 ,{ "," }
 ,{ "its" }
 ,{ "members" }
 ,{ "are" }
 ,{ "copied" }
 ,{ "memberwise." }
} , & fmt_text , & align_text } ;

Text b67 = { {
 { "extend_cast()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "new" }
 ,{ "elements" }
 ,{ "using" }
 ,{ "the" }
 ,{ "\"cast\"" }
 ,{ "constructor," }
 ,{ "src" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "range" }
 ,{ "of" }
 ,{ "length" }
 ,{ "delta_len" , & fmt_text_b }
 ,{ "," }
 ,{ "its" }
 ,{ "members" }
 ,{ "are" }
 ,{ "casted" }
 ,{ "memberwise." }
} , & fmt_text , & align_text } ;

Text b68 = { {
 { "extend_swap()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "new" }
 ,{ "elements" }
 ,{ "using" }
 ,{ "the" }
 ,{ "\"swap" }
 ,{ "move\"" }
 ,{ "approach." }
 ,{ "I.e." }
 ,{ "new" }
 ,{ "elements" }
 ,{ "are" }
 ,{ "created" }
 ,{ "using" }
 ,{ "the" }
 ,{ "default" }
 ,{ "constructor" }
 ,{ "and" }
 ,{ "swapped" }
 ,{ "with" }
 ,{ "members" }
 ,{ "of" }
 ,{ "the" }
 ,{ "range" }
 ,{ "objs" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b69 = { {
 { "Two" }
 ,{ "final" }
 ,{ "extend()" , & fmt_text_b }
 ,{ "are" }
 ,{ "generic." }
 ,{ "The" }
 ,{ "first" }
 ,{ "of" }
 ,{ "them" }
 ,{ "uses" }
 ,{ "the" }
 ,{ "given" }
 ,{ "Creator" , & fmt_text_b }
 ,{ "object" }
 ,{ "to" }
 ,{ "create" }
 ,{ "new" }
 ,{ "elements," }
 ,{ "and" }
 ,{ "the" }
 ,{ "second" }
 ,{ "uses" }
 ,{ "the" }
 ,{ "Builder" , & fmt_text_b }
 ,{ "." }
 ,{ "See" }
 ,{ "below" , & fmt_text_a , & link_Creator }
 ,{ "explanations" }
 ,{ "about" }
 ,{ "Creator" , & fmt_text_b }
 ,{ "s" }
 ,{ "and" }
 ,{ "Builder" , & fmt_text_b }
 ,{ "s." }
} , & fmt_text , & align_text } ;

Text b70 = { {
 { "append...()" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "family" }
 ,{ "of" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "append" }
 ,{ "one" }
 ,{ "element" }
 ,{ "to" }
 ,{ "the" }
 ,{ "array." }
 ,{ "They" }
 ,{ "are" }
 ,{ "similar" }
 ,{ "to" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "extend...()" , & fmt_text_b }
 ,{ "methods" }
 ,{ "and" }
 ,{ "do" }
 ,{ "exactly" }
 ,{ "the" }
 ,{ "same" }
 ,{ "with" }
 ,{ "delta_len" , & fmt_text_b }
 ,{ "equals" }
 ,{ "1." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "created" }
 ,{ "element." }
} , & fmt_text , & align_text } ;

Text b71 = { {
 { "apply...()" , & fmt_text_b }
 ,{ "methods" }
 ,{ "are" }
 ,{ "standard." }
} , & fmt_text , & align_text } ;

Text b72 = { {
 { "DynArray" , & fmt_text_b }
 ,{ "is" }
 ,{ "swappable" }
 ,{ "and" }
 ,{ "movable." }
} , & fmt_text , & align_text } ;

Link link_RefArray = { & page , { 73 } } ;

Text b73 = { {
 { "RefArray" }
 ,{ "and" }
 ,{ "AtomicRefArray" }
} , & fmt_h4 , & align_h4 } ;

Text b74 = { {
 { "RefArray" , & fmt_text_b }
 ,{ "and" }
 ,{ "AtomicRefArray" , & fmt_text_b }
 ,{ "are" }
 ,{ "copyable" }
 ,{ "arrays" }
 ,{ "with" }
 ,{ "efficient" }
 ,{ "copy" }
 ,{ "constructors." }
 ,{ "It's" }
 ,{ "assumed," }
 ,{ "the" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "is" }
 ,{ "copyable." }
 ,{ "Multiple" }
 ,{ "copies" }
 ,{ "of" }
 ,{ "arrays" }
 ,{ "may" }
 ,{ "share" }
 ,{ "the" }
 ,{ "same" }
 ,{ "state." }
 ,{ "The" }
 ,{ "state" }
 ,{ "has" }
 ,{ "a" }
 ,{ "reference" }
 ,{ "counter," }
 ,{ "which" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "end" }
 ,{ "its" }
 ,{ "life-time." }
 ,{ "The" }
 ,{ "only" }
 ,{ "difference" }
 ,{ "between" }
 ,{ "RefArray" , & fmt_text_b }
 ,{ "and" }
 ,{ "AtomicRefArray" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "former" }
 ,{ "uses" }
 ,{ "the" }
 ,{ "atomic" }
 ,{ "reference" }
 ,{ "counting" }
 ,{ "to" }
 ,{ "be" }
 ,{ "viable" }
 ,{ "in" }
 ,{ "a" }
 ,{ "multi-threaded" }
 ,{ "environment." }
} , & fmt_text , & align_text } ;

Text b75 = { {
 { "RefArray" , & fmt_text_b }
 ,{ "has" }
 ,{ "a" }
 ,{ "simulated" }
 ,{ "value" }
 ,{ "semantic." }
 ,{ "It" }
 ,{ "means," }
 ,{ "that" }
 ,{ "you" }
 ,{ "may" }
 ,{ "consider" }
 ,{ "different" }
 ,{ "copies" }
 ,{ "of" }
 ,{ "an" }
 ,{ "array" }
 ,{ "as" }
 ,{ "independent" }
 ,{ "variables," }
 ,{ "despite" }
 ,{ "they" }
 ,{ "may" }
 ,{ "share" }
 ,{ "the" }
 ,{ "state." }
 ,{ "That" }
 ,{ "is" }
 ,{ "because" }
 ,{ "RefArray" , & fmt_text_b }
 ,{ "provides" }
 ,{ "only" }
 ,{ "a" }
 ,{ "constant" }
 ,{ "access" }
 ,{ "to" }
 ,{ "elements." }
 ,{ "So" }
 ,{ "far" }
 ,{ "you" }
 ,{ "don't" }
 ,{ "violate" }
 ,{ "this" }
 ,{ "constantness" }
 ,{ "(using" }
 ,{ "the" }
 ,{ "const-cast," }
 ,{ "for" }
 ,{ "example)," }
 ,{ "you" }
 ,{ "may" }
 ,{ "safely" }
 ,{ "assume" }
 ,{ "that" }
 ,{ "each" }
 ,{ "copy" }
 ,{ "is" }
 ,{ "different." }
 ,{ "To" }
 ,{ "modify" }
 ,{ "the" }
 ,{ "array" }
 ,{ "you" }
 ,{ "have" }
 ,{ "to" }
 ,{ "call" }
 ,{ "the" }
 ,{ "method" }
 ,{ "modify()" , & fmt_text_b }
 ,{ "(or" }
 ,{ "modifyReverse()" , & fmt_text_b }
 ,{ ")." }
 ,{ "This" }
 ,{ "method" }
 ,{ "\"unshares\"" }
 ,{ "the" }
 ,{ "array," }
 ,{ "if" }
 ,{ "necessary," }
 ,{ "and" }
 ,{ "gives" }
 ,{ "a" }
 ,{ "non-constant" }
 ,{ "access" }
 ,{ "to" }
 ,{ "elements." }
 ,{ "modifyReverse()" , & fmt_text_b }
 ,{ "is" }
 ,{ "doing" }
 ,{ "the" }
 ,{ "same" }
 ,{ "thing" }
 ,{ "as" }
 ,{ "modify()" , & fmt_text_b }
 ,{ "," }
 ,{ "but" }
 ,{ "gives" }
 ,{ "a" }
 ,{ "\"reversed\"" }
 ,{ "range" }
 ,{ "of" }
 ,{ "elements." }
} , & fmt_text , & align_text } ;

Text b76 = { {
 { "The" }
 ,{ "RefArray" , & fmt_text_b }
 ,{ "methods" }
 ,{ "are" }
 ,{ "mostly" }
 ,{ "the" }
 ,{ "same" }
 ,{ "as" }
 ,{ "DynArray" , & fmt_text_b }
 ,{ "methods." }
 ,{ "The" }
 ,{ "differences" }
 ,{ "are:" }
 ,{ "index" }
 ,{ "and" }
 ,{ "range" }
 ,{ "access" }
 ,{ "methods" }
 ,{ "gives" }
 ,{ "only" }
 ,{ "the" }
 ,{ "constant" }
 ,{ "access," }
 ,{ "and" }
 ,{ "new" }
 ,{ "class-specific" }
 ,{ "methods" }
 ,{ "modify()" , & fmt_text_b }
 ,{ "and" }
 ,{ "modifyReverse()" , & fmt_text_b }
 ,{ "exist." }
} , & fmt_text , & align_text } ;

Text b77 = { {
 { "apply_modify()" , & fmt_text_b }
 ,{ "applies" }
 ,{ "the" }
 ,{ "functor," }
 ,{ "given" }
 ,{ "by" }
 ,{ "a" }
 ,{ "Functor" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "Init" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "," }
 ,{ "to" }
 ,{ "array" }
 ,{ "elements." }
 ,{ "The" }
 ,{ "array" }
 ,{ "is" }
 ,{ "unshared" }
 ,{ "first." }
} , & fmt_text , & align_text } ;

Text b78 = { {
 { "applyReverse_modify()" , & fmt_text_b }
 ,{ "applies" }
 ,{ "the" }
 ,{ "functor," }
 ,{ "given" }
 ,{ "by" }
 ,{ "a" }
 ,{ "Functor" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "Init" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "," }
 ,{ "to" }
 ,{ "array" }
 ,{ "elements" }
 ,{ "in" }
 ,{ "the" }
 ,{ "reverse" }
 ,{ "order." }
 ,{ "The" }
 ,{ "array" }
 ,{ "is" }
 ,{ "unshared" }
 ,{ "first." }
} , & fmt_text , & align_text } ;

Text b79 = { {
 { "apply()" , & fmt_text_b }
 ,{ "applies" }
 ,{ "the" }
 ,{ "functor," }
 ,{ "given" }
 ,{ "by" }
 ,{ "a" }
 ,{ "Functor" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "Init" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "," }
 ,{ "to" }
 ,{ "array" }
 ,{ "elements." }
 ,{ "This" }
 ,{ "is" }
 ,{ "a" }
 ,{ "constant" }
 ,{ "method." }
} , & fmt_text , & align_text } ;

Text b80 = { {
 { "applyReverse()" , & fmt_text_b }
 ,{ "applies" }
 ,{ "the" }
 ,{ "functor," }
 ,{ "given" }
 ,{ "by" }
 ,{ "a" }
 ,{ "Functor" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "Init" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "," }
 ,{ "to" }
 ,{ "array" }
 ,{ "elements" }
 ,{ "in" }
 ,{ "the" }
 ,{ "reverse" }
 ,{ "order." }
 ,{ "This" }
 ,{ "is" }
 ,{ "a" }
 ,{ "constant" }
 ,{ "method." }
} , & fmt_text , & align_text } ;

Text b81 = { {
 { "AtomicRefArray" , & fmt_text_b }
 ,{ "methods" }
 ,{ "shrink_extra()" , & fmt_text_b }
 ,{ "and" }
 ,{ "shrink_reserve()" , & fmt_text_b }
 ,{ "are" }
 ,{ "not" }
 ,{ "working," }
 ,{ "if" }
 ,{ "the" }
 ,{ "array" }
 ,{ "is" }
 ,{ "shared." }
} , & fmt_text , & align_text } ;

Text b82 = { {
 { "AtomicRefArray" , & fmt_text_b }
 ,{ "has" }
 ,{ "an" }
 ,{ "extra" }
 ,{ "special" }
 ,{ "constructor" }
} , & fmt_text , & align_text } ;

Text b83 = { {
 { "This" }
 ,{ "constructor" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "create" }
 ,{ "a" }
 ,{ "static" }
 ,{ "AtomicRefArray" , & fmt_text_b }
 ,{ "with" }
 ,{ "unlimited" }
 ,{ "life-time." }
 ,{ "The" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "must" }
 ,{ "have" }
 ,{ "a" }
 ,{ "trivial" }
 ,{ "destructor," }
 ,{ "however." }
 ,{ "You" }
 ,{ "must" }
 ,{ "supply" }
 ,{ "a" }
 ,{ "statically" }
 ,{ "allocated" }
 ,{ "memory," }
 ,{ "aligned" }
 ,{ "and" }
 ,{ "proper" }
 ,{ "size." }
 ,{ "You" }
 ,{ "also" }
 ,{ "must" }
 ,{ "supply" }
 ,{ "a" }
 ,{ "maximum" }
 ,{ "number" }
 ,{ "of" }
 ,{ "elements" }
 ,{ "(>0)" }
 ,{ "and" }
 ,{ "an" }
 ,{ "intializer" }
 ,{ "list." }
 ,{ "To" }
 ,{ "calculate" }
 ,{ "the" }
 ,{ "required" }
 ,{ "memory" }
 ,{ "size" }
 ,{ "use" }
 ,{ "the" }
 ,{ "meta" }
 ,{ "constant" }
 ,{ "StaticMemLen" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "object" }
 ,{ "state," }
 ,{ "created" }
 ,{ "with" }
 ,{ "this" }
 ,{ "constructor," }
 ,{ "lives" }
 ,{ "forever" }
 ,{ "and" }
 ,{ "contains" }
 ,{ "the" }
 ,{ "initial" }
 ,{ "object" }
 ,{ "array," }
 ,{ "initialized" }
 ,{ "from" }
 ,{ "the" }
 ,{ "given" }
 ,{ "intializer" }
 ,{ "list." }
} , & fmt_text , & align_text } ;

Text b84 = { {
 { "Collector" }
} , & fmt_h4 , & align_h4 } ;

Text b85 = { {
 { "Collector" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "an" }
 ,{ "array!" }
 ,{ "The" }
 ,{ "purpose" }
 ,{ "of" }
 ,{ "this" }
 ,{ "container" }
 ,{ "is" }
 ,{ "to" }
 ,{ "be" }
 ,{ "an" }
 ,{ "efficient" }
 ,{ "collector" }
 ,{ "of" }
 ,{ "elements." }
 ,{ "This" }
 ,{ "container" }
 ,{ "stores" }
 ,{ "a" }
 ,{ "sequence" }
 ,{ "of" }
 ,{ "elements" }
 ,{ "in" }
 ,{ "a" }
 ,{ "list" }
 ,{ "of" }
 ,{ "arrays." }
 ,{ "So" }
 ,{ "appending" }
 ,{ "and" }
 ,{ "extending" }
 ,{ "operations" }
 ,{ "are" }
 ,{ "the" }
 ,{ "most" }
 ,{ "efficient." }
 ,{ "At" }
 ,{ "desired" }
 ,{ "moment" }
 ,{ "you" }
 ,{ "can" }
 ,{ "copy" }
 ,{ "or" }
 ,{ "move" }
 ,{ "this" }
 ,{ "sequence" }
 ,{ "into" }
 ,{ "true" }
 ,{ "array." }
 ,{ "Or" }
 ,{ "you" }
 ,{ "can" }
 ,{ "\"flat\"" }
 ,{ "the" }
 ,{ "Collector" , & fmt_text_b }
 ,{ "itself." }
} , & fmt_text , & align_text } ;

Text b86 = { {
 { "The" }
 ,{ "argument" }
 ,{ "of" }
 ,{ "the" }
 ,{ "Collector" , & fmt_text_b }
 ,{ "constructor" }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "elements" }
 ,{ "in" }
 ,{ "the" }
 ,{ "single" }
 ,{ "element" }
 ,{ "block." }
 ,{ "The" }
 ,{ "default" }
 ,{ "value" }
 ,{ "is" }
 ,{ "1024." }
} , & fmt_text , & align_text } ;

Text b87 = { {
 { "Collector" , & fmt_text_b }
 ,{ "is" }
 ,{ "std" }
 ,{ "movable." }
 ,{ "The" }
 ,{ "original" }
 ,{ "object" }
 ,{ "is" }
 ,{ "nullified" }
 ,{ "during" }
 ,{ "the" }
 ,{ "move." }
} , & fmt_text , & align_text } ;

Text b88 = { {
 { "Collector" , & fmt_text_b }
 ,{ "does" }
 ,{ "not" }
 ,{ "provide" }
 ,{ "a" }
 ,{ "direct" }
 ,{ "access" }
 ,{ "to" }
 ,{ "its" }
 ,{ "content." }
} , & fmt_text , & align_text } ;

Text b89 = { {
 { "isEmpty()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "iff" }
 ,{ "the" }
 ,{ "array" }
 ,{ "is" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Text b90 = { {
 { "notEmpty()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "iff" }
 ,{ "the" }
 ,{ "array" }
 ,{ "is" }
 ,{ "not" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Text b91 = { {
 { "getLen()" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "the" }
 ,{ "collected" }
 ,{ "elements." }
} , & fmt_text , & align_text } ;

Text b92 = { {
 { "erase()" , & fmt_text_b }
 ,{ "cleanup" }
 ,{ "the" }
 ,{ "container" }
 ,{ "and" }
 ,{ "put" }
 ,{ "it" }
 ,{ "into" }
 ,{ "the" }
 ,{ "null" }
 ,{ "state." }
} , & fmt_text , & align_text } ;

Text b93 = { {
 { "extractTo()" , & fmt_text_b }
 ,{ "moves" }
 ,{ "the" }
 ,{ "content" }
 ,{ "to" }
 ,{ "another" }
 ,{ "(array)" }
 ,{ "container." }
 ,{ "The" }
 ,{ "target" }
 ,{ "container" }
 ,{ "must" }
 ,{ "have" }
 ,{ "the" }
 ,{ "Build" , & fmt_text_b }
 ,{ "constructor." }
 ,{ "Collector" , & fmt_text_b }
 ,{ "becomes" }
 ,{ "empty" }
 ,{ "after" }
 ,{ "this" }
 ,{ "operation." }
} , & fmt_text , & align_text } ;

Text b94 = { {
 { "copyTo()" , & fmt_text_b }
 ,{ "copies" }
 ,{ "the" }
 ,{ "content" }
 ,{ "to" }
 ,{ "another" }
 ,{ "(array)" }
 ,{ "container." }
 ,{ "The" }
 ,{ "target" }
 ,{ "container" }
 ,{ "must" }
 ,{ "have" }
 ,{ "the" }
 ,{ "Build" , & fmt_text_b }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b95 = { {
 { "flat()" , & fmt_text_b }
 ,{ "rebuilds" }
 ,{ "the" }
 ,{ "internal" }
 ,{ "data" }
 ,{ "storage," }
 ,{ "making" }
 ,{ "it" }
 ,{ "continuous." }
 ,{ "It" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "range" }
 ,{ "of" }
 ,{ "elements." }
 ,{ "This" }
 ,{ "range" }
 ,{ "remains" }
 ,{ "valid" }
 ,{ "after" }
 ,{ "extend" }
 ,{ "or" }
 ,{ "append" }
 ,{ "operations" }
 ,{ "(but" }
 ,{ "may" }
 ,{ "become" }
 ,{ "invalid" }
 ,{ "after" }
 ,{ "any" }
 ,{ "other" }
 ,{ "modifying" }
 ,{ "operations)." }
} , & fmt_text , & align_text } ;

Text b96 = { {
 { "shrink...()" , & fmt_text_b }
 ,{ "," }
 ,{ "extend...()" , & fmt_text_b }
 ,{ "and" }
 ,{ "append...()" , & fmt_text_b }
 ,{ "methods" }
 ,{ "are" }
 ,{ "the" }
 ,{ "same" }
 ,{ "as" }
 ,{ "for" }
 ,{ "DynArray" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b97 = { {
 { "Collector" , & fmt_text_b }
 ,{ "is" }
 ,{ "swappable" }
 ,{ "and" }
 ,{ "movable." }
} , & fmt_text , & align_text } ;

Link link_ArrayAlgo = { & page , { 98 } } ;

Text b98 = { {
 { "Array" }
 ,{ "algorithms" }
} , & fmt_h3 , & align_h3 } ;

Text b99 = { {
 { "CCore" , & fmt_text_b }
 ,{ "Array" , & fmt_text_b }
 ,{ "implementation" }
 ,{ "is" }
 ,{ "based" }
 ,{ "on" }
 ,{ "the" }
 ,{ "Array" , & fmt_text_b }
 ,{ "Algorithm" , & fmt_text_b }
 ,{ "Package" , & fmt_text_b }
 ,{ "s." }
 ,{ "The" }
 ,{ "default" }
 ,{ "package" }
 ,{ "is" }
 ,{ "the" }
 ,{ "ArrayAlgo" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b100 = { {
 { "The" }
 ,{ "exact" }
 ,{ "implementation" }
 ,{ "depends" }
 ,{ "on" }
 ,{ "the" }
 ,{ "kind" }
 ,{ "of" }
 ,{ "T" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b101 = { {
 { "If" }
 ,{ "the" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "defines" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "ArrayAlgoType" , & fmt_text_b }
 ,{ "," }
 ,{ "then" }
 ,{ "this" }
 ,{ "type" }
 ,{ "will" }
 ,{ "be" }
 ,{ "used" }
 ,{ "as" }
 ,{ "the" }
 ,{ "package." }
} , & fmt_text , & align_text } ;

Text b102 = { {
 { "Otherwise" }
 ,{ "there" }
 ,{ "are" }
 ,{ "two" }
 ,{ "variants:" }
 ,{ "one" }
 ,{ "for" }
 ,{ "the" }
 ,{ "POD" }
 ,{ "types," }
 ,{ "another" }
 ,{ "for" }
 ,{ "the" }
 ,{ "other" }
 ,{ "(class)" }
 ,{ "types." }
} , & fmt_text , & align_text } ;

Text b103 = { {
 { "ArrayAlgo_class" }
} , & fmt_h4 , & align_h4 } ;

Text b104 = { {
 { "ArrayAlgo_class" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "generic" }
 ,{ "(class)" }
 ,{ "variant." }
 ,{ "The" }
 ,{ "template" }
 ,{ "argument" }
 ,{ "Flags" , & fmt_text_b }
 ,{ "provides" }
 ,{ "two" }
 ,{ "flags:" }
 ,{ "Default_no_throw" , & fmt_text_b }
 ,{ "and" }
 ,{ "Copy_no_throw" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "flag" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "constructor" }
 ,{ "(default" }
 ,{ "or" }
 ,{ "copy)" }
 ,{ "is" }
 ,{ "no-throw" , & fmt_text_b }
 ,{ "or" }
 ,{ "does" }
 ,{ "not" }
 ,{ "exist." }
 ,{ "It's" }
 ,{ "an" }
 ,{ "obligation" }
 ,{ "of" }
 ,{ "the" }
 ,{ "class." }
 ,{ "The" }
 ,{ "flag" }
 ,{ "MoveTo_exist" , & fmt_text_b }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "for" }
 ,{ "replaceable" }
 ,{ "types." }
 ,{ "For" }
 ,{ "such" }
 ,{ "types" }
 ,{ "an" }
 ,{ "array" }
 ,{ "can" }
 ,{ "grow" }
 ,{ "above" }
 ,{ "the" }
 ,{ "initial" }
 ,{ "memory" }
 ,{ "allocation" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b105 = { {
 { "The" }
 ,{ "package" }
 ,{ "has" }
 ,{ "the" }
 ,{ "following" }
 ,{ "members." }
} , & fmt_text , & align_text } ;

Text b106 = { {
 { "Flags" }
 ,{ "Default_no_throw" , & fmt_text_b }
 ,{ "and" }
 ,{ "Copy_no_throw" , & fmt_text_b }
 ,{ "are" }
 ,{ "copied" }
 ,{ "from" }
 ,{ "the" }
 ,{ "Flags" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b107 = { {
 { "Flag" }
 ,{ "MoveTo_exist" , & fmt_text_b }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "for" }
 ,{ "replaceable" }
 ,{ "types." }
} , & fmt_text , & align_text } ;

Text b108 = { {
 { "Create_...()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "range" }
 ,{ "of" }
 ,{ "objects" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "at" }
 ,{ "the" }
 ,{ "given" }
 ,{ "place." }
 ,{ "To" }
 ,{ "create" }
 ,{ "an" }
 ,{ "object," }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "constructor" }
 ,{ "is" }
 ,{ "called." }
 ,{ "Objects" }
 ,{ "are" }
 ,{ "created" }
 ,{ "in" }
 ,{ "the" }
 ,{ "ascending" }
 ,{ "order." }
 ,{ "If" }
 ,{ "some" }
 ,{ "constructor" }
 ,{ "throw" }
 ,{ "an" }
 ,{ "exception," }
 ,{ "then" }
 ,{ "the" }
 ,{ "previously" }
 ,{ "constructed" }
 ,{ "objects" }
 ,{ "are" }
 ,{ "destroyed" }
 ,{ "and" }
 ,{ "the" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "propagated." }
 ,{ "The" }
 ,{ "range" }
 ,{ "of" }
 ,{ "the" }
 ,{ "created" }
 ,{ "objects" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "The" }
 ,{ "first" }
 ,{ "two" }
 ,{ "arguments" }
 ,{ "are:" }
 ,{ "the" }
 ,{ "place" }
 ,{ "to" }
 ,{ "construct" }
 ,{ "and" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "elements" }
 ,{ "to" }
 ,{ "construct." }
 ,{ "The" }
 ,{ "place" }
 ,{ "must" }
 ,{ "be" }
 ,{ "properly" }
 ,{ "aligned" }
 ,{ "and" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "space" }
 ,{ "must" }
 ,{ "be" }
 ,{ "large" }
 ,{ "enough" }
 ,{ "to" }
 ,{ "contain" }
 ,{ "the" }
 ,{ "required" }
 ,{ "number" }
 ,{ "of" }
 ,{ "objects." }
} , & fmt_text , & align_text } ;

Text b109 = { {
 { "Create_raw()" , & fmt_text_b }
 ,{ "and" }
 ,{ "Create_default()" , & fmt_text_b }
 ,{ "use" }
 ,{ "the" }
 ,{ "default" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b110 = { {
 { "Create_fill()" , & fmt_text_b }
 ,{ "uses" }
 ,{ "a" }
 ,{ "constructor" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "set" }
 ,{ "of" }
 ,{ "arguments" }
 ,{ "for" }
 ,{ "each" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b111 = { {
 { "Create_copy()" , & fmt_text_b }
 ,{ "uses" }
 ,{ "the" }
 ,{ "copy" }
 ,{ "constructor." }
 ,{ "The" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "memberwise" }
 ,{ "selected" }
 ,{ "from" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "range" }
 ,{ "of" }
 ,{ "objects." }
} , & fmt_text , & align_text } ;

Text b112 = { {
 { "Create_cast()" , & fmt_text_b }
 ,{ "uses" }
 ,{ "the" }
 ,{ "\"cast\"" }
 ,{ "constructor." }
 ,{ "The" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "memberwise" }
 ,{ "selected" }
 ,{ "from" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "range" }
 ,{ "of" }
 ,{ "objects." }
} , & fmt_text , & align_text } ;

Text b113 = { {
 { "Create_swap()" , & fmt_text_b }
 ,{ "uses" }
 ,{ "the" }
 ,{ "default" }
 ,{ "constructor" }
 ,{ "and" }
 ,{ "the" }
 ,{ "swap" }
 ,{ "operation" }
 ,{ "to" }
 ,{ "create" }
 ,{ "objects." }
 ,{ "The" }
 ,{ "arguments" }
 ,{ "for" }
 ,{ "the" }
 ,{ "swap" }
 ,{ "are" }
 ,{ "memberwise" }
 ,{ "selected" }
 ,{ "from" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "range" }
 ,{ "of" }
 ,{ "objects." }
} , & fmt_text , & align_text } ;

Text b114 = { {
 { "The" }
 ,{ "single" }
 ,{ "Create_swap()" , & fmt_text_b }
 ,{ "function" }
 ,{ "\"creates-swap\"" }
 ,{ "a" }
 ,{ "single" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b115 = { {
 { "ProvideLen()" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "reallocate" }
 ,{ "an" }
 ,{ "array." }
 ,{ "It" }
 ,{ "is" }
 ,{ "called" }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "sufficient" }
 ,{ "memory" }
 ,{ "to" }
 ,{ "extend" }
 ,{ "the" }
 ,{ "array." }
 ,{ "The" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "array" }
 ,{ "length," }
 ,{ "the" }
 ,{ "extra_len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "extra" }
 ,{ "objects" }
 ,{ "to" }
 ,{ "be" }
 ,{ "constructed," }
 ,{ "the" }
 ,{ "maxlen" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "allocated" }
 ,{ "length." }
 ,{ "The" }
 ,{ "length" }
 ,{ "returned" }
 ,{ "is" }
 ,{ "sufficient" }
 ,{ "to" }
 ,{ "extend" }
 ,{ "the" }
 ,{ "array" }
 ,{ "and" }
 ,{ "at" }
 ,{ "least" }
 ,{ "double" }
 ,{ "of" }
 ,{ "the" }
 ,{ "maxlen" , & fmt_text_b }
 ,{ "." }
 ,{ "An" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "overflow." }
} , & fmt_text , & align_text } ;

Text b116 = { {
 { "MoveTo()" , & fmt_text_b }
 ,{ "moves" }
 ,{ "the" }
 ,{ "given" }
 ,{ "range" }
 ,{ "to" }
 ,{ "a" }
 ,{ "new" }
 ,{ "place." }
 ,{ "The" }
 ,{ "old" }
 ,{ "place" }
 ,{ "becomes" }
 ,{ "a" }
 ,{ "raw" }
 ,{ "memory." }
 ,{ "The" }
 ,{ "range" }
 ,{ "of" }
 ,{ "new" }
 ,{ "objects" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b117 = { {
 { "Other" }
 ,{ "members" }
 ,{ "are" }
 ,{ "inherited" }
 ,{ "from" }
 ,{ "the" }
 ,{ "ArrayAlgoBase<T>" , & fmt_text_a , & link_ArrayAlgoBase }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b118 = { {
 { "ArrayAlgo_pod" }
} , & fmt_h4 , & align_h4 } ;

Text b119 = { {
 { "ArrayAlgo_pod" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "POD" }
 ,{ "variant." }
} , & fmt_text , & align_text } ;

Text b120 = { {
 { "Flags" }
 ,{ "Default_no_throw" , & fmt_text_b }
 ,{ "," }
 ,{ "Copy_no_throw" , & fmt_text_b }
 ,{ "and" }
 ,{ "MoveTo_exist" , & fmt_text_b }
 ,{ "are" }
 ,{ "all" }
 ,{ "true" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b121 = { {
 { "Create_raw()" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "using" }
 ,{ "default" }
 ,{ "initialization." }
 ,{ "It" }
 ,{ "leaves" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "uninitialized." }
} , & fmt_text , & align_text } ;

Text b122 = { {
 { "Other" }
 ,{ "members" }
 ,{ "are" }
 ,{ "inherited" }
 ,{ "from" }
 ,{ "the" }
 ,{ "ArrayAlgoBase_nodtor<T>" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b123 = { {
 { "ArrayAlgo_mini" }
} , & fmt_h4 , & align_h4 } ;

Text b124 = { {
 { "ArrayAlgo_mini" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "mini" }
 ,{ "variant" }
 ,{ "without" }
 ,{ "object" }
 ,{ "moving." }
 ,{ "It" }
 ,{ "is" }
 ,{ "assumed" }
 ,{ "only," }
 ,{ "that" }
 ,{ "the" }
 ,{ "destructor" }
 ,{ "~T()" , & fmt_text_b }
 ,{ "is" }
 ,{ "no-throw" , & fmt_text_b }
 ,{ "." }
 ,{ "Swap" }
 ,{ "and" }
 ,{ "move" }
 ,{ "are" }
 ,{ "not" }
 ,{ "used." }
} , & fmt_text , & align_text } ;

Text b125 = { {
 { "The" }
 ,{ "flag" }
 ,{ "MoveTo_exist" , & fmt_text_b }
 ,{ "is" }
 ,{ "false" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b126 = { {
 { "Other" }
 ,{ "members" }
 ,{ "are" }
 ,{ "inherited" }
 ,{ "from" }
 ,{ "the" }
 ,{ "ArrayAlgoBase<T>" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b127 = { {
 { "The" }
 ,{ "following" }
 ,{ "functions:" }
 ,{ "Create_swap()" , & fmt_text_b }
 ,{ "," }
 ,{ "ProvideLen()" , & fmt_text_b }
 ,{ "," }
 ,{ "MoveTo()" , & fmt_text_b }
 ,{ "are" }
 ,{ "omitted." }
 ,{ "Array," }
 ,{ "constructed" }
 ,{ "with" }
 ,{ "this" }
 ,{ "algorithm" }
 ,{ "package," }
 ,{ "cannot" }
 ,{ "be" }
 ,{ "extended" }
 ,{ "beyond" }
 ,{ "the" }
 ,{ "initial" }
 ,{ "memory" }
 ,{ "allocation" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b128 = { {
 { "To" }
 ,{ "use" }
 ,{ "this" }
 ,{ "package" }
 ,{ "with" }
 ,{ "the" }
 ,{ "DynArray" , & fmt_text_b }
 ,{ "you" }
 ,{ "can" }
 ,{ "use" }
 ,{ "the" }
 ,{ "following" }
 ,{ "type:" }
} , & fmt_text , & align_text } ;

Link link_ArrayAlgoBase = { & page , { 129 } } ;

Text b129 = { {
 { "ArrayAlgoBase" }
} , & fmt_h4 , & align_h4 } ;

Text b130 = { {
 { "ArrayAlgoBase" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "common" }
 ,{ "package" }
 ,{ "for" }
 ,{ "all" }
 ,{ "ArrayAlgo" , & fmt_text_b }
 ,{ "s." }
 ,{ "It" }
 ,{ "has" }
 ,{ "two" }
 ,{ "variants:" }
 ,{ "common" }
 ,{ "and" }
 ,{ "specialized" }
 ,{ "ArrayAlgoBase_nodtor" , & fmt_text_b }
 ,{ "for" }
 ,{ "types" }
 ,{ "with" }
 ,{ "the" }
 ,{ "trivial" }
 ,{ "destructor." }
} , & fmt_text , & align_text } ;

Text b131 = { {
 { "Create()" , & fmt_text_b }
 ,{ "uses" }
 ,{ "the" }
 ,{ "given" }
 ,{ "creator" }
 ,{ "for" }
 ,{ "the" }
 ,{ "object" }
 ,{ "creation." }
 ,{ "See" }
 ,{ "below" , & fmt_text_a , & link_Creator }
 ,{ "about" }
 ,{ "creators." }
} , & fmt_text , & align_text } ;

Text b132 = { {
 { "Single" }
 ,{ "Destroy()" , & fmt_text_b }
 ,{ "destroys" }
 ,{ "the" }
 ,{ "object" }
 ,{ "(but" }
 ,{ "don't" }
 ,{ "free" }
 ,{ "the" }
 ,{ "memory)." }
} , & fmt_text , & align_text } ;

Text b133 = { {
 { "Range" }
 ,{ "Destroy()" , & fmt_text_b }
 ,{ "destroys" }
 ,{ "the" }
 ,{ "given" }
 ,{ "range" }
 ,{ "of" }
 ,{ "objects." }
} , & fmt_text , & align_text } ;

Text b134 = { {
 { "There" }
 ,{ "are" }
 ,{ "four" }
 ,{ "inner" }
 ,{ "\"guard\"" }
 ,{ "classes." }
 ,{ "They" }
 ,{ "are" }
 ,{ "used" }
 ,{ "to" }
 ,{ "created" }
 ,{ "a" }
 ,{ "range" }
 ,{ "of" }
 ,{ "objects." }
 ,{ "Guards" }
 ,{ "are" }
 ,{ "responsible" }
 ,{ "for" }
 ,{ "the" }
 ,{ "object" }
 ,{ "destruction" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "failure." }
} , & fmt_text , & align_text } ;

Text b135 = { {
 { "BuildGuard" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "create" }
 ,{ "a" }
 ,{ "range" }
 ,{ "of" }
 ,{ "objects." }
 ,{ "The" }
 ,{ "constructor" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "place" }
 ,{ "for" }
 ,{ "the" }
 ,{ "range." }
 ,{ "It" }
 ,{ "must" }
 ,{ "be" }
 ,{ "properly" }
 ,{ "aligned" }
 ,{ "and" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "space" }
 ,{ "must" }
 ,{ "be" }
 ,{ "large" }
 ,{ "enough" }
 ,{ "to" }
 ,{ "store" }
 ,{ "the" }
 ,{ "range." }
} , & fmt_text , & align_text } ;

Text b136 = { {
 { "at()" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "current" }
 ,{ "place" }
 ,{ "for" }
 ,{ "the" }
 ,{ "object" }
 ,{ "creation." }
} , & fmt_text , & align_text } ;

Text b137 = { {
 { "operator" , & fmt_text_b }
 ,{ "++" , & fmt_text_b }
 ,{ "()" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "called" }
 ,{ "after" }
 ,{ "the" }
 ,{ "successful" }
 ,{ "creation" }
 ,{ "of" }
 ,{ "an" }
 ,{ "object" }
 ,{ "at" }
 ,{ "the" }
 ,{ "current" }
 ,{ "position," }
 ,{ "it" }
 ,{ "moves" }
 ,{ "to" }
 ,{ "the" }
 ,{ "next" }
 ,{ "object" }
 ,{ "position." }
} , & fmt_text , & align_text } ;

Text b138 = { {
 { "disarm()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "after" }
 ,{ "the" }
 ,{ "desired" }
 ,{ "number" }
 ,{ "of" }
 ,{ "objects" }
 ,{ "are" }
 ,{ "created." }
 ,{ "It" }
 ,{ "\"disarms\"" }
 ,{ "the" }
 ,{ "guard" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "created" }
 ,{ "range." }
} , & fmt_text , & align_text } ;

Text b139 = { {
 { "The" }
 ,{ "BuildGuard" , & fmt_text_b }
 ,{ "destructor" }
 ,{ "destroys" }
 ,{ "the" }
 ,{ "created" }
 ,{ "objects." }
 ,{ "It" }
 ,{ "must" }
 ,{ "be" }
 ,{ "disarmed" }
 ,{ "to" }
 ,{ "prevent" }
 ,{ "the" }
 ,{ "destruction." }
} , & fmt_text , & align_text } ;

Text b140 = { {
 { "CreateGuard" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "for" }
 ,{ "creation" }
 ,{ "a" }
 ,{ "range" }
 ,{ "of" }
 ,{ "objects" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "length." }
 ,{ "Constructor's" }
 ,{ "arguments" }
 ,{ "are:" }
 ,{ "the" }
 ,{ "place" }
 ,{ "of" }
 ,{ "the" }
 ,{ "range" }
 ,{ "and" }
 ,{ "the" }
 ,{ "final" }
 ,{ "number" }
 ,{ "of" }
 ,{ "objects." }
 ,{ "The" }
 ,{ "remaining" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "the" }
 ,{ "same" }
 ,{ "as" }
 ,{ "for" }
 ,{ "BuildGuard" , & fmt_text_b }
 ,{ "." }
 ,{ "Using" }
 ,{ "CreateGuard" , & fmt_text_b }
 ,{ "you" }
 ,{ "must" }
 ,{ "create" }
 ,{ "the" }
 ,{ "exact" }
 ,{ "number" }
 ,{ "of" }
 ,{ "objects." }
} , & fmt_text , & align_text } ;

Text b141 = { {
 { "CreateGuard_nothrow" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "\"no-throw\"" }
 ,{ "variant" }
 ,{ "of" }
 ,{ "the" }
 ,{ "CreateGuard" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "used" }
 ,{ "for" }
 ,{ "the" }
 ,{ "creation" }
 ,{ "of" }
 ,{ "a" }
 ,{ "range" }
 ,{ "of" }
 ,{ "objects" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "length," }
 ,{ "if" }
 ,{ "there" }
 ,{ "will" }
 ,{ "be" }
 ,{ "no" }
 ,{ "exceptions" }
 ,{ "during" }
 ,{ "the" }
 ,{ "objects" }
 ,{ "construction." }
} , & fmt_text , & align_text } ;

Text b142 = { {
 { "CreateGuardNoThrow" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "one" }
 ,{ "of" }
 ,{ "the" }
 ,{ "CreateGuard" , & fmt_text_b }
 ,{ "and" }
 ,{ "CreateGuard_nothrow" , & fmt_text_b }
 ,{ "," }
 ,{ "depending" }
 ,{ "on" }
 ,{ "the" }
 ,{ "no_throw" , & fmt_text_b }
 ,{ "template" }
 ,{ "parameter." }
} , & fmt_text , & align_text } ;

Text b143 = { {
 { "Below" }
 ,{ "is" }
 ,{ "the" }
 ,{ "implementation" }
 ,{ "of" }
 ,{ "the" }
 ,{ "generic" }
 ,{ "Create" , & fmt_text_b }
 ,{ "," }
 ,{ "it" }
 ,{ "uses" }
 ,{ "the" }
 ,{ "CreateGuardNoThrow" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b144 = { {
 { "ArrayAlgoBase_nodtor<T>" , & fmt_text_b }
 ,{ "provides" }
 ,{ "the" }
 ,{ "same" }
 ,{ "set" }
 ,{ "of" }
 ,{ "algorithms," }
 ,{ "but" }
 ,{ "implemented" }
 ,{ "with" }
 ,{ "respect" }
 ,{ "to" }
 ,{ "destructor" }
 ,{ "triviality." }
} , & fmt_text , & align_text } ;

Link link_Creator = { & page , { 145 } } ;

Text b145 = { {
 { "Creators" }
 ,{ "and" }
 ,{ "Builders" }
} , & fmt_h4 , & align_h4 } ;

Text b146 = { {
 { "Creator" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "functor," }
 ,{ "creating" }
 ,{ "objects." }
 ,{ "It" }
 ,{ "looks" }
 ,{ "like" }
 ,{ "this:" }
} , & fmt_text , & align_text } ;

Text b147 = { {
 { "Or" }
 ,{ "like" }
 ,{ "this:" }
} , & fmt_text , & align_text } ;

Text b148 = { {
 { "You" }
 ,{ "may" }
 ,{ "use" }
 ,{ "a" }
 ,{ "Creator" , & fmt_text_b }
 ,{ "in" }
 ,{ "a" }
 ,{ "generic" }
 ,{ "array" }
 ,{ "\"Creator\"" }
 ,{ "constructors" }
 ,{ "and" }
 ,{ "methods." }
} , & fmt_text , & align_text } ;

Link link_Builder = { & page , { 149 } } ;

Text b149 = { {
 { "Builder" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "functor," }
 ,{ "creating" }
 ,{ "a" }
 ,{ "range" }
 ,{ "of" }
 ,{ "objects." }
 ,{ "It" }
 ,{ "looks" }
 ,{ "like:" }
} , & fmt_text , & align_text } ;

Text b150 = { {
 { "Or" }
 ,{ "like" }
 ,{ "this:" }
} , & fmt_text , & align_text } ;

Text b151 = { {
 { "Builder" , & fmt_text_b }
 ,{ "reports" }
 ,{ "the" }
 ,{ "maximum" }
 ,{ "object" }
 ,{ "number" }
 ,{ "it" }
 ,{ "will" }
 ,{ "create" }
 ,{ "through" }
 ,{ "the" }
 ,{ "method" }
 ,{ "getLen()" , & fmt_text_b }
 ,{ "." }
 ,{ "operator" , & fmt_text_b }
 ,{ "()" , & fmt_text_b }
 ,{ "gets" }
 ,{ "the" }
 ,{ "place" }
 ,{ "for" }
 ,{ "the" }
 ,{ "range" }
 ,{ "of" }
 ,{ "getLen()" , & fmt_text_b }
 ,{ "elements," }
 ,{ "it" }
 ,{ "either" }
 ,{ "creates" }
 ,{ "the" }
 ,{ "range" }
 ,{ "of" }
 ,{ "objects" }
 ,{ "up" }
 ,{ "to" }
 ,{ "this" }
 ,{ "length" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "it," }
 ,{ "or" }
 ,{ "leaves" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "raw" }
 ,{ "and" }
 ,{ "throws" }
 ,{ "an" }
 ,{ "exception." }
} , & fmt_text , & align_text } ;

Text b152 = { {
 { "You" }
 ,{ "may" }
 ,{ "use" }
 ,{ "a" }
 ,{ "Builder" , & fmt_text_b }
 ,{ "in" }
 ,{ "a" }
 ,{ "generic" }
 ,{ "array" }
 ,{ "\"Builder\"" }
 ,{ "constructors" }
 ,{ "and" }
 ,{ "methods." }
} , & fmt_text , & align_text } ;

Text b153 = { {
 { "There" }
 ,{ "are" }
 ,{ "two" }
 ,{ "concepts" }
 ,{ "for" }
 ,{ "creators" }
 ,{ "and" }
 ,{ "builders:" }
} , & fmt_text , & align_text } ;

Text b154 = { {
 { "Standard" }
 ,{ "creators" }
} , & fmt_h4 , & align_h4 } ;

Text b155 = { {
 { "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "list" }
 ,{ "of" }
 ,{ "standard" }
 ,{ "creators." }
} , & fmt_text , & align_text } ;

Text b156 = { {
 { "Memory" }
 ,{ "management" }
} , & fmt_h4 , & align_h4 } ;

Text b157 = { {
 { "All" }
 ,{ "default" }
 ,{ "algorithm" }
 ,{ "packages" }
 ,{ "inherit" }
 ,{ "the" }
 ,{ "base" }
 ,{ "class" }
 ,{ "ArrayAlgoMemBase" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b158 = { {
 { "This" }
 ,{ "class" }
 ,{ "defines" }
 ,{ "default" }
 ,{ "memory-management" }
 ,{ "functions," }
 ,{ "used" }
 ,{ "by" }
 ,{ "arrays" }
 ,{ "to" }
 ,{ "allocate," }
 ,{ "extend," }
 ,{ "shrink" }
 ,{ "and" }
 ,{ "release" }
 ,{ "memory" }
 ,{ "blocks." }
 ,{ "If" }
 ,{ "you" }
 ,{ "define" }
 ,{ "a" }
 ,{ "custom" }
 ,{ "algorithm" }
 ,{ "package" }
 ,{ "for" }
 ,{ "your" }
 ,{ "purpose," }
 ,{ "you" }
 ,{ "may" }
 ,{ "define" }
 ,{ "custom" }
 ,{ "memory" }
 ,{ "allocation" }
 ,{ "functions" }
 ,{ "with" }
 ,{ "the" }
 ,{ "following" }
 ,{ "semantic." }
} , & fmt_text , & align_text } ;

Text b159 = { {
 { "MemAlloc()" , & fmt_text_b }
 ,{ "allocates" }
 ,{ "a" }
 ,{ "memory" }
 ,{ "block" }
 ,{ "of" }
 ,{ "the" }
 ,{ "required" }
 ,{ "length." }
 ,{ "The" }
 ,{ "block" }
 ,{ "is" }
 ,{ "aligned." }
 ,{ "An" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error." }
} , & fmt_text , & align_text } ;

Text b160 = { {
 { "MemFree()" , & fmt_text_b }
 ,{ "releases" }
 ,{ "the" }
 ,{ "previously" }
 ,{ "allocated" }
 ,{ "memory" }
 ,{ "block." }
 ,{ "The" }
 ,{ "function" }
 ,{ "is" }
 ,{ "never" }
 ,{ "called" }
 ,{ "with" }
 ,{ "the" }
 ,{ "null" }
 ,{ "argument." }
} , & fmt_text , & align_text } ;

Text b161 = { {
 { "MemExtend()" , & fmt_text_b }
 ,{ "tries" }
 ,{ "to" }
 ,{ "extend" }
 ,{ "the" }
 ,{ "previously" }
 ,{ "allocated" }
 ,{ "memory" }
 ,{ "block" }
 ,{ "length" }
 ,{ "to" }
 ,{ "be" }
 ,{ "at" }
 ,{ "least" }
 ,{ "the" }
 ,{ "given" }
 ,{ "argument." }
 ,{ "If" }
 ,{ "the" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "then" }
 ,{ "the" }
 ,{ "attempt" }
 ,{ "was" }
 ,{ "successful." }
} , & fmt_text , & align_text } ;

Text b162 = { {
 { "MemShrink()" , & fmt_text_b }
 ,{ "shrinks" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block" }
 ,{ "length" }
 ,{ "to" }
 ,{ "be" }
 ,{ "at" }
 ,{ "least" }
 ,{ "the" }
 ,{ "given" }
 ,{ "argument." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "never" }
 ,{ "used." }
} , & fmt_text , & align_text } ;

Text b163 = { {
 { "Insert/Delete" }
 ,{ "algorithms" }
} , & fmt_h4 , & align_h4 } ;

Text b164 = { {
 { "Insert" }
 ,{ "or" }
 ,{ "delete" }
 ,{ "array" }
 ,{ "elements" }
 ,{ "in" }
 ,{ "the" }
 ,{ "middle" }
 ,{ "of" }
 ,{ "the" }
 ,{ "array" }
 ,{ "are" }
 ,{ "not" }
 ,{ "natural" }
 ,{ "array" }
 ,{ "methods." }
 ,{ "They" }
 ,{ "have" }
 ,{ "a" }
 ,{ "linear" }
 ,{ "complexity." }
 ,{ "But" }
 ,{ "sometimes" }
 ,{ "they" }
 ,{ "are" }
 ,{ "necessary." }
 ,{ "These" }
 ,{ "algorithms" }
 ,{ "are" }
 ,{ "implemented" }
 ,{ "as" }
 ,{ "free" }
 ,{ "functions." }
} , & fmt_text , & align_text } ;

Text b165 = { {
 { "These" }
 ,{ "functions" }
 ,{ "delete" }
 ,{ "an" }
 ,{ "element" }
 ,{ "from" }
 ,{ "the" }
 ,{ "array" }
 ,{ "at" }
 ,{ "the" }
 ,{ "given" }
 ,{ "index." }
 ,{ "The" }
 ,{ "first" }
 ,{ "two" }
 ,{ "return" }
 ,{ "false" , & fmt_text_b }
 ,{ "if" }
 ,{ "the" }
 ,{ "index" }
 ,{ "is" }
 ,{ "invalid." }
 ,{ "The" }
 ,{ "last" }
 ,{ "two" }
 ,{ "throw" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "in" }
 ,{ "such" }
 ,{ "case." }
 ,{ "CopyDel" , & fmt_text_b }
 ,{ "copies" }
 ,{ "elements," }
 ,{ "SwapDel" , & fmt_text_b }
 ,{ "uses" }
 ,{ "swapping." }
} , & fmt_text , & align_text } ;

Text b166 = { {
 { "These" }
 ,{ "functions" }
 ,{ "delete" }
 ,{ "a" }
 ,{ "range" }
 ,{ "of" }
 ,{ "elements" }
 ,{ "from" }
 ,{ "the" }
 ,{ "array." }
 ,{ "The" }
 ,{ "first" }
 ,{ "two" }
 ,{ "return" }
 ,{ "the" }
 ,{ "count" }
 ,{ "of" }
 ,{ "deleted" }
 ,{ "elements." }
 ,{ "The" }
 ,{ "last" }
 ,{ "two" }
 ,{ "throw" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "if" }
 ,{ "the" }
 ,{ "subrange" }
 ,{ "does" }
 ,{ "not" }
 ,{ "fit" }
 ,{ "the" }
 ,{ "array" }
 ,{ "range." }
 ,{ "CopyDel" , & fmt_text_b }
 ,{ "copies" }
 ,{ "elements," }
 ,{ "SwapDel" , & fmt_text_b }
 ,{ "uses" }
 ,{ "swapping." }
} , & fmt_text , & align_text } ;

Text b167 = { {
 { "These" }
 ,{ "functions" }
 ,{ "insert" }
 ,{ "an" }
 ,{ "element" }
 ,{ "to" }
 ,{ "the" }
 ,{ "array" }
 ,{ "at" }
 ,{ "the" }
 ,{ "given" }
 ,{ "index." }
 ,{ "The" }
 ,{ "valid" }
 ,{ "index" }
 ,{ "range" }
 ,{ "is" }
 ,{ "[0,len]" , & fmt_text_b }
 ,{ "," }
 ,{ "where" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "array" }
 ,{ "length." }
 ,{ "The" }
 ,{ "first" }
 ,{ "two" }
 ,{ "cap" }
 ,{ "the" }
 ,{ "index" }
 ,{ "and" }
 ,{ "return" }
 ,{ "false" , & fmt_text_b }
 ,{ "if" }
 ,{ "the" }
 ,{ "index" }
 ,{ "is" }
 ,{ "out" }
 ,{ "of" }
 ,{ "range." }
 ,{ "The" }
 ,{ "last" }
 ,{ "two" }
 ,{ "throw" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "in" }
 ,{ "such" }
 ,{ "case." }
 ,{ "They" }
 ,{ "also" }
 ,{ "return" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "inserted" }
 ,{ "object." }
 ,{ "CopyIns" , & fmt_text_b }
 ,{ "copies" }
 ,{ "elements," }
 ,{ "SwapIns" , & fmt_text_b }
 ,{ "uses" }
 ,{ "swapping." }
 ,{ "Extra" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "used" }
 ,{ "to" }
 ,{ "call" }
 ,{ "an" }
 ,{ "element" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b168 = { {
 { "All" }
 ,{ "these" }
 ,{ "functions" }
 ,{ "insert" }
 ,{ "a" }
 ,{ "range" }
 ,{ "of" }
 ,{ "elements" }
 ,{ "into" }
 ,{ "the" }
 ,{ "array." }
 ,{ "ind" , & fmt_text_b }
 ,{ "determines" }
 ,{ "the" }
 ,{ "index" }
 ,{ "of" }
 ,{ "insertion." }
 ,{ "The" }
 ,{ "range" }
 ,{ "(as" }
 ,{ "PtrLen" , & fmt_text_b }
 ,{ ")" }
 ,{ "of" }
 ,{ "created" }
 ,{ "elements" }
 ,{ "if" }
 ,{ "returned." }
 ,{ "If" }
 ,{ "ind" , & fmt_text_b }
 ,{ "exceeds" }
 ,{ "the" }
 ,{ "array" }
 ,{ "length," }
 ,{ "elements" }
 ,{ "are" }
 ,{ "created" }
 ,{ "at" }
 ,{ "the" }
 ,{ "end" }
 ,{ "of" }
 ,{ "the" }
 ,{ "array." }
} , & fmt_text , & align_text } ;

Text b169 = { {
 { "These" }
 ,{ "functions" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "\"prepare\"" }
 ,{ "the" }
 ,{ "array" }
 ,{ "for" }
 ,{ "an" }
 ,{ "element" }
 ,{ "insertion." }
 ,{ "They" }
 ,{ "are" }
 ,{ "intended" }
 ,{ "to" }
 ,{ "be" }
 ,{ "used" }
 ,{ "with" }
 ,{ "conjunction" }
 ,{ "of" }
 ,{ "insertion" }
 ,{ "functions." }
} , & fmt_text , & align_text } ;

Text b170 = { {
 { "ArrayInsRangeGuard()" , & fmt_text_b }
 ,{ "throws" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "if" }
 ,{ "ind" , & fmt_text_b }
 ,{ "exceeds" }
 ,{ "the" }
 ,{ "array" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b171 = { {
 { "ArrayInsRangeFill()" , & fmt_text_b }
 ,{ "extends" }
 ,{ "the" }
 ,{ "array" }
 ,{ "if" }
 ,{ "ind" , & fmt_text_b }
 ,{ "exceeds" }
 ,{ "the" }
 ,{ "array" }
 ,{ "length" }
 ,{ "to" }
 ,{ "equalize" }
 ,{ "them." }
 ,{ "The" }
 ,{ "second" }
 ,{ "variant" }
 ,{ "reserves" }
 ,{ "additional" }
 ,{ "memory" }
 ,{ "behind" }
 ,{ "for" }
 ,{ "further" }
 ,{ "extension" }
 ,{ "by" }
 ,{ "count" , & fmt_text_b }
 ,{ "elements." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Arrays" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b3 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b31 , null , inner_text , outer_text , back_text }
 ,{ & b32 , null , inner_text , outer_text , back_text }
 ,{ & b33 , null , inner_text , outer_text , back_text }
 ,{ & b34 , null , inner_text , outer_text , back_text }
 ,{ & b35 , null , inner_text , outer_text , back_text }
 ,{ & b36 , null , inner_text , outer_text , back_text }
 ,{ & b37 , null , inner_text , outer_text , back_text }
 ,{ & b38 , null , inner_text , outer_text , back_text }
 ,{ & b39 , null , inner_text , outer_text , back_text }
 ,{ & b40 , null , inner_text , outer_text , back_text }
 ,{ & b41 , null , inner_text , outer_text , back_text }
 ,{ & b42 , null , inner_text , outer_text , back_text }
 ,{ & b43 , null , inner_text , outer_text , back_text }
 ,{ & b44 , null , inner_text , outer_text , back_text }
 ,{ & b45 , null , inner_text , outer_text , back_text }
 ,{ & b46 , null , inner_text , outer_text , back_text }
 ,{ & b47 , null , inner_text , outer_text , back_text }
 ,{ & b48 , null , inner_text , outer_text , back_text }
 ,{ & b49 , null , inner_text , outer_text , back_text }
 ,{ & b50 , null , inner_text , outer_text , back_text }
 ,{ & b51 , null , inner_text , outer_text , back_text }
 ,{ & b52 , null , inner_text , outer_text , back_text }
 ,{ & b53 , null , inner_text , outer_text , back_text }
 ,{ & b54 , null , inner_text , outer_text , back_text }
 ,{ & b55 , null , inner_text , outer_text , back_text }
 ,{ & b56 , null , inner_text , outer_text , back_text }
 ,{ & b57 , null , inner_text , outer_text , back_text }
 ,{ & b58 , null , inner_text , outer_text , back_text }
 ,{ & b59 , null , inner_text , outer_text , back_text }
 ,{ & b60 , null , inner_text , outer_text , back_text }
 ,{ & b61 , null , inner_text , outer_text , back_text }
 ,{ & b62 , null , inner_text , outer_text , back_text }
 ,{ & b63 , null , inner_text , outer_text , back_text }
 ,{ & b64 , null , inner_text , outer_text , back_text }
 ,{ & b65 , null , inner_text , outer_text , back_text }
 ,{ & b66 , null , inner_text , outer_text , back_text }
 ,{ & b67 , null , inner_text , outer_text , back_text }
 ,{ & b68 , null , inner_text , outer_text , back_text }
 ,{ & b69 , null , inner_text , outer_text , back_text }
 ,{ & b70 , null , inner_text , outer_text , back_text }
 ,{ & b71 , null , inner_text , outer_text , back_text }
 ,{ & b72 , null , inner_text , outer_text , back_text }
 ,{ & b73 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b74 , null , inner_text , outer_text , back_text }
 ,{ & b75 , null , inner_text , outer_text , back_text }
 ,{ & b76 , null , inner_text , outer_text , back_text }
 ,{ & b77 , null , inner_text , outer_text , back_text }
 ,{ & b78 , null , inner_text , outer_text , back_text }
 ,{ & b79 , null , inner_text , outer_text , back_text }
 ,{ & b80 , null , inner_text , outer_text , back_text }
 ,{ & b81 , null , inner_text , outer_text , back_text }
 ,{ & b82 , null , inner_text , outer_text , back_text }
 ,{ & b83 , null , inner_text , outer_text , back_text }
 ,{ & b84 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b85 , null , inner_text , outer_text , back_text }
 ,{ & b86 , null , inner_text , outer_text , back_text }
 ,{ & b87 , null , inner_text , outer_text , back_text }
 ,{ & b88 , null , inner_text , outer_text , back_text }
 ,{ & b89 , null , inner_text , outer_text , back_text }
 ,{ & b90 , null , inner_text , outer_text , back_text }
 ,{ & b91 , null , inner_text , outer_text , back_text }
 ,{ & b92 , null , inner_text , outer_text , back_text }
 ,{ & b93 , null , inner_text , outer_text , back_text }
 ,{ & b94 , null , inner_text , outer_text , back_text }
 ,{ & b95 , null , inner_text , outer_text , back_text }
 ,{ & b96 , null , inner_text , outer_text , back_text }
 ,{ & b97 , null , inner_text , outer_text , back_text }
 ,{ & b98 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b99 , null , inner_text , outer_text , back_text }
 ,{ & b100 , null , inner_text , outer_text , back_text }
 ,{ & b101 , null , inner_text , outer_text , back_text }
 ,{ & b102 , null , inner_text , outer_text , back_text }
 ,{ & b103 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b104 , null , inner_text , outer_text , back_text }
 ,{ & b105 , null , inner_text , outer_text , back_text }
 ,{ & b106 , null , inner_text , outer_text , back_text }
 ,{ & b107 , null , inner_text , outer_text , back_text }
 ,{ & b108 , null , inner_text , outer_text , back_text }
 ,{ & b109 , null , inner_text , outer_text , back_text }
 ,{ & b110 , null , inner_text , outer_text , back_text }
 ,{ & b111 , null , inner_text , outer_text , back_text }
 ,{ & b112 , null , inner_text , outer_text , back_text }
 ,{ & b113 , null , inner_text , outer_text , back_text }
 ,{ & b114 , null , inner_text , outer_text , back_text }
 ,{ & b115 , null , inner_text , outer_text , back_text }
 ,{ & b116 , null , inner_text , outer_text , back_text }
 ,{ & b117 , null , inner_text , outer_text , back_text }
 ,{ & b118 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b119 , null , inner_text , outer_text , back_text }
 ,{ & b120 , null , inner_text , outer_text , back_text }
 ,{ & b121 , null , inner_text , outer_text , back_text }
 ,{ & b122 , null , inner_text , outer_text , back_text }
 ,{ & b123 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b124 , null , inner_text , outer_text , back_text }
 ,{ & b125 , null , inner_text , outer_text , back_text }
 ,{ & b126 , null , inner_text , outer_text , back_text }
 ,{ & b127 , null , inner_text , outer_text , back_text }
 ,{ & b128 , null , inner_text , outer_text , back_text }
 ,{ & b129 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b130 , null , inner_text , outer_text , back_text }
 ,{ & b131 , null , inner_text , outer_text , back_text }
 ,{ & b132 , null , inner_text , outer_text , back_text }
 ,{ & b133 , null , inner_text , outer_text , back_text }
 ,{ & b134 , null , inner_text , outer_text , back_text }
 ,{ & b135 , null , inner_text , outer_text , back_text }
 ,{ & b136 , null , inner_text , outer_text , back_text }
 ,{ & b137 , null , inner_text , outer_text , back_text }
 ,{ & b138 , null , inner_text , outer_text , back_text }
 ,{ & b139 , null , inner_text , outer_text , back_text }
 ,{ & b140 , null , inner_text , outer_text , back_text }
 ,{ & b141 , null , inner_text , outer_text , back_text }
 ,{ & b142 , null , inner_text , outer_text , back_text }
 ,{ & b143 , null , inner_text , outer_text , back_text }
 ,{ & b144 , null , inner_text , outer_text , back_text }
 ,{ & b145 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b146 , null , inner_text , outer_text , back_text }
 ,{ & b147 , null , inner_text , outer_text , back_text }
 ,{ & b148 , null , inner_text , outer_text , back_text }
 ,{ & b149 , null , inner_text , outer_text , back_text }
 ,{ & b150 , null , inner_text , outer_text , back_text }
 ,{ & b151 , null , inner_text , outer_text , back_text }
 ,{ & b152 , null , inner_text , outer_text , back_text }
 ,{ & b153 , null , inner_text , outer_text , back_text }
 ,{ & b154 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b155 , null , inner_text , outer_text , back_text }
 ,{ & b156 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b157 , null , inner_text , outer_text , back_text }
 ,{ & b158 , null , inner_text , outer_text , back_text }
 ,{ & b159 , null , inner_text , outer_text , back_text }
 ,{ & b160 , null , inner_text , outer_text , back_text }
 ,{ & b161 , null , inner_text , outer_text , back_text }
 ,{ & b162 , null , inner_text , outer_text , back_text }
 ,{ & b163 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b164 , null , inner_text , outer_text , back_text }
 ,{ & b165 , null , inner_text , outer_text , back_text }
 ,{ & b166 , null , inner_text , outer_text , back_text }
 ,{ & b167 , null , inner_text , outer_text , back_text }
 ,{ & b168 , null , inner_text , outer_text , back_text }
 ,{ & b169 , null , inner_text , outer_text , back_text }
 ,{ & b170 , null , inner_text , outer_text , back_text }
 ,{ & b171 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_APRTest#page , & page_AsyncBinaryFile#page };

Link link = { &page } ;

}

scope page_AsyncBinaryFile {

Text b0 = { {
 { "AsyncBinaryFile" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/AsyncBinaryFile.h" , & fmt_text_Files_b }
 ,{ "CCore/src/AsyncBinaryFile.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "An" }
 ,{ "AsyncBinaryFile" , & fmt_text_b }
 ,{ "object" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "as" }
 ,{ "a" }
 ,{ "serialization" , & fmt_text_a , & ..#page_SaveLoad#link_Devices }
 ,{ "output" , & fmt_text_a , & ..#page_SaveLoad#link_Devices }
 ,{ "device" , & fmt_text_a , & ..#page_SaveLoad#link_Devices }
 ,{ "." }
 ,{ "It" }
 ,{ "puts" }
 ,{ "data" }
 ,{ "bytes" }
 ,{ "into" }
 ,{ "the" }
 ,{ "output" }
 ,{ "file." }
 ,{ "This" }
 ,{ "class" }
 ,{ "is" }
 ,{ "similar" }
 ,{ "to" }
 ,{ "the" }
 ,{ "PrintAsyncFile" , & fmt_text_a , & ..#page_PrintDevice#link_PrintAsyncFile }
 ,{ "class," }
 ,{ "but" }
 ,{ "provides" }
 ,{ "binary" }
 ,{ "output" }
 ,{ "capabilities" }
 ,{ "rather" }
 ,{ "than" }
 ,{ "textual." }
 ,{ "It" }
 ,{ "contains" }
 ,{ "inside" }
 ,{ "the" }
 ,{ "AsyncFile" , & fmt_text_a , & ..#page_AsyncFileClients#link }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "A" }
 ,{ "file" }
 ,{ "must" }
 ,{ "be" }
 ,{ "opened" }
 ,{ "before" }
 ,{ "any" }
 ,{ "serialization" }
 ,{ "operation." }
 ,{ "You" }
 ,{ "can" }
 ,{ "do" }
 ,{ "it" }
 ,{ "using" }
 ,{ "the" }
 ,{ "constructor" }
 ,{ "or" }
 ,{ "the" }
 ,{ "method" }
 ,{ "open()" , & fmt_text_b }
 ,{ "." }
 ,{ "file_name" , & fmt_text_b }
 ,{ "and" }
 ,{ "oflags" , & fmt_text_b }
 ,{ "specifies" }
 ,{ "the" }
 ,{ "file" }
 ,{ "to" }
 ,{ "be" }
 ,{ "opened" }
 ,{ "and" }
 ,{ "the" }
 ,{ "open" }
 ,{ "flags." }
 ,{ "The" }
 ,{ "file" }
 ,{ "may" }
 ,{ "be" }
 ,{ "also" }
 ,{ "specified" }
 ,{ "using" }
 ,{ "the" }
 ,{ "device" }
 ,{ "name" }
 ,{ "and" }
 ,{ "the" }
 ,{ "device" }
 ,{ "file" }
 ,{ "name." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Destructor" }
 ,{ "completes" }
 ,{ "operations," }
 ,{ "closes" }
 ,{ "the" }
 ,{ "file" }
 ,{ "and" }
 ,{ "reports" }
 ,{ "errors" }
 ,{ "if" }
 ,{ "any." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "isOpened()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "is" }
 ,{ "opened." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "open()" , & fmt_text_b }
 ,{ "opens" }
 ,{ "the" }
 ,{ "given" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "soft_close()" , & fmt_text_b }
 ,{ "flushes" }
 ,{ "output" }
 ,{ "and" }
 ,{ "closes" }
 ,{ "the" }
 ,{ "file." }
 ,{ "Errors" }
 ,{ "are" }
 ,{ "reported" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "FileMultiError" , & fmt_text_b }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "close()" , & fmt_text_b }
 ,{ "flushes" }
 ,{ "output" }
 ,{ "and" }
 ,{ "closes" }
 ,{ "the" }
 ,{ "file." }
 ,{ "An" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "errors." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "preserveFile()" , & fmt_text_b }
 ,{ "preserves" }
 ,{ "the" }
 ,{ "file," }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "Open_AutoDelete" , & fmt_text_b }
 ,{ "open" }
 ,{ "flag." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "Other" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "direct" }
 ,{ "calls" }
 ,{ "of" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "AsyncFile" , & fmt_text_b }
 ,{ "methods." }
 ,{ "Usually" }
 ,{ "they" }
 ,{ "are" }
 ,{ "not" }
 ,{ "required." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "flush()" , & fmt_text_b }
 ,{ "flushes" }
 ,{ "data" }
 ,{ "from" }
 ,{ "the" }
 ,{ "buffer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> AsyncBinaryFile" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Arrays#page , & page_AsyncFileClients#page };

Link link = { &page } ;

}

scope page_AsyncFileClients {

Text b0 = { {
 { "AsyncFile" }
 ,{ "Clients" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/AsyncFile.h" , & fmt_text_Files_b }
 ,{ "CCore/src/AsyncFile.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Files" }
 ,{ "CCore/inc/AsyncFileToMem.h" , & fmt_text_Files_b }
 ,{ "CCore/src/AsyncFileToMem.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b3 = { {
 { "There" }
 ,{ "are" }
 ,{ "several" }
 ,{ "\"client\"" }
 ,{ "classes" }
 ,{ "to" }
 ,{ "work" }
 ,{ "with" }
 ,{ "files" }
 ,{ "and" }
 ,{ "performes" }
 ,{ "file" }
 ,{ "system" }
 ,{ "operations" }
 ,{ "on" }
 ,{ "async" }
 ,{ "file" }
 ,{ "and" }
 ,{ "file" }
 ,{ "system" }
 ,{ "devices." }
} , & fmt_text , & align_text } ;

Link link_AsyncFile = { & page , { 4 } } ;

Text b4 = { {
 { "AsyncFile" }
} , & fmt_h4 , & align_h4 } ;

Text b5 = { {
 { "AsyncFile" , & fmt_text_b }
 ,{ "can" }
 ,{ "perform" }
 ,{ "read/write" }
 ,{ "operation" }
 ,{ "on" }
 ,{ "a" }
 ,{ "file," }
 ,{ "using" }
 ,{ "an" }
 ,{ "async" }
 ,{ "file" }
 ,{ "device." }
 ,{ "An" }
 ,{ "AsyncFile" , & fmt_text_b }
 ,{ "object" }
 ,{ "has" }
 ,{ "several" }
 ,{ "parameters," }
 ,{ "affecting" }
 ,{ "operations." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "timeout" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "by" }
 ,{ "the" }
 ,{ "open()" , & fmt_text_b }
 ,{ "," }
 ,{ "getWritePacket()" , & fmt_text_b }
 ,{ "methods." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "final_timeout" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "complete" }
 ,{ "all" }
 ,{ "pending" }
 ,{ "operations." }
 ,{ "By" }
 ,{ "default" }
 ,{ "it" }
 ,{ "equals" }
 ,{ "3*timeout" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "max_packets" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "maximum" }
 ,{ "number" }
 ,{ "of" }
 ,{ "executed" }
 ,{ "in" }
 ,{ "parallel" }
 ,{ "operations." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "The" }
 ,{ "first" }
 ,{ "constructor" }
 ,{ "creates" }
 ,{ "a" }
 ,{ "closed" }
 ,{ "object" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "parameters." }
 ,{ "The" }
 ,{ "second" }
 ,{ "and" }
 ,{ "third" }
 ,{ "constructors" }
 ,{ "open" }
 ,{ "the" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "isOpened()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "is" }
 ,{ "opened." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "setFinalTimeout()" , & fmt_text_b }
 ,{ "sets" }
 ,{ "the" }
 ,{ "final_timeout" , & fmt_text_b }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "value." }
 ,{ "By" }
 ,{ "default," }
 ,{ "constructors" }
 ,{ "set" }
 ,{ "this" }
 ,{ "value" }
 ,{ "to" }
 ,{ "the" }
 ,{ "triple" }
 ,{ "of" }
 ,{ "timeout" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "extended" }
 ,{ "timeout" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "wait" }
 ,{ "for" }
 ,{ "the" }
 ,{ "completion" }
 ,{ "of" }
 ,{ "all" }
 ,{ "pending" }
 ,{ "operations" }
 ,{ "in" }
 ,{ "the" }
 ,{ "read_all()" , & fmt_text_b }
 ,{ "and" }
 ,{ "close()" , & fmt_text_b }
 ,{ "methods." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "open()" , & fmt_text_b }
 ,{ "opens" }
 ,{ "the" }
 ,{ "file," }
 ,{ "if" }
 ,{ "it" }
 ,{ "was" }
 ,{ "not" }
 ,{ "opened." }
 ,{ "An" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error." }
 ,{ "timeout" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "for" }
 ,{ "this" }
 ,{ "operation." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "the" }
 ,{ "file" }
 ,{ "length." }
 ,{ "The" }
 ,{ "file" }
 ,{ "name" }
 ,{ "can" }
 ,{ "be" }
 ,{ "given" }
 ,{ "as" }
 ,{ "the" }
 ,{ "single" }
 ,{ "argument" }
 ,{ "\"dev:path\"" }
 ,{ "or" }
 ,{ "as" }
 ,{ "two" }
 ,{ "arguments." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "soft_close()" , & fmt_text_b }
 ,{ "closes" }
 ,{ "the" }
 ,{ "file." }
 ,{ "Errors" }
 ,{ "are" }
 ,{ "reported" }
 ,{ "using" }
 ,{ "a" }
 ,{ "FileMultiError" , & fmt_text_b }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "close()" , & fmt_text_b }
 ,{ "closes" }
 ,{ "the" }
 ,{ "file." }
 ,{ "An" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error." }
 ,{ "Both" }
 ,{ "soft_close()" , & fmt_text_b }
 ,{ "and" }
 ,{ "close()" , & fmt_text_b }
 ,{ "methods" }
 ,{ "takes" }
 ,{ "a" }
 ,{ "time" }
 ,{ "to" }
 ,{ "complete," }
 ,{ "because" }
 ,{ "they" }
 ,{ "waits" }
 ,{ "for" }
 ,{ "completion" }
 ,{ "of" }
 ,{ "pending" }
 ,{ "operations" }
 ,{ "first," }
 ,{ "using" }
 ,{ "the" }
 ,{ "final_timeout" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "preserveFile()" , & fmt_text_b }
 ,{ "cancels" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "Open_AutoDelete" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "wait()" , & fmt_text_b }
 ,{ "functions" }
 ,{ "wait" }
 ,{ "for" }
 ,{ "pending" }
 ,{ "operations" }
 ,{ "completion," }
 ,{ "then" }
 ,{ "cancel" }
 ,{ "remaining" }
 ,{ "operations" }
 ,{ "and" }
 ,{ "wait" }
 ,{ "for" }
 ,{ "completion." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "cancel_and_wait()" , & fmt_text_b }
 ,{ "cancels" }
 ,{ "all" }
 ,{ "pending" }
 ,{ "operations" }
 ,{ "and" }
 ,{ "waits" }
 ,{ "for" }
 ,{ "completion." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "setLargeWriteLen()" , & fmt_text_b }
 ,{ "sets" }
 ,{ "the" }
 ,{ "large_write_len" , & fmt_text_b }
 ,{ "parameters." }
 ,{ "This" }
 ,{ "value" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "allocate" }
 ,{ "a" }
 ,{ "larger" }
 ,{ "data" }
 ,{ "buffer" }
 ,{ "for" }
 ,{ "writing" }
 ,{ "if" }
 ,{ "the" }
 ,{ "target" }
 ,{ "device" }
 ,{ "accepts" }
 ,{ "packets" }
 ,{ "with" }
 ,{ "a" }
 ,{ "large" }
 ,{ "data" }
 ,{ "length." }
 ,{ "The" }
 ,{ "value" }
 ,{ "is" }
 ,{ "set," }
 ,{ "once" }
 ,{ "the" }
 ,{ "file" }
 ,{ "is" }
 ,{ "opened" }
 ,{ "according" }
 ,{ "the" }
 ,{ "target" }
 ,{ "device" }
 ,{ "write" }
 ,{ "format." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "getWritePacket()" , & fmt_text_b }
 ,{ "allocates" }
 ,{ "a" }
 ,{ "packet" }
 ,{ "for" }
 ,{ "a" }
 ,{ "write" }
 ,{ "operation." }
 ,{ "It" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "data" }
 ,{ "structure" }
 ,{ "with" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "packet" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "and" }
 ,{ "buf" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "data" }
 ,{ "range" }
 ,{ "to" }
 ,{ "be" }
 ,{ "filled" }
 ,{ "with" }
 ,{ "data." }
 ,{ "This" }
 ,{ "methods" }
 ,{ "uses" }
 ,{ "timeout" , & fmt_text_b }
 ,{ "to" }
 ,{ "wait" }
 ,{ "until" }
 ,{ "a" }
 ,{ "packet" }
 ,{ "becomes" }
 ,{ "available." }
 ,{ "An" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "write()" , & fmt_text_b }
 ,{ "starts" }
 ,{ "a" }
 ,{ "write" }
 ,{ "operation." }
 ,{ "The" }
 ,{ "packet" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "allocated" }
 ,{ "by" }
 ,{ "the" }
 ,{ "getWritePacket()" , & fmt_text_b }
 ,{ "method." }
 ,{ "The" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "data," }
 ,{ "placed" }
 ,{ "into" }
 ,{ "the" }
 ,{ "data" }
 ,{ "buffer," }
 ,{ "returned" }
 ,{ "by" }
 ,{ "the" }
 ,{ "getWritePacket()" , & fmt_text_b }
 ,{ "." }
 ,{ "off" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "file" }
 ,{ "offset" }
 ,{ "where" }
 ,{ "data" }
 ,{ "will" }
 ,{ "be" }
 ,{ "written." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "read_all()" , & fmt_text_b }
 ,{ "reads" }
 ,{ "the" }
 ,{ "file." }
 ,{ "This" }
 ,{ "method" }
 ,{ "waits" }
 ,{ "first" }
 ,{ "for" }
 ,{ "all" }
 ,{ "pending" }
 ,{ "operation" }
 ,{ "completion," }
 ,{ "using" }
 ,{ "the" }
 ,{ "final_timeout" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "method" }
 ,{ "starts" }
 ,{ "a" }
 ,{ "number" }
 ,{ "of" }
 ,{ "read" }
 ,{ "operations" }
 ,{ "to" }
 ,{ "read" }
 ,{ "the" }
 ,{ "required" }
 ,{ "data." }
 ,{ "It" }
 ,{ "may" }
 ,{ "continue" }
 ,{ "a" }
 ,{ "long" }
 ,{ "time." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "getMaxReadLen()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "maximum" }
 ,{ "read" }
 ,{ "length" }
 ,{ "for" }
 ,{ "a" }
 ,{ "single" }
 ,{ "operation." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "read()" , & fmt_text_b }
 ,{ "starts" }
 ,{ "a" }
 ,{ "single" }
 ,{ "read" }
 ,{ "operation." }
 ,{ "len" , & fmt_text_b }
 ,{ "must" }
 ,{ "not" }
 ,{ "exceed" }
 ,{ "the" }
 ,{ "getMaxReadLen()" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "data" }
 ,{ "can" }
 ,{ "be" }
 ,{ "retrieved" }
 ,{ "in" }
 ,{ "the" }
 ,{ "complete_function" , & fmt_text_b }
 ,{ ":" }
} , & fmt_text , & align_text } ;

Link link_AsyncFileSystem = { & page , { 24 } } ;

Text b24 = { {
 { "AsyncFileSystem" }
} , & fmt_h4 , & align_h4 } ;

Text b25 = { {
 { "This" }
 ,{ "class" }
 ,{ "is" }
 ,{ "built" }
 ,{ "upon" }
 ,{ "the" }
 ,{ "Sys::AsyncFileSystem" , & fmt_text_b }
 ,{ "and" }
 ,{ "can" }
 ,{ "perform" }
 ,{ "file" }
 ,{ "system" }
 ,{ "operations" }
 ,{ "on" }
 ,{ "an" }
 ,{ "async" }
 ,{ "file" }
 ,{ "system" }
 ,{ "device." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "Constructor" }
 ,{ "takes" }
 ,{ "the" }
 ,{ "following" }
 ,{ "arguments:" }
 ,{ "dev_name" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "device" }
 ,{ "name," }
 ,{ "timeout" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "total" }
 ,{ "timeout" }
 ,{ "for" }
 ,{ "all" }
 ,{ "class" }
 ,{ "methods." }
 ,{ "The" }
 ,{ "last" }
 ,{ "constructor" }
 ,{ "argument" }
 ,{ "should" }
 ,{ "have" }
 ,{ "its" }
 ,{ "default" }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "Non-static" }
 ,{ "class" }
 ,{ "methods" }
 ,{ "performs" }
 ,{ "the" }
 ,{ "standard" }
 ,{ "list" }
 ,{ "of" }
 ,{ "file" }
 ,{ "system" }
 ,{ "operations." }
 ,{ "An" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error." }
 ,{ "getFileList()" , & fmt_text_b }
 ,{ "and" }
 ,{ "exec2()" , & fmt_text_b }
 ,{ "uses" }
 ,{ "an" }
 ,{ "external" }
 ,{ "AsyncFile" , & fmt_text_b }
 ,{ "object" }
 ,{ "to" }
 ,{ "open" }
 ,{ "a" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "Static" }
 ,{ "methods" }
 ,{ "do" }
 ,{ "the" }
 ,{ "following:" }
 ,{ "they" }
 ,{ "split" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name" }
 ,{ "(or" }
 ,{ "path)," }
 ,{ "create" }
 ,{ "a" }
 ,{ "temporary" }
 ,{ "AsyncFileSystem" , & fmt_text_b }
 ,{ "object" }
 ,{ "and" }
 ,{ "use" }
 ,{ "it" }
 ,{ "to" }
 ,{ "perform" }
 ,{ "the" }
 ,{ "operation." }
 ,{ "If" }
 ,{ "several" }
 ,{ "file" }
 ,{ "names" }
 ,{ "are" }
 ,{ "involved" }
 ,{ "then" }
 ,{ "its" }
 ,{ "devices" }
 ,{ "must" }
 ,{ "be" }
 ,{ "the" }
 ,{ "same." }
} , & fmt_text , & align_text } ;

Link link_AsyncFileToMem = { & page , { 29 } } ;

Text b29 = { {
 { "AsyncFileToMem" }
} , & fmt_h4 , & align_h4 } ;

Text b30 = { {
 { "This" }
 ,{ "class" }
 ,{ "loads" }
 ,{ "the" }
 ,{ "given" }
 ,{ "file" }
 ,{ "from" }
 ,{ "an" }
 ,{ "async" }
 ,{ "file" }
 ,{ "device" }
 ,{ "to" }
 ,{ "the" }
 ,{ "memory." }
 ,{ "It" }
 ,{ "is" }
 ,{ "derived" }
 ,{ "from" }
 ,{ "the" }
 ,{ "class" }
 ,{ "ToMemBase" , & fmt_text_a , & ..#page_ToMemBase#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "The" }
 ,{ "first" }
 ,{ "constructor" }
 ,{ "takes" }
 ,{ "four" }
 ,{ "arguments." }
 ,{ "It" }
 ,{ "throws" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error." }
 ,{ "The" }
 ,{ "constructor" }
 ,{ "execution" }
 ,{ "may" }
 ,{ "take" }
 ,{ "a" }
 ,{ "time." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "file_name" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name." }
 ,{ "The" }
 ,{ "name" }
 ,{ "is" }
 ,{ "started" }
 ,{ "with" }
 ,{ "the" }
 ,{ "device" }
 ,{ "object" }
 ,{ "name." }
 ,{ "The" }
 ,{ "second" }
 ,{ "argument" }
 ,{ "max_len" , & fmt_text_b }
 ,{ "limits" }
 ,{ "the" }
 ,{ "image" }
 ,{ "length," }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "is" }
 ,{ "greater" }
 ,{ "than" }
 ,{ "this" }
 ,{ "limit," }
 ,{ "an" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown." }
 ,{ "Other" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "propagated" }
 ,{ "to" }
 ,{ "the" }
 ,{ "class" }
 ,{ "AsyncFile" , & fmt_text_b }
 ,{ "," }
 ,{ "which" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "do" }
 ,{ "the" }
 ,{ "job." }
} , & fmt_text , & align_text } ;

Text b32 = { {
 { "The" }
 ,{ "second" }
 ,{ "constructor" }
 ,{ "takes" }
 ,{ "the" }
 ,{ "device" }
 ,{ "name" }
 ,{ "and" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name" }
 ,{ "as" }
 ,{ "first" }
 ,{ "two" }
 ,{ "arguments." }
} , & fmt_text , & align_text } ;

Text b33 = { {
 { "AsyncFileToMem" , & fmt_text_b }
 ,{ "is" }
 ,{ "std" }
 ,{ "movable." }
 ,{ "The" }
 ,{ "original" }
 ,{ "object" }
 ,{ "is" }
 ,{ "nullified" }
 ,{ "during" }
 ,{ "the" }
 ,{ "move." }
} , & fmt_text , & align_text } ;

Text b34 = { {
 { "AsyncFileToMem" , & fmt_text_b }
 ,{ "is" }
 ,{ "swappable" }
 ,{ "and" }
 ,{ "movable." }
} , & fmt_text , & align_text } ;

Link link_PartAsyncFileToMem = { & page , { 35 } } ;

Text b35 = { {
 { "PartAsyncFileToMem" }
} , & fmt_h4 , & align_h4 } ;

Text b36 = { {
 { "PartAsyncFileToMem" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "load" }
 ,{ "parts" }
 ,{ "of" }
 ,{ "a" }
 ,{ "file" }
 ,{ "into" }
 ,{ "a" }
 ,{ "memory" }
 ,{ "buffer." }
 ,{ "This" }
 ,{ "class" }
 ,{ "loads" }
 ,{ "file" }
 ,{ "parts" }
 ,{ "sequentially." }
} , & fmt_text , & align_text } ;

Text b37 = { {
 { "Constructors" }
 ,{ "arguments" }
 ,{ "have" }
 ,{ "the" }
 ,{ "same" }
 ,{ "meaning" }
 ,{ "as" }
 ,{ "the" }
 ,{ "arguments" }
 ,{ "of" }
 ,{ "the" }
 ,{ "AsyncFile" , & fmt_text_b }
 ,{ "constructors." }
} , & fmt_text , & align_text } ;

Text b38 = { {
 { "getFileLen()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "file" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b39 = { {
 { "getCurPos()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "current" }
 ,{ "position." }
} , & fmt_text , & align_text } ;

Text b40 = { {
 { "getRestLen()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file" }
 ,{ "part" }
 ,{ "after" }
 ,{ "the" }
 ,{ "current" }
 ,{ "position." }
} , & fmt_text , & align_text } ;

Text b41 = { {
 { "more()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "iff" }
 ,{ "there" }
 ,{ "is" }
 ,{ "a" }
 ,{ "room" }
 ,{ "after" }
 ,{ "the" }
 ,{ "current" }
 ,{ "position." }
} , & fmt_text , & align_text } ;

Text b42 = { {
 { "read()" , & fmt_text_b }
 ,{ "reads" }
 ,{ "the" }
 ,{ "next" }
 ,{ "file" }
 ,{ "part" }
 ,{ "from" }
 ,{ "the" }
 ,{ "current" }
 ,{ "position" }
 ,{ "up" }
 ,{ "to" }
 ,{ "the" }
 ,{ "end" }
 ,{ "of" }
 ,{ "the" }
 ,{ "buffer" }
 ,{ "or" }
 ,{ "up" }
 ,{ "to" }
 ,{ "the" }
 ,{ "end" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file." }
 ,{ "The" }
 ,{ "part" }
 ,{ "is" }
 ,{ "stored" }
 ,{ "in" }
 ,{ "the" }
 ,{ "internal" }
 ,{ "buffer" }
 ,{ "and" }
 ,{ "the" }
 ,{ "constant" }
 ,{ "range" }
 ,{ "of" }
 ,{ "bytes" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b43 = { {
 { "AsyncFileListToMem" }
} , & fmt_h4 , & align_h4 } ;

Text b44 = { {
 { "This" }
 ,{ "class" }
 ,{ "loads" }
 ,{ "the" }
 ,{ "content" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "directory" }
 ,{ "on" }
 ,{ "an" }
 ,{ "async" }
 ,{ "file" }
 ,{ "device" }
 ,{ "to" }
 ,{ "the" }
 ,{ "memory." }
 ,{ "Then" }
 ,{ "it" }
 ,{ "can" }
 ,{ "iterate" }
 ,{ "through" }
 ,{ "the" }
 ,{ "list." }
} , & fmt_text , & align_text } ;

Text b45 = { {
 { "Constructor" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "similar" }
 ,{ "to" }
 ,{ "the" }
 ,{ "AsyncFileToMem" , & fmt_text_b }
 ,{ "class." }
 ,{ "The" }
 ,{ "second" }
 ,{ "constructor" }
 ,{ "uses" }
 ,{ "existing" }
 ,{ "AsyncFileSystem" , & fmt_text_b }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b46 = { {
 { "next()" , & fmt_text_b }
 ,{ "moves" }
 ,{ "to" }
 ,{ "the" }
 ,{ "next" }
 ,{ "file" }
 ,{ "in" }
 ,{ "the" }
 ,{ "list." }
 ,{ "Initially" }
 ,{ "the" }
 ,{ "current" }
 ,{ "file" }
 ,{ "is" }
 ,{ "\"before" }
 ,{ "the" }
 ,{ "first\"." }
} , & fmt_text , & align_text } ;

Text b47 = { {
 { "getFileName()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "name" }
 ,{ "of" }
 ,{ "the" }
 ,{ "current" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Text b48 = { {
 { "getFileType()" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "type" }
 ,{ "of" }
 ,{ "the" }
 ,{ "current" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Text b49 = { {
 { "apply()" , & fmt_text_b }
 ,{ "applies" }
 ,{ "the" }
 ,{ "given" }
 ,{ "functor" }
 ,{ "on" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name" }
 ,{ "list." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> AsyncFile Clients" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_text , outer_text , back_text }
 ,{ & b32 , null , inner_text , outer_text , back_text }
 ,{ & b33 , null , inner_text , outer_text , back_text }
 ,{ & b34 , null , inner_text , outer_text , back_text }
 ,{ & b35 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b36 , null , inner_text , outer_text , back_text }
 ,{ & b37 , null , inner_text , outer_text , back_text }
 ,{ & b38 , null , inner_text , outer_text , back_text }
 ,{ & b39 , null , inner_text , outer_text , back_text }
 ,{ & b40 , null , inner_text , outer_text , back_text }
 ,{ & b41 , null , inner_text , outer_text , back_text }
 ,{ & b42 , null , inner_text , outer_text , back_text }
 ,{ & b43 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b44 , null , inner_text , outer_text , back_text }
 ,{ & b45 , null , inner_text , outer_text , back_text }
 ,{ & b46 , null , inner_text , outer_text , back_text }
 ,{ & b47 , null , inner_text , outer_text , back_text }
 ,{ & b48 , null , inner_text , outer_text , back_text }
 ,{ & b49 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_AsyncBinaryFile#page , & page_AsyncFileDevice#page };

Link link = { &page } ;

}

scope page_AsyncFileDevice {

Text b0 = { {
 { "AsyncFileDevice" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/AsyncFileDevice.h" , & fmt_text_Files_b }
 ,{ "CCore/src/AsyncFileDevice.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "AsyncFileDevice" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "async" }
 ,{ "file" }
 ,{ "device" }
 ,{ "(" }
 ,{ "AsyncFile" , & fmt_text_a , & ..#page_AsyncFiles#link }
 ,{ ")." }
 ,{ "It" }
 ,{ "performs" }
 ,{ "operations" }
 ,{ "on" }
 ,{ "the" }
 ,{ "local" }
 ,{ "file" }
 ,{ "system." }
 ,{ "You" }
 ,{ "may" }
 ,{ "create" }
 ,{ "an" }
 ,{ "object" }
 ,{ "of" }
 ,{ "this" }
 ,{ "class" }
 ,{ "and" }
 ,{ "register" }
 ,{ "it" }
 ,{ "in" }
 ,{ "the" }
 ,{ "default" }
 ,{ "object" , & fmt_text_a , & ..#page_ObjectHost#link }
 ,{ "register" , & fmt_text_a , & ..#page_ObjectHost#link }
 ,{ "." }
 ,{ "After" }
 ,{ "this" }
 ,{ "you" }
 ,{ "can" }
 ,{ "use" }
 ,{ "classes" }
 ,{ "for" }
 ,{ "async" }
 ,{ "file" }
 ,{ "input-output" }
 ,{ "like" }
 ,{ "PrintAsyncFile" , & fmt_text_a , & ..#page_PrintDevice#link_PrintAsyncFile }
 ,{ "to" }
 ,{ "work" }
 ,{ "with" }
 ,{ "files." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "This" }
 ,{ "class" }
 ,{ "is" }
 ,{ "implemented" }
 ,{ "upon" }
 ,{ "the" }
 ,{ "target" }
 ,{ "classes" }
 ,{ "Sys::AltAsyncFile" , & fmt_text_b }
 ,{ "and" }
 ,{ "Sys::AsyncFileWait" , & fmt_text_b }
 ,{ "," }
 ,{ "declared" }
 ,{ "in" }
 ,{ "the" }
 ,{ "header" }
 ,{ "sys/SysFile.h" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> AsyncFileDevice" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_AsyncFileClients#page , & page_AsyncFiles#page };

Link link = { &page } ;

}

scope page_AsyncFiles {

Text b0 = { {
 { "Async" }
 ,{ "Files" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysAsyncFile.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysAsyncFile.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysAsyncFileSystem.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysAsyncFileSystem.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b3 = { {
 { "Async" }
 ,{ "file" }
 ,{ "and" }
 ,{ "file" }
 ,{ "system" }
 ,{ "devices" }
 ,{ "are" }
 ,{ "packet" }
 ,{ "processing" }
 ,{ "devices," }
 ,{ "that" }
 ,{ "performs" }
 ,{ "file" }
 ,{ "and" }
 ,{ "file" }
 ,{ "system" }
 ,{ "operations" }
 ,{ "in" }
 ,{ "asynchronous" }
 ,{ "manner." }
 ,{ "To" }
 ,{ "be" }
 ,{ "used," }
 ,{ "the" }
 ,{ "device" }
 ,{ "must" }
 ,{ "be" }
 ,{ "registered" }
 ,{ "in" }
 ,{ "the" }
 ,{ "default" }
 ,{ "Object" , & fmt_text_a , & ..#page_ObjectHost#link }
 ,{ "Host" , & fmt_text_a , & ..#page_ObjectHost#link }
 ,{ "." }
 ,{ "The" }
 ,{ "name" }
 ,{ "of" }
 ,{ "the" }
 ,{ "object" }
 ,{ "must" }
 ,{ "be" }
 ,{ "used" }
 ,{ "as" }
 ,{ "a" }
 ,{ "device" }
 ,{ "name" }
 ,{ "in" }
 ,{ "file" }
 ,{ "names" }
 ,{ "on" }
 ,{ "that" }
 ,{ "device." }
 ,{ "For" }
 ,{ "example," }
 ,{ "if" }
 ,{ "some" }
 ,{ "object" }
 ,{ "is" }
 ,{ "registered" }
 ,{ "under" }
 ,{ "the" }
 ,{ "name" }
 ,{ "\"host\"" , & fmt_text_b }
 ,{ "," }
 ,{ "the" }
 ,{ "file" }
 ,{ "name" }
 ,{ "\"host:/file.txt\"" , & fmt_text_b }
 ,{ "refers" }
 ,{ "to" }
 ,{ "the" }
 ,{ "file" }
 ,{ "\"/file.txt\"" , & fmt_text_b }
 ,{ "on" }
 ,{ "that" }
 ,{ "device" }
 ,{ "or" }
 ,{ "\"host:c:/file.txt\"" , & fmt_text_b }
 ,{ "refers" }
 ,{ "to" }
 ,{ "\"c:/file.txt\"" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Sys::AsyncFileDevice" }
} , & fmt_h4 , & align_h4 } ;

Text b5 = { {
 { "Sys::AsyncFileDevice" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "abstract" }
 ,{ "interface" }
 ,{ "of" }
 ,{ "an" }
 ,{ "async" }
 ,{ "file" }
 ,{ "device." }
 ,{ "An" }
 ,{ "async" }
 ,{ "file" }
 ,{ "device" }
 ,{ "class" }
 ,{ "must" }
 ,{ "implement" }
 ,{ "this" }
 ,{ "interface." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "To" }
 ,{ "work" }
 ,{ "with" }
 ,{ "a" }
 ,{ "file," }
 ,{ "a" }
 ,{ "file" }
 ,{ "state" }
 ,{ "object" }
 ,{ "must" }
 ,{ "be" }
 ,{ "created." }
 ,{ "The" }
 ,{ "class" }
 ,{ "of" }
 ,{ "this" }
 ,{ "object" }
 ,{ "must" }
 ,{ "implement" }
 ,{ "the" }
 ,{ "Sys::AsyncFileState" , & fmt_text_b }
 ,{ "interface." }
 ,{ "A" }
 ,{ "state" }
 ,{ "is" }
 ,{ "created" }
 ,{ "by" }
 ,{ "the" }
 ,{ "createState()" , & fmt_text_b }
 ,{ "method." }
 ,{ "A" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "Sys::AsyncFileState" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
 ,{ "If" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "failed," }
 ,{ "null" }
 ,{ "pointer" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "hook" , & fmt_text_b }
 ,{ "should" }
 ,{ "be" }
 ,{ "a" }
 ,{ "hook," }
 ,{ "which" }
 ,{ "was" }
 ,{ "used" }
 ,{ "to" }
 ,{ "pick" }
 ,{ "the" }
 ,{ "device" }
 ,{ "object" }
 ,{ "(or" }
 ,{ "a" }
 ,{ "hook" }
 ,{ "to" }
 ,{ "an" }
 ,{ "\"upper\"" }
 ,{ "object)." }
 ,{ "It" }
 ,{ "is" }
 ,{ "used" }
 ,{ "for" }
 ,{ "the" }
 ,{ "life-time" }
 ,{ "control" }
 ,{ "of" }
 ,{ "the" }
 ,{ "device" }
 ,{ "object" }
 ,{ "itself" }
 ,{ "to" }
 ,{ "prevent" }
 ,{ "its" }
 ,{ "destruction" }
 ,{ "while" }
 ,{ "one" }
 ,{ "of" }
 ,{ "states" }
 ,{ "is" }
 ,{ "alive." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "Sys::AsyncFileState" , & fmt_text_b }
 ,{ "contains" }
 ,{ "inside" }
 ,{ "a" }
 ,{ "copy" }
 ,{ "of" }
 ,{ "the" }
 ,{ "hook," }
 ,{ "provided" }
 ,{ "to" }
 ,{ "the" }
 ,{ "method" }
 ,{ "createState()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "Destructor" }
 ,{ "is" }
 ,{ "virtual," }
 ,{ "so" }
 ,{ "it" }
 ,{ "is" }
 ,{ "safe" }
 ,{ "to" }
 ,{ "destroy" }
 ,{ "an" }
 ,{ "object" }
 ,{ "using" }
 ,{ "a" }
 ,{ "base" }
 ,{ "class" }
 ,{ "pointer." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "Two" }
 ,{ "data" }
 ,{ "fields:" }
 ,{ "write_format" , & fmt_text_b }
 ,{ "and" }
 ,{ "max_read_len" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "filled" }
 ,{ "by" }
 ,{ "a" }
 ,{ "derived" }
 ,{ "class." }
 ,{ "These" }
 ,{ "fields" }
 ,{ "can" }
 ,{ "be" }
 ,{ "red" }
 ,{ "by" }
 ,{ "the" }
 ,{ "methods" }
 ,{ "getWriteFormat()" , & fmt_text_b }
 ,{ "and" }
 ,{ "getMaxReadLen()" , & fmt_text_b }
 ,{ "." }
 ,{ "File" }
 ,{ "operations" }
 ,{ "are" }
 ,{ "performed" }
 ,{ "with" }
 ,{ "the" }
 ,{ "following" }
 ,{ "abstract" }
 ,{ "methods." }
 ,{ "Each" }
 ,{ "operation" }
 ,{ "requires" }
 ,{ "a" }
 ,{ "packet" }
 ,{ "to" }
 ,{ "be" }
 ,{ "prepared" }
 ,{ "and" }
 ,{ "provided." }
 ,{ "A" }
 ,{ "method" }
 ,{ "starts" }
 ,{ "an" }
 ,{ "operation," }
 ,{ "using" }
 ,{ "this" }
 ,{ "packet." }
 ,{ "Once" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "complete," }
 ,{ "the" }
 ,{ "packet" }
 ,{ "is" }
 ,{ "completed" }
 ,{ "and" }
 ,{ "the" }
 ,{ "result" }
 ,{ "of" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "can" }
 ,{ "be" }
 ,{ "retrieved." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "can" }
 ,{ "be" }
 ,{ "cancelled" }
 ,{ "to" }
 ,{ "cancel" }
 ,{ "the" }
 ,{ "operation." }
 ,{ "A" }
 ,{ "packet" }
 ,{ "must" }
 ,{ "not" }
 ,{ "be" }
 ,{ "short," }
 ,{ "its" }
 ,{ "data" }
 ,{ "buffer" }
 ,{ "may" , & fmt_text_b }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "perform" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "(and" }
 ,{ "may" }
 ,{ "not)." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "open()" , & fmt_text_b }
 ,{ "opens" }
 ,{ "a" }
 ,{ "file." }
 ,{ "Once" }
 ,{ "this" }
 ,{ "is" }
 ,{ "done," }
 ,{ "read" }
 ,{ "and" }
 ,{ "write" }
 ,{ "operations" }
 ,{ "can" }
 ,{ "be" }
 ,{ "performed" }
 ,{ "with" }
 ,{ "this" }
 ,{ "file." }
 ,{ "Packet" }
 ,{ "data" }
 ,{ "are" }
 ,{ "not" }
 ,{ "required" }
 ,{ "(but" }
 ,{ "packet" }
 ,{ "buffer" }
 ,{ "may" }
 ,{ "be" }
 ,{ "used)." }
 ,{ "File" }
 ,{ "name" }
 ,{ "and" }
 ,{ "open" }
 ,{ "flags" }
 ,{ "are" }
 ,{ "provided" }
 ,{ "as" }
 ,{ "the" }
 ,{ "method" }
 ,{ "arguments." }
 ,{ "An" }
 ,{ "implementation" }
 ,{ "may" }
 ,{ "use" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "buffer" }
 ,{ "to" }
 ,{ "store" }
 ,{ "and" }
 ,{ "transfer" }
 ,{ "this" }
 ,{ "information" }
 ,{ "further," }
 ,{ "for" }
 ,{ "example," }
 ,{ "over" }
 ,{ "a" }
 ,{ "network." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "Sys::AsyncFile::OpenExt" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "return" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "result:" }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "The" }
 ,{ "open" }
 ,{ "operation" }
 ,{ "should" }
 ,{ "use" }
 ,{ "provided" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "fill" }
 ,{ "the" }
 ,{ "result" }
 ,{ "of" }
 ,{ "the" }
 ,{ "operation." }
 ,{ "First" }
 ,{ "two" }
 ,{ "fields" }
 ,{ "are" }
 ,{ "not" }
 ,{ "used" }
 ,{ "to" }
 ,{ "return" }
 ,{ "a" }
 ,{ "value," }
 ,{ "but" }
 ,{ "should" }
 ,{ "be" }
 ,{ "cleared" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error." }
 ,{ "These" }
 ,{ "fields" }
 ,{ "are" }
 ,{ "filled" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "Sys::AsyncFile::open()" , & fmt_text_b }
 ,{ "before" }
 ,{ "the" }
 ,{ "Sys::AsyncFileState::open()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "close()" , & fmt_text_b }
 ,{ "closes" }
 ,{ "the" }
 ,{ "opened" }
 ,{ "file." }
 ,{ "preserve_file" , & fmt_text_b }
 ,{ "cancels" }
 ,{ "the" }
 ,{ "Open_AutoDelete" , & fmt_text_b }
 ,{ "flag." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "must" }
 ,{ "be" }
 ,{ "performed" }
 ,{ "after" }
 ,{ "all" }
 ,{ "read/write" }
 ,{ "operations" }
 ,{ "on" }
 ,{ "this" }
 ,{ "state" }
 ,{ "are" }
 ,{ "completed." }
 ,{ "Once" }
 ,{ "close" }
 ,{ "is" }
 ,{ "done," }
 ,{ "the" }
 ,{ "state" }
 ,{ "can" }
 ,{ "be" }
 ,{ "deleted." }
 ,{ "State" }
 ,{ "deletion," }
 ,{ "while" }
 ,{ "file" }
 ,{ "is" }
 ,{ "not" }
 ,{ "closed," }
 ,{ "is" }
 ,{ "not" }
 ,{ "recommended" }
 ,{ "(but" }
 ,{ "not" }
 ,{ "completely" }
 ,{ "avoidable)." }
 ,{ "Packet" }
 ,{ "data" }
 ,{ "are" }
 ,{ "not" }
 ,{ "required" }
 ,{ "(but" }
 ,{ "packet" }
 ,{ "buffer" }
 ,{ "may" }
 ,{ "be" }
 ,{ "used)." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "Sys::AsyncFile::CloseExt" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "return" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "result:" }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "write()" , & fmt_text_b }
 ,{ "writes" }
 ,{ "data" }
 ,{ "to" }
 ,{ "the" }
 ,{ "file" }
 ,{ "at" }
 ,{ "the" }
 ,{ "given" }
 ,{ "file" }
 ,{ "position." }
 ,{ "Packet" }
 ,{ "data" }
 ,{ "are" }
 ,{ "processed" }
 ,{ "according" }
 ,{ "the" }
 ,{ "write_format" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "Sys::AsyncFile::WriteExt" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "return" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "result:" }
 ,{ "file_len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "file" }
 ,{ "length" }
 ,{ "after" }
 ,{ "this" }
 ,{ "operation." }
 ,{ "Multiple" }
 ,{ "write" }
 ,{ "operation" }
 ,{ "may" }
 ,{ "overlap," }
 ,{ "but" }
 ,{ "the" }
 ,{ "file_len" , & fmt_text_b }
 ,{ "result" }
 ,{ "must" }
 ,{ "be" }
 ,{ "reported" }
 ,{ "as" }
 ,{ "if" }
 ,{ "these" }
 ,{ "operations" }
 ,{ "execution" }
 ,{ "is" }
 ,{ "serialized." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "There" }
 ,{ "are" }
 ,{ "two" }
 ,{ "read()" , & fmt_text_b }
 ,{ "methods." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "The" }
 ,{ "first" }
 ,{ "read()" , & fmt_text_b }
 ,{ "passes" }
 ,{ "the" }
 ,{ "read" }
 ,{ "buffer" }
 ,{ "pointer" }
 ,{ "as" }
 ,{ "the" }
 ,{ "argument." }
 ,{ "The" }
 ,{ "file" }
 ,{ "position" }
 ,{ "and" }
 ,{ "the" }
 ,{ "read" }
 ,{ "buffer" }
 ,{ "are" }
 ,{ "input" }
 ,{ "parameters" }
 ,{ "and" }
 ,{ "preserved" }
 ,{ "on" }
 ,{ "output," }
 ,{ "so" }
 ,{ "you" }
 ,{ "can" }
 ,{ "use" }
 ,{ "them" }
 ,{ "in" }
 ,{ "a" }
 ,{ "complete" }
 ,{ "function." }
 ,{ "Buffer" }
 ,{ "must" }
 ,{ "be" }
 ,{ "red" }
 ,{ "all," }
 ,{ "otherwise" }
 ,{ "error" }
 ,{ "must" }
 ,{ "be" }
 ,{ "reported." }
 ,{ "Packet" }
 ,{ "data" }
 ,{ "are" }
 ,{ "not" }
 ,{ "required" }
 ,{ "(but" }
 ,{ "packet" }
 ,{ "buffer" }
 ,{ "may" }
 ,{ "be" }
 ,{ "used)." }
 ,{ "The" }
 ,{ "read" }
 ,{ "length" }
 ,{ "must" }
 ,{ "not" }
 ,{ "exceed" }
 ,{ "the" }
 ,{ "max_read_len" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "The" }
 ,{ "second" }
 ,{ "read()" , & fmt_text_b }
 ,{ "passes" }
 ,{ "only" }
 ,{ "the" }
 ,{ "read" }
 ,{ "length." }
 ,{ "The" }
 ,{ "file" }
 ,{ "position" }
 ,{ "and" }
 ,{ "the" }
 ,{ "read" }
 ,{ "length" }
 ,{ "are" }
 ,{ "input" }
 ,{ "parameters" }
 ,{ "and" }
 ,{ "preserved" }
 ,{ "on" }
 ,{ "output," }
 ,{ "so" }
 ,{ "you" }
 ,{ "can" }
 ,{ "use" }
 ,{ "them" }
 ,{ "in" }
 ,{ "a" }
 ,{ "complete" }
 ,{ "function." }
 ,{ "Data" }
 ,{ "must" }
 ,{ "be" }
 ,{ "red" }
 ,{ "all," }
 ,{ "otherwise" }
 ,{ "error" }
 ,{ "must" }
 ,{ "be" }
 ,{ "reported." }
 ,{ "Packet" }
 ,{ "buffer" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "deliver" }
 ,{ "data," }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "data" , & fmt_text_b }
 ,{ "points" }
 ,{ "somewhere" }
 ,{ "inside" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "buffer." }
 ,{ "Packet" }
 ,{ "buffer" }
 ,{ "may" }
 ,{ "be" }
 ,{ "reattached" }
 ,{ "to" }
 ,{ "store" }
 ,{ "the" }
 ,{ "required" }
 ,{ "volume" }
 ,{ "of" }
 ,{ "data." }
 ,{ "The" }
 ,{ "read" }
 ,{ "length" }
 ,{ "must" }
 ,{ "not" }
 ,{ "exceed" }
 ,{ "the" }
 ,{ "max_read_len" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "Sys::AsyncFile" }
} , & fmt_h4 , & align_h4 } ;

Text b18 = { {
 { "The" }
 ,{ "class" }
 ,{ "Sys::AsyncFile" , & fmt_text_b }
 ,{ "is" }
 ,{ "to" }
 ,{ "deal" }
 ,{ "with" }
 ,{ "a" }
 ,{ "single" }
 ,{ "file" }
 ,{ "on" }
 ,{ "some" }
 ,{ "async" }
 ,{ "file" }
 ,{ "device." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "Sys::AsyncFile" , & fmt_text_b }
 ,{ "operates" }
 ,{ "on" }
 ,{ "some" }
 ,{ "Sys::AsyncFileState" , & fmt_text_b }
 ,{ "." }
 ,{ "Most" }
 ,{ "of" }
 ,{ "operations" }
 ,{ "are" }
 ,{ "a" }
 ,{ "call" }
 ,{ "propagation" }
 ,{ "to" }
 ,{ "the" }
 ,{ "Sys::AsyncFileState" , & fmt_text_b }
 ,{ "methods." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "closeState()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "state." }
 ,{ "It" }
 ,{ "must" }
 ,{ "be" }
 ,{ "called" }
 ,{ "after" }
 ,{ "close()" , & fmt_text_b }
 ,{ "or" }
 ,{ "failed" }
 ,{ "open()" , & fmt_text_b }
 ,{ "to" }
 ,{ "cleanup" }
 ,{ "the" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "There" }
 ,{ "are" }
 ,{ "three" }
 ,{ "open()" , & fmt_text_b }
 ,{ "operation." }
 ,{ "First" }
 ,{ "is" }
 ,{ "a" }
 ,{ "simple" }
 ,{ "initialization" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "state" }
 ,{ "and" }
 ,{ "open" }
 ,{ "flags." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "The" }
 ,{ "second" }
 ,{ "open()" , & fmt_text_b }
 ,{ "splits" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name," }
 ,{ "searches" }
 ,{ "for" }
 ,{ "the" }
 ,{ "async" }
 ,{ "file" }
 ,{ "device" }
 ,{ "and" }
 ,{ "opens" }
 ,{ "the" }
 ,{ "file" }
 ,{ "on" }
 ,{ "this" }
 ,{ "device." }
 ,{ "It" }
 ,{ "also" }
 ,{ "fills" }
 ,{ "OpenExt" , & fmt_text_b }
 ,{ "fields," }
 ,{ "write_format" , & fmt_text_b }
 ,{ "and" }
 ,{ "max_read_len" , & fmt_text_b }
 ,{ "to" }
 ,{ "return" }
 ,{ "these" }
 ,{ "values" }
 ,{ "with" }
 ,{ "the" }
 ,{ "packet." }
 ,{ "If" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name" }
 ,{ "is" }
 ,{ "\"host:c:/file.txt\"" , & fmt_text_b }
 ,{ "," }
 ,{ "the" }
 ,{ "the" }
 ,{ "device" }
 ,{ "with" }
 ,{ "the" }
 ,{ "name" }
 ,{ "\"host\"" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "and" }
 ,{ "the" }
 ,{ "file" }
 ,{ "with" }
 ,{ "the" }
 ,{ "name" }
 ,{ "\"c:/file.txt\"" , & fmt_text_b }
 ,{ "will" }
 ,{ "be" }
 ,{ "opened" }
 ,{ "on" }
 ,{ "this" }
 ,{ "device." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "The" }
 ,{ "third" }
 ,{ "open()" , & fmt_text_b }
 ,{ "works" }
 ,{ "the" }
 ,{ "same" }
 ,{ "as" }
 ,{ "the" }
 ,{ "second," }
 ,{ "except" }
 ,{ "it" }
 ,{ "takes" }
 ,{ "the" }
 ,{ "device" }
 ,{ "name" }
 ,{ "and" }
 ,{ "the" }
 ,{ "device" }
 ,{ "path" }
 ,{ "as" }
 ,{ "two" }
 ,{ "arguments." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "Sys::AsyncFileSystemDevice" }
} , & fmt_h4 , & align_h4 } ;

Text b25 = { {
 { "Sys::AsyncFileSystemDevice" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "abstract" }
 ,{ "interface" }
 ,{ "of" }
 ,{ "an" }
 ,{ "async" }
 ,{ "file" }
 ,{ "system" }
 ,{ "device." }
 ,{ "See" }
 ,{ "Files" , & fmt_text_a , & ..#page_Files#link_FSO }
 ,{ "for" }
 ,{ "the" }
 ,{ "generic" }
 ,{ "file" }
 ,{ "system" }
 ,{ "operation" }
 ,{ "list." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "The" }
 ,{ "number" }
 ,{ "of" }
 ,{ "file" }
 ,{ "system" }
 ,{ "operations" }
 ,{ "can" }
 ,{ "be" }
 ,{ "performed" }
 ,{ "asynchronously" }
 ,{ "using" }
 ,{ "packets" }
 ,{ "on" }
 ,{ "this" }
 ,{ "device." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "buffer" }
 ,{ "is" }
 ,{ "not" }
 ,{ "used" }
 ,{ "for" }
 ,{ "operation" }
 ,{ "parameters," }
 ,{ "but" }
 ,{ "may" }
 ,{ "be" }
 ,{ "used" }
 ,{ "by" }
 ,{ "an" }
 ,{ "implementation," }
 ,{ "so" }
 ,{ "packets" }
 ,{ "must" }
 ,{ "not" }
 ,{ "be" }
 ,{ "short." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "getFileType()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "file" }
 ,{ "type" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file," }
 ,{ "specified" }
 ,{ "by" }
 ,{ "the" }
 ,{ "path" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "Sys::AsyncFileSystem::FileTypeExt" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "return" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "result:" }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "getFileUpdateTime()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "last" }
 ,{ "modification" }
 ,{ "time" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file" }
 ,{ "or" }
 ,{ "directory," }
 ,{ "specified" }
 ,{ "by" }
 ,{ "the" }
 ,{ "path" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "Sys::AsyncFileSystem::CmpFileTimeExt" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "return" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "result:" }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "createFile()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "the" }
 ,{ "empty" }
 ,{ "file" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "file_name" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "Sys::AsyncFileSystem::ErrorExt" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "return" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "result:" }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "deleteFile()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "file" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "file_name" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "Sys::AsyncFileSystem::ErrorExt" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "return" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "result." }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "createDir()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "the" }
 ,{ "empty" }
 ,{ "directory" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "dir_name" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "Sys::AsyncFileSystem::ErrorExt" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "return" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "result." }
} , & fmt_text , & align_text } ;

Text b32 = { {
 { "deleteDir()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "dir_name" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "the" }
 ,{ "recursive" , & fmt_text_b }
 ,{ "flag" }
 ,{ "is" }
 ,{ "false" , & fmt_text_b }
 ,{ "," }
 ,{ "the" }
 ,{ "directory" }
 ,{ "must" }
 ,{ "be" }
 ,{ "empty." }
 ,{ "Otherwise" }
 ,{ "it" }
 ,{ "is" }
 ,{ "deleted" }
 ,{ "with" }
 ,{ "the" }
 ,{ "all" }
 ,{ "content" }
 ,{ "recursively." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "Sys::AsyncFileSystem::ErrorExt" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "return" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "result." }
} , & fmt_text , & align_text } ;

Text b33 = { {
 { "rename()" , & fmt_text_b }
 ,{ "renames" }
 ,{ "or" }
 ,{ "moves" }
 ,{ "the" }
 ,{ "file" }
 ,{ "of" }
 ,{ "directory." }
 ,{ "The" }
 ,{ "allow_overwrite" , & fmt_text_b }
 ,{ "flag" }
 ,{ "allows" }
 ,{ "overwriting" }
 ,{ "the" }
 ,{ "existing" }
 ,{ "file." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "Sys::AsyncFileSystem::ErrorExt" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "return" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "result." }
} , & fmt_text , & align_text } ;

Text b34 = { {
 { "remove()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "ether" }
 ,{ "the" }
 ,{ "existing" }
 ,{ "file" }
 ,{ "or" }
 ,{ "the" }
 ,{ "existing" }
 ,{ "empty" }
 ,{ "directory." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "Sys::AsyncFileSystem::ErrorExt" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "return" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "result." }
} , & fmt_text , & align_text } ;

Text b35 = { {
 { "exec()" , & fmt_text_b }
 ,{ "execute" }
 ,{ "a" }
 ,{ "program" }
 ,{ "on" }
 ,{ "the" }
 ,{ "target" }
 ,{ "device" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "working" }
 ,{ "directory" }
 ,{ "dir" , & fmt_text_b }
 ,{ "," }
 ,{ "the" }
 ,{ "program" }
 ,{ "path" }
 ,{ "program" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "program" }
 ,{ "arguments" }
 ,{ "arg" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "Sys::AsyncFileSystem::ErrorExt" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "return" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "result." }
} , & fmt_text , & align_text } ;

Text b36 = { {
 { "Remaining" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "special:" }
 ,{ "they" }
 ,{ "create" }
 ,{ "temporary" }
 ,{ "\"files\"" }
 ,{ "to" }
 ,{ "perform" }
 ,{ "the" }
 ,{ "operation." }
 ,{ "Files" }
 ,{ "are" }
 ,{ "represented" }
 ,{ "by" }
 ,{ "the" }
 ,{ "Sys::AsyncFileState" , & fmt_text_b }
 ,{ "interface." }
 ,{ "The" }
 ,{ "return" }
 ,{ "object" }
 ,{ "is" }
 ,{ "already" }
 ,{ "opened," }
 ,{ "so" }
 ,{ "you" }
 ,{ "can" }
 ,{ "perform" }
 ,{ "file" }
 ,{ "operations" }
 ,{ "on" }
 ,{ "it." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "Sys::AsyncFileSystem::FileExt" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "return" }
 ,{ "a" }
 ,{ "result." }
} , & fmt_text , & align_text } ;

Text b37 = { {
 { "getFileList()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "read-only" }
 ,{ "file" }
 ,{ "with" }
 ,{ "the" }
 ,{ "content" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "directory." }
 ,{ "The" }
 ,{ "file" }
 ,{ "has" }
 ,{ "number" }
 ,{ "of" }
 ,{ "lines," }
 ,{ "each" }
 ,{ "line" }
 ,{ "starts" }
 ,{ "with" }
 ,{ "a" }
 ,{ "file" }
 ,{ "or" }
 ,{ "directory" }
 ,{ "name," }
 ,{ "then" }
 ,{ "space," }
 ,{ "then" }
 ,{ "'f'" }
 ,{ "for" }
 ,{ "a" }
 ,{ "file" }
 ,{ "or" }
 ,{ "'d'" }
 ,{ "for" }
 ,{ "a" }
 ,{ "directory." }
 ,{ "End" }
 ,{ "of" }
 ,{ "line" }
 ,{ "symbol" }
 ,{ "is" }
 ,{ "'\\n'." }
} , & fmt_text , & align_text } ;

Text b38 = { {
 { "exec2()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "an" }
 ,{ "empty" }
 ,{ "temporary" }
 ,{ "write-only" }
 ,{ "file." }
 ,{ "This" }
 ,{ "file" }
 ,{ "should" }
 ,{ "be" }
 ,{ "filled" }
 ,{ "with" }
 ,{ "program" }
 ,{ "arguments." }
 ,{ "To" }
 ,{ "start" }
 ,{ "a" }
 ,{ "program," }
 ,{ "the" }
 ,{ "file" }
 ,{ "must" }
 ,{ "be" }
 ,{ "closed" }
 ,{ "with" }
 ,{ "the" }
 ,{ "preserve_file" , & fmt_text_b }
 ,{ "equals" }
 ,{ "true" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b39 = { {
 { "Sys::AsyncFileSystem" }
} , & fmt_h4 , & align_h4 } ;

Text b40 = { {
 { "The" }
 ,{ "class" }
 ,{ "Sys::AsyncFileSystem" , & fmt_text_b }
 ,{ "is" }
 ,{ "to" }
 ,{ "work" }
 ,{ "with" }
 ,{ "some" }
 ,{ "async" }
 ,{ "file" }
 ,{ "system" }
 ,{ "device." }
} , & fmt_text , & align_text } ;

Text b41 = { {
 { "init()" , & fmt_text_b }
 ,{ "connects" }
 ,{ "the" }
 ,{ "object" }
 ,{ "with" }
 ,{ "the" }
 ,{ "device" }
 ,{ "by" }
 ,{ "its" }
 ,{ "name." }
} , & fmt_text , & align_text } ;

Text b42 = { {
 { "exit()" , & fmt_text_b }
 ,{ "cleans" }
 ,{ "the" }
 ,{ "object," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "called" }
 ,{ "after" }
 ,{ "all" }
 ,{ "operations" }
 ,{ "are" }
 ,{ "completed" }
 ,{ "on" }
 ,{ "the" }
 ,{ "connected" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b43 = { {
 { "Other" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "direct" }
 ,{ "calls" }
 ,{ "of" }
 ,{ "Sys::AsyncFileSystemDevice" , & fmt_text_b }
 ,{ "methods." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Async Files" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_text , outer_text , back_text }
 ,{ & b32 , null , inner_text , outer_text , back_text }
 ,{ & b33 , null , inner_text , outer_text , back_text }
 ,{ & b34 , null , inner_text , outer_text , back_text }
 ,{ & b35 , null , inner_text , outer_text , back_text }
 ,{ & b36 , null , inner_text , outer_text , back_text }
 ,{ & b37 , null , inner_text , outer_text , back_text }
 ,{ & b38 , null , inner_text , outer_text , back_text }
 ,{ & b39 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b40 , null , inner_text , outer_text , back_text }
 ,{ & b41 , null , inner_text , outer_text , back_text }
 ,{ & b42 , null , inner_text , outer_text , back_text }
 ,{ & b43 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_AsyncFileDevice#page , & page_AsyncUDPDevice#page };

Link link = { &page } ;

}

scope page_AsyncUDPDevice {

Text b0 = { {
 { "(HCore)" }
 ,{ "AsyncUDPDevice" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/net/AsyncUDPDevice.h" , & fmt_text_Files_b }
 ,{ "CCore/src/net/AsyncUDPDevice.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "HCore" , & fmt_text_b }
 ,{ "has" }
 ,{ "another" }
 ,{ "two" }
 ,{ "UDP" }
 ,{ "endpoint" }
 ,{ "device" }
 ,{ "classes." }
 ,{ "They" }
 ,{ "are" }
 ,{ "built" }
 ,{ "on" }
 ,{ "OS" }
 ,{ "asynchronous" }
 ,{ "socket" }
 ,{ "functions." }
 ,{ "These" }
 ,{ "devices" }
 ,{ "implement" }
 ,{ "packet" }
 ,{ "communication" }
 ,{ "using" }
 ,{ "UDP" }
 ,{ "protocol." }
 ,{ "They" }
 ,{ "are" }
 ,{ "similar" }
 ,{ "in" }
 ,{ "usage" }
 ,{ "to" }
 ,{ "the" }
 ,{ "UDPDevice" , & fmt_text_a , & ..#page_UDPDevice#link }
 ,{ "classes." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "AsyncUDPEndpointDevice" }
} , & fmt_h4 , & align_h4 } ;

Text b4 = { {
 { "The" }
 ,{ "class" }
 ,{ "AsyncUDPEndpointDevice" , & fmt_text_b }
 ,{ "implements" }
 ,{ "the" }
 ,{ "PacketEndpointDevice" , & fmt_text_b }
 ,{ "interface" }
 ,{ "and" }
 ,{ "the" }
 ,{ "PortManager" , & fmt_text_b }
 ,{ "interface." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "The" }
 ,{ "first" }
 ,{ "constructor" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "local" }
 ,{ "UDP" }
 ,{ "port," }
 ,{ "the" }
 ,{ "second" }
 ,{ "is" }
 ,{ "the" }
 ,{ "UDP" }
 ,{ "address" }
 ,{ "(IP" }
 ,{ "address+UDP" }
 ,{ "port)" }
 ,{ "of" }
 ,{ "the" }
 ,{ "communication" }
 ,{ "peer." }
 ,{ "max_packets" , & fmt_text_b }
 ,{ "limits" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "usage" }
 ,{ "for" }
 ,{ "the" }
 ,{ "inbound" }
 ,{ "processing." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "getPort()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "local" }
 ,{ "port." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "getDst()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "peer" }
 ,{ "UDP" }
 ,{ "address." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "getStat()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "device" }
 ,{ "statistic." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "Other" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "the" }
 ,{ "PacketEndpointDevice" , & fmt_text_b }
 ,{ "interface" }
 ,{ "implementation" }
 ,{ "and" }
 ,{ "the" }
 ,{ "PortManager" , & fmt_text_b }
 ,{ "interface" }
 ,{ "implementation." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "The" }
 ,{ "inner" }
 ,{ "class" }
 ,{ "StartStop" , & fmt_text_b }
 ,{ "should" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "activate" }
 ,{ "the" }
 ,{ "object" }
 ,{ "of" }
 ,{ "this" }
 ,{ "class." }
 ,{ "You" }
 ,{ "cannot" }
 ,{ "attach" }
 ,{ "an" }
 ,{ "inbound" }
 ,{ "processor" }
 ,{ "(or" }
 ,{ "detach" }
 ,{ "it)" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "while" }
 ,{ "it" }
 ,{ "is" }
 ,{ "running." }
 ,{ "So" }
 ,{ "attach" }
 ,{ "first," }
 ,{ "then" }
 ,{ "start." }
 ,{ "Additional" }
 ,{ "constructor" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "not" }
 ,{ "used." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "AsyncUDPMultipointDevice" }
} , & fmt_h4 , & align_h4 } ;

Text b12 = { {
 { "The" }
 ,{ "class" }
 ,{ "AsyncUDPMultipointDevice" , & fmt_text_b }
 ,{ "implements" }
 ,{ "the" }
 ,{ "PacketMultipointDevice" , & fmt_text_b }
 ,{ "interface" }
 ,{ "and" }
 ,{ "the" }
 ,{ "PortManager" , & fmt_text_b }
 ,{ "interface." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "The" }
 ,{ "first" }
 ,{ "constructor" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "local" }
 ,{ "UDP" }
 ,{ "port." }
 ,{ "max_packets" , & fmt_text_b }
 ,{ "limits" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "usage" }
 ,{ "for" }
 ,{ "the" }
 ,{ "inbound" }
 ,{ "processing." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "getPort()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "local" }
 ,{ "port." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "getStat()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "device" }
 ,{ "statistic." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "Other" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "the" }
 ,{ "PacketEndpointDevice" , & fmt_text_b }
 ,{ "interface" }
 ,{ "implementation" }
 ,{ "and" }
 ,{ "the" }
 ,{ "PortManager" , & fmt_text_b }
 ,{ "interface" }
 ,{ "implementation." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "The" }
 ,{ "inner" }
 ,{ "class" }
 ,{ "StartStop" , & fmt_text_b }
 ,{ "should" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "activate" }
 ,{ "the" }
 ,{ "object" }
 ,{ "of" }
 ,{ "this" }
 ,{ "class." }
 ,{ "Additional" }
 ,{ "constructor" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "not" }
 ,{ "used." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "Sys::AsyncUDPSocket" }
} , & fmt_h4 , & align_h4 } ;

Text b19 = { {
 { "Both" }
 ,{ "async" }
 ,{ "UDP" }
 ,{ "device" }
 ,{ "classes" }
 ,{ "are" }
 ,{ "implemented" }
 ,{ "using" }
 ,{ "Sys::AsyncUDPSocket" , & fmt_text_b }
 ,{ "and" }
 ,{ "Sys::AsyncUDPSocketWait" , & fmt_text_b }
 ,{ "classes," }
 ,{ "provided" }
 ,{ "by" }
 ,{ "the" }
 ,{ "target." }
 ,{ "They" }
 ,{ "are" }
 ,{ "declared" }
 ,{ "in" }
 ,{ "the" }
 ,{ "header" }
 ,{ "sys/SysNet.h" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> (HCore) AsyncUDPDevice" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b19 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_AsyncFiles#page , & page_Atomic#page };

Link link = { &page } ;

}

scope page_Atomic {

Text b0 = { {
 { "Atomic" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/task/Atomic.h" , & fmt_text_Files_b }
 ,{ "CCore/src/task/Atomic.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Atomic" }
 ,{ "is" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "variable" }
 ,{ "with" }
 ,{ "a" }
 ,{ "set" }
 ,{ "of" }
 ,{ "\"atomic\"" }
 ,{ "operations." }
 ,{ "Such" }
 ,{ "variable" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "safely" }
 ,{ "by" }
 ,{ "multiple" }
 ,{ "threads" }
 ,{ "without" }
 ,{ "using" }
 ,{ "mutexes." }
 ,{ "Moreover," }
 ,{ "efficient" }
 ,{ "mutex" }
 ,{ "implementation" }
 ,{ "is" }
 ,{ "based" }
 ,{ "on" }
 ,{ "atomics." }
 ,{ "Atomic" }
 ,{ "operations" }
 ,{ "(except" }
 ,{ "reading" }
 ,{ "a" }
 ,{ "value)" }
 ,{ "implies" }
 ,{ "a" }
 ,{ "\"memory" }
 ,{ "fence\"." }
 ,{ "This" }
 ,{ "feature" }
 ,{ "is" }
 ,{ "irrelevant" }
 ,{ "on" }
 ,{ "single" }
 ,{ "core" }
 ,{ "systems," }
 ,{ "but" }
 ,{ "for" }
 ,{ "multi-core" }
 ,{ "CPU" }
 ,{ "it" }
 ,{ "is" }
 ,{ "essential" }
 ,{ "to" }
 ,{ "ensure" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "visibility" }
 ,{ "coherence." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Atomic::Type" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "underlying" }
 ,{ "integral" }
 ,{ "type." }
 ,{ "Usually" }
 ,{ "it" }
 ,{ "is" }
 ,{ "a" }
 ,{ "machine" }
 ,{ "word" }
 ,{ "type." }
 ,{ "This" }
 ,{ "type" }
 ,{ "is" }
 ,{ "a" }
 ,{ "PrintProxyType" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Default" }
 ,{ "constructor" }
 ,{ "sets" }
 ,{ "the" }
 ,{ "value" }
 ,{ "to" }
 ,{ "zero." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "Implicit" }
 ,{ "cast" }
 ,{ "operator" }
 ,{ "reads" }
 ,{ "the" }
 ,{ "value" }
 ,{ "atomically" }
 ,{ "with" }
 ,{ "respect" }
 ,{ "to" }
 ,{ "other" }
 ,{ "operations," }
 ,{ "but" }
 ,{ "does" }
 ,{ "not" }
 ,{ "imply" }
 ,{ "a" }
 ,{ "memory" }
 ,{ "fence." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "All" }
 ,{ "modifying" }
 ,{ "operations" }
 ,{ "imply" }
 ,{ "a" }
 ,{ "memory" }
 ,{ "fence" }
 ,{ "and" }
 ,{ "return" }
 ,{ "the" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "object" }
 ,{ "before" , & fmt_text_b }
 ,{ "the" }
 ,{ "operation." }
 ,{ "\"Memory" }
 ,{ "fence\"" }
 ,{ "means" }
 ,{ "that" }
 ,{ "if" }
 ,{ "a" }
 ,{ "thread" }
 ,{ "red" }
 ,{ "the" }
 ,{ "modified" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "atomic," }
 ,{ "it" }
 ,{ "sees" }
 ,{ "all" }
 ,{ "variable" }
 ,{ "modifications," }
 ,{ "made" }
 ,{ "before" }
 ,{ "the" }
 ,{ "atomic" }
 ,{ "operation" }
 ,{ "has" }
 ,{ "been" }
 ,{ "performed" }
 ,{ "by" }
 ,{ "the" }
 ,{ "thread," }
 ,{ "who" }
 ,{ "has" }
 ,{ "done" }
 ,{ "the" }
 ,{ "atomic" }
 ,{ "operation." }
 ,{ "On" }
 ,{ "a" }
 ,{ "single" }
 ,{ "core" }
 ,{ "CPU" }
 ,{ "this" }
 ,{ "is" }
 ,{ "always" }
 ,{ "true," }
 ,{ "because" }
 ,{ "threads" }
 ,{ "are" }
 ,{ "not" }
 ,{ "executed" }
 ,{ "simultaneously" }
 ,{ "and" }
 ,{ "only" }
 ,{ "a" }
 ,{ "compiler" }
 ,{ "optimization" }
 ,{ "may" }
 ,{ "be" }
 ,{ "an" }
 ,{ "issue." }
 ,{ "But" }
 ,{ "on" }
 ,{ "multi-core" }
 ,{ "CPU" }
 ,{ "it" }
 ,{ "is" }
 ,{ "possible," }
 ,{ "that" }
 ,{ "concurrent" }
 ,{ "execution" }
 ,{ "of" }
 ,{ "CPU" }
 ,{ "read/write" }
 ,{ "commands" }
 ,{ "changes" }
 ,{ "the" }
 ,{ "order" }
 ,{ "of" }
 ,{ "visible" }
 ,{ "variable" }
 ,{ "modifications." }
 ,{ "So" }
 ,{ "special" }
 ,{ "CPU" }
 ,{ "commands" }
 ,{ "must" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "prevent" }
 ,{ "this." }
 ,{ "An" }
 ,{ "example:" }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "operator" , & fmt_text_b }
 ,{ "=" , & fmt_text_b }
 ,{ "assigns" }
 ,{ "a" }
 ,{ "new" }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "operator" , & fmt_text_b }
 ,{ "+=" , & fmt_text_b }
 ,{ "increases" }
 ,{ "the" }
 ,{ "current" }
 ,{ "value" }
 ,{ "by" }
 ,{ "the" }
 ,{ "argument." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "operator" , & fmt_text_b }
 ,{ "−=" , & fmt_text_b }
 ,{ "decreases" }
 ,{ "the" }
 ,{ "current" }
 ,{ "value" }
 ,{ "by" }
 ,{ "the" }
 ,{ "argument." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "postfix" , & fmt_text_b }
 ,{ "operator" , & fmt_text_b }
 ,{ "++" , & fmt_text_b }
 ,{ "increments" }
 ,{ "the" }
 ,{ "current" }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "postfix" , & fmt_text_b }
 ,{ "operator" , & fmt_text_b }
 ,{ "−−" , & fmt_text_b }
 ,{ "decrements" }
 ,{ "the" }
 ,{ "current" }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "trySet()" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "more" }
 ,{ "complex" }
 ,{ "operation." }
 ,{ "It" }
 ,{ "compares" }
 ,{ "the" }
 ,{ "current" }
 ,{ "value" }
 ,{ "with" }
 ,{ "the" }
 ,{ "old_value" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "they" }
 ,{ "are" }
 ,{ "equal," }
 ,{ "then" }
 ,{ "it" }
 ,{ "assigns" }
 ,{ "the" }
 ,{ "new_value" , & fmt_text_b }
 ,{ "." }
 ,{ "Otherwise" }
 ,{ "it" }
 ,{ "does" }
 ,{ "nothing." }
 ,{ "You" }
 ,{ "may" }
 ,{ "learn" }
 ,{ "what" }
 ,{ "case" }
 ,{ "has" }
 ,{ "happened" }
 ,{ "by" }
 ,{ "comparing" }
 ,{ "the" }
 ,{ "return" }
 ,{ "value" }
 ,{ "with" }
 ,{ "the" }
 ,{ "old_value" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "Sys::Atomic" }
} , & fmt_h4 , & align_h4 } ;

Text b14 = { {
 { "Atomic" }
 ,{ "implementation" }
 ,{ "is" }
 ,{ "based" }
 ,{ "on" }
 ,{ "the" }
 ,{ "target" }
 ,{ "atomic" }
 ,{ "class" }
 ,{ "Sys::Atomic" , & fmt_text_b }
 ,{ "," }
 ,{ "declared" }
 ,{ "in" }
 ,{ "the" }
 ,{ "header" }
 ,{ "sys/SysAtomic.h" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "A" }
 ,{ "typical" }
 ,{ "implementation" }
 ,{ "would" }
 ,{ "be:" }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "Only" }
 ,{ "three" }
 ,{ "highlighted" }
 ,{ "functions" }
 ,{ "must" }
 ,{ "be" }
 ,{ "implemented," }
 ,{ "usually" }
 ,{ "using" }
 ,{ "an" }
 ,{ "assembler" }
 ,{ "to" }
 ,{ "prevent" }
 ,{ "compiler" }
 ,{ "optimizations" }
 ,{ "across" }
 ,{ "its" }
 ,{ "calls." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Atomic" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_AsyncUDPDevice#page , & page_AttachmentHost#page };

Link link = { &page } ;

}

scope page_AttachmentHost {

Text b0 = { {
 { "AttachmentHost" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/AttachmentHost.h" , & fmt_text_Files_b }
 ,{ "CCore/src/AttachmentHost.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "AttachmentHost" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "helper" }
 ,{ "class." }
 ,{ "It" }
 ,{ "implements" }
 ,{ "the" }
 ,{ "attachment/detachment" }
 ,{ "functionality." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "AttachmentHost" , & fmt_text_b }
 ,{ "stores" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "." }
 ,{ "Any" }
 ,{ "pointer" }
 ,{ "of" }
 ,{ "this" }
 ,{ "type" }
 ,{ "can" }
 ,{ "be" }
 ,{ "attached" }
 ,{ "to" }
 ,{ "the" }
 ,{ "host" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "attach()" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "some" }
 ,{ "pointer" }
 ,{ "is" }
 ,{ "attached," }
 ,{ "it" }
 ,{ "can" }
 ,{ "be" }
 ,{ "detached" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "detach()" , & fmt_text_b }
 ,{ "." }
 ,{ "To" }
 ,{ "retrieve" }
 ,{ "the" }
 ,{ "attached" }
 ,{ "pointer" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "class" }
 ,{ "Hook" , & fmt_text_b }
 ,{ "is" }
 ,{ "used." }
 ,{ "In" }
 ,{ "the" }
 ,{ "constructor" }
 ,{ "it" }
 ,{ "\"locks\"" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "and" }
 ,{ "releases" }
 ,{ "it" }
 ,{ "in" }
 ,{ "the" }
 ,{ "destructor." }
 ,{ "Hook" , & fmt_text_b }
 ,{ "implements" }
 ,{ "the" }
 ,{ "Object" , & fmt_text_b }
 ,{ "Pointer" , & fmt_text_b }
 ,{ "Interface" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "method" }
 ,{ "detach()" , & fmt_text_b }
 ,{ "is" }
 ,{ "delayed" }
 ,{ "while" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "is" }
 ,{ "locked." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "AttachmentHost" , & fmt_text_b }
 ,{ "constructor" }
 ,{ "accepts" }
 ,{ "one" }
 ,{ "or" }
 ,{ "two" }
 ,{ "arguments." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "class_name" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "in" }
 ,{ "error" }
 ,{ "messages" }
 ,{ "and" }
 ,{ "should" }
 ,{ "be" }
 ,{ "a" }
 ,{ "name" }
 ,{ "of" }
 ,{ "owning" }
 ,{ "class." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "name" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "name" }
 ,{ "internal" }
 ,{ "synchronization" }
 ,{ "objects." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "attach()" , & fmt_text_b }
 ,{ "attaches" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "host." }
 ,{ "If" }
 ,{ "there" }
 ,{ "is" }
 ,{ "an" }
 ,{ "attached" }
 ,{ "pointer" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "must" }
 ,{ "not" }
 ,{ "be" }
 ,{ "null." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "detach()" , & fmt_text_b }
 ,{ "detaches" }
 ,{ "the" }
 ,{ "attached" }
 ,{ "pointer," }
 ,{ "if" }
 ,{ "any." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "These" }
 ,{ "two" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "typically" }
 ,{ "used" }
 ,{ "in" }
 ,{ "pair" }
 ,{ "in" }
 ,{ "constructor/destructor" }
 ,{ "manner." }
 ,{ "If" }
 ,{ "the" }
 ,{ "first" }
 ,{ "method" }
 ,{ "is" }
 ,{ "failed," }
 ,{ "the" }
 ,{ "second" }
 ,{ "must" }
 ,{ "not" }
 ,{ "be" }
 ,{ "called." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "Hook" , & fmt_text_b }
 ,{ "constructor" }
 ,{ "retrieves" }
 ,{ "the" }
 ,{ "attached" }
 ,{ "pointer" }
 ,{ "from" }
 ,{ "the" }
 ,{ "host." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> AttachmentHost" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Atomic#page , & page_AutoCast#page };

Link link = { &page } ;

}

scope page_AutoCast {

Text b0 = { {
 { "AutoCast" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/gadget/AutoCast.h" , & fmt_text_Files_b }
 ,{ "CCore/src/gadget/AutoCast.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "AutoCast" , & fmt_text_b }
 ,{ "helps" }
 ,{ "implicit" }
 ,{ "pointer" }
 ,{ "conversion." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "It" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "for" }
 ,{ "implicit" }
 ,{ "pointer" }
 ,{ "conversion:" }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> AutoCast" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_AttachmentHost#page , & page_AutoGlobal#page };

Link link = { &page } ;

}

scope page_AutoGlobal {

Text b0 = { {
 { "AutoGlobal" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/AutoGlobal.h" , & fmt_text_Files_b }
 ,{ "CCore/src/AutoGlobal.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "AutoGlobal" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "create" }
 ,{ "a" }
 ,{ "global" }
 ,{ "variable" }
 ,{ "with" }
 ,{ "auto-initialization." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "You" }
 ,{ "may" }
 ,{ "specify" }
 ,{ "a" }
 ,{ "TextLabel" , & fmt_text_b }
 ,{ "in" }
 ,{ "the" }
 ,{ "constructor" }
 ,{ "to" }
 ,{ "name" }
 ,{ "the" }
 ,{ "internal" }
 ,{ "mutex." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "To" }
 ,{ "access" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "object" }
 ,{ "use" }
 ,{ "the" }
 ,{ "Object" , & fmt_text_b }
 ,{ "Pointer" , & fmt_text_b }
 ,{ "Interface" , & fmt_text_b }
 ,{ "methods." }
 ,{ "You" }
 ,{ "must" }
 ,{ "do" }
 ,{ "it" }
 ,{ "inside" }
 ,{ "a" }
 ,{ "Lock" , & fmt_text_b }
 ,{ "scope." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "AutoGlobal" , & fmt_text_b }
 ,{ "uses" }
 ,{ "the" }
 ,{ "reference" }
 ,{ "counting" }
 ,{ "to" }
 ,{ "control" }
 ,{ "the" }
 ,{ "life-time" }
 ,{ "of" }
 ,{ "the" }
 ,{ "object." }
 ,{ "I.e." }
 ,{ "when" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "accessed" }
 ,{ "the" }
 ,{ "first" }
 ,{ "time," }
 ,{ "it" }
 ,{ "is" }
 ,{ "created" }
 ,{ "using" }
 ,{ "the" }
 ,{ "default" }
 ,{ "constructor." }
 ,{ "Once" }
 ,{ "the" }
 ,{ "last" }
 ,{ "Lock" , & fmt_text_b }
 ,{ "is" }
 ,{ "released," }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "destroyed." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> AutoGlobal" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_AutoCast#page , & page_BaseRangeAlgo#page };

Link link = { &page } ;

}

scope page_BaseRangeAlgo {

Text b0 = { {
 { "BaseRangeAlgo" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/algon/BaseRangeAlgo.h" , & fmt_text_Files_b }
 ,{ "CCore/src/algon/BaseRangeAlgo.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "BaseRangeAlgo" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "Algorithm" , & fmt_text_b }
 ,{ "Package" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "parametrized" }
 ,{ "by" }
 ,{ "a" }
 ,{ "generalized" }
 ,{ "range" }
 ,{ "type" }
 ,{ "and" }
 ,{ "contains" }
 ,{ "some" }
 ,{ "simple" }
 ,{ "range" }
 ,{ "algorithms." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "LenType" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "range" }
 ,{ "length" }
 ,{ "type." }
 ,{ "It" }
 ,{ "must" }
 ,{ "be" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "GetPtr()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "a" }
 ,{ "\"pointer\"" }
 ,{ "to" }
 ,{ "the" }
 ,{ "first" }
 ,{ "range" }
 ,{ "element." }
 ,{ "This" }
 ,{ "pointer" }
 ,{ "must" }
 ,{ "be" }
 ,{ "used" }
 ,{ "only" }
 ,{ "to" }
 ,{ "reference" }
 ,{ "this" }
 ,{ "element" }
 ,{ "and" }
 ,{ "not" }
 ,{ "to" }
 ,{ "iterate" }
 ,{ "over" }
 ,{ "the" }
 ,{ "range." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "GetLen()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "range" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "GetPrefix()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "a" }
 ,{ "new" }
 ,{ "range," }
 ,{ "which" }
 ,{ "is" }
 ,{ "a" }
 ,{ "prefix" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "length." }
 ,{ "len" , & fmt_text_b }
 ,{ "must" }
 ,{ "not" }
 ,{ "exceed" }
 ,{ "the" }
 ,{ "input" }
 ,{ "range" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "GetSuffix()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "a" }
 ,{ "new" }
 ,{ "range," }
 ,{ "which" }
 ,{ "is" }
 ,{ "a" }
 ,{ "suffix" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "length." }
 ,{ "len" , & fmt_text_b }
 ,{ "must" }
 ,{ "not" }
 ,{ "exceed" }
 ,{ "the" }
 ,{ "input" }
 ,{ "range" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "Split()" , & fmt_text_b }
 ,{ "splits" }
 ,{ "the" }
 ,{ "given" }
 ,{ "range" }
 ,{ "on" }
 ,{ "prefix" }
 ,{ "and" }
 ,{ "suffix," }
 ,{ "prefix" }
 ,{ "has" }
 ,{ "a" }
 ,{ "given" }
 ,{ "length" }
 ,{ "and" }
 ,{ "returned," }
 ,{ "suffix" }
 ,{ "is" }
 ,{ "set" }
 ,{ "back" }
 ,{ "in" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "r" , & fmt_text_b }
 ,{ "." }
 ,{ "prefix" , & fmt_text_b }
 ,{ "must" }
 ,{ "not" }
 ,{ "exceed" }
 ,{ "the" }
 ,{ "input" }
 ,{ "range" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "GetPrefix(R" , & fmt_text_b }
 ,{ "r,R" , & fmt_text_b }
 ,{ "suffix)" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "prefix," }
 ,{ "complementary" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "range" }
 ,{ "suffix." }
 ,{ "It" }
 ,{ "is" }
 ,{ "equivalent" }
 ,{ "to" }
 ,{ "the" }
 ,{ "GetPrefix(r,GetLen(r)-GetLen(suffix))" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "RangeSwap()" , & fmt_text_b }
 ,{ "performs" }
 ,{ "memberwise" }
 ,{ "ranges" }
 ,{ "element" }
 ,{ "swap." }
 ,{ "Range" }
 ,{ "lengths" }
 ,{ "must" }
 ,{ "be" }
 ,{ "the" }
 ,{ "same." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "Reverse()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "a" }
 ,{ "reverse" }
 ,{ "range." }
 ,{ "Its" }
 ,{ "type" }
 ,{ "is" }
 ,{ "different" }
 ,{ "than" }
 ,{ "R" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "The" }
 ,{ "following" }
 ,{ "specialization" }
 ,{ "for" }
 ,{ "the" }
 ,{ "standard" }
 ,{ "PtrLen" , & fmt_text_b }
 ,{ "range" }
 ,{ "is" }
 ,{ "provided:" }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "The" }
 ,{ "following" }
 ,{ "specialization" }
 ,{ "for" }
 ,{ "the" }
 ,{ "standard" }
 ,{ "PtrLenReverse" , & fmt_text_b }
 ,{ "range" }
 ,{ "is" }
 ,{ "provided:" }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "RangeType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "all" }
 ,{ "range" }
 ,{ "types." }
 ,{ "RangeType" , & fmt_text_b }
 ,{ "=>" }
 ,{ "CursorType" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "A" }
 ,{ "CursorType" , & fmt_text_b }
 ,{ "must" }
 ,{ "provide" }
 ,{ "a" }
 ,{ "member" }
 ,{ "RangeAlgo" , & fmt_text_b }
 ,{ "with" }
 ,{ "range" }
 ,{ "algorithms" }
 ,{ "implementations" }
 ,{ "to" }
 ,{ "be" }
 ,{ "a" }
 ,{ "RangeType" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "also" }
 ,{ "must" }
 ,{ "accept" }
 ,{ "index" }
 ,{ "operator" , & fmt_text_b }
 ,{ "[]" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> BaseRangeAlgo" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_AutoGlobal#page , & page_BestSearch#page };

Link link = { &page } ;

}

scope page_BestSearch {

Text b0 = { {
 { "BestSearch" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/algon/BestSearch.h" , & fmt_text_Files_b }
 ,{ "CCore/src/algone/BestSearch.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "BestSearch()" , & fmt_text_b }
 ,{ "runs" }
 ,{ "over" }
 ,{ "a" }
 ,{ "range" }
 ,{ "to" }
 ,{ "find" }
 ,{ "a" }
 ,{ "best" }
 ,{ "range" }
 ,{ "element." }
 ,{ "To" }
 ,{ "determine" }
 ,{ "which" }
 ,{ "element" }
 ,{ "is" }
 ,{ "better" }
 ,{ "the" }
 ,{ "given" }
 ,{ "functor" }
 ,{ "is" }
 ,{ "used:" }
 ,{ "a" , & fmt_text_b }
 ,{ "is" }
 ,{ "better" }
 ,{ "than" }
 ,{ "b" , & fmt_text_b }
 ,{ "iff" }
 ,{ "better(a,b)" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "cursor" }
 ,{ "pointing" }
 ,{ "to" }
 ,{ "the" }
 ,{ "best" }
 ,{ "element" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "It" }
 ,{ "may" }
 ,{ "be" }
 ,{ "null" }
 ,{ "iff" }
 ,{ "the" }
 ,{ "original" }
 ,{ "range" }
 ,{ "is" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "The" }
 ,{ "following" }
 ,{ "two" }
 ,{ "special" }
 ,{ "variants" }
 ,{ "use" }
 ,{ "the" }
 ,{ "given" }
 ,{ "functor" }
 ,{ "to" }
 ,{ "compare" }
 ,{ "elements" }
 ,{ "and" }
 ,{ "find" }
 ,{ "a" }
 ,{ "greatest" }
 ,{ "or" }
 ,{ "least" }
 ,{ "of" }
 ,{ "them." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> BestSearch" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_BaseRangeAlgo#page , & page_BinaryFile#page };

Link link = { &page } ;

}

scope page_BinaryFile {

Text b0 = { {
 { "BinaryFile" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/BinaryFile.h" , & fmt_text_Files_b }
 ,{ "CCore/src/BinaryFile.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "A" }
 ,{ "BinaryFile" , & fmt_text_b }
 ,{ "object" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "as" }
 ,{ "a" }
 ,{ "serialization" , & fmt_text_a , & ..#page_SaveLoad#link_Devices }
 ,{ "output" , & fmt_text_a , & ..#page_SaveLoad#link_Devices }
 ,{ "device" , & fmt_text_a , & ..#page_SaveLoad#link_Devices }
 ,{ "." }
 ,{ "It" }
 ,{ "puts" }
 ,{ "data" }
 ,{ "bytes" }
 ,{ "into" }
 ,{ "the" }
 ,{ "output" }
 ,{ "file." }
 ,{ "This" }
 ,{ "class" }
 ,{ "is" }
 ,{ "similar" }
 ,{ "to" }
 ,{ "the" }
 ,{ "PrintFile" , & fmt_text_a , & ..#page_PrintDevice#link_PrintFile }
 ,{ "class," }
 ,{ "but" }
 ,{ "provides" }
 ,{ "binary" }
 ,{ "output" }
 ,{ "capabilities" }
 ,{ "rather" }
 ,{ "than" }
 ,{ "textual." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "A" }
 ,{ "BinaryFile" , & fmt_text_b }
 ,{ "object" }
 ,{ "can" }
 ,{ "be" }
 ,{ "opened" }
 ,{ "or" }
 ,{ "closed." }
 ,{ "To" }
 ,{ "output" }
 ,{ "to" }
 ,{ "the" }
 ,{ "particular" }
 ,{ "file," }
 ,{ "the" }
 ,{ "BinaryFile" , & fmt_text_b }
 ,{ "object" }
 ,{ "must" }
 ,{ "be" }
 ,{ "opened" }
 ,{ "and" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name" }
 ,{ "and" }
 ,{ "open" , & fmt_text_a , & ..#page_Files#link }
 ,{ "flags" , & fmt_text_a , & ..#page_Files#link }
 ,{ "must" }
 ,{ "be" }
 ,{ "provided." }
 ,{ "It" }
 ,{ "can" }
 ,{ "be" }
 ,{ "done" }
 ,{ "using" }
 ,{ "the" }
 ,{ "constructor" }
 ,{ "or" }
 ,{ "the" }
 ,{ "method" }
 ,{ "open()" , & fmt_text_b }
 ,{ "." }
 ,{ "Default" }
 ,{ "constructor" }
 ,{ "creates" }
 ,{ "an" }
 ,{ "object" }
 ,{ "in" }
 ,{ "the" }
 ,{ "closed" }
 ,{ "state." }
 ,{ "Non-default" }
 ,{ "opens" }
 ,{ "a" }
 ,{ "file." }
 ,{ "In" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Destructor" }
 ,{ "flushes" }
 ,{ "and" }
 ,{ "closes" }
 ,{ "an" }
 ,{ "opened" }
 ,{ "object." }
 ,{ "Errors" }
 ,{ "are" }
 ,{ "reported." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "isOpened()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "opened," }
 ,{ "and" }
 ,{ "false" , & fmt_text_b }
 ,{ "otherwise." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "open()" , & fmt_text_b }
 ,{ "opens" }
 ,{ "a" }
 ,{ "closed" }
 ,{ "object" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "file" }
 ,{ "name" }
 ,{ "and" }
 ,{ "open" }
 ,{ "flags." }
 ,{ "In" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "close()" , & fmt_text_b }
 ,{ "closes" }
 ,{ "an" }
 ,{ "opened" }
 ,{ "object." }
 ,{ "In" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error" }
 ,{ "and" }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "a" }
 ,{ "pending" }
 ,{ "output" }
 ,{ "error" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "soft_close()" , & fmt_text_b }
 ,{ "does" }
 ,{ "not" }
 ,{ "throw," }
 ,{ "it" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "group" }
 ,{ "of" }
 ,{ "errors" }
 ,{ "using" }
 ,{ "the" }
 ,{ "FileMultiError" , & fmt_text_a , & ..#page_Files#link }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "disableExceptions()" , & fmt_text_b }
 ,{ "disables" }
 ,{ "exceptions" }
 ,{ "during" }
 ,{ "output" }
 ,{ "operations." }
 ,{ "You" }
 ,{ "may" }
 ,{ "call" }
 ,{ "this" }
 ,{ "method" }
 ,{ "after" }
 ,{ "the" }
 ,{ "open()" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "exceptions" }
 ,{ "are" }
 ,{ "disabled," }
 ,{ "the" }
 ,{ "special" }
 ,{ "internal" }
 ,{ "error" }
 ,{ "flag" }
 ,{ "is" }
 ,{ "set" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "output" }
 ,{ "error." }
 ,{ "This" }
 ,{ "flag" }
 ,{ "is" }
 ,{ "added" }
 ,{ "in" }
 ,{ "the" }
 ,{ "error" }
 ,{ "list" }
 ,{ "during" }
 ,{ "a" }
 ,{ "close" }
 ,{ "operation." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "preserveFile()" , & fmt_text_b }
 ,{ "preserves" }
 ,{ "a" }
 ,{ "file," }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "AutoDelete" , & fmt_text_b }
 ,{ "open" }
 ,{ "flag." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "flush()" , & fmt_text_b }
 ,{ "flushes" }
 ,{ "data" }
 ,{ "from" }
 ,{ "the" }
 ,{ "buffer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> BinaryFile" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_BestSearch#page , & page_BinarySearch#page };

Link link = { &page } ;

}

scope page_BinarySearch {

Text b0 = { {
 { "BinarySearch" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/algon/BinarySearch.h" , & fmt_text_Files_b }
 ,{ "CCore/src/algon/BinarySearch.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "BinarySearchAlgo" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "Algorithm" , & fmt_text_b }
 ,{ "Package" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "parametrized" }
 ,{ "by" }
 ,{ "a" }
 ,{ "generalized" }
 ,{ "range" }
 ,{ "type" }
 ,{ "and" }
 ,{ "contains" }
 ,{ "binary" }
 ,{ "search" }
 ,{ "algorithms." }
 ,{ "The" }
 ,{ "second" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "is" }
 ,{ "defaulted" }
 ,{ "to" }
 ,{ "the" }
 ,{ "BaseRangeAlgo<R>" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Find()" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "general" }
 ,{ "binary" }
 ,{ "search" }
 ,{ "algorithm." }
 ,{ "It's" }
 ,{ "input" }
 ,{ "is" }
 ,{ "a" }
 ,{ "range" }
 ,{ "and" }
 ,{ "a" }
 ,{ "predicate." }
 ,{ "The" }
 ,{ "range" }
 ,{ "must" }
 ,{ "be" }
 ,{ "increasing" }
 ,{ "relative" }
 ,{ "the" }
 ,{ "predicate," }
 ,{ "i.e." }
 ,{ "if" }
 ,{ "some" }
 ,{ "element" }
 ,{ "makes" }
 ,{ "the" }
 ,{ "predicate" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "then" }
 ,{ "the" }
 ,{ "further" }
 ,{ "elements" }
 ,{ "do" }
 ,{ "the" }
 ,{ "same." }
 ,{ "The" }
 ,{ "algorithm" }
 ,{ "splits" }
 ,{ "the" }
 ,{ "range" }
 ,{ "on" }
 ,{ "two" }
 ,{ "parts:" }
 ,{ "prefix" }
 ,{ "consists" }
 ,{ "of" }
 ,{ "elements" }
 ,{ "with" }
 ,{ "the" }
 ,{ "predicate" }
 ,{ "value" }
 ,{ "false" , & fmt_text_b }
 ,{ "," }
 ,{ "and" }
 ,{ "suffix" }
 ,{ "makes" }
 ,{ "the" }
 ,{ "predicate" }
 ,{ "true" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "prefix" }
 ,{ "is" }
 ,{ "returned" }
 ,{ "and" }
 ,{ "the" }
 ,{ "suffix" }
 ,{ "is" }
 ,{ "set" }
 ,{ "back" }
 ,{ "to" }
 ,{ "the" }
 ,{ "r" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "first" }
 ,{ "element" }
 ,{ "of" }
 ,{ "suffix," }
 ,{ "if" }
 ,{ "any," }
 ,{ "is" }
 ,{ "the" }
 ,{ "first" }
 ,{ "element" }
 ,{ "of" }
 ,{ "the" }
 ,{ "range" }
 ,{ "satisfying" }
 ,{ "the" }
 ,{ "predicate." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Find_less()" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "special" }
 ,{ "variant" }
 ,{ "for" }
 ,{ "the" }
 ,{ "predicate" }
 ,{ "\"less" }
 ,{ "than" }
 ,{ "med" , & fmt_text_b }
 ,{ "\"." }
 ,{ "The" }
 ,{ "range" }
 ,{ "is" }
 ,{ "assumed" }
 ,{ "decreasing." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "Find_less_or_equal()" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "special" }
 ,{ "variant" }
 ,{ "for" }
 ,{ "the" }
 ,{ "predicate" }
 ,{ "\"less" }
 ,{ "or" }
 ,{ "equal" }
 ,{ "than" }
 ,{ "med" , & fmt_text_b }
 ,{ "\"." }
 ,{ "The" }
 ,{ "range" }
 ,{ "is" }
 ,{ "assumed" }
 ,{ "decreasing." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "Find_greater()" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "special" }
 ,{ "variant" }
 ,{ "for" }
 ,{ "the" }
 ,{ "predicate" }
 ,{ "\"greater" }
 ,{ "than" }
 ,{ "med" , & fmt_text_b }
 ,{ "\"." }
 ,{ "The" }
 ,{ "range" }
 ,{ "is" }
 ,{ "assumed" }
 ,{ "increasing." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "Find_greater_or_equal()" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "special" }
 ,{ "variant" }
 ,{ "for" }
 ,{ "the" }
 ,{ "predicate" }
 ,{ "\"greater" }
 ,{ "or" }
 ,{ "equal" }
 ,{ "than" }
 ,{ "med" , & fmt_text_b }
 ,{ "\"." }
 ,{ "The" }
 ,{ "range" }
 ,{ "is" }
 ,{ "assumed" }
 ,{ "increasing." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "family" }
 ,{ "of" }
 ,{ "functions" }
 ,{ "for" }
 ,{ "the" }
 ,{ "binary" }
 ,{ "search." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "They" }
 ,{ "call" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "search" }
 ,{ "algorithms" }
 ,{ "from" }
 ,{ "the" }
 ,{ "BinarySearchAlgo" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> BinarySearch" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_BinaryFile#page , & page_BinFileToRead#page };

Link link = { &page } ;

}

scope page_BinFileToRead {

Text b0 = { {
 { "BinFileToRead" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/BinFileToRead.h" , & fmt_text_Files_b }
 ,{ "CCore/src/BinFileToRead.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "provides" }
 ,{ "an" }
 ,{ "abstract" }
 ,{ "way" }
 ,{ "to" }
 ,{ "read" }
 ,{ "from" }
 ,{ "an" }
 ,{ "abstract" }
 ,{ "file" }
 ,{ "system." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "BinFileToRead" }
} , & fmt_h3 , & align_h3 } ;

Text b4 = { {
 { "AbstractBinFileToRead" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "abstract" }
 ,{ "interface" }
 ,{ "to" }
 ,{ "read" }
 ,{ "raw" }
 ,{ "data" }
 ,{ "from" }
 ,{ "a" }
 ,{ "file" }
 ,{ "using" }
 ,{ "the" , & fmt_text_a , & ..#page_Files#link_AltSet }
 ,{ "alternative" , & fmt_text_a , & ..#page_Files#link_AltSet }
 ,{ "set" , & fmt_text_a , & ..#page_Files#link_AltSet }
 ,{ "of" , & fmt_text_a , & ..#page_Files#link_AltSet }
 ,{ "operations" , & fmt_text_a , & ..#page_Files#link_AltSet }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "is_opened" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "protected" }
 ,{ "field," }
 ,{ "it" }
 ,{ "shows" }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "is" }
 ,{ "opened." }
 ,{ "A" }
 ,{ "derived" }
 ,{ "class" }
 ,{ "is" }
 ,{ "responsible" }
 ,{ "for" }
 ,{ "setting" }
 ,{ "this" }
 ,{ "field." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "file_len" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "protected" }
 ,{ "field," }
 ,{ "it" }
 ,{ "shows" }
 ,{ "the" }
 ,{ "file" }
 ,{ "length." }
 ,{ "A" }
 ,{ "derived" }
 ,{ "class" }
 ,{ "is" }
 ,{ "responsible" }
 ,{ "for" }
 ,{ "setting" }
 ,{ "this" }
 ,{ "field" }
 ,{ "during" }
 ,{ "the" }
 ,{ "method" }
 ,{ "open()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "reset()" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "protected" }
 ,{ "method," }
 ,{ "it" }
 ,{ "resets" }
 ,{ "fileds" }
 ,{ "to" }
 ,{ "its" }
 ,{ "default" }
 ,{ "values." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "isOpened()" , & fmt_text_b }
 ,{ "reads" }
 ,{ "the" }
 ,{ "field" }
 ,{ "is_opened" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "getLen()" , & fmt_text_b }
 ,{ "reads" }
 ,{ "the" }
 ,{ "field" }
 ,{ "file_len" , & fmt_text_b }
 ,{ ";" }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "open()" , & fmt_text_b }
 ,{ "opens" }
 ,{ "the" }
 ,{ "file" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "filename" }
 ,{ "and" }
 ,{ "open" }
 ,{ "flags" }
 ,{ "(in" }
 ,{ "most" }
 ,{ "cases" }
 ,{ "must" }
 ,{ "have" }
 ,{ "default" }
 ,{ "value)." }
 ,{ "If" }
 ,{ "the" }
 ,{ "file" }
 ,{ "is" }
 ,{ "already" }
 ,{ "opened" }
 ,{ "or" }
 ,{ "other" }
 ,{ "error" }
 ,{ "has" }
 ,{ "happened" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "clase()" , & fmt_text_b }
 ,{ "closes" }
 ,{ "the" }
 ,{ "file." }
 ,{ "If" }
 ,{ "the" }
 ,{ "file" }
 ,{ "is" }
 ,{ "already" }
 ,{ "closed" }
 ,{ "or" }
 ,{ "other" }
 ,{ "error" }
 ,{ "has" }
 ,{ "happened" }
 ,{ "a" }
 ,{ "error" }
 ,{ "is" }
 ,{ "reported." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "read()" , & fmt_text_b }
 ,{ "reads" }
 ,{ "the" }
 ,{ "opened" }
 ,{ "file" }
 ,{ "at" }
 ,{ "the" }
 ,{ "given" }
 ,{ "position" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "octet" }
 ,{ "buffer." }
 ,{ "The" }
 ,{ "number" }
 ,{ "of" }
 ,{ "transferred" }
 ,{ "bytes" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "An" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "read_all()" , & fmt_text_b }
 ,{ "reads" }
 ,{ "the" }
 ,{ "opened" }
 ,{ "file" }
 ,{ "at" }
 ,{ "the" }
 ,{ "given" }
 ,{ "position" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "octet" }
 ,{ "buffer." }
 ,{ "If" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "enough" }
 ,{ "data" }
 ,{ "to" }
 ,{ "fill" }
 ,{ "the" }
 ,{ "buffer" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown." }
 ,{ "An" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "BinFileToRead" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "reference-counting" }
 ,{ "smart" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "a" }
 ,{ "AbstractBinFileToRead" , & fmt_text_b }
 ,{ "class." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "BinFileToReadBase" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "base" }
 ,{ "class" }
 ,{ "to" }
 ,{ "build" , & fmt_text_a , & ..#page_RefObjectBase#link }
 ,{ "an" , & fmt_text_a , & ..#page_RefObjectBase#link }
 ,{ "implementation" , & fmt_text_a , & ..#page_RefObjectBase#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "BinFileToMem" }
} , & fmt_h3 , & align_h3 } ;

Text b17 = { {
 { "BinFileToMem" , & fmt_text_b }
 ,{ "is" }
 ,{ "similar" }
 ,{ "to" }
 ,{ "the" }
 ,{ "FileToMem" , & fmt_text_a , & ..#page_FileToMem#link }
 ,{ "class." }
 ,{ "The" }
 ,{ "only" }
 ,{ "difference" }
 ,{ "it" }
 ,{ "uses" }
 ,{ "BinFileToRead" , & fmt_text_b }
 ,{ "class" }
 ,{ "to" }
 ,{ "read" }
 ,{ "data" }
 ,{ "from" }
 ,{ "the" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> BinFileToRead" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b17 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_BinarySearch#page , & page_BlockCipher#page };

Link link = { &page } ;

}

scope page_BlockCipher {

Text b0 = { {
 { "BlockCipher" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/crypton/BlockCipher.h" , & fmt_text_Files_b }
 ,{ "CCore/src/crypton/BlockCipher.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "BlockCipher" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "abstract" }
 ,{ "block" }
 ,{ "cipher" }
 ,{ "algorithm." }
 ,{ "It" }
 ,{ "is" }
 ,{ "a" }
 ,{ "template" }
 ,{ "and" }
 ,{ "the" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "provides" }
 ,{ "all" }
 ,{ "necessary" }
 ,{ "parts" }
 ,{ "to" }
 ,{ "implement" }
 ,{ "the" }
 ,{ "required" }
 ,{ "functionality." }
 ,{ "An" }
 ,{ "abstract" }
 ,{ "block" }
 ,{ "cipher" }
 ,{ "algorithm" }
 ,{ "is" }
 ,{ "an" }
 ,{ "invertible" }
 ,{ "function," }
 ,{ "which" }
 ,{ "maps" }
 ,{ "an" }
 ,{ "input" }
 ,{ "block" }
 ,{ "of" }
 ,{ "bytes" }
 ,{ "of" }
 ,{ "the" }
 ,{ "defined" }
 ,{ "length" }
 ,{ "(the" }
 ,{ "cipher" }
 ,{ "block" }
 ,{ "length)" }
 ,{ "to" }
 ,{ "another" }
 ,{ "such" }
 ,{ "block." }
 ,{ "The" }
 ,{ "function" }
 ,{ "has" }
 ,{ "a" }
 ,{ "parameter" }
 ,{ "—" }
 ,{ "the" }
 ,{ "key," }
 ,{ "which" }
 ,{ "is" }
 ,{ "a" }
 ,{ "block" }
 ,{ "of" }
 ,{ "bytes" }
 ,{ "of" }
 ,{ "the" }
 ,{ "defined" }
 ,{ "length" }
 ,{ "(the" }
 ,{ "cipher" }
 ,{ "key" }
 ,{ "length)." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "BlockLen" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "cipher" }
 ,{ "block" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "KeyLen" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "key" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "GetName()" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "cipher" }
 ,{ "common" }
 ,{ "name," }
 ,{ "like" }
 ,{ "\"AES128\"" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "Default" }
 ,{ "constructor" }
 ,{ "creates" }
 ,{ "a" }
 ,{ "null" }
 ,{ "object." }
 ,{ "It" }
 ,{ "cannot" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "cipher." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "The" }
 ,{ "second" }
 ,{ "constructor" }
 ,{ "creates" }
 ,{ "the" }
 ,{ "object" }
 ,{ "and" }
 ,{ "assigns" }
 ,{ "the" }
 ,{ "given" }
 ,{ "key" }
 ,{ "to" }
 ,{ "it." }
 ,{ "This" }
 ,{ "object" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "cipher" }
 ,{ "data." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "Destructor" }
 ,{ "performs" }
 ,{ "the" }
 ,{ "unkey" }
 ,{ "cipher" }
 ,{ "operation." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "cleans" }
 ,{ "all" }
 ,{ "internal" }
 ,{ "buffers" }
 ,{ "with" }
 ,{ "sensitive" }
 ,{ "data." }
 ,{ "If" }
 ,{ "the" }
 ,{ "cipher" }
 ,{ "implementation" }
 ,{ "uses" }
 ,{ "some" }
 ,{ "hardware" }
 ,{ "support," }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "hardware" }
 ,{ "entities" }
 ,{ "also" }
 ,{ "must" }
 ,{ "be" }
 ,{ "cleaned." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "key()" , & fmt_text_b }
 ,{ "assigns" }
 ,{ "a" }
 ,{ "key" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object." }
 ,{ "After" }
 ,{ "call" }
 ,{ "of" }
 ,{ "this" }
 ,{ "method" }
 ,{ "the" }
 ,{ "object" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "cipher" }
 ,{ "data" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "key." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "unkey()" , & fmt_text_b }
 ,{ "erases" }
 ,{ "the" }
 ,{ "key" }
 ,{ "information" }
 ,{ "from" }
 ,{ "the" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "apply()" , & fmt_text_b }
 ,{ "performs" }
 ,{ "the" }
 ,{ "cipher" }
 ,{ "operation" }
 ,{ "on" }
 ,{ "the" }
 ,{ "given" }
 ,{ "block" }
 ,{ "of" }
 ,{ "data" }
 ,{ "in-place" }
 ,{ "or" }
 ,{ "out-of-place." }
 ,{ "The" }
 ,{ "first" }
 ,{ "variant" }
 ,{ "operates" }
 ,{ "on" }
 ,{ "two" }
 ,{ "distinct" }
 ,{ "data" }
 ,{ "buffers." }
 ,{ "The" }
 ,{ "second" }
 ,{ "ciphers" }
 ,{ "data" }
 ,{ "in-place" }
 ,{ "in" }
 ,{ "the" }
 ,{ "single" }
 ,{ "data" }
 ,{ "buffer." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "An" }
 ,{ "attempt" }
 ,{ "to" }
 ,{ "use" }
 ,{ "the" }
 ,{ "method" }
 ,{ "apply()" , & fmt_text_b }
 ,{ "without" }
 ,{ "a" }
 ,{ "previously" }
 ,{ "assigned" }
 ,{ "key" }
 ,{ "cause" }
 ,{ "an" }
 ,{ "exception." }
 ,{ "This" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown" }
 ,{ "with" }
 ,{ "the" }
 ,{ "following" }
 ,{ "guard" }
 ,{ "function:" }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "The" }
 ,{ "real" }
 ,{ "job" }
 ,{ "is" }
 ,{ "performed" }
 ,{ "by" }
 ,{ "the" }
 ,{ "class" }
 ,{ "T" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "class" }
 ,{ "must" }
 ,{ "comply" }
 ,{ "with" }
 ,{ "the" }
 ,{ "following" }
 ,{ "pattern:" }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "Concept" }
 ,{ "CipherType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "cipher" }
 ,{ "classes" }
 ,{ "like" }
 ,{ "BlockCipher<...>" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> BlockCipher" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_BinFileToRead#page , & page_BlockFifo#page };

Link link = { &page } ;

}

scope page_BlockFifo {

Text b0 = { {
 { "BlockFifo" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/BlockFifo.h" , & fmt_text_Files_b }
 ,{ "CCore/src/BlockFifo.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "BlockFifo" }
} , & fmt_h4 , & align_h4 } ;

Text b3 = { {
 { "The" }
 ,{ "Partial" , & fmt_text_b }
 ,{ "class" , & fmt_text_b }
 ,{ "BlockFifo" , & fmt_text_b }
 ,{ "implements" }
 ,{ "a" }
 ,{ "buffer" }
 ,{ "fifo" }
 ,{ "upon" }
 ,{ "a" }
 ,{ "provided" }
 ,{ "buffer." }
 ,{ "Unlike" }
 ,{ "the" }
 ,{ "Fifo" , & fmt_text_a , & ..#page_Fifo#link }
 ,{ "class," }
 ,{ "it" }
 ,{ "provides" }
 ,{ "block" }
 ,{ "put/get" }
 ,{ "operations," }
 ,{ "i.e." }
 ,{ "these" }
 ,{ "operations" }
 ,{ "put/get" }
 ,{ "multiple" }
 ,{ "objects" }
 ,{ "a" }
 ,{ "time." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Constructor" }
 ,{ "creates" }
 ,{ "the" }
 ,{ "fifo" }
 ,{ "in" }
 ,{ "the" }
 ,{ "given" }
 ,{ "buffer." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "getCount()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "objects" }
 ,{ "in" }
 ,{ "the" }
 ,{ "fifo." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "getAvail()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "available" }
 ,{ "positions" }
 ,{ "in" }
 ,{ "the" }
 ,{ "fifo." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "isEmpty()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "fifo" }
 ,{ "is" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "isFull()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "fifo" }
 ,{ "is" }
 ,{ "full." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "reset()" , & fmt_text_b }
 ,{ "resets" }
 ,{ "the" }
 ,{ "fifo." }
 ,{ "It" }
 ,{ "becomes" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "put(ulen,Func)" , & fmt_text_b }
 ,{ "puts" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "objects" }
 ,{ "in" }
 ,{ "the" }
 ,{ "fifo." }
 ,{ "This" }
 ,{ "method" }
 ,{ "is" }
 ,{ "generic." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "objects," }
 ,{ "required" }
 ,{ "to" }
 ,{ "be" }
 ,{ "put." }
 ,{ "The" }
 ,{ "second" }
 ,{ "is" }
 ,{ "a" }
 ,{ "functor." }
 ,{ "This" }
 ,{ "functor" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "provide" }
 ,{ "an" }
 ,{ "actual" }
 ,{ "data." }
 ,{ "It" }
 ,{ "may" }
 ,{ "be" }
 ,{ "called" }
 ,{ "up" }
 ,{ "to" }
 ,{ "two" }
 ,{ "times" }
 ,{ "to" }
 ,{ "fill" }
 ,{ "the" }
 ,{ "range" }
 ,{ "of" }
 ,{ "objects" }
 ,{ "with" }
 ,{ "desired" }
 ,{ "values." }
 ,{ "The" }
 ,{ "number" }
 ,{ "of" }
 ,{ "handled" }
 ,{ "objects" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "put(PtrLen<const" , & fmt_text_b }
 ,{ "T>)" , & fmt_text_b }
 ,{ "puts" }
 ,{ "objects" }
 ,{ "from" }
 ,{ "the" }
 ,{ "given" }
 ,{ "range" }
 ,{ "in" }
 ,{ "the" }
 ,{ "fifo." }
 ,{ "The" }
 ,{ "number" }
 ,{ "of" }
 ,{ "objects" }
 ,{ "have" }
 ,{ "been" }
 ,{ "copied" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "It" }
 ,{ "can" }
 ,{ "be" }
 ,{ "less," }
 ,{ "than" }
 ,{ "the" }
 ,{ "range" }
 ,{ "length," }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "enough" }
 ,{ "room." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "get(ulen,Func)" , & fmt_text_b }
 ,{ "gets" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "objects" }
 ,{ "from" }
 ,{ "the" }
 ,{ "fifo." }
 ,{ "This" }
 ,{ "method" }
 ,{ "is" }
 ,{ "generic." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "objects," }
 ,{ "required" }
 ,{ "to" }
 ,{ "be" }
 ,{ "get." }
 ,{ "The" }
 ,{ "second" }
 ,{ "is" }
 ,{ "a" }
 ,{ "functor." }
 ,{ "This" }
 ,{ "functor" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "extract" }
 ,{ "data." }
 ,{ "It" }
 ,{ "may" }
 ,{ "be" }
 ,{ "called" }
 ,{ "up" }
 ,{ "to" }
 ,{ "two" }
 ,{ "times" }
 ,{ "to" }
 ,{ "copy" }
 ,{ "the" }
 ,{ "range" }
 ,{ "of" }
 ,{ "objects" }
 ,{ "from" }
 ,{ "the" }
 ,{ "fifo." }
 ,{ "The" }
 ,{ "number" }
 ,{ "of" }
 ,{ "handled" }
 ,{ "objects" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "get()" , & fmt_text_b }
 ,{ "gets" }
 ,{ "objects" }
 ,{ "from" }
 ,{ "the" }
 ,{ "fifo" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "range." }
 ,{ "The" }
 ,{ "number" }
 ,{ "of" }
 ,{ "objects" }
 ,{ "have" }
 ,{ "been" }
 ,{ "copied" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "BlockFifoBuf" }
} , & fmt_h4 , & align_h4 } ;

Text b15 = { {
 { "The" }
 ,{ "class" }
 ,{ "BlockFifoBuf" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "upgraded" }
 ,{ "class" }
 ,{ "BlockFifo" , & fmt_text_b }
 ,{ "with" }
 ,{ "the" }
 ,{ "embedded" }
 ,{ "buffer:" }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> BlockFifo" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b15 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_BlockCipher#page , & page_Bridge#page };

Link link = { &page } ;

}

scope page_Bridge {

Text b0 = { {
 { "Bridge" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/net/Bridge.h" , & fmt_text_Files_b }
 ,{ "CCore/src/net/Bridge.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Bridge" , & fmt_text_b }
 ,{ "is" }
 ,{ "another" }
 ,{ "class" }
 ,{ "for" }
 ,{ "net" }
 ,{ "testing." }
 ,{ "This" }
 ,{ "class" }
 ,{ "delivers" }
 ,{ "packets" }
 ,{ "between" }
 ,{ "server" }
 ,{ "and" }
 ,{ "multiple" }
 ,{ "clients." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Once" }
 ,{ "a" }
 ,{ "Bridge" , & fmt_text_b }
 ,{ "object" }
 ,{ "is" }
 ,{ "created," }
 ,{ "it" }
 ,{ "creates" }
 ,{ "and" }
 ,{ "registers" }
 ,{ "a" }
 ,{ "server" }
 ,{ "device" }
 ,{ "and" }
 ,{ "number" }
 ,{ "of" }
 ,{ "client" }
 ,{ "devices." }
 ,{ "The" }
 ,{ "server" }
 ,{ "device" }
 ,{ "has" }
 ,{ "the" }
 ,{ "name" }
 ,{ "ServerName()" , & fmt_text_b }
 ,{ "." }
 ,{ "To" }
 ,{ "build" }
 ,{ "a" }
 ,{ "client" }
 ,{ "device" }
 ,{ "name" }
 ,{ "use" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "class" }
 ,{ "ClientName" , & fmt_text_b }
 ,{ "." }
 ,{ "Numbers" }
 ,{ "of" }
 ,{ "client" }
 ,{ "devices" }
 ,{ "are" }
 ,{ "1" , & fmt_text_b }
 ,{ ".." , & fmt_text_b }
 ,{ "num_clients" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "fields" }
 ,{ "str" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "built" }
 ,{ "client" }
 ,{ "device" }
 ,{ "name." }
 ,{ "Server" }
 ,{ "implements" }
 ,{ "the" }
 ,{ "PacketMultipointDevice" , & fmt_text_b }
 ,{ "interface" }
 ,{ "and" }
 ,{ "the" }
 ,{ "PortManager" , & fmt_text_b }
 ,{ "co-interface." }
 ,{ "Clients" }
 ,{ "implement" }
 ,{ "the" }
 ,{ "PacketEndpointDevice" , & fmt_text_b }
 ,{ "interface" }
 ,{ "and" }
 ,{ "the" }
 ,{ "PortManager" , & fmt_text_b }
 ,{ "co-interface." }
 ,{ "The" }
 ,{ "port" }
 ,{ "numbering" }
 ,{ "is" }
 ,{ "trivial:" }
 ,{ "all" }
 ,{ "addresses" }
 ,{ "ports" }
 ,{ "are" }
 ,{ "zero." }
 ,{ "So" }
 ,{ "you" }
 ,{ "can" }
 ,{ "attach" }
 ,{ "to" }
 ,{ "these" }
 ,{ "devices" }
 ,{ "another" }
 ,{ "protocol" }
 ,{ "devices." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "The" }
 ,{ "second" }
 ,{ "constructor" }
 ,{ "allows" }
 ,{ "you" }
 ,{ "to" }
 ,{ "specify" }
 ,{ "packet" }
 ,{ "formats" }
 ,{ "to" }
 ,{ "and" }
 ,{ "from" }
 ,{ "server." }
 ,{ "You" }
 ,{ "may" }
 ,{ "also" }
 ,{ "set" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "drop" }
 ,{ "rate" }
 ,{ "to" }
 ,{ "simulate" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "loss." }
 ,{ "Use" }
 ,{ "the" }
 ,{ "method" }
 ,{ "setDropRate()" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "drop" }
 ,{ "probability" }
 ,{ "is" }
 ,{ "drop_rate/drop_den" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "To" }
 ,{ "drive" }
 ,{ "the" }
 ,{ "Bridge" , & fmt_text_b }
 ,{ "," }
 ,{ "you" }
 ,{ "have" }
 ,{ "to" }
 ,{ "start" }
 ,{ "it" }
 ,{ "using" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "class" }
 ,{ "StartStop" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Bridge" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_BlockFifo#page , & page_CancelPacketList#page };

Link link = { &page } ;

}

scope page_CancelPacketList {

Text b0 = { {
 { "CancelPacketList" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/CancelPacketList.h" , & fmt_text_Files_b }
 ,{ "CCore/src/CancelPacketList.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "The" }
 ,{ "class" }
 ,{ "CancelPacketList" , & fmt_text_b }
 ,{ "implements" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "cancellation" }
 ,{ "for" }
 ,{ "packets," }
 ,{ "stored" }
 ,{ "in" }
 ,{ "some" }
 ,{ "PacketList" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "also" }
 ,{ "a" }
 ,{ "\"reference" }
 ,{ "design\"" }
 ,{ "for" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "cancellation" }
 ,{ "in" }
 ,{ "a" }
 ,{ "packet" }
 ,{ "processing" }
 ,{ "class." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "The" }
 ,{ "constructors" }
 ,{ "argument" }
 ,{ "name" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "name" }
 ,{ "the" }
 ,{ "internal" }
 ,{ "mutex." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "The" }
 ,{ "class" }
 ,{ "counts" }
 ,{ "some" }
 ,{ "events" }
 ,{ "and" }
 ,{ "the" }
 ,{ "event" }
 ,{ "statistic" }
 ,{ "is" }
 ,{ "available" }
 ,{ "through" }
 ,{ "the" }
 ,{ "method" }
 ,{ "getStat()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "The" }
 ,{ "class" }
 ,{ "can" }
 ,{ "serve" }
 ,{ "multiple" }
 ,{ "packet" }
 ,{ "lists." }
 ,{ "To" }
 ,{ "put" }
 ,{ "a" }
 ,{ "packet" }
 ,{ "to" }
 ,{ "the" }
 ,{ "list" }
 ,{ "there" }
 ,{ "are" }
 ,{ "two" }
 ,{ "main" }
 ,{ "methods" }
 ,{ "(and" }
 ,{ "two" }
 ,{ "variants):" }
 ,{ "try_put()" , & fmt_text_b }
 ,{ "and" }
 ,{ "put()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "put()" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "simple" }
 ,{ "upgrade" }
 ,{ "over" }
 ,{ "try_put()" , & fmt_text_b }
 ,{ ":" }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "try_put()" , & fmt_text_b }
 ,{ "puts" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "into" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "list" }
 ,{ "and" }
 ,{ "assigns" }
 ,{ "the" }
 ,{ "cancel" }
 ,{ "function" }
 ,{ "to" }
 ,{ "it." }
 ,{ "So" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "can" }
 ,{ "be" }
 ,{ "removed" }
 ,{ "from" }
 ,{ "the" }
 ,{ "list" }
 ,{ "upon" }
 ,{ "a" }
 ,{ "cancel" }
 ,{ "request." }
 ,{ "But" }
 ,{ "if" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "comes" }
 ,{ "in" }
 ,{ "the" }
 ,{ "canceled" }
 ,{ "state" }
 ,{ "(or" }
 ,{ "the" }
 ,{ "cancellation" }
 ,{ "happens" }
 ,{ "during" }
 ,{ "the" }
 ,{ "try_put()" , & fmt_text_b }
 ,{ "processing)," }
 ,{ "the" }
 ,{ "packet" }
 ,{ "is" }
 ,{ "not" }
 ,{ "placed" }
 ,{ "into" }
 ,{ "the" }
 ,{ "list" }
 ,{ "and" }
 ,{ "must" }
 ,{ "be" }
 ,{ "completed" }
 ,{ "(or" }
 ,{ "handled" }
 ,{ "by" }
 ,{ "another" }
 ,{ "way)." }
 ,{ "put()" , & fmt_text_b }
 ,{ "simply" }
 ,{ "complete" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "in" }
 ,{ "this" }
 ,{ "case." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "try_put()" , & fmt_text_b }
 ,{ "is" }
 ,{ "working" }
 ,{ "under" }
 ,{ "the" }
 ,{ "mutex" }
 ,{ "protection." }
 ,{ "It" }
 ,{ "starts" }
 ,{ "with" }
 ,{ "the" }
 ,{ "setting" }
 ,{ "the" }
 ,{ "cancel" }
 ,{ "function" }
 ,{ "to" }
 ,{ "the" }
 ,{ "packet." }
 ,{ "If" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "is" }
 ,{ "clean," }
 ,{ "then" }
 ,{ "try_put()" , & fmt_text_b }
 ,{ "extends" }
 ,{ "it" }
 ,{ "with" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "list" }
 ,{ "pointer" }
 ,{ "and" }
 ,{ "put" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "into" }
 ,{ "the" }
 ,{ "list." }
 ,{ "Now" }
 ,{ "packet" }
 ,{ "has" }
 ,{ "the" }
 ,{ "assigned" }
 ,{ "cancel" }
 ,{ "function" }
 ,{ "and" }
 ,{ "it" }
 ,{ "remembers" }
 ,{ "from" }
 ,{ "which" }
 ,{ "packet" }
 ,{ "list" }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "removed." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "The" }
 ,{ "cancel" }
 ,{ "function" }
 ,{ "also" }
 ,{ "is" }
 ,{ "working" }
 ,{ "under" }
 ,{ "the" }
 ,{ "mutex" }
 ,{ "protection." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "It" }
 ,{ "extracts" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "list" }
 ,{ "pointer" }
 ,{ "and" }
 ,{ "if" }
 ,{ "it" }
 ,{ "is" }
 ,{ "not" }
 ,{ "null," }
 ,{ "removes" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "from" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "list." }
 ,{ "Then" }
 ,{ "in" }
 ,{ "the" }
 ,{ "lock-free" }
 ,{ "context" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "is" }
 ,{ "popped" }
 ,{ "and" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "is" }
 ,{ "completed." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "list" }
 ,{ "pointer" }
 ,{ "may" }
 ,{ "be" }
 ,{ "null," }
 ,{ "because" }
 ,{ "it" }
 ,{ "is" }
 ,{ "nullified" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "get()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "To" }
 ,{ "extract" }
 ,{ "a" }
 ,{ "packet" }
 ,{ "from" }
 ,{ "the" }
 ,{ "list" }
 ,{ "the" }
 ,{ "method" }
 ,{ "get()" , & fmt_text_b }
 ,{ "is" }
 ,{ "used." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "To" }
 ,{ "get" }
 ,{ "a" }
 ,{ "packet," }
 ,{ "the" }
 ,{ "mutex" }
 ,{ "is" }
 ,{ "locked," }
 ,{ "then" }
 ,{ "the" }
 ,{ "first" }
 ,{ "packet" }
 ,{ "is" }
 ,{ "extracted" }
 ,{ "from" }
 ,{ "the" }
 ,{ "list." }
 ,{ "If" }
 ,{ "the" }
 ,{ "list" }
 ,{ "is" }
 ,{ "empty," }
 ,{ "the" }
 ,{ "method" }
 ,{ "is" }
 ,{ "finished" }
 ,{ "and" }
 ,{ "the" }
 ,{ "null" }
 ,{ "pointer" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "Otherwise" }
 ,{ "the" }
 ,{ "cancel" }
 ,{ "function" }
 ,{ "is" }
 ,{ "cleared." }
 ,{ "If" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "was" }
 ,{ "not" }
 ,{ "canceled," }
 ,{ "the" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "is" }
 ,{ "popped" }
 ,{ "and" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "Otherwise" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "pointer" }
 ,{ "is" }
 ,{ "nullified" }
 ,{ "and" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "is" }
 ,{ "dropped." }
 ,{ "That" }
 ,{ "is" }
 ,{ "because" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "originator" }
 ,{ "has" }
 ,{ "already" }
 ,{ "taken" }
 ,{ "the" }
 ,{ "cancel" }
 ,{ "function" }
 ,{ "and" }
 ,{ "going" }
 ,{ "to" }
 ,{ "call" }
 ,{ "it" }
 ,{ "or" }
 ,{ "may" }
 ,{ "did" }
 ,{ "it" }
 ,{ "already." }
 ,{ "In" }
 ,{ "the" }
 ,{ "last" }
 ,{ "case" }
 ,{ "the" }
 ,{ "cancel" }
 ,{ "function" }
 ,{ "execution" }
 ,{ "will" }
 ,{ "be" }
 ,{ "delayed" }
 ,{ "on" }
 ,{ "the" }
 ,{ "mutex" }
 ,{ "lock" }
 ,{ "and" }
 ,{ "continues" }
 ,{ "as" }
 ,{ "soon" }
 ,{ "as" }
 ,{ "we" }
 ,{ "release" }
 ,{ "the" }
 ,{ "mutex." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "is" }
 ,{ "extracted" }
 ,{ "from" }
 ,{ "the" }
 ,{ "list," }
 ,{ "so" }
 ,{ "we" }
 ,{ "have" }
 ,{ "to" }
 ,{ "nullify" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "list" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "prevent" }
 ,{ "the" }
 ,{ "second" }
 ,{ "attempt" }
 ,{ "to" }
 ,{ "remove" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "from" }
 ,{ "the" }
 ,{ "list." }
 ,{ "And" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "will" }
 ,{ "be" }
 ,{ "completed" }
 ,{ "by" }
 ,{ "the" }
 ,{ "cancel" }
 ,{ "function." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "The" }
 ,{ "last" }
 ,{ "two" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "helpers." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "get(PacketList" , & fmt_text_b }
 ,{ "$" , & fmt_text_b }
 ,{ "$" , & fmt_text_b }
 ,{ "moves" }
 ,{ "all" }
 ,{ "not" }
 ,{ "canceled" }
 ,{ "packets" }
 ,{ "from" }
 ,{ "the" }
 ,{ "list" }
 ,{ "to" }
 ,{ "another" }
 ,{ "list" }
 ,{ "for" }
 ,{ "a" }
 ,{ "further" }
 ,{ "processing." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "complete()" , & fmt_text_b }
 ,{ "completes" }
 ,{ "all" }
 ,{ "packets" }
 ,{ "from" }
 ,{ "the" }
 ,{ "list." }
 ,{ "The" }
 ,{ "list" }
 ,{ "becomes" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> CancelPacketList" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Bridge#page , & page_CapString#page };

Link link = { &page } ;

}

scope page_CapString {

Text b0 = { {
 { "CapString" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/CapString.h" , & fmt_text_Files_b }
 ,{ "CCore/src/CapString.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "CapString" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "simple" }
 ,{ "helper" }
 ,{ "class." }
 ,{ "It" }
 ,{ "copies" }
 ,{ "the" }
 ,{ "given" }
 ,{ "string" }
 ,{ "to" }
 ,{ "the" }
 ,{ "internal" }
 ,{ "buffer," }
 ,{ "caps" }
 ,{ "the" }
 ,{ "string" }
 ,{ "if" }
 ,{ "neccessary" }
 ,{ "and" }
 ,{ "makes" }
 ,{ "it" }
 ,{ "zero-terminated." }
 ,{ "The" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "is" }
 ,{ "the" }
 ,{ "cap" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> CapString" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_CancelPacketList#page , & page_CCoreGeneral#page };

Link link = { &page } ;

}

scope page_CCoreGeneral {

Text b0 = { {
 { "CCore" }
 ,{ "General" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Source" }
 ,{ "code" }
 ,{ "organization" }
} , & fmt_h3 , & align_h3 } ;

Text b2 = { {
 { "Most" }
 ,{ "of" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "declarations" }
 ,{ "are" }
 ,{ "enclosed" }
 ,{ "in" }
 ,{ "the" }
 ,{ "namespace" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "." }
 ,{ "There" }
 ,{ "are" }
 ,{ "several" }
 ,{ "inner" }
 ,{ "namespaces," }
 ,{ "like" }
 ,{ "Meta" , & fmt_text_b }
 ,{ "," }
 ,{ "Net" , & fmt_text_b }
 ,{ "," }
 ,{ "Math" , & fmt_text_b }
 ,{ "," }
 ,{ "Sys" , & fmt_text_b }
 ,{ "," }
 ,{ "Crypton" , & fmt_text_b }
 ,{ "," }
 ,{ "DDL" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Source" }
 ,{ "code" }
 ,{ "is" }
 ,{ "split" }
 ,{ "into" }
 ,{ "several" }
 ,{ "major" }
 ,{ "parts:" }
 ,{ "Simple" , & fmt_text_b }
 ,{ "," }
 ,{ "Fundamental" , & fmt_text_b }
 ,{ "," }
 ,{ "Applied" , & fmt_text_b }
 ,{ "," }
 ,{ "HCore" , & fmt_text_b }
 ,{ "," }
 ,{ "XCore" , & fmt_text_b }
 ,{ "and" }
 ,{ "Target" , & fmt_text_b }
 ,{ "." }
 ,{ "First" }
 ,{ "five" }
 ,{ "are" }
 ,{ "located" }
 ,{ "in" }
 ,{ "the" }
 ,{ "same" }
 ,{ "named" }
 ,{ "directories" }
 ,{ "in" }
 ,{ "the" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "root" , & fmt_text_b }
 ,{ "." }
 ,{ "Last" }
 ,{ "one" }
 ,{ "is" }
 ,{ "located" }
 ,{ "in" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "Target/<TargetName>" , & fmt_text_b }
 ,{ "." }
 ,{ "Tools" }
 ,{ "are" }
 ,{ "located" }
 ,{ "in" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "tools" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Source" }
 ,{ "code" }
 ,{ "parts" }
 ,{ "consist" }
 ,{ "of" }
 ,{ "three" }
 ,{ "directories" }
 ,{ ":" }
 ,{ "inc" , & fmt_text_b }
 ,{ "," }
 ,{ "src" , & fmt_text_b }
 ,{ "," }
 ,{ "and" }
 ,{ "test" , & fmt_text_b }
 ,{ "." }
 ,{ "So" }
 ,{ "to" }
 ,{ "include" }
 ,{ "a" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "header" }
 ,{ "write" }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "Each" }
 ,{ "CCore" , & fmt_text_b }
 ,{ ".h" , & fmt_text_b }
 ,{ "file" }
 ,{ "has" }
 ,{ "a" }
 ,{ "correspondent" }
 ,{ ".cpp" , & fmt_text_b }
 ,{ "file," }
 ,{ "even" }
 ,{ "if" }
 ,{ "it" }
 ,{ "defines" }
 ,{ "nothing." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "Each" }
 ,{ "target" }
 ,{ "is" }
 ,{ "either" }
 ,{ "HCore" , & fmt_text_b }
 ,{ "or" }
 ,{ "XCore" , & fmt_text_b }
 ,{ "target," }
 ,{ "so" }
 ,{ "it" }
 ,{ "includes" }
 ,{ "only" }
 ,{ "one" }
 ,{ "part:" }
 ,{ "HCore" , & fmt_text_b }
 ,{ "or" }
 ,{ "XCore" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "HCore" , & fmt_text_b }
 ,{ "targets" }
 ,{ "are" }
 ,{ "host" }
 ,{ "targets," }
 ,{ "XCore" , & fmt_text_b }
 ,{ "targets" }
 ,{ "are" }
 ,{ "device" }
 ,{ "targets." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "CCore" , & fmt_h3_b }
 ,{ "-based" }
 ,{ "projects" }
} , & fmt_h3 , & align_h3 } ;

Text b9 = { {
 { "To" }
 ,{ "create" }
 ,{ "a" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "-based" }
 ,{ "project" }
 ,{ "select" }
 ,{ "a" }
 ,{ "directory" }
 ,{ "for" }
 ,{ "it." }
 ,{ "Then" }
 ,{ "place" }
 ,{ "in" }
 ,{ "this" }
 ,{ "directory" }
 ,{ "(or" }
 ,{ "in" }
 ,{ "subdirectories)" }
 ,{ "a" }
 ,{ "source" }
 ,{ "code." }
 ,{ "Two" }
 ,{ "source" }
 ,{ "files" }
 ,{ "must" }
 ,{ "not" }
 ,{ "have" }
 ,{ "the" }
 ,{ "same" }
 ,{ "name," }
 ,{ "even" }
 ,{ "if" }
 ,{ "they" }
 ,{ "are" }
 ,{ "in" }
 ,{ "different" }
 ,{ "subdirectories." }
 ,{ "You" }
 ,{ "may" }
 ,{ "use" }
 ,{ "files" }
 ,{ "with" }
 ,{ "extension" }
 ,{ "\".cpp\"" , & fmt_text_b }
 ,{ "for" }
 ,{ "C++" }
 ,{ "source" }
 ,{ "files" }
 ,{ "ans" }
 ,{ "\".s\"" , & fmt_text_b }
 ,{ "for" }
 ,{ "assembler" }
 ,{ "source" }
 ,{ "files." }
 ,{ "Create" }
 ,{ "the" }
 ,{ "Makefile" , & fmt_text_b }
 ,{ "." }
 ,{ "Select" }
 ,{ "and" }
 ,{ "create" }
 ,{ "a" }
 ,{ "subdirectory" }
 ,{ "for" }
 ,{ "object" }
 ,{ "files" }
 ,{ "(and" }
 ,{ "other" }
 ,{ "intermediate" }
 ,{ "files)," }
 ,{ "usually" }
 ,{ ".obj" , & fmt_text_b }
 ,{ "." }
 ,{ "Then" }
 ,{ "issue" }
 ,{ "the" }
 ,{ "command" }
 ,{ "make" , & fmt_text_b }
 ,{ "from" }
 ,{ "the" }
 ,{ "Cygwin" , & fmt_text_b }
 ,{ "console." }
 ,{ "If" }
 ,{ "you" }
 ,{ "change" }
 ,{ "the" }
 ,{ "source" }
 ,{ "file" }
 ,{ "set," }
 ,{ "then" }
 ,{ "issue" }
 ,{ "the" }
 ,{ "command" }
 ,{ "make" , & fmt_text_b }
 ,{ "list" , & fmt_text_b }
 ,{ "." }
 ,{ "You" }
 ,{ "may" }
 ,{ "also" }
 ,{ "erase" }
 ,{ "dependency" }
 ,{ "files" }
 ,{ "using" }
 ,{ "the" }
 ,{ "command" }
 ,{ "make" , & fmt_text_b }
 ,{ "dep" , & fmt_text_b }
 ,{ "(sometimes" }
 ,{ "required)." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "Here" }
 ,{ "is" }
 ,{ "an" }
 ,{ "example" }
 ,{ "of" }
 ,{ "Makefile" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "You" }
 ,{ "have" }
 ,{ "to" }
 ,{ "define" }
 ,{ "the" }
 ,{ "following" }
 ,{ "variables." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "CCORE_ROOT" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "path" }
 ,{ "to" }
 ,{ "the" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "root" }
 ,{ "directory." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "CCORE_TARGET" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "target" }
 ,{ "name." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "OBJ_PATH" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "path" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "file" }
 ,{ "directory." }
 ,{ "This" }
 ,{ "variable" }
 ,{ "can" }
 ,{ "be" }
 ,{ "omitted," }
 ,{ "in" }
 ,{ "this" }
 ,{ "case" }
 ,{ "the" }
 ,{ "default" }
 ,{ "value" }
 ,{ "\".obj\"" , & fmt_text_b }
 ,{ "is" }
 ,{ "used." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "TARGET" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "application" }
 ,{ "file" }
 ,{ "name." }
 ,{ "This" }
 ,{ "variable" }
 ,{ "can" }
 ,{ "be" }
 ,{ "omitted," }
 ,{ "in" }
 ,{ "this" }
 ,{ "case" }
 ,{ "the" }
 ,{ "default" }
 ,{ "value" }
 ,{ "\"main.exe\"" , & fmt_text_b }
 ,{ "is" }
 ,{ "used." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "The" }
 ,{ "following" }
 ,{ "\"magic" }
 ,{ "line\"" }
 ,{ "must" }
 ,{ "follow:" }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "For" }
 ,{ "your" }
 ,{ "convenience" }
 ,{ "you" }
 ,{ "may" }
 ,{ "include" }
 ,{ "optional" }
 ,{ "make" }
 ,{ "targets" }
 ,{ "like" }
 ,{ "run" , & fmt_text_b }
 ,{ "above." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "There" }
 ,{ "are" }
 ,{ "additional" }
 ,{ "optional" }
 ,{ "variables" }
 ,{ "you" }
 ,{ "may" }
 ,{ "define." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "SRC_PATH_LIST" , & fmt_text_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "list" }
 ,{ "of" }
 ,{ "source" }
 ,{ "file" }
 ,{ "directories." }
 ,{ "It" }
 ,{ "is" }
 ,{ "\".\"" , & fmt_text_b }
 ,{ "by" }
 ,{ "default." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "CCOPT_EXTRA" , & fmt_text_b }
 ,{ "—" }
 ,{ "additional" }
 ,{ "options" }
 ,{ "for" }
 ,{ "the" }
 ,{ "C++" }
 ,{ "compiler." }
 ,{ "It" }
 ,{ "is" }
 ,{ "empty" }
 ,{ "by" }
 ,{ "default." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "LDOPT_EXTRA" , & fmt_text_b }
 ,{ "—" }
 ,{ "additional" }
 ,{ "options" }
 ,{ "for" }
 ,{ "the" }
 ,{ "linker." }
 ,{ "It" }
 ,{ "is" }
 ,{ "empty" }
 ,{ "by" }
 ,{ "default." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "If" }
 ,{ "you" }
 ,{ "want" }
 ,{ "to" }
 ,{ "build" }
 ,{ "a" }
 ,{ "libray," }
 ,{ "not" }
 ,{ "an" }
 ,{ "executable," }
 ,{ "then" }
 ,{ "use" }
 ,{ "another" }
 ,{ "\"magic" }
 ,{ "line\":" }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "Names" }
 ,{ "and" }
 ,{ "decorations" }
} , & fmt_h3 , & align_h3 } ;

Text b24 = { {
 { "All" }
 ,{ "global" }
 ,{ "entities" }
 ,{ "have" }
 ,{ "capitalized" }
 ,{ "names." }
 ,{ "I.e." }
 ,{ "class" }
 ,{ "names," }
 ,{ "global" }
 ,{ "objects" }
 ,{ "etc." }
 ,{ "Local" }
 ,{ "object" }
 ,{ "names," }
 ,{ "non-static" }
 ,{ "members" }
 ,{ "and" }
 ,{ "method" }
 ,{ "names" }
 ,{ "start" }
 ,{ "from" }
 ,{ "lowercase" }
 ,{ "letters." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "Here" }
 ,{ "is" }
 ,{ "an" }
 ,{ "example" }
 ,{ "of" }
 ,{ "the" }
 ,{ "class" }
 ,{ "definition:" }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "The" }
 ,{ "private" }
 ,{ "part" }
 ,{ "goes" }
 ,{ "first," }
 ,{ "the" }
 ,{ "public" }
 ,{ "is" }
 ,{ "last." }
 ,{ "Members" }
 ,{ "are" }
 ,{ "decorated" }
 ,{ "like" }
 ,{ "\"item_count\"" , & fmt_text_b }
 ,{ "." }
 ,{ "Methods" }
 ,{ "like" }
 ,{ "\"getItemCount()\"" , & fmt_text_b }
 ,{ "." }
 ,{ "Getters" }
 ,{ "like" }
 ,{ "\"getItemCount()\"" , & fmt_text_b }
 ,{ "and" }
 ,{ "setters" }
 ,{ "like" }
 ,{ "\"setItemCount()\"" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "argument," }
 ,{ "used" }
 ,{ "to" }
 ,{ "initialize" }
 ,{ "the" }
 ,{ "member" }
 ,{ "\"item_count\"" , & fmt_text_b }
 ,{ "," }
 ,{ "named" }
 ,{ "as" }
 ,{ "\"item_count_\"" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "Suffixes" }
 ,{ "are" }
 ,{ "used" }
 ,{ "to" }
 ,{ "name" }
 ,{ "variants:" }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "Sections" }
 ,{ "are" }
 ,{ "used" }
 ,{ "to" }
 ,{ "group" }
 ,{ "members:" }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "The" }
 ,{ "popular" }
 ,{ "words" }
 ,{ "are:" }
 ,{ "\"count\"" , & fmt_text_b }
 ,{ "," }
 ,{ "\"len\"" , & fmt_text_b }
 ,{ "," }
 ,{ "\"obj\"" , & fmt_text_b }
 ,{ "," }
 ,{ "\"try...\"" , & fmt_text_b }
 ,{ "," }
 ,{ "\"zstr\"" , & fmt_text_b }
 ,{ "," }
 ,{ "\"d...\"" , & fmt_text_b }
 ,{ "to" }
 ,{ "designate" }
 ,{ "a" }
 ,{ "delta" }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "A" }
 ,{ "loop" }
 ,{ "for" , & fmt_text_b }
 ,{ "example:" }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "Another" }
 ,{ "example:" }
} , & fmt_text , & align_text } ;

Text b32 = { {
 { "operator" }
 ,{ "+" }
 ,{ "and" }
 ,{ "the" }
 ,{ "\"null\"" }
 ,{ "state" }
} , & fmt_h3 , & align_h3 } ;

Text b33 = { {
 { "There" }
 ,{ "are" }
 ,{ "many" }
 ,{ "types," }
 ,{ "which" }
 ,{ "have" }
 ,{ "a" }
 ,{ "special" }
 ,{ "state" }
 ,{ "—" }
 ,{ "\"null\"" }
 ,{ "state." }
 ,{ "Usually" }
 ,{ "for" }
 ,{ "such" }
 ,{ "types" }
 ,{ "the" }
 ,{ "default" }
 ,{ "constructor" }
 ,{ "creates" }
 ,{ "a" }
 ,{ "\"null\"" }
 ,{ "object." }
 ,{ "CCore" , & fmt_text_b }
 ,{ "often" }
 ,{ "defines" }
 ,{ "the" }
 ,{ "Nothing" , & fmt_text_b }
 ,{ "-constructor" }
 ,{ "to" }
 ,{ "do" }
 ,{ "the" }
 ,{ "same." }
 ,{ "And" }
 ,{ "two" }
 ,{ "operators:" }
 ,{ "operator" , & fmt_text_b }
 ,{ "+" , & fmt_text_b }
 ,{ "and" }
 ,{ "operator" , & fmt_text_b }
 ,{ "!" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "check," }
 ,{ "if" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "\"null\"." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> CCore General" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_text , outer_text , back_text }
 ,{ & b32 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b33 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_CapString#page , & page_CharProp#page };

Link link = { &page } ;

}

scope page_CharProp {

Text b0 = { {
 { "Basic" }
 ,{ "character" }
 ,{ "properties" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/CharProp.h" , & fmt_text_Files_b }
 ,{ "CCore/src/CharProp.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "header" }
 ,{ "contains" }
 ,{ "a" }
 ,{ "number" }
 ,{ "of" }
 ,{ "tools" }
 ,{ "to" }
 ,{ "deal" }
 ,{ "with" }
 ,{ "character" }
 ,{ "properties." }
 ,{ "They" }
 ,{ "are" }
 ,{ "all" }
 ,{ "efficient," }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "in" }
 ,{ "any" }
 ,{ "context" }
 ,{ "and" }
 ,{ "non-mutable," }
 ,{ "i.e." }
 ,{ "do" }
 ,{ "not" }
 ,{ "depend" }
 ,{ "on" }
 ,{ "any" }
 ,{ "global" }
 ,{ "settings," }
 ,{ "like" }
 ,{ "locale." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "CharCode" }
} , & fmt_h4 , & align_h4 } ;

Text b4 = { {
 { "CCore" , & fmt_text_b }
 ,{ "assumes" }
 ,{ "the" }
 ,{ "character" }
 ,{ "type" }
 ,{ "is" }
 ,{ "8-bit" }
 ,{ "and" }
 ,{ "uses" }
 ,{ "ASCII" }
 ,{ "encoding" }
 ,{ "(at" }
 ,{ "least" }
 ,{ "for" }
 ,{ "the" }
 ,{ "first" }
 ,{ "128" }
 ,{ "code" }
 ,{ "positions)." }
 ,{ "The" }
 ,{ "class" }
 ,{ "ASCIICode" , & fmt_text_b }
 ,{ "represents" }
 ,{ "an" }
 ,{ "ASCII" }
 ,{ "code." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "ASCIICode" , & fmt_text_b }
 ,{ "default" }
 ,{ "constructor" }
 ,{ "creates" }
 ,{ "a" }
 ,{ "zero" }
 ,{ "ASCII" }
 ,{ "code." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "ASCIICode" , & fmt_text_b }
 ,{ "constructor" }
 ,{ "maps" }
 ,{ "a" }
 ,{ "character" }
 ,{ "(one" }
 ,{ "of" }
 ,{ "type" }
 ,{ "char" , & fmt_text_b }
 ,{ "," }
 ,{ "signed" , & fmt_text_b }
 ,{ "char" , & fmt_text_b }
 ,{ "," }
 ,{ "unsigned" , & fmt_text_b }
 ,{ "char" , & fmt_text_b }
 ,{ ")" }
 ,{ "into" }
 ,{ "its" }
 ,{ "ASCII" }
 ,{ "code." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "isSpecial()" , & fmt_text_b }
 ,{ "—" }
 ,{ "special," }
 ,{ "i.e." }
 ,{ "not" }
 ,{ "intended" }
 ,{ "to" }
 ,{ "represent" }
 ,{ "a" }
 ,{ "symbol." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "isVisible()" , & fmt_text_b }
 ,{ "—" }
 ,{ "visible," }
 ,{ "i.e." }
 ,{ "printable" }
 ,{ "and" }
 ,{ "not" }
 ,{ "a" }
 ,{ "space." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "isPrintable()" , & fmt_text_b }
 ,{ "—" }
 ,{ "printable," }
 ,{ "i.e." }
 ,{ "not" }
 ,{ "a" }
 ,{ "special." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "isSpace()" , & fmt_text_b }
 ,{ "—" }
 ,{ "space" }
 ,{ "and" }
 ,{ "some" }
 ,{ "special" }
 ,{ "\"space-like\"" }
 ,{ "characters." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "isPunct()" , & fmt_text_b }
 ,{ "—" }
 ,{ "punctuation" }
 ,{ "characters." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "isSpaceOrPunct()" , & fmt_text_b }
 ,{ "—" }
 ,{ "equivalent" }
 ,{ "of" }
 ,{ "isSpace()" , & fmt_text_b }
 ,{ "||" , & fmt_text_b }
 ,{ "isPunct()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "decValue()" , & fmt_text_b }
 ,{ "—" }
 ,{ "decimal" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "character," }
 ,{ "or" }
 ,{ "-1" }
 ,{ "if" }
 ,{ "not" }
 ,{ "a" }
 ,{ "decimal" }
 ,{ "digit." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "hexValue()" , & fmt_text_b }
 ,{ "—" }
 ,{ "hexadecimal" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "character," }
 ,{ "or" }
 ,{ "-1" }
 ,{ "if" }
 ,{ "not" }
 ,{ "a" }
 ,{ "hexadecimal" }
 ,{ "digit." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "getChar()" , & fmt_text_b }
 ,{ "maps" }
 ,{ "the" }
 ,{ "code" }
 ,{ "back" }
 ,{ "to" }
 ,{ "the" }
 ,{ "character" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "ASCIICode" , & fmt_text_b }
 ,{ "is" }
 ,{ "printable." }
 ,{ "Special" }
 ,{ "characters" }
 ,{ "are" }
 ,{ "printed" }
 ,{ "using" }
 ,{ "C-backslash" }
 ,{ "representation," }
 ,{ "like" }
 ,{ "\"\\n\"" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "CharCode" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "typedef" }
 ,{ "for" }
 ,{ "the" }
 ,{ "ASCIICode" , & fmt_text_b }
 ,{ "," }
 ,{ "it's" }
 ,{ "an" }
 ,{ "abstraction" }
 ,{ "from" }
 ,{ "an" }
 ,{ "exact" }
 ,{ "type" }
 ,{ "of" }
 ,{ "encoding." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "ExtCharCode" }
} , & fmt_h4 , & align_h4 } ;

Text b19 = { {
 { "ExtCharCode" , & fmt_text_b }
 ,{ "prints" }
 ,{ "a" }
 ,{ "symbol." }
 ,{ "In" }
 ,{ "UTF8-compatible" }
 ,{ "mode" }
 ,{ "this" }
 ,{ "class" }
 ,{ "holds" }
 ,{ "a" }
 ,{ "UTF8Code" , & fmt_text_b }
 ,{ "value" }
 ,{ "and" }
 ,{ "prints" }
 ,{ "it" }
 ,{ "using" }
 ,{ "C-backslash" }
 ,{ "notation," }
 ,{ "if" }
 ,{ "the" }
 ,{ "symbol" }
 ,{ "is" }
 ,{ "special." }
 ,{ "Otherwise" }
 ,{ "this" }
 ,{ "type" }
 ,{ "is" }
 ,{ "CharCode" , & fmt_text_b }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "PrintCString" }
} , & fmt_h4 , & align_h4 } ;

Text b21 = { {
 { "PrintCString" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "helper" }
 ,{ "class" }
 ,{ "to" }
 ,{ "print" }
 ,{ "a" }
 ,{ "string." }
 ,{ "Each" }
 ,{ "special" }
 ,{ "symbol" }
 ,{ "is" }
 ,{ "printed" }
 ,{ "using" }
 ,{ "its" }
 ,{ "C" }
 ,{ "representation," }
 ,{ "like" }
 ,{ "\"\\n\"" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Link link_Prop = { & page , { 22 } } ;

Text b22 = { {
 { "Character" }
 ,{ "properties" }
} , & fmt_h4 , & align_h4 } ;

Text b23 = { {
 { "The" }
 ,{ "following" }
 ,{ "functions" }
 ,{ "return" }
 ,{ "character" }
 ,{ "properties." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "type" }
 ,{ "is" }
 ,{ "one" }
 ,{ "of" }
 ,{ "traditional" }
 ,{ "character" }
 ,{ "types:" }
 ,{ "char" , & fmt_text_b }
 ,{ "," }
 ,{ "signed" , & fmt_text_b }
 ,{ "char" , & fmt_text_b }
 ,{ "," }
 ,{ "unsigned" , & fmt_text_b }
 ,{ "char" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "CharIsSpecial()" , & fmt_text_b }
 ,{ "—" }
 ,{ "special," }
 ,{ "i.e." }
 ,{ "not" }
 ,{ "intended" }
 ,{ "to" }
 ,{ "represent" }
 ,{ "a" }
 ,{ "symbol." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "CharIsVisible()" , & fmt_text_b }
 ,{ "—" }
 ,{ "visible," }
 ,{ "i.e." }
 ,{ "printable" }
 ,{ "and" }
 ,{ "not" }
 ,{ "a" }
 ,{ "space." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "CharIsPrintable()" , & fmt_text_b }
 ,{ "—" }
 ,{ "printable," }
 ,{ "i.e." }
 ,{ "not" }
 ,{ "a" }
 ,{ "special." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "CharIsSpace()" , & fmt_text_b }
 ,{ "—" }
 ,{ "space" }
 ,{ "and" }
 ,{ "some" }
 ,{ "special" }
 ,{ "characters." }
 ,{ "The" }
 ,{ "full" }
 ,{ "list" }
 ,{ "is" }
 ,{ "\"" , & fmt_text_b }
 ,{ "\\t\\f\\v\\r\\n\"" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "list" }
 ,{ "can" }
 ,{ "be" }
 ,{ "obtained" }
 ,{ "by" }
 ,{ "the" }
 ,{ "GetSpaceChars()" , & fmt_text_b }
 ,{ "function." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "CharIsPunct()" , & fmt_text_b }
 ,{ "—" }
 ,{ "punctuation" }
 ,{ "characters." }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "CharIsSpaceOrPunct()" , & fmt_text_b }
 ,{ "—" }
 ,{ "equivalent" }
 ,{ "of" }
 ,{ "CharIsSpace()" , & fmt_text_b }
 ,{ "||" , & fmt_text_b }
 ,{ "CharIsPunct()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "CharDecValue()" , & fmt_text_b }
 ,{ "—" }
 ,{ "decimal" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "character," }
 ,{ "or" }
 ,{ "-1" , & fmt_text_b }
 ,{ "if" }
 ,{ "not" }
 ,{ "a" }
 ,{ "decimal" }
 ,{ "digit." }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "CharHexValue()" , & fmt_text_b }
 ,{ "—" }
 ,{ "hexadecimal" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "character," }
 ,{ "or" }
 ,{ "-1" , & fmt_text_b }
 ,{ "if" }
 ,{ "not" }
 ,{ "a" }
 ,{ "hexadecimal" }
 ,{ "digit." }
} , & fmt_text , & align_text } ;

Text b32 = { {
 { "In" }
 ,{ "UTF8-compatible" }
 ,{ "mode" }
 ,{ "there" }
 ,{ "are" }
 ,{ "extra" }
 ,{ "functions" }
 ,{ "for" }
 ,{ "Utf8Code" , & fmt_text_b }
 ,{ "argument:" }
} , & fmt_text , & align_text } ;

Text b33 = { {
 { "Character" }
 ,{ "sets" }
} , & fmt_h4 , & align_h4 } ;

Text b34 = { {
 { "The" }
 ,{ "following" }
 ,{ "functions" }
 ,{ "return" }
 ,{ "zero-terminated" }
 ,{ "strings," }
 ,{ "these" }
 ,{ "strings" }
 ,{ "contain" }
 ,{ "some" }
 ,{ "important" }
 ,{ "character" }
 ,{ "sets." }
} , & fmt_text , & align_text } ;

Text b35 = { {
 { "GetSpaceChars()" , & fmt_text_b }
 ,{ "—" }
 ,{ "\"traditional\"" }
 ,{ "C-space" }
 ,{ "characters." }
} , & fmt_text , & align_text } ;

Text b36 = { {
 { "GetPunctChars()" , & fmt_text_b }
 ,{ "—" }
 ,{ "punctuation" }
 ,{ "characters." }
} , & fmt_text , & align_text } ;

Text b37 = { {
 { "GetDigitChars()" , & fmt_text_b }
 ,{ "—" }
 ,{ "decimal" }
 ,{ "digits." }
} , & fmt_text , & align_text } ;

Text b38 = { {
 { "GetHexDigitChars()" , & fmt_text_b }
 ,{ "—" }
 ,{ "hexadecimal" }
 ,{ "digits." }
} , & fmt_text , & align_text } ;

Text b39 = { {
 { "GetCLetterChars()" , & fmt_text_b }
 ,{ "—" }
 ,{ "C-letters," }
 ,{ "including" }
 ,{ "underscore." }
} , & fmt_text , & align_text } ;

Text b40 = { {
 { "Line" }
 ,{ "parsing" }
} , & fmt_h4 , & align_h4 } ;

Text b41 = { {
 { "The" }
 ,{ "following" }
 ,{ "function" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "split" }
 ,{ "the" }
 ,{ "given" }
 ,{ "text" }
 ,{ "into" }
 ,{ "lines:" }
} , & fmt_text , & align_text } ;

Text b42 = { {
 { "The" }
 ,{ "function" }
 ,{ "performs" }
 ,{ "a" }
 ,{ "text" }
 ,{ "search" }
 ,{ "for" }
 ,{ "the" }
 ,{ "line-end" }
 ,{ "dividers:" }
 ,{ "\"\\r\"," , & fmt_text_b }
 ,{ "\"\\n\"," , & fmt_text_b }
 ,{ "\"\\r\\n\"" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "a" }
 ,{ "divider" }
 ,{ "is" }
 ,{ "found," }
 ,{ "the" }
 ,{ "part" }
 ,{ "before" }
 ,{ "the" }
 ,{ "divider" }
 ,{ "is" }
 ,{ "returned" }
 ,{ "and" }
 ,{ "text" , & fmt_text_b }
 ,{ "is" }
 ,{ "changed" }
 ,{ "to" }
 ,{ "the" }
 ,{ "part" }
 ,{ "after" }
 ,{ "the" }
 ,{ "divider." }
 ,{ "Otherwise," }
 ,{ "the" }
 ,{ "entire" }
 ,{ "text" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned" }
 ,{ "and" }
 ,{ "text" , & fmt_text_b }
 ,{ "is" }
 ,{ "changed" }
 ,{ "to" }
 ,{ "the" }
 ,{ "null" }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Basic character properties" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_text , outer_text , back_text }
 ,{ & b32 , null , inner_text , outer_text , back_text }
 ,{ & b33 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b34 , null , inner_text , outer_text , back_text }
 ,{ & b35 , null , inner_text , outer_text , back_text }
 ,{ & b36 , null , inner_text , outer_text , back_text }
 ,{ & b37 , null , inner_text , outer_text , back_text }
 ,{ & b38 , null , inner_text , outer_text , back_text }
 ,{ & b39 , null , inner_text , outer_text , back_text }
 ,{ & b40 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b41 , null , inner_text , outer_text , back_text }
 ,{ & b42 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_CCoreGeneral#page , & page_CharUtils#page };

Link link = { &page } ;

}

scope page_CharUtils {

Text b0 = { {
 { "CharUtils" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/CharUtils.h" , & fmt_text_Files_b }
 ,{ "CCore/src/CharUtils.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "file" }
 ,{ "contains" }
 ,{ "simple" }
 ,{ "tools" }
 ,{ "to" }
 ,{ "work" }
 ,{ "with" }
 ,{ "text," }
 ,{ "represented" }
 ,{ "by" }
 ,{ "a" }
 ,{ "Char" , & fmt_text_b }
 ,{ "sequence." }
 ,{ "In" }
 ,{ "UTF8-compatible" }
 ,{ "mode" }
 ,{ "conversion" }
 ,{ "from" }
 ,{ "char" , & fmt_text_b }
 ,{ "text" }
 ,{ "into" }
 ,{ "Char" , & fmt_text_b }
 ,{ "text" }
 ,{ "is" }
 ,{ "performed." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "FillCharBuf" }
} , & fmt_h4 , & align_h4 } ;

Text b4 = { {
 { "This" }
 ,{ "Class-function" , & fmt_text_b }
 ,{ "fills" }
 ,{ "a" }
 ,{ "Char" , & fmt_text_b }
 ,{ "buffer" }
 ,{ "with" }
 ,{ "a" }
 ,{ "text." }
 ,{ "The" }
 ,{ "result" }
 ,{ "fields" }
 ,{ "is" }
 ,{ "the" }
 ,{ "output" }
 ,{ "length" }
 ,{ "and" }
 ,{ "the" }
 ,{ "overflow" }
 ,{ "flag." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "PrintCharBuf" }
} , & fmt_h4 , & align_h4 } ;

Text b6 = { {
 { "This" }
 ,{ "class" }
 ,{ "prints" }
 ,{ "into" }
 ,{ "a" }
 ,{ "Char" , & fmt_text_b }
 ,{ "buffer." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "close()" , & fmt_text_b }
 ,{ "flushes" }
 ,{ "the" }
 ,{ "stream" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "output" }
 ,{ "range." }
 ,{ "If" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "this" }
 ,{ "method" }
 ,{ "throws" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "overflow." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "ScanCharString" }
} , & fmt_h4 , & align_h4 } ;

Text b9 = { {
 { "This" }
 ,{ "class" }
 ,{ "scans" }
 ,{ "from" }
 ,{ "a" }
 ,{ "Char" , & fmt_text_b }
 ,{ "string." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> CharUtils" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b9 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_CharProp#page , & page_CheckedData#page };

Link link = { &page } ;

}

scope page_CheckedData {

Text b0 = { {
 { "CheckedData" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/net/CheckedData.h" , & fmt_text_Files_b }
 ,{ "CCore/src/net/CheckedData.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "The" }
 ,{ "class" }
 ,{ "CheckedData" , & fmt_text_b }
 ,{ "is" }
 ,{ "useful" }
 ,{ "for" }
 ,{ "net" }
 ,{ "testing." }
 ,{ "You" }
 ,{ "can" }
 ,{ "fill" }
 ,{ "a" }
 ,{ "data" }
 ,{ "payload" }
 ,{ "with" }
 ,{ "checked" }
 ,{ "random" }
 ,{ "data" }
 ,{ "and" }
 ,{ "verify" }
 ,{ "its" }
 ,{ "integrity." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "The" }
 ,{ "method" }
 ,{ "getLen()" , & fmt_text_b }
 ,{ "selects" }
 ,{ "the" }
 ,{ "random" }
 ,{ "length" }
 ,{ "from" }
 ,{ "2" , & fmt_text_b }
 ,{ "to" }
 ,{ "max_len" , & fmt_text_b }
 ,{ "." }
 ,{ "max_len" , & fmt_text_b }
 ,{ "should" }
 ,{ "be" }
 ,{ ">" , & fmt_text_b }
 ,{ "2" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "the" }
 ,{ "max_len" , & fmt_text_b }
 ,{ "<=" }
 ,{ "2," }
 ,{ "the" }
 ,{ "max_len" , & fmt_text_b }
 ,{ "is" }
 ,{ "always" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "fill()" , & fmt_text_b }
 ,{ "fills" }
 ,{ "the" }
 ,{ "given" }
 ,{ "byte" }
 ,{ "range" }
 ,{ "with" }
 ,{ "checked" }
 ,{ "random" }
 ,{ "data." }
 ,{ "It" }
 ,{ "is" }
 ,{ "expected," }
 ,{ "the" }
 ,{ "range" }
 ,{ "lengtn" }
 ,{ "is" }
 ,{ ">=" , & fmt_text_b }
 ,{ "2" , & fmt_text_b }
 ,{ "." }
 ,{ "Otherwise," }
 ,{ "the" }
 ,{ "method" }
 ,{ "does" }
 ,{ "nothing" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "false" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "check()" , & fmt_text_b }
 ,{ "checks" }
 ,{ "the" }
 ,{ "data" }
 ,{ "range" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "it" }
 ,{ "is" }
 ,{ "correct." }
 ,{ "random" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "used" }
 ,{ "in" }
 ,{ "this" }
 ,{ "method," }
 ,{ "so" }
 ,{ "this" }
 ,{ "method" }
 ,{ "is" }
 ,{ "multi-thread" }
 ,{ "safe." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> CheckedData" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_CharUtils#page , & page_Classification#page };

Link link = { &page } ;

}

scope page_Classification {

Text b0 = { {
 { "Classification" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/gadget/Classification.h" , & fmt_text_Files_b }
 ,{ "CCore/src/gadget/Classification.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "file" }
 ,{ "provides" }
 ,{ "a" }
 ,{ "variety" }
 ,{ "of" }
 ,{ "widely-used" }
 ,{ "concepts" }
 ,{ "in" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Simple" }
 ,{ "concepts" }
} , & fmt_h3 , & align_h3 } ;

Text b4 = { {
 { "AnyType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "any" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "NoType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "no" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "UIntType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "types," }
 ,{ "i.e." }
 ,{ "types" }
 ,{ "with" }
 ,{ "Meta::IsUInt<T>" , & fmt_text_b }
 ,{ "==" , & fmt_text_b }
 ,{ "true" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "SIntType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "signed" }
 ,{ "integral" }
 ,{ "types," }
 ,{ "i.e." }
 ,{ "types" }
 ,{ "with" }
 ,{ "Meta::IsSInt<T>" , & fmt_text_b }
 ,{ "==" , & fmt_text_b }
 ,{ "true" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "S2sIntType" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "subset" }
 ,{ "of" }
 ,{ "SIntType" , & fmt_text_b }
 ,{ "with" }
 ,{ "2s" }
 ,{ "complemet" }
 ,{ "arithmetic." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "SUIntType" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "union" }
 ,{ "of" }
 ,{ "the" }
 ,{ "UIntType" , & fmt_text_b }
 ,{ "and" }
 ,{ "SIntType" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "VoidType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "void" , & fmt_text_b }
 ,{ "and" }
 ,{ "const" , & fmt_text_b }
 ,{ "void" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "ConstCharType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "const" , & fmt_text_b }
 ,{ "char" , & fmt_text_b }
 ,{ "and" }
 ,{ "const" , & fmt_text_b }
 ,{ "unsigned" , & fmt_text_b }
 ,{ "char" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "CharType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "char" , & fmt_text_b }
 ,{ "," }
 ,{ "unsigned" , & fmt_text_b }
 ,{ "char" , & fmt_text_b }
 ,{ "," }
 ,{ "const" , & fmt_text_b }
 ,{ "char" , & fmt_text_b }
 ,{ "and" }
 ,{ "const" , & fmt_text_b }
 ,{ "unsigned" , & fmt_text_b }
 ,{ "char" , & fmt_text_b }
 ,{ "." }
 ,{ "ConstCharType" , & fmt_text_b }
 ,{ "=>" }
 ,{ "CharType" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "ULenType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "the" }
 ,{ "type" }
 ,{ "ulen" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "IsType<S>" , & fmt_text_b }
 ,{ "covers" }
 ,{ "the" }
 ,{ "type" }
 ,{ "S" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "OneOfTypes<T" , & fmt_text_b }
 ,{ "1" , & fmt_text_b }
 ,{ ",...,T" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ ">" , & fmt_text_b }
 ,{ "covers" }
 ,{ "types" }
 ,{ "T" , & fmt_text_b }
 ,{ "1" , & fmt_text_b }
 ,{ ",...,T" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "IsDerivedFrom<S>" , & fmt_text_b }
 ,{ "covers" }
 ,{ "types," }
 ,{ "derived" }
 ,{ "from" }
 ,{ "S" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "EnumType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "enums." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "ClassType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "classes." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "PODType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "POD" }
 ,{ "types." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "NothrowDtorType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "types" }
 ,{ "with" }
 ,{ "nothrow" }
 ,{ "destructor." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "TrivDtorType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "types" }
 ,{ "with" }
 ,{ "trivial" }
 ,{ "destructor." }
 ,{ "TrivDtorType" , & fmt_text_b }
 ,{ "=>" }
 ,{ "NothrowDtorType" , & fmt_text_b }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "DefaultCtorType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "types" }
 ,{ "with" }
 ,{ "default" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "NothrowDefaultCtorType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "types" }
 ,{ "with" }
 ,{ "nothrow" }
 ,{ "default" }
 ,{ "constructor." }
 ,{ "NothrowDefaultCtorType" , & fmt_text_b }
 ,{ "=>" }
 ,{ "DefaultCtorType" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "MoveCtorType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "types" }
 ,{ "with" }
 ,{ "move" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "CopyCtorType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "types" }
 ,{ "with" }
 ,{ "copy" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "NothrowCopyCtorType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "types" }
 ,{ "with" }
 ,{ "nothrow" }
 ,{ "copy" }
 ,{ "constructor." }
 ,{ "NothrowCopyCtorType" , & fmt_text_b }
 ,{ "=>" }
 ,{ "CopyCtorType" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "MovableType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "movable" }
 ,{ "types." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "CopyableType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "copyable" }
 ,{ "types." }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "NothrowCopyableType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "nothrow" }
 ,{ "copyable" }
 ,{ "types." }
 ,{ "NothrowCopyableType" , & fmt_text_b }
 ,{ "=>" }
 ,{ "CopyableType" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "Complex" }
 ,{ "concepts" }
} , & fmt_h3 , & align_h3 } ;

Text b31 = { {
 { "ConstructibleType<T,S" , & fmt_text_b }
 ,{ "1" , & fmt_text_b }
 ,{ ",...,S" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ ">" , & fmt_text_b }
 ,{ "is" }
 ,{ "satisfied" }
 ,{ "for" }
 ,{ "the" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "," }
 ,{ "constructible" }
 ,{ "with" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "list" }
 ,{ "S" , & fmt_text_b }
 ,{ "1" , & fmt_text_b }
 ,{ ",...,S" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b32 = { {
 { "FuncArgType<Func,A" , & fmt_text_b }
 ,{ "1" , & fmt_text_b }
 ,{ ",...,A" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ ">" , & fmt_text_b }
 ,{ "is" }
 ,{ "satisfied" }
 ,{ "for" }
 ,{ "the" }
 ,{ "functor" }
 ,{ "type" }
 ,{ "Func" , & fmt_text_b }
 ,{ "," }
 ,{ "callable" }
 ,{ "with" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "list" }
 ,{ "A" , & fmt_text_b }
 ,{ "1" , & fmt_text_b }
 ,{ ",...,A" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b33 = { {
 { "FuncType<Func,R,A" , & fmt_text_b }
 ,{ "1" , & fmt_text_b }
 ,{ ",...,A" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ ">" , & fmt_text_b }
 ,{ "is" }
 ,{ "satisfied" }
 ,{ "for" }
 ,{ "the" }
 ,{ "functor" }
 ,{ "type" }
 ,{ "Func" , & fmt_text_b }
 ,{ "," }
 ,{ "callable" }
 ,{ "with" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "list" }
 ,{ "A" , & fmt_text_b }
 ,{ "1" , & fmt_text_b }
 ,{ ",...,A" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ "and" }
 ,{ "with" }
 ,{ "the" }
 ,{ "result" }
 ,{ "type," }
 ,{ "implicitly" }
 ,{ "converted" }
 ,{ "to" }
 ,{ "the" }
 ,{ "R" , & fmt_text_b }
 ,{ "." }
 ,{ "FuncType<Func,R,A" , & fmt_text_b }
 ,{ "1" , & fmt_text_b }
 ,{ ",...,A" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ ">" , & fmt_text_b }
 ,{ "=>" }
 ,{ "FuncArgType<Func,A" , & fmt_text_b }
 ,{ "1" , & fmt_text_b }
 ,{ ",...,A" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ ">" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b34 = { {
 { "OpLessType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "types," }
 ,{ "comparable" }
 ,{ "by" }
 ,{ "the" }
 ,{ "<" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b35 = { {
 { "OpEqualType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "types," }
 ,{ "comparable" }
 ,{ "by" }
 ,{ "the" }
 ,{ "==" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b36 = { {
 { "OpNotEqualType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "types," }
 ,{ "comparable" }
 ,{ "by" }
 ,{ "the" }
 ,{ "!=" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b37 = { {
 { "OpCmpType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "types," }
 ,{ "comparable" }
 ,{ "by" }
 ,{ "the" }
 ,{ "all" }
 ,{ "comparison" }
 ,{ "operators." }
} , & fmt_text , & align_text } ;

Text b38 = { {
 { "OpLessTypes" , & fmt_text_b }
 ,{ "covers" }
 ,{ "couples" }
 ,{ "of" }
 ,{ "types," }
 ,{ "comparable" }
 ,{ "by" }
 ,{ "the" }
 ,{ "<" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b39 = { {
 { "OpLessEqualTypes" , & fmt_text_b }
 ,{ "covers" }
 ,{ "couples" }
 ,{ "of" }
 ,{ "types," }
 ,{ "comparable" }
 ,{ "by" }
 ,{ "the" }
 ,{ "<=" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b40 = { {
 { "OpGreaterTypes" , & fmt_text_b }
 ,{ "covers" }
 ,{ "couples" }
 ,{ "of" }
 ,{ "types," }
 ,{ "comparable" }
 ,{ "by" }
 ,{ "the" }
 ,{ ">" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b41 = { {
 { "OpGreaterEqualTypes" , & fmt_text_b }
 ,{ "covers" }
 ,{ "couples" }
 ,{ "of" }
 ,{ "types," }
 ,{ "comparable" }
 ,{ "by" }
 ,{ "the" }
 ,{ ">=" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b42 = { {
 { "NullableType" , & fmt_text_b }
 ,{ "has" }
 ,{ "the" }
 ,{ "model" }
} , & fmt_text , & align_text } ;

Text b43 = { {
 { "NullableType" , & fmt_text_b }
 ,{ "=>" }
 ,{ "NothrowDefaultCtorType" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b44 = { {
 { "IndirectOverType<T>" , & fmt_text_b }
 ,{ "covers" }
 ,{ "dereferencable" }
 ,{ "types" }
 ,{ "with" }
 ,{ "result," }
 ,{ "implicitly" }
 ,{ "converted" }
 ,{ "to" }
 ,{ "the" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b45 = { {
 { "IndirectCastType<T>" , & fmt_text_b }
 ,{ "covers" }
 ,{ "dereferencable" }
 ,{ "types" }
 ,{ "with" }
 ,{ "result," }
 ,{ "casted" }
 ,{ "to" }
 ,{ "the" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b46 = { {
 { "RangeAccessType" , & fmt_text_b }
 ,{ "has" }
 ,{ "the" }
 ,{ "model" }
} , & fmt_text , & align_text } ;

Text b47 = { {
 { "CursorType" , & fmt_text_b }
 ,{ "has" }
 ,{ "the" }
 ,{ "model" }
} , & fmt_text , & align_text } ;

Text b48 = { {
 { "CursorType" , & fmt_text_b }
 ,{ "=>" }
 ,{ "NothrowCopyableType" , & fmt_text_b }
 ,{ "$" }
 ,{ "NullableType" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b49 = { {
 { "CursorOverType<T>" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "conjunction" }
 ,{ "of" }
 ,{ "the" }
 ,{ "CursorType" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "IndirectOverType<T>" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b50 = { {
 { "CursorCastType<T>" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "conjunction" }
 ,{ "of" }
 ,{ "the" }
 ,{ "CursorType" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "IndirectCastType<T>" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b51 = { {
 { "RecursorType" , & fmt_text_b }
 ,{ "has" }
 ,{ "the" }
 ,{ "model" }
} , & fmt_text , & align_text } ;

Text b52 = { {
 { "RecursorOverType<T>" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "conjunction" }
 ,{ "of" }
 ,{ "the" }
 ,{ "RecursorType" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "IndirectOverType<T>" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b53 = { {
 { "RecursorCastType<T>" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "conjunction" }
 ,{ "of" }
 ,{ "the" }
 ,{ "RecursorType" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "IndirectCastType<T>" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b54 = { {
 { "RanType" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "\"pointer" }
 ,{ "kind\"" }
 ,{ "type." }
 ,{ "It" }
 ,{ "has" }
 ,{ "a" }
 ,{ "bunch" }
 ,{ "of" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "be" }
 ,{ "dealt" }
 ,{ "with." }
} , & fmt_text , & align_text } ;

Text b55 = { {
 { "RanType" , & fmt_text_b }
 ,{ "=>" }
 ,{ "NothrowCopyableType" , & fmt_text_b }
} , & fmt_text , & align_text } ;

Text b56 = { {
 { "RanType" , & fmt_text_b }
 ,{ "=>" }
 ,{ "NothrowDefaultCtorType" , & fmt_text_b }
} , & fmt_text , & align_text } ;

Text b57 = { {
 { "RanType" , & fmt_text_b }
 ,{ "=>" }
 ,{ "OpCmpType" , & fmt_text_b }
} , & fmt_text , & align_text } ;

Text b58 = { {
 { "ToOpNotEqualFuncType<T>" , & fmt_text_b }
 ,{ "covers" }
 ,{ "functors" }
 ,{ "with" }
 ,{ "arguments" }
 ,{ "const" , & fmt_text_b }
 ,{ "T" , & fmt_text_b }
 ,{ "$" , & fmt_text_b }
 ,{ "and" }
 ,{ "with" }
 ,{ "return" }
 ,{ "value," }
 ,{ "comparable" }
 ,{ "with" }
 ,{ "the" }
 ,{ "operator" , & fmt_text_b }
 ,{ "!=" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b59 = { {
 { "ToOpLessFuncType<T>" , & fmt_text_b }
 ,{ "covers" }
 ,{ "functors" }
 ,{ "with" }
 ,{ "arguments" }
 ,{ "const" , & fmt_text_b }
 ,{ "T" , & fmt_text_b }
 ,{ "$" , & fmt_text_b }
 ,{ "and" }
 ,{ "with" }
 ,{ "return" }
 ,{ "value," }
 ,{ "comparable" }
 ,{ "with" }
 ,{ "the" }
 ,{ "operator" , & fmt_text_b }
 ,{ "<" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b60 = { {
 { "PtrToOpLessFuncType<Ptr>" , & fmt_text_b }
 ,{ "covers" }
 ,{ "functors" }
 ,{ "with" }
 ,{ "arguments" }
 ,{ "const" , & fmt_text_b }
 ,{ "T" , & fmt_text_b }
 ,{ "&" , & fmt_text_b }
 ,{ "," }
 ,{ "where" }
 ,{ "T" , & fmt_text_b }
 ,{ "is" }
 ,{ "*Ptr" , & fmt_text_b }
 ,{ "," }
 ,{ "and" }
 ,{ "with" }
 ,{ "return" }
 ,{ "value," }
 ,{ "comparable" }
 ,{ "with" }
 ,{ "the" }
 ,{ "operator" , & fmt_text_b }
 ,{ "<" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b61 = { {
 { "PrinterType" , & fmt_text_b }
 ,{ "has" }
 ,{ "the" }
 ,{ "model" }
} , & fmt_text , & align_text } ;

Text b62 = { {
 { "ScannerType" , & fmt_text_b }
 ,{ "has" }
 ,{ "the" }
 ,{ "model" }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Classification" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b31 , null , inner_text , outer_text , back_text }
 ,{ & b32 , null , inner_text , outer_text , back_text }
 ,{ & b33 , null , inner_text , outer_text , back_text }
 ,{ & b34 , null , inner_text , outer_text , back_text }
 ,{ & b35 , null , inner_text , outer_text , back_text }
 ,{ & b36 , null , inner_text , outer_text , back_text }
 ,{ & b37 , null , inner_text , outer_text , back_text }
 ,{ & b38 , null , inner_text , outer_text , back_text }
 ,{ & b39 , null , inner_text , outer_text , back_text }
 ,{ & b40 , null , inner_text , outer_text , back_text }
 ,{ & b41 , null , inner_text , outer_text , back_text }
 ,{ & b42 , null , inner_text , outer_text , back_text }
 ,{ & b43 , null , inner_text , outer_text , back_text }
 ,{ & b44 , null , inner_text , outer_text , back_text }
 ,{ & b45 , null , inner_text , outer_text , back_text }
 ,{ & b46 , null , inner_text , outer_text , back_text }
 ,{ & b47 , null , inner_text , outer_text , back_text }
 ,{ & b48 , null , inner_text , outer_text , back_text }
 ,{ & b49 , null , inner_text , outer_text , back_text }
 ,{ & b50 , null , inner_text , outer_text , back_text }
 ,{ & b51 , null , inner_text , outer_text , back_text }
 ,{ & b52 , null , inner_text , outer_text , back_text }
 ,{ & b53 , null , inner_text , outer_text , back_text }
 ,{ & b54 , null , inner_text , outer_text , back_text }
 ,{ & b55 , null , inner_text , outer_text , back_text }
 ,{ & b56 , null , inner_text , outer_text , back_text }
 ,{ & b57 , null , inner_text , outer_text , back_text }
 ,{ & b58 , null , inner_text , outer_text , back_text }
 ,{ & b59 , null , inner_text , outer_text , back_text }
 ,{ & b60 , null , inner_text , outer_text , back_text }
 ,{ & b61 , null , inner_text , outer_text , back_text }
 ,{ & b62 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_CheckedData#page , & page_CmdInput#page };

Link link = { &page } ;

}

scope page_CmdInput {

Text b0 = { {
 { "CmdInput" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/CmdInput.h" , & fmt_text_Files_b }
 ,{ "CCore/src/CmdInput.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "CmdInput" }
} , & fmt_h4 , & align_h4 } ;

Text b3 = { {
 { "CmdInput" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "simple" }
 ,{ "character" }
 ,{ "input" }
 ,{ "processing" }
 ,{ "class." }
 ,{ "It" }
 ,{ "recognizes" }
 ,{ "a" }
 ,{ "given" }
 ,{ "set" }
 ,{ "of" }
 ,{ "commands." }
 ,{ "It" }
 ,{ "works" }
 ,{ "with" }
 ,{ "some" }
 ,{ "target" }
 ,{ "class." }
 ,{ "The" }
 ,{ "target" }
 ,{ "builds" }
 ,{ "the" }
 ,{ "command" }
 ,{ "set" }
 ,{ "and" }
 ,{ "provides" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "execute" }
 ,{ "them." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "CmdInput" , & fmt_text_b }
 ,{ "constructor" }
 ,{ "takes" }
 ,{ "a" }
 ,{ "reference" }
 ,{ "to" }
 ,{ "the" }
 ,{ "target." }
 ,{ "It" }
 ,{ "calls" }
 ,{ "the" }
 ,{ "target" }
 ,{ "virtual" }
 ,{ "method" }
 ,{ "buildCmdList()" , & fmt_text_b }
 ,{ "to" }
 ,{ "prepare" }
 ,{ "the" }
 ,{ "command" }
 ,{ "set." }
 ,{ "Target" }
 ,{ "must" }
 ,{ "use" }
 ,{ "the" }
 ,{ "method" }
 ,{ "addCommand()" , & fmt_text_b }
 ,{ "to" }
 ,{ "add" }
 ,{ "a" }
 ,{ "command" }
 ,{ "to" }
 ,{ "the" }
 ,{ "set." }
 ,{ "An" }
 ,{ "example:" }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "The" }
 ,{ "strings" }
 ,{ "cmd" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "persistent" }
 ,{ "(at" }
 ,{ "least" }
 ,{ "for" }
 ,{ "the" }
 ,{ "life-time" }
 ,{ "of" }
 ,{ "the" }
 ,{ "CmdInput" , & fmt_text_b }
 ,{ "object)," }
 ,{ "usually" }
 ,{ "they" }
 ,{ "are" }
 ,{ "string" }
 ,{ "literals." }
 ,{ "You" }
 ,{ "should" }
 ,{ "define" }
 ,{ "an" }
 ,{ "empty" }
 ,{ "command" }
 ,{ "to" }
 ,{ "react" }
 ,{ "on" }
 ,{ "the" }
 ,{ "empty" }
 ,{ "command" }
 ,{ "line." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "The" }
 ,{ "following" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "to" }
 ,{ "process" }
 ,{ "a" }
 ,{ "character" }
 ,{ "input:" }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "start()" , & fmt_text_b }
 ,{ "starts" }
 ,{ "an" }
 ,{ "input" }
 ,{ "command." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "put(char)" , & fmt_text_b }
 ,{ "adds" }
 ,{ "a" }
 ,{ "character." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true," }
 ,{ "if" }
 ,{ "the" }
 ,{ "input" }
 ,{ "is" }
 ,{ "valid," }
 ,{ "i.e." }
 ,{ "can" }
 ,{ "be" }
 ,{ "completed" }
 ,{ "to" }
 ,{ "a" }
 ,{ "command." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "put(StrLen)" , & fmt_text_b }
 ,{ "adds" }
 ,{ "a" }
 ,{ "string" }
 ,{ "of" }
 ,{ "characters." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "back()" , & fmt_text_b }
 ,{ "backs" }
 ,{ "one" }
 ,{ "character." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "false," }
 ,{ "if" }
 ,{ "the" }
 ,{ "input" }
 ,{ "is" }
 ,{ "empty" }
 ,{ "and" }
 ,{ "cannot" }
 ,{ "be" }
 ,{ "backed." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "Two" }
 ,{ "last" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "to" }
 ,{ "complete" }
 ,{ "the" }
 ,{ "input." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "complete()" , & fmt_text_b }
 ,{ "checks" }
 ,{ "if" }
 ,{ "the" }
 ,{ "input" }
 ,{ "is" }
 ,{ "valid." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "a" }
 ,{ "structure" }
 ,{ "with" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "count" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "commands," }
 ,{ "which" }
 ,{ "can" }
 ,{ "be" }
 ,{ "received" }
 ,{ "by" }
 ,{ "completing" }
 ,{ "the" }
 ,{ "input," }
 ,{ "str" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "completing" }
 ,{ "string," }
 ,{ "if" }
 ,{ "the" }
 ,{ "count" , & fmt_text_b }
 ,{ "equals" }
 ,{ "1." }
 ,{ "This" }
 ,{ "method" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "implement" }
 ,{ "the" }
 ,{ "auto-completion." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "finish()" , & fmt_text_b }
 ,{ "checks" }
 ,{ "if" }
 ,{ "the" }
 ,{ "input" }
 ,{ "is" }
 ,{ "a" }
 ,{ "command." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "non-null" }
 ,{ "in" }
 ,{ "this" }
 ,{ "case" }
 ,{ "and" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "call" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "target" }
 ,{ "method" }
 ,{ "to" }
 ,{ "execute" }
 ,{ "the" }
 ,{ "command." }
 ,{ "There" }
 ,{ "are" }
 ,{ "two" }
 ,{ "variants" }
 ,{ "of" }
 ,{ "the" }
 ,{ "call." }
 ,{ "The" }
 ,{ "first" }
 ,{ "operator" , & fmt_text_b }
 ,{ "()" , & fmt_text_b }
 ,{ "(StrLen" , & fmt_text_b }
 ,{ "arg)" , & fmt_text_b }
 ,{ "is" }
 ,{ "to" }
 ,{ "call" }
 ,{ "the" }
 ,{ "method" }
 ,{ "with" }
 ,{ "the" }
 ,{ "argument." }
 ,{ "The" }
 ,{ "second" }
 ,{ "operator" , & fmt_text_b }
 ,{ "()" , & fmt_text_b }
 ,{ "(StrLen" , & fmt_text_b }
 ,{ "arg,Report" , & fmt_text_b }
 ,{ "$" , & fmt_text_b }
 ,{ "does" }
 ,{ "the" }
 ,{ "call" }
 ,{ "inside" }
 ,{ "a" }
 ,{ "try-catch" }
 ,{ "block," }
 ,{ "report" }
 ,{ "is" }
 ,{ "an" }
 ,{ "ReportException" , & fmt_text_a , & ..#page_Exceptions#link }
 ,{ "class." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "CmdInputCon" }
} , & fmt_h4 , & align_h4 } ;

Text b15 = { {
 { "CmdInputCon" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "complex" }
 ,{ "class," }
 ,{ "it" }
 ,{ "combines" }
 ,{ "the" }
 ,{ "CmdInput" , & fmt_text_b }
 ,{ "and" }
 ,{ "some" }
 ,{ "console" }
 ,{ "reader" }
 ,{ "class." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "of" }
 ,{ "the" }
 ,{ "constructor" }
 ,{ "is" }
 ,{ "a" }
 ,{ "target," }
 ,{ "the" }
 ,{ "second" }
 ,{ "is" }
 ,{ "a" }
 ,{ "prompt" }
 ,{ "string." }
 ,{ "This" }
 ,{ "string" }
 ,{ "must" }
 ,{ "be" }
 ,{ "persistent" }
 ,{ "for" }
 ,{ "the" }
 ,{ "life-time" }
 ,{ "of" }
 ,{ "the" }
 ,{ "object." }
 ,{ "Other" }
 ,{ "arguments" }
 ,{ "a" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "console" }
 ,{ "reader" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "\"Bad" }
 ,{ "character\"" }
 ,{ "is" }
 ,{ "printed" }
 ,{ "during" }
 ,{ "command" }
 ,{ "input," }
 ,{ "if" }
 ,{ "the" }
 ,{ "entered" }
 ,{ "string" }
 ,{ "is" }
 ,{ "not" }
 ,{ "correct." }
 ,{ "For" }
 ,{ "example," }
 ,{ "if" }
 ,{ "the" }
 ,{ "command" }
 ,{ "set" }
 ,{ "is" }
 ,{ "\"start\"," }
 ,{ "\"exit\"" }
 ,{ "and" }
 ,{ "the" }
 ,{ "string" }
 ,{ "\"s\"" }
 ,{ "is" }
 ,{ "entered," }
 ,{ "then" }
 ,{ "typing" }
 ,{ "any" }
 ,{ "character," }
 ,{ "other" }
 ,{ "than" }
 ,{ "'t'" }
 ,{ "is" }
 ,{ "echoed" }
 ,{ "using" }
 ,{ "the" }
 ,{ "bad" }
 ,{ "character." }
 ,{ "By" }
 ,{ "default," }
 ,{ "the" }
 ,{ "bad" }
 ,{ "character" }
 ,{ "is" }
 ,{ "'?'." }
 ,{ "The" }
 ,{ "method" }
 ,{ "setBadChar()" , & fmt_text_b }
 ,{ "resets" }
 ,{ "it" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "character." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "The" }
 ,{ "main" }
 ,{ "method" }
 ,{ "is" }
 ,{ "the" }
 ,{ "command()" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "enters" }
 ,{ "and" }
 ,{ "executes" }
 ,{ "a" }
 ,{ "single" }
 ,{ "command" }
 ,{ "from" }
 ,{ "the" }
 ,{ "console." }
 ,{ "An" }
 ,{ "additional" }
 ,{ "ReportException" , & fmt_text_b }
 ,{ "argument" }
 ,{ "may" }
 ,{ "be" }
 ,{ "provided" }
 ,{ "to" }
 ,{ "execute" }
 ,{ "a" }
 ,{ "command" }
 ,{ "in" }
 ,{ "a" }
 ,{ "try-catch" , & fmt_text_b }
 ,{ "block." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "A" }
 ,{ "complete" }
 ,{ "example" }
 ,{ "of" }
 ,{ "using" }
 ,{ "this" }
 ,{ "class." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> CmdInput" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Classification#page , & page_Cmp#page };

Link link = { &page } ;

}

scope page_Cmp {

Text b0 = { {
 { "3-way" }
 ,{ "Cmp" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/Cmp.h" , & fmt_text_Files_b }
 ,{ "CCore/src/Cmp.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Ordering" }
 ,{ "is" }
 ,{ "the" }
 ,{ "one" }
 ,{ "of" }
 ,{ "the" }
 ,{ "most" }
 ,{ "important" }
 ,{ "concept" }
 ,{ "in" }
 ,{ "the" }
 ,{ "software" }
 ,{ "world." }
 ,{ "CCore" , & fmt_text_b }
 ,{ "supports" }
 ,{ "and" }
 ,{ "utilizes" }
 ,{ "the" }
 ,{ "3-way" , & fmt_text_b }
 ,{ "comparison" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "you" }
 ,{ "do" }
 ,{ "compare" }
 ,{ "two" }
 ,{ "elements" }
 ,{ "of" }
 ,{ "the" }
 ,{ "linear" }
 ,{ "ordered" }
 ,{ "set," }
 ,{ "then" }
 ,{ "there" }
 ,{ "are" }
 ,{ "3" }
 ,{ "possible" }
 ,{ "outcomes:" }
 ,{ "less," }
 ,{ "equal" }
 ,{ "and" }
 ,{ "greater." }
 ,{ "Pitiful" }
 ,{ "(and" }
 ,{ "shameful)," }
 ,{ "but" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "a" }
 ,{ "natural" }
 ,{ "support" }
 ,{ "for" }
 ,{ "the" }
 ,{ "3-way" }
 ,{ "comparison" }
 ,{ "in" }
 ,{ "the" }
 ,{ "language." }
 ,{ "So" }
 ,{ "the" }
 ,{ "following" }
 ,{ "helper" }
 ,{ "entities" }
 ,{ "are" }
 ,{ "used" }
 ,{ "for" }
 ,{ "it." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "enum" , & fmt_text_b }
 ,{ "CmpResult" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "represent" }
 ,{ "an" }
 ,{ "outcome" }
 ,{ "of" }
 ,{ "a" }
 ,{ "3-way" }
 ,{ "comparison." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "The" }
 ,{ "function" }
 ,{ "LessCmp()" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "for" }
 ,{ "the" }
 ,{ "3-way" }
 ,{ "comparison" }
 ,{ "of" }
 ,{ "objects" }
 ,{ "of" }
 ,{ "types" }
 ,{ "with" }
 ,{ "defined" }
 ,{ "operator" , & fmt_text_b }
 ,{ "<" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "covers" }
 ,{ "all" }
 ,{ "basic" }
 ,{ "integral" }
 ,{ "types." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "To" }
 ,{ "compare" }
 ,{ "objects" }
 ,{ "use" }
 ,{ "the" }
 ,{ "function" }
 ,{ "Cmp()" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "the" }
 ,{ "destined" }
 ,{ "type" }
 ,{ "is" }
 ,{ "a" }
 ,{ "class" }
 ,{ "type" }
 ,{ "with" }
 ,{ "the" }
 ,{ "defined" }
 ,{ "method" }
 ,{ "objCmp()" , & fmt_text_b }
 ,{ "," }
 ,{ "then" }
 ,{ "Cmp()" , & fmt_text_b }
 ,{ "calls" }
 ,{ "this" }
 ,{ "method," }
 ,{ "otherwise" }
 ,{ "it" }
 ,{ "calls" }
 ,{ "LessCmp()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "Use" }
 ,{ "the" }
 ,{ "function" }
 ,{ "AlphaCmp()" , & fmt_text_b }
 ,{ "to" }
 ,{ "perform" }
 ,{ "the" }
 ,{ "alphabetical" }
 ,{ "comparison:" }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "The" }
 ,{ "function" }
 ,{ "AlphaCmp()" , & fmt_text_b }
 ,{ "expects" }
 ,{ "any" }
 ,{ "number" }
 ,{ "of" }
 ,{ "pairs" }
 ,{ "of" }
 ,{ "arguments:" }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "You" }
 ,{ "may" }
 ,{ "also" }
 ,{ "use" }
 ,{ "instead" }
 ,{ "of" }
 ,{ "pair" }
 ,{ "a" }
 ,{ "single" }
 ,{ "CmpResult" , & fmt_text_b }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "Use" }
 ,{ "the" }
 ,{ "function" }
 ,{ "RangeCmp()" , & fmt_text_b }
 ,{ "or" }
 ,{ "RangeLess()" , & fmt_text_b }
 ,{ "to" }
 ,{ "perform" }
 ,{ "the" }
 ,{ "alphabetical" }
 ,{ "comparison" }
 ,{ "of" }
 ,{ "two" }
 ,{ "ranges" }
 ,{ "of" }
 ,{ "objects:" }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "There" }
 ,{ "are" }
 ,{ "also" }
 ,{ "\"by\"" }
 ,{ "variants" }
 ,{ "of" }
 ,{ "these" }
 ,{ "functions." }
 ,{ "These" }
 ,{ "variants" }
 ,{ "use" }
 ,{ "the" }
 ,{ "given" }
 ,{ "functor" }
 ,{ "by" , & fmt_text_b }
 ,{ "to" }
 ,{ "compare" }
 ,{ "objects:" }
 ,{ "to" }
 ,{ "compare" }
 ,{ "objects" }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "they" }
 ,{ "do" }
 ,{ "compare" }
 ,{ "by(a)" , & fmt_text_b }
 ,{ "and" }
 ,{ "by(b)" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "There" }
 ,{ "are" }
 ,{ "...Of" , & fmt_text_b }
 ,{ "variants" }
 ,{ "with" }
 ,{ "combined" }
 ,{ "range" }
 ,{ "extraction:" }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "Use" }
 ,{ "the" }
 ,{ "functions" }
 ,{ "StrCmp()" , & fmt_text_b }
 ,{ "or" }
 ,{ "StrLess()" , & fmt_text_b }
 ,{ "to" }
 ,{ "compare" }
 ,{ "strings" }
 ,{ "(and" }
 ,{ "...Of" , & fmt_text_b }
 ,{ "variants):" }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "Starting" , & fmt_text_Alert }
 ,{ "from" , & fmt_text_Alert }
 ,{ "the" , & fmt_text_Alert }
 ,{ "version" , & fmt_text_Alert }
 ,{ "3.50" , & fmt_text_Alert }
 ,{ "comparision" , & fmt_text_Alert }
 ,{ "is" , & fmt_text_Alert }
 ,{ "performed" , & fmt_text_Alert }
 ,{ "using" , & fmt_text_Alert }
 ,{ "the" , & fmt_text_Alert }
 ,{ "unsigned" , & fmt_text_Alert }
 ,{ "character" , & fmt_text_Alert }
 ,{ "code." , & fmt_text_Alert }
 ,{ "It" }
 ,{ "makes" }
 ,{ "these" }
 ,{ "operations" }
 ,{ "UTF8-compatible." }
 ,{ "To" }
 ,{ "compare" }
 ,{ "single" }
 ,{ "characters" }
 ,{ "the" }
 ,{ "following" }
 ,{ "two" }
 ,{ "functions" }
 ,{ "has" }
 ,{ "been" }
 ,{ "added:" }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "The" }
 ,{ "class" }
 ,{ "CmpAsStr" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "adapter" }
 ,{ "class" }
 ,{ "to" }
 ,{ "help" }
 ,{ "combine" }
 ,{ "the" }
 ,{ "string" }
 ,{ "comparison" }
 ,{ "with" }
 ,{ "the" }
 ,{ "string" }
 ,{ "extraction:" }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "There" }
 ,{ "are" }
 ,{ "two" }
 ,{ "Property" , & fmt_text_b }
 ,{ "Type" , & fmt_text_b }
 ,{ "classes" }
 ,{ "LessComparable" , & fmt_text_b }
 ,{ "and" }
 ,{ "CmpComparable" , & fmt_text_b }
 ,{ ":" }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "They" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "simplify" }
 ,{ "the" }
 ,{ "implementation" }
 ,{ "of" }
 ,{ "the" }
 ,{ "comparable" }
 ,{ "classes:" }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "Why" }
 ,{ "3-Way" }
 ,{ "is" }
 ,{ "better" }
 ,{ "than" }
 ,{ "2-Way?" }
} , & fmt_h2 , & align_h2 } ;

Text b18 = { {
 { "The" }
 ,{ "answer" }
 ,{ "is" }
 ,{ "simple:" }
 ,{ "it" }
 ,{ "is" }
 ,{ "more" }
 ,{ "efficient" }
 ,{ "and" }
 ,{ "more" }
 ,{ "usable" }
 ,{ "in" }
 ,{ "applications." }
 ,{ "3-Way" }
 ,{ "comparison" }
 ,{ "has" }
 ,{ "near" }
 ,{ "the" }
 ,{ "same" }
 ,{ "cost" }
 ,{ "for" }
 ,{ "the" }
 ,{ "simple" }
 ,{ "types" }
 ,{ "as" }
 ,{ "2-Way." }
 ,{ "In" }
 ,{ "fact," }
 ,{ "the" }
 ,{ "comparison" }
 ,{ "commands" }
 ,{ "on" }
 ,{ "the" }
 ,{ "modern" }
 ,{ "CPUs" }
 ,{ "gives" }
 ,{ "the" }
 ,{ "complete" }
 ,{ "answers" }
 ,{ "how" }
 ,{ "two" }
 ,{ "integral" }
 ,{ "values" }
 ,{ "are" }
 ,{ "ordered." }
 ,{ "So" }
 ,{ "in" }
 ,{ "practice" }
 ,{ "only" }
 ,{ "the" }
 ,{ "absence" }
 ,{ "of" }
 ,{ "the" }
 ,{ "language" }
 ,{ "support" }
 ,{ "for" }
 ,{ "3-Way" }
 ,{ "or" }
 ,{ "the" }
 ,{ "lack" }
 ,{ "of" }
 ,{ "optimization" }
 ,{ "capabilities" }
 ,{ "of" }
 ,{ "compilers" }
 ,{ "makes" }
 ,{ "3-Way" }
 ,{ "comparison" }
 ,{ "of" }
 ,{ "basic" }
 ,{ "types" }
 ,{ "is" }
 ,{ "less" }
 ,{ "efficient." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "But" }
 ,{ "once" }
 ,{ "we" }
 ,{ "compare" }
 ,{ "combined" }
 ,{ "types" }
 ,{ "(usually" }
 ,{ "using" }
 ,{ "alphabetical" }
 ,{ "ordering)" }
 ,{ "we" }
 ,{ "start" }
 ,{ "winning:" }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "All" }
 ,{ "usual" }
 ,{ "comparison" }
 ,{ "operations" }
 ,{ "are" }
 ,{ "simply" }
 ,{ "derived" }
 ,{ "from" }
 ,{ "Cmp()" , & fmt_text_b }
 ,{ "." }
 ,{ "And," }
 ,{ "finally," }
 ,{ "many" }
 ,{ "algorithms" }
 ,{ "have" }
 ,{ "advantage" }
 ,{ "using" }
 ,{ "3-Way" }
 ,{ "than" }
 ,{ "2-Way" }
 ,{ "both" }
 ,{ "in" }
 ,{ "efficiency" }
 ,{ "and" }
 ,{ "simplicity." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Cmp" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_CmdInput#page , & page_CommonIntAlgo#page };

Link link = { &page } ;

}

scope page_CommonIntAlgo {

Text b0 = { {
 { "CommonIntAlgo" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/algon/CommonIntAlgo.h" , & fmt_text_Files_b }
 ,{ "CCore/src/algon/CommonIntAlgo.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Here" }
 ,{ "is" }
 ,{ "two" }
 ,{ "Algorithm" , & fmt_text_b }
 ,{ "Package" , & fmt_text_b }
 ,{ "s" }
 ,{ "with" }
 ,{ "some" }
 ,{ "useful" }
 ,{ "integer" }
 ,{ "algorithms." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "BitIntAlgo" }
} , & fmt_h4 , & align_h4 } ;

Text b4 = { {
 { "This" }
 ,{ "package" }
 ,{ "is" }
 ,{ "parametrized" }
 ,{ "by" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type." }
 ,{ "It" }
 ,{ "contains" }
 ,{ "three" }
 ,{ "algorithms." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "IsEven()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "even." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "BitScan()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "zero" }
 ,{ "least" }
 ,{ "significant" }
 ,{ "bits" }
 ,{ "of" }
 ,{ "the" }
 ,{ "argument," }
 ,{ "which" }
 ,{ "must" }
 ,{ "not" }
 ,{ "be" }
 ,{ "zero." }
 ,{ "In" }
 ,{ "other" }
 ,{ "words," }
 ,{ "it" }
 ,{ "is" }
 ,{ "the" }
 ,{ "maximum" }
 ,{ "exponent" }
 ,{ "of" }
 ,{ "the" }
 ,{ "power" }
 ,{ "of" }
 ,{ "two," }
 ,{ "which" }
 ,{ "divides" }
 ,{ "the" }
 ,{ "argument." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "OddPart()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "\"odd" }
 ,{ "part\"" }
 ,{ "of" }
 ,{ "the" }
 ,{ "argument," }
 ,{ "which" }
 ,{ "must" }
 ,{ "not" }
 ,{ "be" }
 ,{ "zero." }
 ,{ "\"Odd" }
 ,{ "part\"" }
 ,{ "is" }
 ,{ "the" }
 ,{ "maximum" }
 ,{ "odd" }
 ,{ "divisor" }
 ,{ "of" }
 ,{ "the" }
 ,{ "number." }
 ,{ "Each" }
 ,{ "non-zero" }
 ,{ "number" }
 ,{ "is" }
 ,{ "a" }
 ,{ "product" }
 ,{ "of" }
 ,{ "its" }
 ,{ "\"odd" }
 ,{ "part\"" }
 ,{ "and" }
 ,{ "a" }
 ,{ "power" }
 ,{ "of" }
 ,{ "two." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "CommonIntAlgo" }
} , & fmt_h4 , & align_h4 } ;

Text b9 = { {
 { "This" }
 ,{ "package" }
 ,{ "contains" }
 ,{ "algorithms" }
 ,{ "to" }
 ,{ "calculate" }
 ,{ "GCD" }
 ,{ "(great" }
 ,{ "common" }
 ,{ "divisor)" }
 ,{ "and" }
 ,{ "LCM" }
 ,{ "(least" }
 ,{ "common" }
 ,{ "multiple)." }
 ,{ "The" }
 ,{ "first" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "is" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "type" }
 ,{ "of" }
 ,{ "algorithms." }
 ,{ "It" }
 ,{ "must" }
 ,{ "be" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type." }
 ,{ "The" }
 ,{ "second" }
 ,{ "is" }
 ,{ "an" }
 ,{ "algorithm" }
 ,{ "package," }
 ,{ "defaulted" }
 ,{ "to" }
 ,{ "the" }
 ,{ "BitIntAlgo<UInt>" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "Functions" }
} , & fmt_h4 , & align_h4 } ;

Text b11 = { {
 { "There" }
 ,{ "are" }
 ,{ "two" }
 ,{ "functions" }
 ,{ "to" }
 ,{ "calculate" }
 ,{ "GCD" }
 ,{ "and" }
 ,{ "LCM" }
 ,{ "for" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "arguments:" }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "They" }
 ,{ "call" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "algorithms" }
 ,{ "from" }
 ,{ "the" }
 ,{ "CommonIntAlgo" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> CommonIntAlgo" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Cmp#page , & page_CompactLists#page };

Link link = { &page } ;

}

scope page_CompactLists {

Text b0 = { {
 { "Compact" }
 ,{ "lists" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/CompactList.h" , & fmt_text_Files_b }
 ,{ "CCore/src/CompactList.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Compact" }
 ,{ "lists" }
 ,{ "are" }
 ,{ "variants" }
 ,{ "of" }
 ,{ "traditional" , & fmt_text_a , & ..#page_ContainerLists#link }
 ,{ "lists" , & fmt_text_a , & ..#page_ContainerLists#link }
 ,{ "." }
 ,{ "They" }
 ,{ "have" }
 ,{ "the" }
 ,{ "same" }
 ,{ "set" }
 ,{ "of" }
 ,{ "methods" }
 ,{ "and" }
 ,{ "behavior," }
 ,{ "except" }
 ,{ "compact" }
 ,{ "lists" }
 ,{ "move" }
 ,{ "elements" }
 ,{ "during" }
 ,{ "delete" }
 ,{ "operations." }
 ,{ "Compact" }
 ,{ "lists" }
 ,{ "are" }
 ,{ "more" }
 ,{ "efficient" }
 ,{ "and" }
 ,{ "consume" }
 ,{ "less" }
 ,{ "memory," }
 ,{ "than" }
 ,{ "traditional." }
 ,{ "They" }
 ,{ "require" }
 ,{ "the" }
 ,{ "object" }
 ,{ "type" }
 ,{ "to" }
 ,{ "be" }
 ,{ "swappable." }
 ,{ "They" }
 ,{ "also" }
 ,{ "have" }
 ,{ "no" }
 ,{ "node" }
 ,{ "allocator" }
 ,{ "template" }
 ,{ "parameter:" }
 ,{ "compact" , & fmt_text_a , & ..#page_CompactNodeAllocator#link }
 ,{ "node" , & fmt_text_a , & ..#page_CompactNodeAllocator#link }
 ,{ "allocator" , & fmt_text_a , & ..#page_CompactNodeAllocator#link }
 ,{ "is" }
 ,{ "always" }
 ,{ "used." }
 ,{ "Constructor" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "allocator." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "CompactList" }
} , & fmt_h4 , & align_h4 } ;

Text b4 = { {
 { "This" }
 ,{ "is" }
 ,{ "a" }
 ,{ "variant" }
 ,{ "of" }
 ,{ "the" }
 ,{ "LinearDList" , & fmt_text_a , & ..#page_ContainerLists#link_LinearDList }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "CompactList2" }
} , & fmt_h4 , & align_h4 } ;

Text b6 = { {
 { "This" }
 ,{ "is" }
 ,{ "a" }
 ,{ "variant" }
 ,{ "of" }
 ,{ "the" }
 ,{ "LinearDList2" , & fmt_text_a , & ..#page_ContainerLists#link_LinearDList2 }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "CompactCircularList" }
} , & fmt_h4 , & align_h4 } ;

Text b8 = { {
 { "This" }
 ,{ "is" }
 ,{ "a" }
 ,{ "variant" }
 ,{ "of" }
 ,{ "the" }
 ,{ "CircularDList" , & fmt_text_a , & ..#page_ContainerLists#link_CircularDList }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Compact lists" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b8 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_CommonIntAlgo#page , & page_CompactMaps#page };

Link link = { &page } ;

}

scope page_CompactMaps {

Text b0 = { {
 { "Compact" }
 ,{ "maps" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/CompactMap.h" , & fmt_text_Files_b }
 ,{ "CCore/src/CompactMap.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "These" }
 ,{ "two" }
 ,{ "classes" }
 ,{ "are" }
 ,{ "compact" }
 ,{ "variants" }
 ,{ "of" }
 ,{ "the" }
 ,{ "traditional" , & fmt_text_a , & ..#page_TreeMaps#link }
 ,{ "maps" , & fmt_text_a , & ..#page_TreeMaps#link }
 ,{ "." }
 ,{ "They" }
 ,{ "have" }
 ,{ "the" }
 ,{ "same" }
 ,{ "set" }
 ,{ "of" }
 ,{ "methods" }
 ,{ "and" }
 ,{ "behavior," }
 ,{ "except" }
 ,{ "compact" }
 ,{ "maps" }
 ,{ "move" }
 ,{ "elements" }
 ,{ "during" }
 ,{ "delete" }
 ,{ "operations." }
 ,{ "Compact" }
 ,{ "maps" }
 ,{ "are" }
 ,{ "more" }
 ,{ "efficient" }
 ,{ "and" }
 ,{ "consume" }
 ,{ "less" }
 ,{ "memory," }
 ,{ "than" }
 ,{ "traditional." }
 ,{ "They" }
 ,{ "require" }
 ,{ "the" }
 ,{ "object" }
 ,{ "type" }
 ,{ "to" }
 ,{ "be" }
 ,{ "swappable." }
 ,{ "They" }
 ,{ "also" }
 ,{ "have" }
 ,{ "no" }
 ,{ "node" }
 ,{ "allocator" }
 ,{ "template" }
 ,{ "parameter:" }
 ,{ "compact" , & fmt_text_a , & ..#page_CompactNodeAllocator#link }
 ,{ "node" , & fmt_text_a , & ..#page_CompactNodeAllocator#link }
 ,{ "allocator" , & fmt_text_a , & ..#page_CompactNodeAllocator#link }
 ,{ "is" }
 ,{ "always" }
 ,{ "used." }
 ,{ "Constructor" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "allocator." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "CompactRBTreeMap" }
} , & fmt_h4 , & align_h4 } ;

Text b4 = { {
 { "This" }
 ,{ "map" }
 ,{ "is" }
 ,{ "a" }
 ,{ "variant" }
 ,{ "of" }
 ,{ "the" }
 ,{ "RBTreeMap" , & fmt_text_a , & ..#page_TreeMaps#link_RBTreeMap }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "CompactRadixTreeMap" }
} , & fmt_h4 , & align_h4 } ;

Text b6 = { {
 { "This" }
 ,{ "map" }
 ,{ "is" }
 ,{ "a" }
 ,{ "variant" }
 ,{ "of" }
 ,{ "the" }
 ,{ "RadixTreeMap" , & fmt_text_a , & ..#page_TreeMaps#link_RadixTreeMap }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Compact maps" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b6 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_CompactLists#page , & page_CompactNodeAllocator#page };

Link link = { &page } ;

}

scope page_CompactNodeAllocator {

Text b0 = { {
 { "Compact" }
 ,{ "node" }
 ,{ "allocator" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/CompactNodeAllocator.h" , & fmt_text_Files_b }
 ,{ "CCore/src/CompactNodeAllocator.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Compact" }
 ,{ "node" }
 ,{ "allocator" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "allocate" }
 ,{ "and" }
 ,{ "destroy" }
 ,{ "list" }
 ,{ "and" }
 ,{ "tree" }
 ,{ "nodes" }
 ,{ "in" }
 ,{ "compact" }
 ,{ "lists" }
 ,{ "and" }
 ,{ "tree" }
 ,{ "maps." }
 ,{ "It" }
 ,{ "is" }
 ,{ "similar" }
 ,{ "to" }
 ,{ "node" , & fmt_text_a , & ..#page_NodeAllocators#link }
 ,{ "allocators" , & fmt_text_a , & ..#page_NodeAllocators#link }
 ,{ "," }
 ,{ "but" }
 ,{ "have" }
 ,{ "different" }
 ,{ "node" }
 ,{ "deletion" }
 ,{ "methods." }
 ,{ "This" }
 ,{ "allocator" }
 ,{ "is" }
 ,{ "efficient" }
 ,{ "both" }
 ,{ "in" }
 ,{ "the" }
 ,{ "performance" }
 ,{ "and" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "utilization." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Constructor" }
 ,{ "takes" }
 ,{ "a" }
 ,{ "node" }
 ,{ "block" }
 ,{ "length" }
 ,{ "as" }
 ,{ "the" }
 ,{ "argument," }
 ,{ "it" }
 ,{ "is" }
 ,{ "100" , & fmt_text_b }
 ,{ "by" }
 ,{ "default." }
 ,{ "Memory" }
 ,{ "for" }
 ,{ "nodes" }
 ,{ "is" }
 ,{ "allocated" }
 ,{ "in" }
 ,{ "blocks" }
 ,{ "of" }
 ,{ "this" }
 ,{ "capacity." }
 ,{ "Destructor" }
 ,{ "calls" }
 ,{ "abort," }
 ,{ "if" }
 ,{ "not" }
 ,{ "all" }
 ,{ "nodes" }
 ,{ "are" }
 ,{ "destroyed." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "CompactNodeAllocator" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "copyable," }
 ,{ "but" }
 ,{ "std" }
 ,{ "movable." }
 ,{ "The" }
 ,{ "original" }
 ,{ "object" }
 ,{ "is" }
 ,{ "nullified" }
 ,{ "during" }
 ,{ "the" }
 ,{ "move." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "operator" , & fmt_text_b }
 ,{ "+" , & fmt_text_b }
 ,{ "and" }
 ,{ "operator" , & fmt_text_b }
 ,{ "!" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "check," }
 ,{ "if" }
 ,{ "there" }
 ,{ "are" }
 ,{ "allocated" }
 ,{ "nodes." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "getCount()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "allocated" }
 ,{ "nodes." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "alloc()" , & fmt_text_b }
 ,{ "allocates" }
 ,{ "a" }
 ,{ "node." }
 ,{ "Arguments" }
 ,{ "are" }
 ,{ "forwarder" }
 ,{ "to" }
 ,{ "the" }
 ,{ "node" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "erase()" , & fmt_text_b }
 ,{ "destroys" }
 ,{ "all" }
 ,{ "allocated" }
 ,{ "nodes." }
 ,{ "The" }
 ,{ "number" }
 ,{ "of" }
 ,{ "nodes" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "todel()" , & fmt_text_b }
 ,{ "points" }
 ,{ "to" }
 ,{ "the" }
 ,{ "\"special\"" }
 ,{ "node," }
 ,{ "which" }
 ,{ "can" }
 ,{ "be" }
 ,{ "deleted." }
 ,{ "If" }
 ,{ "there" }
 ,{ "are" }
 ,{ "no" }
 ,{ "allocated" }
 ,{ "nodes," }
 ,{ "null" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "Unlike" }
 ,{ "other" }
 ,{ "node" }
 ,{ "allocators," }
 ,{ "compact" }
 ,{ "variant" }
 ,{ "can" }
 ,{ "delete" }
 ,{ "only" }
 ,{ "one" }
 ,{ "special" }
 ,{ "node" }
 ,{ "from" }
 ,{ "the" }
 ,{ "set" }
 ,{ "of" }
 ,{ "allocated" }
 ,{ "nodes." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "del()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "special" }
 ,{ "node," }
 ,{ "if" }
 ,{ "any." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "CompactNodeAllocator" , & fmt_text_b }
 ,{ "is" }
 ,{ "swappable" }
 ,{ "and" }
 ,{ "movable." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Compact node allocator" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_CompactMaps#page , & page_CompletePacket#page };

Link link = { &page } ;

}

scope page_CompletePacket {

Text b0 = { {
 { "(XCore)" }
 ,{ "CompletePacket" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/CompletePacket.h" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "The" }
 ,{ "function" }
 ,{ "CompletePacket_int" , & fmt_text_b }
 ,{ "is" }
 ,{ "XCore" , & fmt_text_b }
 ,{ "only." }
 ,{ "This" }
 ,{ "function" }
 ,{ "is" }
 ,{ "required" }
 ,{ "to" }
 ,{ "complete" }
 ,{ "a" }
 ,{ "packet" }
 ,{ "in" }
 ,{ "the" }
 ,{ "interrupt" }
 ,{ "context." }
 ,{ "You" }
 ,{ "cannot" }
 ,{ "call" }
 ,{ "complete()" , & fmt_text_b }
 ,{ "directly" }
 ,{ "there," }
 ,{ "so" }
 ,{ "the" }
 ,{ "special" }
 ,{ "high" }
 ,{ "priority" }
 ,{ "task" }
 ,{ "—" }
 ,{ "Complete" , & fmt_text_b }
 ,{ "Task" , & fmt_text_b }
 ,{ "," }
 ,{ "is" }
 ,{ "running" }
 ,{ "in" }
 ,{ "the" }
 ,{ "system" }
 ,{ "to" }
 ,{ "do" }
 ,{ "this" }
 ,{ "job." }
 ,{ "The" }
 ,{ "function" }
 ,{ "simply" }
 ,{ "puts" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "into" }
 ,{ "its" }
 ,{ "input" }
 ,{ "queue" }
 ,{ "and" }
 ,{ "gives" }
 ,{ "the" }
 ,{ "semaphore." }
 ,{ "This" }
 ,{ "function" }
 ,{ "can" }
 ,{ "be" }
 ,{ "called" }
 ,{ "only" }
 ,{ "in" }
 ,{ "the" }
 ,{ "interrupt" }
 ,{ "context." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> (XCore) CompletePacket" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_CompactNodeAllocator#page , & page_CondLangLR1#page };

Link link = { &page } ;

}

scope page_CondLangLR1 {

Text b0 = { {
 { "CondLangLR1" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "This" }
 ,{ "utility" }
 ,{ "generates" }
 ,{ "LR1" }
 ,{ "parsing" }
 ,{ "state" }
 ,{ "machine" }
 ,{ "for" }
 ,{ "the" }
 ,{ "given" }
 ,{ "LR1" }
 ,{ "language." }
 ,{ "The" }
 ,{ "language" }
 ,{ "is" }
 ,{ "defined" }
 ,{ "using" }
 ,{ "the" }
 ,{ "conditional" , & fmt_text_i }
 ,{ "recursive" , & fmt_text_i }
 ,{ "grammar" , & fmt_text_i }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b2 = { {
 { "The" }
 ,{ "only" }
 ,{ "command-line" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "language" }
 ,{ "file" }
 ,{ "name." }
 ,{ "If" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name" }
 ,{ "has" }
 ,{ "no" }
 ,{ "extension," }
 ,{ ".lang" , & fmt_text_b }
 ,{ "is" }
 ,{ "added." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "On" }
 ,{ "success" }
 ,{ "two" }
 ,{ "files" }
 ,{ "are" }
 ,{ "generated:" }
 ,{ ".txt" , & fmt_text_b }
 ,{ "file" }
 ,{ "and" }
 ,{ ".ddl" , & fmt_text_b }
 ,{ "file." }
 ,{ "They" }
 ,{ "have" }
 ,{ "the" }
 ,{ "same" }
 ,{ "name" }
 ,{ "as" }
 ,{ "the" }
 ,{ "input" }
 ,{ "file" }
 ,{ "and" }
 ,{ "located" }
 ,{ "in" }
 ,{ "the" }
 ,{ "same" }
 ,{ "directory." }
 ,{ ".txt" , & fmt_text_b }
 ,{ "file" }
 ,{ "contains" }
 ,{ "processing" }
 ,{ "information" }
 ,{ "in" }
 ,{ "a" }
 ,{ "readable" }
 ,{ "form." }
 ,{ ".ddl" , & fmt_text_b }
 ,{ "file" }
 ,{ "contains" }
 ,{ "the" }
 ,{ "state" }
 ,{ "machine" }
 ,{ "description" }
 ,{ "in" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "format." }
 ,{ "The" }
 ,{ "file" }
 ,{ "LangType.ddl" , & fmt_text_b }
 ,{ "in" }
 ,{ "CCORE_ROOT/tools/CondLangLR1" , & fmt_text_b }
 ,{ "contains" }
 ,{ "required" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "type" }
 ,{ "definitions." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "On" }
 ,{ "failure" }
 ,{ "the" }
 ,{ "only" }
 ,{ ".bad.txt" , & fmt_text_b }
 ,{ "file" }
 ,{ "is" }
 ,{ "generated." }
 ,{ "You" }
 ,{ "can" }
 ,{ "examine" }
 ,{ "this" }
 ,{ "file" }
 ,{ "to" }
 ,{ "understand," }
 ,{ "why" }
 ,{ "the" }
 ,{ "input" }
 ,{ "is" }
 ,{ "not" }
 ,{ "an" }
 ,{ "LR1" }
 ,{ "language" }
 ,{ "and" }
 ,{ "try" }
 ,{ "to" }
 ,{ "fix" }
 ,{ "it." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "AMP" }
} , & fmt_h3 , & align_h3 } ;

Text b6 = { {
 { "Below" }
 ,{ "is" }
 ,{ "the" }
 ,{ "file" }
 ,{ "AMP.lang" , & fmt_text_b }
 ,{ "with" }
 ,{ "the" }
 ,{ "definition" }
 ,{ "of" }
 ,{ "the" }
 ,{ "AMP" , & fmt_text_b }
 ,{ "language." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "You" }
 ,{ "may" }
 ,{ "see" }
 ,{ "the" }
 ,{ "output" }
 ,{ "for" }
 ,{ "this" }
 ,{ "language" }
 ,{ "in" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "CCORE_ROOT/tools/CondLangLR1/AMP" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "Conditional" }
 ,{ "recursive" }
 ,{ "grammar" }
} , & fmt_h2 , & align_h2 } ;

Text b9 = { {
 { "Conditional" }
 ,{ "recursive" }
 ,{ "grammar" }
 ,{ "is" }
 ,{ "an" }
 ,{ "advanced" }
 ,{ "version" }
 ,{ "of" }
 ,{ "context-free" , & fmt_text_b }
 ,{ "grammer" , & fmt_text_b }
 ,{ "." }
 ,{ "To" }
 ,{ "define" }
 ,{ "a" }
 ,{ "language" }
 ,{ "by" }
 ,{ "a" }
 ,{ "uniquely" }
 ,{ "decoded" }
 ,{ "grammar" }
 ,{ "it" }
 ,{ "is" }
 ,{ "often" }
 ,{ "you" }
 ,{ "have" }
 ,{ "to" }
 ,{ "introduce" }
 ,{ "extra" }
 ,{ "non-terminals." }
 ,{ "For" }
 ,{ "example," }
 ,{ "you" }
 ,{ "can" }
 ,{ "define" }
 ,{ "AMP" , & fmt_text_b }
 ,{ "language" }
 ,{ "by" }
 ,{ "the" }
 ,{ "following" }
 ,{ "grammar:" }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "but" }
 ,{ "this" }
 ,{ "grammar" }
 ,{ "is" }
 ,{ "not" }
 ,{ "uniquely" }
 ,{ "decoded." }
 ,{ "To" }
 ,{ "make" }
 ,{ "it" }
 ,{ "such" }
 ,{ "you" }
 ,{ "may" }
 ,{ "introduce" }
 ,{ "extra" }
 ,{ "non-terminals:" }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "Conditional" }
 ,{ "grammar" }
 ,{ "is" }
 ,{ "an" }
 ,{ "alternative" }
 ,{ "way." }
 ,{ "Instead" }
 ,{ "defining" }
 ,{ "of" }
 ,{ "new" }
 ,{ "non-terminals," }
 ,{ "we" }
 ,{ "introduce" }
 ,{ "\"kinds\"." }
 ,{ "Kind" }
 ,{ "is" }
 ,{ "a" }
 ,{ "property" }
 ,{ "of" }
 ,{ "a" }
 ,{ "non-terminal" }
 ,{ "production." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "Here" }
 ,{ "is" }
 ,{ "the" }
 ,{ "non-terminal" }
 ,{ "EXPR" , & fmt_text_b }
 ,{ "with" }
 ,{ "three" }
 ,{ "associated" }
 ,{ "kinds:" }
 ,{ "A" , & fmt_text_b }
 ,{ "," }
 ,{ "M" , & fmt_text_b }
 ,{ "and" }
 ,{ "P" , & fmt_text_b }
 ,{ "." }
 ,{ "When" }
 ,{ "we" }
 ,{ "produce" }
 ,{ "a" }
 ,{ "word" }
 ,{ "of" }
 ,{ "this" }
 ,{ "non-terminal" }
 ,{ "class," }
 ,{ "we" }
 ,{ "assign" }
 ,{ "a" }
 ,{ "kind" }
 ,{ "to" }
 ,{ "it," }
 ,{ "it" }
 ,{ "is" }
 ,{ "designated" }
 ,{ "by" }
 ,{ "the" }
 ,{ "trailing" }
 ,{ "=" , & fmt_text_b }
 ,{ "kind" , & fmt_text_b }
 ,{ "statement." }
 ,{ "A" }
 ,{ "particular" }
 ,{ "production" }
 ,{ "rule" }
 ,{ "may" }
 ,{ "have" }
 ,{ "an" }
 ,{ "associated" }
 ,{ "condition," }
 ,{ "this" }
 ,{ "condition" }
 ,{ "must" }
 ,{ "be" }
 ,{ "satisfied" }
 ,{ "to" }
 ,{ "apply" }
 ,{ "this" }
 ,{ "rule." }
 ,{ "For" }
 ,{ "example," }
 ,{ "the" }
 ,{ "rule" }
 ,{ "opAdd" , & fmt_text_b }
 ,{ "can" }
 ,{ "only" }
 ,{ "be" }
 ,{ "applied" }
 ,{ "if" }
 ,{ "the" }
 ,{ "kind" }
 ,{ "of" }
 ,{ "the" }
 ,{ "second" }
 ,{ "subexpression" }
 ,{ "(" }
 ,{ ".a" , & fmt_text_b }
 ,{ ")" }
 ,{ "is" }
 ,{ "M" , & fmt_text_b }
 ,{ "or" }
 ,{ "P" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "Using" }
 ,{ "conditional" }
 ,{ "grammars" }
 ,{ "you" }
 ,{ "avoid" }
 ,{ "rule" }
 ,{ "redundancy." }
 ,{ "You" }
 ,{ "don't" }
 ,{ "need" }
 ,{ "\"cast\"" }
 ,{ "rules." }
 ,{ "The" }
 ,{ "language" }
 ,{ "description" }
 ,{ "becomes" }
 ,{ "also" }
 ,{ "more" }
 ,{ "intuitive." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "You" }
 ,{ "can" }
 ,{ "read" }
 ,{ "more" }
 ,{ "about" }
 ,{ "conditional" }
 ,{ "recursive" }
 ,{ "grammars" }
 ,{ "in" }
 ,{ "this" , & fmt_text_a }
 ,{ "document" , & fmt_text_a }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "Grammar" }
 ,{ "description" }
} , & fmt_h2 , & align_h2 } ;

Text b16 = { {
 { "We" }
 ,{ "use" }
 ,{ "the" }
 ,{ "term" }
 ,{ "\"syntax" }
 ,{ "class\"" }
 ,{ "or" }
 ,{ "\"synt\"" }
 ,{ "for" }
 ,{ "non-terminals." }
 ,{ "The" }
 ,{ "grammar" }
 ,{ "description" }
 ,{ "consists" }
 ,{ "of" }
 ,{ "synt" }
 ,{ "descriptions." }
 ,{ "Each" }
 ,{ "synt" }
 ,{ "has" }
 ,{ "a" }
 ,{ "unique" }
 ,{ "name," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "a" }
 ,{ "C" , & fmt_text_b }
 ,{ "name." }
 ,{ "Some" }
 ,{ "synts" }
 ,{ "(usually" }
 ,{ "one)" }
 ,{ "are" }
 ,{ "language" }
 ,{ "synts," }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "language" }
 ,{ "is" }
 ,{ "a" }
 ,{ "union" }
 ,{ "of" }
 ,{ "these" }
 ,{ "synt's" }
 ,{ "productions." }
 ,{ "These" }
 ,{ "synts" }
 ,{ "are" }
 ,{ "prefixed" }
 ,{ "with" }
 ,{ "the" }
 ,{ "character" }
 ,{ "!" , & fmt_text_b }
 ,{ "." }
 ,{ "A" }
 ,{ "synt" }
 ,{ "description" }
 ,{ "starts" }
 ,{ "with" }
 ,{ "the" }
 ,{ "synt" }
 ,{ "name," }
 ,{ "optionally" }
 ,{ "preceded" }
 ,{ "by" }
 ,{ "the" }
 ,{ "character" }
 ,{ "!" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "the" }
 ,{ "synt" }
 ,{ "has" }
 ,{ "associated" }
 ,{ "kinds," }
 ,{ "the" }
 ,{ "synt" }
 ,{ "description" }
 ,{ "continues" }
 ,{ "with" }
 ,{ "the" }
 ,{ "sign" }
 ,{ ":" , & fmt_text_b }
 ,{ "and" }
 ,{ "following" }
 ,{ "comma" }
 ,{ "separated" }
 ,{ "kind" }
 ,{ "names." }
 ,{ "Kind" }
 ,{ "names" }
 ,{ "must" }
 ,{ "be" }
 ,{ "C" , & fmt_text_b }
 ,{ "names" }
 ,{ "and" }
 ,{ "must" }
 ,{ "be" }
 ,{ "unique" }
 ,{ "for" }
 ,{ "each" }
 ,{ "synt." }
 ,{ "At" }
 ,{ "least" }
 ,{ "one" }
 ,{ "kind" }
 ,{ "must" }
 ,{ "be" }
 ,{ "provided." }
 ,{ "Then" }
 ,{ "production" }
 ,{ "rule" }
 ,{ "descriptions" }
 ,{ "follows," }
 ,{ "enclosed" }
 ,{ "in" }
 ,{ "the" }
 ,{ "figure" }
 ,{ "brackets." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "Kinds" }
 ,{ "of" }
 ,{ "the" }
 ,{ "same" }
 ,{ "synt" }
 ,{ "are" }
 ,{ "considered" }
 ,{ "as" }
 ,{ "linear" }
 ,{ "ordered." }
 ,{ "The" }
 ,{ "order" }
 ,{ "is" }
 ,{ "defined" }
 ,{ "by" }
 ,{ "the" }
 ,{ "appearance," }
 ,{ "i.e." }
 ,{ "a" }
 ,{ "kind" }
 ,{ "is" }
 ,{ "less" }
 ,{ "than" }
 ,{ "another" }
 ,{ "kind," }
 ,{ "if" }
 ,{ "it" }
 ,{ "appears" }
 ,{ "earlier" }
 ,{ "in" }
 ,{ "the" }
 ,{ "kinds" }
 ,{ "list." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "A" }
 ,{ "kind" }
 ,{ "has" }
 ,{ "an" }
 ,{ "associated" }
 ,{ "numeric" }
 ,{ "value," }
 ,{ "which" }
 ,{ "is" }
 ,{ "the" }
 ,{ "index" }
 ,{ "in" }
 ,{ "the" }
 ,{ "kinds" }
 ,{ "list." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "Rules" }
 ,{ "description" }
 ,{ "is" }
 ,{ "a" }
 ,{ "sequence" }
 ,{ "of" }
 ,{ "rule" }
 ,{ "descriptions." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "Each" }
 ,{ "rule" }
 ,{ "description" }
 ,{ "starts" }
 ,{ "from" }
 ,{ "the" }
 ,{ "rule" }
 ,{ "elements" }
 ,{ "sequence." }
 ,{ "During" }
 ,{ "this" }
 ,{ "part" }
 ,{ "of" }
 ,{ "the" }
 ,{ "input" }
 ,{ "the" }
 ,{ "text" }
 ,{ "is" }
 ,{ "parsed" }
 ,{ "by" }
 ,{ "words," }
 ,{ "divided" }
 ,{ "by" }
 ,{ "space" }
 ,{ "characters." }
 ,{ "To" }
 ,{ "terminate" }
 ,{ "it" }
 ,{ "you" }
 ,{ "must" }
 ,{ "enter" }
 ,{ "either" }
 ,{ ":" , & fmt_text_b }
 ,{ "to" }
 ,{ "finish" }
 ,{ "the" }
 ,{ "rule" }
 ,{ "elements" }
 ,{ "sequence" }
 ,{ "or" }
 ,{ "}" , & fmt_text_b }
 ,{ "to" }
 ,{ "close" }
 ,{ "the" }
 ,{ "rule" }
 ,{ "descriptions," }
 ,{ "surrounded" }
 ,{ "by" }
 ,{ "at" }
 ,{ "least" }
 ,{ "one" }
 ,{ "space" }
 ,{ "character" }
 ,{ "before" }
 ,{ "and" }
 ,{ "after." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "Each" }
 ,{ "rule" }
 ,{ "has" }
 ,{ "a" }
 ,{ "rule" }
 ,{ "name," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "either" }
 ,{ "a" }
 ,{ "C" , & fmt_text_b }
 ,{ "name" }
 ,{ "or" }
 ,{ "a" }
 ,{ "compound" }
 ,{ "C" , & fmt_text_b }
 ,{ "name," }
 ,{ "concatenated" }
 ,{ "from" }
 ,{ "several" }
 ,{ "C" , & fmt_text_b }
 ,{ "names" }
 ,{ "by" }
 ,{ "the" }
 ,{ "character" }
 ,{ "@" , & fmt_text_b }
 ,{ "," }
 ,{ "and" }
 ,{ "must" }
 ,{ "be" }
 ,{ "unique" }
 ,{ "for" }
 ,{ "each" }
 ,{ "synt." }
 ,{ "If" }
 ,{ "the" }
 ,{ "synt" }
 ,{ "has" }
 ,{ "kinds," }
 ,{ "a" }
 ,{ "rule" }
 ,{ "kind" }
 ,{ "must" }
 ,{ "be" }
 ,{ "given," }
 ,{ "otherwise" }
 ,{ "it" }
 ,{ "must" }
 ,{ "not" }
 ,{ "present." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "Rule" }
 ,{ "elements" }
 ,{ "part" }
 ,{ "is" }
 ,{ "parsed" }
 ,{ "on" }
 ,{ "words," }
 ,{ "separated" }
 ,{ "by" }
 ,{ "space" }
 ,{ "characters." }
 ,{ "Each" }
 ,{ "word" }
 ,{ "is" }
 ,{ "a" }
 ,{ "sequence" }
 ,{ "of" }
 ,{ "printable" }
 ,{ "non-space" }
 ,{ "characters." }
 ,{ "The" }
 ,{ "word" }
 ,{ "can" }
 ,{ "be" }
 ,{ "a" }
 ,{ "synt" }
 ,{ "name" }
 ,{ "or" }
 ,{ "an" }
 ,{ "atom" }
 ,{ "name." }
 ,{ "Synt" }
 ,{ "name" }
 ,{ "may" }
 ,{ "have" }
 ,{ "a" }
 ,{ "dot-suffix" }
 ,{ "with" }
 ,{ "variable" }
 ,{ "name." }
 ,{ "Everything" }
 ,{ "which" }
 ,{ "is" }
 ,{ "not" }
 ,{ "a" }
 ,{ "synt" }
 ,{ "name" }
 ,{ "is" }
 ,{ "considered" }
 ,{ "as" }
 ,{ "an" }
 ,{ "atom" }
 ,{ "name." }
 ,{ "Language" }
 ,{ "atom" }
 ,{ "set" }
 ,{ "is" }
 ,{ "defined" }
 ,{ "implicitly" }
 ,{ "by" }
 ,{ "collecting" }
 ,{ "atom" }
 ,{ "names" }
 ,{ "from" }
 ,{ "rule" }
 ,{ "definitions." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "Two" }
 ,{ "one-character" }
 ,{ "words" }
 ,{ "}" , & fmt_text_b }
 ,{ "and" }
 ,{ ":" , & fmt_text_b }
 ,{ "cannot" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "define" }
 ,{ "an" }
 ,{ "atom." }
 ,{ "But" }
 ,{ "you" }
 ,{ "can" }
 ,{ "introduce" }
 ,{ "an" }
 ,{ "atom" }
 ,{ "with" }
 ,{ "such" }
 ,{ "name" }
 ,{ "using" }
 ,{ "the" }
 ,{ "character" }
 ,{ "`" , & fmt_text_b }
 ,{ "as" }
 ,{ "the" }
 ,{ "prefix," }
 ,{ "i.e." }
 ,{ "`}" , & fmt_text_b }
 ,{ "and" }
 ,{ "`:" , & fmt_text_b }
 ,{ "are" }
 ,{ "considered" }
 ,{ "as" }
 ,{ "atom" }
 ,{ "names," }
 ,{ "but" }
 ,{ "modified" }
 ,{ "to" }
 ,{ "the" }
 ,{ "names" }
 ,{ "}" , & fmt_text_b }
 ,{ "and" }
 ,{ ":" , & fmt_text_b }
 ,{ "." }
 ,{ "Also" }
 ,{ "``}" , & fmt_text_b }
 ,{ "is" }
 ,{ "modified" }
 ,{ "to" }
 ,{ "`}" , & fmt_text_b }
 ,{ "," }
 ,{ "```}" , & fmt_text_b }
 ,{ "to" }
 ,{ "``}" , & fmt_text_b }
 ,{ "and" }
 ,{ "so" }
 ,{ "on." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "A" }
 ,{ "rule" }
 ,{ "may" }
 ,{ "have" }
 ,{ "an" }
 ,{ "associated" }
 ,{ "rule" }
 ,{ "condition" }
 ,{ "of" }
 ,{ "the" }
 ,{ "form:" }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "A" }
 ,{ "condition" }
 ,{ "expression" }
 ,{ "is" }
 ,{ "an" }
 ,{ "expression," }
 ,{ "built" }
 ,{ "from" }
 ,{ "prime" }
 ,{ "expressions" }
 ,{ "using" }
 ,{ "the" }
 ,{ "logical" }
 ,{ "operations" }
 ,{ "$" , & fmt_text_b }
 ,{ "(logical" }
 ,{ "AND)," }
 ,{ "|" , & fmt_text_b }
 ,{ "(logical" }
 ,{ "OR)" }
 ,{ "and" }
 ,{ "!" , & fmt_text_b }
 ,{ "(logical" }
 ,{ "NOT)." }
 ,{ "$" , & fmt_text_b }
 ,{ "has" }
 ,{ "a" }
 ,{ "higher" }
 ,{ "priority" }
 ,{ "than" }
 ,{ "|" , & fmt_text_b }
 ,{ "." }
 ,{ "Brackets" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "specify" }
 ,{ "the" }
 ,{ "order" }
 ,{ "of" }
 ,{ "evaluation." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "Prime" }
 ,{ "expressions" }
 ,{ "are" }
 ,{ "comparison" }
 ,{ "expressions:" }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "Each" }
 ,{ "name" }
 ,{ "either" }
 ,{ "a" }
 ,{ "variable" }
 ,{ "name" }
 ,{ "or" }
 ,{ "a" }
 ,{ "kind" }
 ,{ "name." }
 ,{ "At" }
 ,{ "least" }
 ,{ "one" }
 ,{ "name" }
 ,{ "must" }
 ,{ "be" }
 ,{ "a" }
 ,{ "variable" }
 ,{ "name." }
 ,{ "Variables" }
 ,{ "are" }
 ,{ "introduced" }
 ,{ "in" }
 ,{ "the" }
 ,{ "rule" }
 ,{ "element" }
 ,{ "list" }
 ,{ "as" }
 ,{ "the" }
 ,{ "dot-suffix" }
 ,{ "of" }
 ,{ "the" }
 ,{ "synt" }
 ,{ "name." }
 ,{ "For" }
 ,{ "example," }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "here" }
 ,{ "two" }
 ,{ "variables" }
 ,{ "were" }
 ,{ "introduced:" }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "." }
 ,{ "Each" }
 ,{ "of" }
 ,{ "them" }
 ,{ "designate" }
 ,{ "the" }
 ,{ "kind" }
 ,{ "of" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "synt" }
 ,{ "production." }
 ,{ "If" }
 ,{ "the" }
 ,{ "name" }
 ,{ "is" }
 ,{ "a" }
 ,{ "kind" }
 ,{ "name," }
 ,{ "the" }
 ,{ "corespondent" }
 ,{ "kind" }
 ,{ "is" }
 ,{ "looked-up" }
 ,{ "among" }
 ,{ "the" }
 ,{ "kinds" }
 ,{ "of" }
 ,{ "the" }
 ,{ "synt," }
 ,{ "the" }
 ,{ "other" }
 ,{ "name" }
 ,{ "is" }
 ,{ "a" }
 ,{ "variable" }
 ,{ "of." }
 ,{ "I.e." }
 ,{ "in" }
 ,{ "the" }
 ,{ "example" }
 ,{ "above" }
 ,{ "P" , & fmt_text_b }
 ,{ "is" }
 ,{ "looked-up" }
 ,{ "among" }
 ,{ "the" }
 ,{ "kinds" }
 ,{ "of" }
 ,{ "the" }
 ,{ "synt" }
 ,{ "EXPR" , & fmt_text_b }
 ,{ "." }
 ,{ "Kinds" }
 ,{ "are" }
 ,{ "compared" }
 ,{ "using" }
 ,{ "they" }
 ,{ "numeric" }
 ,{ "values." }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "special" }
 ,{ "kind" }
 ,{ "of" }
 ,{ "synts:" }
 ,{ "noneof" , & fmt_text_b }
 ,{ "synts." }
 ,{ "They" }
 ,{ "are" }
 ,{ "described" }
 ,{ "as" }
 ,{ "following:" }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "This" }
 ,{ "synt" }
 ,{ "produces" }
 ,{ "all" }
 ,{ "one-atom" }
 ,{ "words" }
 ,{ "from" }
 ,{ "atoms" }
 ,{ "not" }
 ,{ "from" }
 ,{ "the" }
 ,{ "given" }
 ,{ "list." }
 ,{ "I.e." }
 ,{ "it" }
 ,{ "is" }
 ,{ "equivalent" }
 ,{ "the" }
 ,{ "following" }
 ,{ "description:" }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "DDL" }
 ,{ "output" }
} , & fmt_h2 , & align_h2 } ;

Text b32 = { {
 { "DDL" , & fmt_text_b }
 ,{ "output" }
 ,{ "consists" }
 ,{ "of" }
 ,{ "the" }
 ,{ "full" }
 ,{ "description" }
 ,{ "of" }
 ,{ "the" }
 ,{ "language" }
 ,{ "and" }
 ,{ "the" }
 ,{ "LR1" }
 ,{ "parsing" }
 ,{ "state" }
 ,{ "machine." }
 ,{ "This" }
 ,{ "output" }
 ,{ "is" }
 ,{ "given" }
 ,{ "as" }
 ,{ "a" }
 ,{ "single" }
 ,{ "constant" }
 ,{ "lang" , & fmt_text_b }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "Lang" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "type" }
 ,{ "definitions" }
 ,{ "can" }
 ,{ "be" }
 ,{ "found" }
 ,{ "in" }
 ,{ "the" }
 ,{ "file" }
 ,{ "CCORE_ROOT/tools/CondLangLR1/LangType.ddl" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b33 = { {
 { "There" }
 ,{ "are" }
 ,{ "following" }
 ,{ "description" }
 ,{ "entities:" }
 ,{ "Atom" , & fmt_text_b }
 ,{ "," }
 ,{ "Synt" , & fmt_text_b }
 ,{ "," }
 ,{ "Kind" , & fmt_text_b }
 ,{ "," }
 ,{ "Element" , & fmt_text_b }
 ,{ "," }
 ,{ "Rule" , & fmt_text_b }
 ,{ "," }
 ,{ "TopRule" , & fmt_text_b }
 ,{ "," }
 ,{ "State" , & fmt_text_b }
 ,{ "and" }
 ,{ "Final" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "structure" }
 ,{ "Lang" , & fmt_text_b }
 ,{ "consists" }
 ,{ "of" }
 ,{ "arrays" }
 ,{ "of" }
 ,{ "these" }
 ,{ "entities." }
 ,{ "It" }
 ,{ "also" }
 ,{ "has" }
 ,{ "the" }
 ,{ "field" }
 ,{ "lang" , & fmt_text_b }
 ,{ "," }
 ,{ "which" }
 ,{ "is" }
 ,{ "the" }
 ,{ "array" }
 ,{ "of" }
 ,{ "pointers" }
 ,{ "to" }
 ,{ "Synt" , & fmt_text_b }
 ,{ "," }
 ,{ "these" }
 ,{ "synts" }
 ,{ "are" }
 ,{ "language" }
 ,{ "synts." }
 ,{ "Each" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "the" }
 ,{ "field" }
 ,{ "index" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "field" }
 ,{ "is" }
 ,{ "the" }
 ,{ "index" }
 ,{ "in" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "structure" }
 ,{ "array." }
 ,{ "For" }
 ,{ "example," }
 ,{ "lang.atoms[I].index==I" , & fmt_text_b }
 ,{ "." }
 ,{ "Also" }
 ,{ "those" }
 ,{ "structures," }
 ,{ "which" }
 ,{ "has" }
 ,{ "the" }
 ,{ "associated" }
 ,{ "name," }
 ,{ "have" }
 ,{ "the" }
 ,{ "field" }
 ,{ "name" , & fmt_text_b }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "text" , & fmt_text_b }
 ,{ "with" }
 ,{ "this" }
 ,{ "name." }
} , & fmt_text , & align_text } ;

Text b34 = { {
 { "The" }
 ,{ "structure" }
 ,{ "Atom" , & fmt_text_b }
 ,{ "has" }
 ,{ "fields" }
 ,{ "index" , & fmt_text_b }
 ,{ "," }
 ,{ "name" , & fmt_text_b }
 ,{ "and" }
 ,{ "element" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "last" }
 ,{ "field" }
 ,{ "is" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "Element" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b35 = { {
 { "The" }
 ,{ "structure" }
 ,{ "Synt" , & fmt_text_b }
 ,{ "has" }
 ,{ "fields" }
 ,{ "index" , & fmt_text_b }
 ,{ "," }
 ,{ "name" , & fmt_text_b }
 ,{ "," }
 ,{ "kinds" , & fmt_text_b }
 ,{ "and" }
 ,{ "rules" , & fmt_text_b }
 ,{ "." }
 ,{ "kinds" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "kinds," }
 ,{ "associated" }
 ,{ "with" }
 ,{ "this" }
 ,{ "synt." }
 ,{ "If" }
 ,{ "the" }
 ,{ "synt" }
 ,{ "has" }
 ,{ "no" }
 ,{ "kinds," }
 ,{ "this" }
 ,{ "array" }
 ,{ "has" }
 ,{ "the" }
 ,{ "length" }
 ,{ "1" , & fmt_text_b }
 ,{ "and" }
 ,{ "contains" }
 ,{ "a" }
 ,{ "single" }
 ,{ "auto-generated" }
 ,{ "kind" }
 ,{ "of" }
 ,{ "this" }
 ,{ "synt." }
 ,{ "The" }
 ,{ "array" }
 ,{ "rules" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "list" }
 ,{ "of" }
 ,{ "rules" }
 ,{ "for" }
 ,{ "this" }
 ,{ "synt." }
} , & fmt_text , & align_text } ;

Text b36 = { {
 { "The" }
 ,{ "structure" }
 ,{ "Kind" , & fmt_text_b }
 ,{ "has" }
 ,{ "two" }
 ,{ "indexes." }
 ,{ "First," }
 ,{ "index" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "index" }
 ,{ "in" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "Synt" , & fmt_text_b }
 ,{ "array." }
 ,{ "Another," }
 ,{ "kindex" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "global" }
 ,{ "kind" }
 ,{ "index" }
 ,{ "for" }
 ,{ "all" }
 ,{ "kinds" }
 ,{ "of" }
 ,{ "all" }
 ,{ "synts." }
 ,{ "The" }
 ,{ "name" }
 ,{ "of" }
 ,{ "the" }
 ,{ "auto-generated" }
 ,{ "kind" }
 ,{ "is" }
 ,{ "the" }
 ,{ "empty" }
 ,{ "string." }
 ,{ "The" }
 ,{ "field" }
 ,{ "synt" , & fmt_text_b }
 ,{ "points" }
 ,{ "to" }
 ,{ "the" }
 ,{ "synt" }
 ,{ "this" }
 ,{ "kind" }
 ,{ "belongs" }
 ,{ "to." }
 ,{ "The" }
 ,{ "field" }
 ,{ "element" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "element." }
 ,{ "The" }
 ,{ "array" }
 ,{ "rules" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "list" }
 ,{ "of" }
 ,{ "\"top\"" }
 ,{ "rules" }
 ,{ "for" }
 ,{ "this" }
 ,{ "kind." }
} , & fmt_text , & align_text } ;

Text b37 = { {
 { "The" }
 ,{ "structure" }
 ,{ "Element" , & fmt_text_b }
 ,{ "describes" }
 ,{ "elements." }
 ,{ "The" }
 ,{ "element" }
 ,{ "set" }
 ,{ "is" }
 ,{ "a" }
 ,{ "disjoint" }
 ,{ "union" }
 ,{ "of" }
 ,{ "atoms" }
 ,{ "and" }
 ,{ "synt" }
 ,{ "kinds." }
 ,{ "Atoms" }
 ,{ "go" }
 ,{ "first" }
 ,{ "and" }
 ,{ "kinds" }
 ,{ "after." }
 ,{ "The" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "fields" }
 ,{ "index" , & fmt_text_b }
 ,{ "and" }
 ,{ "elem" , & fmt_text_b }
 ,{ "." }
 ,{ "elem" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "polymorphic" }
 ,{ "pointer" }
 ,{ "and" }
 ,{ "points" }
 ,{ "to" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "atom" }
 ,{ "or" }
 ,{ "kind." }
} , & fmt_text , & align_text } ;

Text b38 = { {
 { "The" }
 ,{ "structure" }
 ,{ "Rule" , & fmt_text_b }
 ,{ "describes" }
 ,{ "a" }
 ,{ "rule." }
 ,{ "The" }
 ,{ "field" }
 ,{ "result" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "kind" }
 ,{ "of" }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "synt." }
 ,{ "The" }
 ,{ "field" }
 ,{ "args" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "list" }
 ,{ "of" }
 ,{ "rule" }
 ,{ "arguments." }
 ,{ "It" }
 ,{ "is" }
 ,{ "a" }
 ,{ "sequence" }
 ,{ "of" }
 ,{ "atoms" }
 ,{ "and" }
 ,{ "synts." }
 ,{ "This" }
 ,{ "description" }
 ,{ "has" }
 ,{ "no" }
 ,{ "rule" }
 ,{ "conditions." }
 ,{ "Instead," }
 ,{ "we" }
 ,{ "derive" }
 ,{ "a" }
 ,{ "set" }
 ,{ "of" }
 ,{ "\"top\"" }
 ,{ "rules." }
} , & fmt_text , & align_text } ;

Text b39 = { {
 { "The" }
 ,{ "structure" }
 ,{ "TopRule" , & fmt_text_b }
 ,{ "describes" }
 ,{ "a" }
 ,{ "top" }
 ,{ "rule." }
 ,{ "The" }
 ,{ "field" }
 ,{ "name" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "name" }
 ,{ "of" }
 ,{ "the" }
 ,{ "top" }
 ,{ "rule." }
 ,{ "This" }
 ,{ "name" }
 ,{ "is" }
 ,{ "a" }
 ,{ "composition" }
 ,{ "of" }
 ,{ "the" }
 ,{ "bottom" }
 ,{ "rule" }
 ,{ "name" }
 ,{ "and" }
 ,{ "dot" }
 ,{ "suffixes" }
 ,{ "with" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "kinds." }
 ,{ "The" }
 ,{ "field" }
 ,{ "bottom" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "bottom" }
 ,{ "rule," }
 ,{ "this" }
 ,{ "top" }
 ,{ "rule" }
 ,{ "has" }
 ,{ "been" }
 ,{ "derived" }
 ,{ "from." }
 ,{ "The" }
 ,{ "field" }
 ,{ "result" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "rule" }
 ,{ "result." }
 ,{ "The" }
 ,{ "field" }
 ,{ "args" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "list" }
 ,{ "of" }
 ,{ "rule" }
 ,{ "arguments." }
 ,{ "It" }
 ,{ "is" }
 ,{ "a" }
 ,{ "sequence" }
 ,{ "of" }
 ,{ "atoms" }
 ,{ "and" }
 ,{ "kinds." }
} , & fmt_text , & align_text } ;

Text b40 = { {
 { "The" }
 ,{ "structure" }
 ,{ "State" , & fmt_text_b }
 ,{ "describes" }
 ,{ "a" }
 ,{ "state" }
 ,{ "of" }
 ,{ "the" }
 ,{ "parsing" }
 ,{ "state" }
 ,{ "machine." }
 ,{ "It" }
 ,{ "has" }
 ,{ "fields" }
 ,{ "index" , & fmt_text_b }
 ,{ "," }
 ,{ "final" , & fmt_text_b }
 ,{ "and" }
 ,{ "transitions" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "first" }
 ,{ "state" }
 ,{ "(with" }
 ,{ "the" }
 ,{ "index" }
 ,{ "0" , & fmt_text_b }
 ,{ ")" }
 ,{ "is" }
 ,{ "the" }
 ,{ "start" }
 ,{ "state." }
 ,{ "transitions" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "set" }
 ,{ "of" }
 ,{ "transitions" }
 ,{ "from" }
 ,{ "this" }
 ,{ "state." }
 ,{ "Each" }
 ,{ "transition" }
 ,{ "is" }
 ,{ "described" }
 ,{ "by" }
 ,{ "an" }
 ,{ "element" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "State#Transition" , & fmt_text_b }
 ,{ "with" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "element" , & fmt_text_b }
 ,{ "and" }
 ,{ "state" , & fmt_text_b }
 ,{ "." }
 ,{ "element" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "element," }
 ,{ "which" }
 ,{ "cause" }
 ,{ "the" }
 ,{ "transition," }
 ,{ "and" }
 ,{ "state" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "target" }
 ,{ "state." }
 ,{ "final" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "\"final\"," }
 ,{ "associated" }
 ,{ "with" }
 ,{ "the" }
 ,{ "state." }
 ,{ "The" }
 ,{ "array" }
 ,{ "transitions" , & fmt_text_b }
 ,{ "is" }
 ,{ "ordered" }
 ,{ "by" }
 ,{ "the" }
 ,{ "element->index" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b41 = { {
 { "The" }
 ,{ "structure" }
 ,{ "Final" , & fmt_text_b }
 ,{ "describes" }
 ,{ "the" }
 ,{ "list" }
 ,{ "of" }
 ,{ "actions." }
 ,{ "Each" }
 ,{ "action" }
 ,{ "is" }
 ,{ "described" }
 ,{ "by" }
 ,{ "an" }
 ,{ "element" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "Final#Action" , & fmt_text_b }
 ,{ "with" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "atom" , & fmt_text_b }
 ,{ "and" }
 ,{ "rule" , & fmt_text_b }
 ,{ "." }
 ,{ "atom" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "an" }
 ,{ "atom" }
 ,{ "or" }
 ,{ "null." }
 ,{ "If" }
 ,{ "this" }
 ,{ "atom" }
 ,{ "(or" }
 ,{ "the" }
 ,{ "end" }
 ,{ "of" }
 ,{ "atom" }
 ,{ "sequence)" }
 ,{ "is" }
 ,{ "seen," }
 ,{ "then" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "rule" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "applied." }
 ,{ "rule" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "action" }
 ,{ "rule" }
 ,{ "or" }
 ,{ "null," }
 ,{ "if" }
 ,{ "the" }
 ,{ "atom" }
 ,{ "must" }
 ,{ "be" }
 ,{ "shifted" }
 ,{ "to" }
 ,{ "the" }
 ,{ "parsing" }
 ,{ "stack." }
 ,{ "If" }
 ,{ "the" }
 ,{ "atom" , & fmt_text_b }
 ,{ "is" }
 ,{ "null," }
 ,{ "then" }
 ,{ "the" }
 ,{ "null" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "rule" , & fmt_text_b }
 ,{ "means" }
 ,{ "the" }
 ,{ "end" }
 ,{ "of" }
 ,{ "the" }
 ,{ "parsing" }
 ,{ "process." }
 ,{ "The" }
 ,{ "array" }
 ,{ "actions" , & fmt_text_b }
 ,{ "is" }
 ,{ "ordered" }
 ,{ "by" }
 ,{ "the" }
 ,{ "atom->index" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "action" }
 ,{ "with" }
 ,{ "null" }
 ,{ "atom" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "any," }
 ,{ "goes" }
 ,{ "first." }
} , & fmt_text , & align_text } ;

Text b42 = { {
 { "txt" }
 ,{ "output" }
} , & fmt_h2 , & align_h2 } ;

Text b43 = { {
 { "A" }
 ,{ "text" }
 ,{ "output" }
 ,{ "has" }
 ,{ "the" }
 ,{ "following" }
 ,{ "sections" }
 ,{ "(all" }
 ,{ "examples" }
 ,{ "are" }
 ,{ "for" }
 ,{ "the" }
 ,{ "AMP" , & fmt_text_b }
 ,{ ")." }
 ,{ "The" }
 ,{ "section" }
 ,{ "Atoms" , & fmt_text_b }
 ,{ "with" }
 ,{ "atom" }
 ,{ "descriptions." }
} , & fmt_text , & align_text } ;

Text b44 = { {
 { "The" }
 ,{ "section" }
 ,{ "Syntax" , & fmt_text_b }
 ,{ "classes" , & fmt_text_b }
 ,{ "with" }
 ,{ "synt" }
 ,{ "descriptions." }
} , & fmt_text , & align_text } ;

Text b45 = { {
 { "The" }
 ,{ "section" }
 ,{ "Rules" , & fmt_text_b }
 ,{ "with" }
 ,{ "rule" }
 ,{ "descriptions." }
} , & fmt_text , & align_text } ;

Text b46 = { {
 { "The" }
 ,{ "section" }
 ,{ "States" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "state" }
 ,{ "machine" }
 ,{ "description." }
 ,{ "Each" }
 ,{ "state" }
 ,{ "has" }
 ,{ "an" }
 ,{ "element" }
 ,{ "sequence," }
 ,{ "leading" }
 ,{ "to" }
 ,{ "this" }
 ,{ "state." }
 ,{ "It" }
 ,{ "also" }
 ,{ "has" }
 ,{ "an" }
 ,{ "associated" }
 ,{ "final," }
 ,{ "given" }
 ,{ "by" }
 ,{ "its" }
 ,{ "number." }
} , & fmt_text , & align_text } ;

Text b47 = { {
 { "The" }
 ,{ "last" }
 ,{ "section" }
 ,{ "is" }
 ,{ "the" }
 ,{ "final" }
 ,{ "list." }
 ,{ "Each" }
 ,{ "final" }
 ,{ "is" }
 ,{ "a" }
 ,{ "set" }
 ,{ "of" }
 ,{ "couples:" }
 ,{ "atom," }
 ,{ "rule." }
} , & fmt_text , & align_text } ;

Text b48 = { {
 { "Bad" }
 ,{ "txt" }
 ,{ "output" }
} , & fmt_h2 , & align_h2 } ;

Text b49 = { {
 { "If" }
 ,{ "the" }
 ,{ "language" }
 ,{ "is" }
 ,{ "not" }
 ,{ "an" }
 ,{ "LR1" }
 ,{ "language," }
 ,{ "then" }
 ,{ "the" }
 ,{ "file" }
 ,{ "with" }
 ,{ "the" }
 ,{ "extension" }
 ,{ ".bad.txt" , & fmt_text_b }
 ,{ "is" }
 ,{ "produced." }
 ,{ "This" }
 ,{ "file" }
 ,{ "contains" }
 ,{ "the" }
 ,{ "list" }
 ,{ "of" }
 ,{ "bad" }
 ,{ "states" }
 ,{ "with" }
 ,{ "conflicts." }
 ,{ "For" }
 ,{ "example," }
 ,{ "for" }
 ,{ "the" }
 ,{ "language" }
} , & fmt_text , & align_text } ;

Text b50 = { {
 { "the" }
 ,{ "output" }
 ,{ "is" }
} , & fmt_text , & align_text } ;

Text b51 = { {
 { "Here" }
 ,{ "is" }
 ,{ "a" }
 ,{ "conflict" }
 ,{ "state." }
 ,{ "In" }
 ,{ "this" }
 ,{ "state" }
 ,{ "if" }
 ,{ "we" }
 ,{ "see" }
 ,{ "the" }
 ,{ "atom" }
 ,{ "a" , & fmt_text_b }
 ,{ "we" }
 ,{ "cannot" }
 ,{ "decide," }
 ,{ "which" }
 ,{ "rule," }
 ,{ "shift" , & fmt_text_b }
 ,{ "or" }
 ,{ "op2" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "applied." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> CondLangLR1" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text , outer_text , back_text }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b32 , null , inner_text , outer_text , back_text }
 ,{ & b33 , null , inner_text , outer_text , back_text }
 ,{ & b34 , null , inner_text , outer_text , back_text }
 ,{ & b35 , null , inner_text , outer_text , back_text }
 ,{ & b36 , null , inner_text , outer_text , back_text }
 ,{ & b37 , null , inner_text , outer_text , back_text }
 ,{ & b38 , null , inner_text , outer_text , back_text }
 ,{ & b39 , null , inner_text , outer_text , back_text }
 ,{ & b40 , null , inner_text , outer_text , back_text }
 ,{ & b41 , null , inner_text , outer_text , back_text }
 ,{ & b42 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b43 , null , inner_text , outer_text , back_text }
 ,{ & b44 , null , inner_text , outer_text , back_text }
 ,{ & b45 , null , inner_text , outer_text , back_text }
 ,{ & b46 , null , inner_text , outer_text , back_text }
 ,{ & b47 , null , inner_text , outer_text , back_text }
 ,{ & b48 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b49 , null , inner_text , outer_text , back_text }
 ,{ & b50 , null , inner_text , outer_text , back_text }
 ,{ & b51 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_CompletePacket#page , & page_ConsoleInput#page };

Link link = { &page } ;

}

scope page_ConsoleInput {

Text b0 = { {
 { "Console" }
 ,{ "input" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/ReadCon.h" , & fmt_text_Files_b }
 ,{ "CCore/src/ReadCon.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Files" }
 ,{ "CCore/inc/ReadConType.h" , & fmt_text_Files_b }
 ,{ "CCore/src/ReadConType.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b3 = { {
 { "ReadCon" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "class" }
 ,{ "that" }
 ,{ "can" }
 ,{ "read" }
 ,{ "a" }
 ,{ "console" }
 ,{ "input." }
 ,{ "Any" }
 ,{ "class" }
 ,{ "with" }
 ,{ "the" }
 ,{ "following" }
 ,{ "interface" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "as" }
 ,{ "a" }
 ,{ "console" }
 ,{ "reader." }
 ,{ "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "default" }
 ,{ "console" }
 ,{ "reader," }
 ,{ "defined" }
 ,{ "in" }
 ,{ "the" }
 ,{ "header" }
 ,{ "CCore/inc/ReadCon.h" , & fmt_text_b }
 ,{ "." }
 ,{ "Console" }
 ,{ "reader" }
 ,{ "performs" }
 ,{ "the" }
 ,{ "\"non-buffered" }
 ,{ "read" }
 ,{ "without" }
 ,{ "echo\"." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "ReadConType" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "concept" }
 ,{ "for" }
 ,{ "console" }
 ,{ "reader" }
 ,{ "classes." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "get()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "next" }
 ,{ "symbol" }
 ,{ "from" }
 ,{ "the" }
 ,{ "console." }
 ,{ "This" }
 ,{ "function" }
 ,{ "can" }
 ,{ "block" }
 ,{ "indefinitely." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "get(MSec,char" , & fmt_text_b }
 ,{ "$" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "next" }
 ,{ "symbol" }
 ,{ "from" }
 ,{ "the" }
 ,{ "console," }
 ,{ "but" }
 ,{ "waits" }
 ,{ "up" }
 ,{ "to" }
 ,{ "time-out." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "iff" }
 ,{ "the" }
 ,{ "character" }
 ,{ "was" }
 ,{ "received." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "get(TimeScope,char" , & fmt_text_b }
 ,{ "$" , & fmt_text_b }
 ,{ "the" }
 ,{ "same" }
 ,{ "as" }
 ,{ "previous," }
 ,{ "time-out" }
 ,{ "is" }
 ,{ "given" }
 ,{ "as" }
 ,{ "the" }
 ,{ "TimeScope" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "put(char)" , & fmt_text_b }
 ,{ "puts" }
 ,{ "the" }
 ,{ "single" }
 ,{ "character" }
 ,{ "to" }
 ,{ "the" }
 ,{ "console." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "put(const" , & fmt_text_b }
 ,{ "char" , & fmt_text_b }
 ,{ "*,ulen)" , & fmt_text_b }
 ,{ "puts" }
 ,{ "the" }
 ,{ "string" }
 ,{ "of" }
 ,{ "characters" }
 ,{ "to" }
 ,{ "the" }
 ,{ "console." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "put(StrLen)" , & fmt_text_b }
 ,{ "puts" }
 ,{ "the" }
 ,{ "string" }
 ,{ "of" }
 ,{ "characters" }
 ,{ "to" }
 ,{ "the" }
 ,{ "console." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "put(Symbol)" , & fmt_text_b }
 ,{ "puts" }
 ,{ "the" }
 ,{ "symbol" }
 ,{ "to" }
 ,{ "the" }
 ,{ "console." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "All" }
 ,{ "methods" }
 ,{ "put()" , & fmt_text_b }
 ,{ "flushes" }
 ,{ "output." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "HCore" }
 ,{ "console" }
 ,{ "reader" }
} , & fmt_h4 , & align_h4 } ;

Text b14 = { {
 { "HCore" , & fmt_text_b }
 ,{ "ReadCon" , & fmt_text_b }
 ,{ "is" }
 ,{ "built" }
 ,{ "upon" }
 ,{ "the" }
 ,{ "target-provided" }
 ,{ "class" }
 ,{ "Sys::ConRead" , & fmt_text_b }
 ,{ "," }
 ,{ "declared" }
 ,{ "in" }
 ,{ "the" }
 ,{ "header" }
 ,{ "sys/SysCon.h" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "XCore" }
 ,{ "console" }
 ,{ "reader" }
} , & fmt_h4 , & align_h4 } ;

Text b16 = { {
 { "XCore" , & fmt_text_b }
 ,{ "ReadCon" , & fmt_text_b }
 ,{ "constructor" }
 ,{ "has" }
 ,{ "the" }
 ,{ "extra" }
 ,{ "argument" }
 ,{ "timeout" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "used" }
 ,{ "in" }
 ,{ "methods" }
 ,{ "put()" , & fmt_text_b }
 ,{ "for" }
 ,{ "nano-packet" }
 ,{ "allocation." }
 ,{ "Normally," }
 ,{ "you" }
 ,{ "should" }
 ,{ "use" }
 ,{ "the" }
 ,{ "default" }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "This" }
 ,{ "class" }
 ,{ "is" }
 ,{ "implemented" }
 ,{ "using" }
 ,{ "the" }
 ,{ "class" }
 ,{ "Sys::OwnConInput" , & fmt_text_b }
 ,{ "," }
 ,{ "declared" }
 ,{ "in" }
 ,{ "the" }
 ,{ "header" }
 ,{ "sys/SysCon.h" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "Constructor" }
 ,{ "of" }
 ,{ "this" }
 ,{ "class" }
 ,{ "\"owns\"" }
 ,{ "the" }
 ,{ "console" }
 ,{ "input" }
 ,{ "and" }
 ,{ "directs" }
 ,{ "it" }
 ,{ "to" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "function." }
 ,{ "The" }
 ,{ "function" }
 ,{ "can" }
 ,{ "be" }
 ,{ "called" }
 ,{ "in" }
 ,{ "any" }
 ,{ "execution" }
 ,{ "context," }
 ,{ "including" }
 ,{ "interrupt" }
 ,{ "context." }
 ,{ "It" }
 ,{ "is" }
 ,{ "called" }
 ,{ "when" }
 ,{ "a" }
 ,{ "character" }
 ,{ "has" }
 ,{ "arrived," }
 ,{ "the" }
 ,{ "character" }
 ,{ "is" }
 ,{ "passed" }
 ,{ "as" }
 ,{ "the" }
 ,{ "argument." }
 ,{ "The" }
 ,{ "function" }
 ,{ "must" }
 ,{ "return" }
 ,{ "a" }
 ,{ "value," }
 ,{ "which" }
 ,{ "indicates" }
 ,{ "the" }
 ,{ "required" }
 ,{ "reaction:" }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "Con_Drop" , & fmt_text_b }
 ,{ "—" }
 ,{ "character" }
 ,{ "must" }
 ,{ "be" }
 ,{ "counted" }
 ,{ "as" }
 ,{ "dropped." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "Con_Echo" , & fmt_text_b }
 ,{ "—" }
 ,{ "character" }
 ,{ "must" }
 ,{ "be" }
 ,{ "echoed." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "Con_NoEcho" , & fmt_text_b }
 ,{ "—" }
 ,{ "character" }
 ,{ "must" }
 ,{ "not" }
 ,{ "be" }
 ,{ "echoed." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "Con_EOL" , & fmt_text_b }
 ,{ "—" }
 ,{ "character" }
 ,{ "must" }
 ,{ "be" }
 ,{ "echoed" }
 ,{ "as" }
 ,{ "the" }
 ,{ "End-Of-Line" }
 ,{ "character." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "Destructor" }
 ,{ "releases" }
 ,{ "the" }
 ,{ "console" }
 ,{ "input." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "(XCore)" }
 ,{ "StdioReadCon" }
} , & fmt_h4 , & align_h4 } ;

Text b25 = { {
 { "XCore" , & fmt_text_b }
 ,{ "provides" }
 ,{ "an" }
 ,{ "implementation" }
 ,{ "of" }
 ,{ "some" }
 ,{ "C" }
 ,{ "standard" }
 ,{ "library" }
 ,{ "functions," }
 ,{ "including" }
 ,{ "stdio" , & fmt_text_b }
 ,{ "functions." }
 ,{ "By" }
 ,{ "default," }
 ,{ "the" }
 ,{ "stdin" , & fmt_text_b }
 ,{ "stream" }
 ,{ "is" }
 ,{ "not" }
 ,{ "connected" }
 ,{ "to" }
 ,{ "any" }
 ,{ "input." }
 ,{ "To" }
 ,{ "connect" }
 ,{ "this" }
 ,{ "stream" }
 ,{ "to" }
 ,{ "the" }
 ,{ "console" }
 ,{ "input," }
 ,{ "the" }
 ,{ "class" }
 ,{ "StdioReadCon" , & fmt_text_b }
 ,{ "is" }
 ,{ "used." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "Constructor" }
 ,{ "makes" }
 ,{ "connection," }
 ,{ "destructor" }
 ,{ "disconnects." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "(XCore)" }
 ,{ "RedirectPTPCon" }
} , & fmt_h4 , & align_h4 } ;

Text b28 = { {
 { "Usually" }
 ,{ "XCore" , & fmt_text_b }
 ,{ "console" }
 ,{ "is" }
 ,{ "backed" }
 ,{ "by" }
 ,{ "a" }
 ,{ "serial" }
 ,{ "port." }
 ,{ "But" }
 ,{ "it" }
 ,{ "is" }
 ,{ "possible" }
 ,{ "to" }
 ,{ "redirect" }
 ,{ "console" }
 ,{ "input/output" }
 ,{ "to" }
 ,{ "another" }
 ,{ "device." }
 ,{ "The" }
 ,{ "class" }
 ,{ "RedirectPTPCon" , & fmt_text_b }
 ,{ "redirects" }
 ,{ "the" }
 ,{ "console" }
 ,{ "to" }
 ,{ "a" }
 ,{ "PTP" , & fmt_text_a , & ..#page_PTPCon#link }
 ,{ "Con" , & fmt_text_a , & ..#page_PTPCon#link }
 ,{ "client" }
 ,{ "device." }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "Constructor" }
 ,{ "opens" }
 ,{ "PTP" }
 ,{ "console" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "name" }
 ,{ "and" }
 ,{ "configuration" }
 ,{ "parameters" }
 ,{ "using" }
 ,{ "the" }
 ,{ "given" }
 ,{ "PTP" , & fmt_text_b }
 ,{ "Con" , & fmt_text_b }
 ,{ "device." }
 ,{ "Then" }
 ,{ "it" }
 ,{ "redirects" }
 ,{ "console" }
 ,{ "to" }
 ,{ "the" }
 ,{ "PTP" }
 ,{ "console." }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "Destructor" }
 ,{ "stops" }
 ,{ "redirection" }
 ,{ "and" }
 ,{ "closes" }
 ,{ "the" }
 ,{ "PTP" }
 ,{ "console." }
} , & fmt_text , & align_text } ;

Link link_ReadPTPCon = { & page , { 31 } } ;

Text b31 = { {
 { "ReadPTPCon" }
} , & fmt_h4 , & align_h4 } ;

Text b32 = { {
 { "The" }
 ,{ "class" }
 ,{ "ReadPTPCon" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "PTP" , & fmt_text_b }
 ,{ "Con" , & fmt_text_b }
 ,{ "device" }
 ,{ "reader." }
 ,{ "It" }
 ,{ "is" }
 ,{ "declared" }
 ,{ "in" }
 ,{ "the" }
 ,{ "header" }
 ,{ "print/PrintPTPCon.h" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b33 = { {
 { "Constructor" }
 ,{ "binds" }
 ,{ "the" }
 ,{ "object" }
 ,{ "to" }
 ,{ "the" }
 ,{ "PTPConOpenClose" , & fmt_text_b }
 ,{ "object" }
 ,{ "to" }
 ,{ "perform" }
 ,{ "operations" }
 ,{ "on" }
 ,{ "the" }
 ,{ "opened" }
 ,{ "PTP" }
 ,{ "console." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Console input" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b32 , null , inner_text , outer_text , back_text }
 ,{ & b33 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_CondLangLR1#page , & page_ContainerLists#page };

Link link = { &page } ;

}

scope page_ContainerLists {

Text b0 = { {
 { "Container" }
 ,{ "lists" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/ContainerList.h" , & fmt_text_Files_b }
 ,{ "CCore/src/ContainerList.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Here" }
 ,{ "are" }
 ,{ "six" }
 ,{ "non-intrusive" }
 ,{ "container" }
 ,{ "list" }
 ,{ "classes." }
 ,{ "They" }
 ,{ "are" }
 ,{ "parametrized" }
 ,{ "by" }
 ,{ "the" }
 ,{ "object" }
 ,{ "type" }
 ,{ "and" }
 ,{ "the" }
 ,{ "node" , & fmt_text_a , & ..#page_NodeAllocators#link }
 ,{ "allocator" , & fmt_text_a , & ..#page_NodeAllocators#link }
 ,{ "type" , & fmt_text_a , & ..#page_NodeAllocators#link }
 ,{ "," }
 ,{ "which" }
 ,{ "is" }
 ,{ "defaulted" }
 ,{ "to" }
 ,{ "the" }
 ,{ "NodeAllocator" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "only" }
 ,{ "requirement" }
 ,{ "for" }
 ,{ "the" }
 ,{ "object" }
 ,{ "type" }
 ,{ "is" }
 ,{ "its" }
 ,{ "destructor" }
 ,{ "must" }
 ,{ "be" }
 ,{ "no-throw." }
 ,{ "The" }
 ,{ "default" }
 ,{ "node" }
 ,{ "allocator" }
 ,{ "uses" }
 ,{ "the" }
 ,{ "new" , & fmt_text_b }
 ,{ "and" }
 ,{ "delete" , & fmt_text_b }
 ,{ "operation" }
 ,{ "to" }
 ,{ "allocate/destroy" }
 ,{ "each" }
 ,{ "list" }
 ,{ "node." }
 ,{ "It" }
 ,{ "may" }
 ,{ "be" }
 ,{ "expensive." }
 ,{ "To" }
 ,{ "improve" }
 ,{ "the" }
 ,{ "performance" }
 ,{ "and" }
 ,{ "reduce" }
 ,{ "the" }
 ,{ "heap" }
 ,{ "usage" }
 ,{ "consider" }
 ,{ "the" }
 ,{ "using" }
 ,{ "of" }
 ,{ "the" }
 ,{ "NodePoolAllocator" , & fmt_text_b }
 ,{ "or" }
 ,{ "compact" , & fmt_text_a , & ..#page_CompactLists#link }
 ,{ "lists" , & fmt_text_a , & ..#page_CompactLists#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Common" }
 ,{ "lists" }
 ,{ "properties" }
} , & fmt_h4 , & align_h4 } ;

Text b4 = { {
 { "All" }
 ,{ "lists" }
 ,{ "have" }
 ,{ "much" }
 ,{ "common" }
 ,{ "methods" }
 ,{ "and" }
 ,{ "properties." }
 ,{ "So" }
 ,{ "here" }
 ,{ "is" }
 ,{ "a" }
 ,{ "\"common" }
 ,{ "class\"" }
 ,{ "AnyList" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "Constant" }
 ,{ "lists" }
 ,{ "propagate" }
 ,{ "constantness" }
 ,{ "to" }
 ,{ "its" }
 ,{ "elements." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "List" }
 ,{ "ins/del" }
 ,{ "methods" }
 ,{ "do" }
 ,{ "not" }
 ,{ "move" }
 ,{ "existing" }
 ,{ "list" }
 ,{ "elements," }
 ,{ "but" }
 ,{ "may" }
 ,{ "invalidate" }
 ,{ "list" }
 ,{ "cursors." }
 ,{ "If" }
 ,{ "such" }
 ,{ "method" }
 ,{ "is" }
 ,{ "using" }
 ,{ "a" }
 ,{ "cursor" }
 ,{ "as" }
 ,{ "the" }
 ,{ "argument," }
 ,{ "this" }
 ,{ "cursor" }
 ,{ "remains" }
 ,{ "valid" }
 ,{ "and" }
 ,{ "it" }
 ,{ "is" }
 ,{ "updated" }
 ,{ "during" }
 ,{ "the" }
 ,{ "operation," }
 ,{ "if" }
 ,{ "necessary." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "Constructor" }
 ,{ "forwards" }
 ,{ "its" }
 ,{ "arguments" }
 ,{ "to" }
 ,{ "the" }
 ,{ "node" }
 ,{ "allocator." }
 ,{ "Destructor" }
 ,{ "destroys" }
 ,{ "the" }
 ,{ "list" }
 ,{ "with" }
 ,{ "all" }
 ,{ "its" }
 ,{ "elements." }
 ,{ "It's" }
 ,{ "assumed" }
 ,{ "that" }
 ,{ "the" }
 ,{ "allocator" }
 ,{ "constructor" }
 ,{ "does" }
 ,{ "not" }
 ,{ "throw." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "AnyList" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "copyable," }
 ,{ "but" }
 ,{ "std" }
 ,{ "movable." }
 ,{ "The" }
 ,{ "original" }
 ,{ "object" }
 ,{ "is" }
 ,{ "nullified" }
 ,{ "during" }
 ,{ "the" }
 ,{ "move." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "operator" , & fmt_text_b }
 ,{ "+" , & fmt_text_b }
 ,{ "and" }
 ,{ "operator" , & fmt_text_b }
 ,{ "!" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "check," }
 ,{ "if" }
 ,{ "the" }
 ,{ "list" }
 ,{ "is" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "getCount()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "list" }
 ,{ "elements." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "List" }
 ,{ "has" }
 ,{ "a" }
 ,{ "set" }
 ,{ "of" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "access" }
 ,{ "some" }
 ,{ "specific" }
 ,{ "list" }
 ,{ "elements." }
 ,{ "They" }
 ,{ "are" }
 ,{ "following" }
 ,{ "the" }
 ,{ "shown" }
 ,{ "above" }
 ,{ "pattern." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "To" }
 ,{ "access" }
 ,{ "list" }
 ,{ "elements" }
 ,{ "a" }
 ,{ "list" }
 ,{ "cursor" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used." }
 ,{ "Any" }
 ,{ "list" }
 ,{ "always" }
 ,{ "has" }
 ,{ "a" }
 ,{ "forward" }
 ,{ "cursor." }
 ,{ "Methods" }
 ,{ "getStart...()" , & fmt_text_b }
 ,{ "return" }
 ,{ "a" }
 ,{ "forward" }
 ,{ "cursor," }
 ,{ "positioned" }
 ,{ "on" }
 ,{ "the" }
 ,{ "first" }
 ,{ "element," }
 ,{ "if" }
 ,{ "any." }
 ,{ "For" }
 ,{ "double" }
 ,{ "linked" }
 ,{ "lists" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "type" }
 ,{ "has" }
 ,{ "the" }
 ,{ "operator" , & fmt_text_b }
 ,{ "--" , & fmt_text_b }
 ,{ "to" }
 ,{ "move" }
 ,{ "backward." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "List" }
 ,{ "may" }
 ,{ "have" }
 ,{ "a" }
 ,{ "backward" }
 ,{ "cursor." }
 ,{ "Methods" }
 ,{ "getStartReverse...()" , & fmt_text_b }
 ,{ "return" }
 ,{ "a" }
 ,{ "backward" }
 ,{ "cursor," }
 ,{ "positioned" }
 ,{ "on" }
 ,{ "the" }
 ,{ "last" }
 ,{ "element," }
 ,{ "if" }
 ,{ "any." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "Lists" }
 ,{ "implement" }
 ,{ "methods" }
 ,{ "begin()/end()" , & fmt_text_b }
 ,{ "and" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "in" }
 ,{ "range-based" , & fmt_text_b }
 ,{ "for" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "List" }
 ,{ "may" }
 ,{ "support" }
 ,{ "a" }
 ,{ "reverse" }
 ,{ "order" }
 ,{ "for" }
 ,{ "range-based" , & fmt_text_b }
 ,{ "for" , & fmt_text_b }
 ,{ "." }
 ,{ "To" }
 ,{ "run" }
 ,{ "a" }
 ,{ "reverse" }
 ,{ "loop" }
 ,{ "methods" }
 ,{ "reverse...()" , & fmt_text_b }
 ,{ "are" }
 ,{ "provided." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "Each" }
 ,{ "list" }
 ,{ "has" }
 ,{ "a" }
 ,{ "set" }
 ,{ "of" }
 ,{ "ins/del" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "insert" }
 ,{ "or" }
 ,{ "delete" }
 ,{ "list" }
 ,{ "elements." }
 ,{ "The" }
 ,{ "method" }
 ,{ "erase()" , & fmt_text_b }
 ,{ "destroys" }
 ,{ "all" }
 ,{ "elements," }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "destroyed" }
 ,{ "elements" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "Methods" }
 ,{ "apply...()" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "apply" }
 ,{ "a" }
 ,{ "functor" }
 ,{ "to" }
 ,{ "list" }
 ,{ "elements." }
 ,{ "Functor" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "Init" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "Pattern" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "is" }
 ,{ "used." }
 ,{ "Double" }
 ,{ "linked" }
 ,{ "lists" }
 ,{ "can" }
 ,{ "apply" }
 ,{ "a" }
 ,{ "functor" }
 ,{ "in" }
 ,{ "the" }
 ,{ "reverse" }
 ,{ "order" }
 ,{ "using" }
 ,{ "methods" }
 ,{ "applyReverse...()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "All" }
 ,{ "lists" }
 ,{ "are" }
 ,{ "swappable" }
 ,{ "and" }
 ,{ "movable." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "LinearSList" }
} , & fmt_h4 , & align_h4 } ;

Text b20 = { {
 { "This" }
 ,{ "is" }
 ,{ "a" }
 ,{ "linear" }
 ,{ "single" }
 ,{ "linked" }
 ,{ "list" }
 ,{ "with" }
 ,{ "a" }
 ,{ "top" }
 ,{ "element" }
 ,{ "pointer." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "getTop...()" , & fmt_text_b }
 ,{ "methods" }
 ,{ "return" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "top" }
 ,{ "element." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "ins()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "as" }
 ,{ "a" }
 ,{ "top" }
 ,{ "element" }
 ,{ "of" }
 ,{ "the" }
 ,{ "list" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "pointer." }
 ,{ "Method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "insAfter()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "in" }
 ,{ "the" }
 ,{ "list" }
 ,{ "after" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "given" }
 ,{ "non-null" }
 ,{ "position." }
 ,{ "Extra" }
 ,{ "method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "del()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "top" }
 ,{ "element," }
 ,{ "if" }
 ,{ "any." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "if" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "element" }
 ,{ "was" }
 ,{ "deleted." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "LinearSList2" }
} , & fmt_h4 , & align_h4 } ;

Text b26 = { {
 { "This" }
 ,{ "is" }
 ,{ "a" }
 ,{ "linear" }
 ,{ "single" }
 ,{ "linked" }
 ,{ "list" }
 ,{ "with" }
 ,{ "first" }
 ,{ "and" }
 ,{ "last" }
 ,{ "element" }
 ,{ "pointers." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "getFirst...()" , & fmt_text_b }
 ,{ "methods" }
 ,{ "return" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "first" }
 ,{ "element." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "getLast...()" , & fmt_text_b }
 ,{ "methods" }
 ,{ "return" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "last" }
 ,{ "element." }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "insFirst()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "as" }
 ,{ "a" }
 ,{ "first" }
 ,{ "element" }
 ,{ "of" }
 ,{ "the" }
 ,{ "list" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "pointer." }
 ,{ "Method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "insLast()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "as" }
 ,{ "a" }
 ,{ "last" }
 ,{ "element" }
 ,{ "of" }
 ,{ "the" }
 ,{ "list" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "pointer." }
 ,{ "Method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "insAfter()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "in" }
 ,{ "the" }
 ,{ "list" }
 ,{ "after" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "given" }
 ,{ "non-null" }
 ,{ "position." }
 ,{ "Extra" }
 ,{ "method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b32 = { {
 { "delFirst()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "first" }
 ,{ "element," }
 ,{ "if" }
 ,{ "any." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "if" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "element" }
 ,{ "was" }
 ,{ "deleted." }
} , & fmt_text , & align_text } ;

Text b33 = { {
 { "CircularSList" }
} , & fmt_h4 , & align_h4 } ;

Text b34 = { {
 { "This" }
 ,{ "is" }
 ,{ "a" }
 ,{ "circular" }
 ,{ "single" }
 ,{ "linked" }
 ,{ "list" }
 ,{ "with" }
 ,{ "a" }
 ,{ "bottom" }
 ,{ "element" }
 ,{ "pointer." }
} , & fmt_text , & align_text } ;

Text b35 = { {
 { "getBottom...()" , & fmt_text_b }
 ,{ "methods" }
 ,{ "return" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "bottom" }
 ,{ "element." }
} , & fmt_text , & align_text } ;

Text b36 = { {
 { "ins()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "as" }
 ,{ "a" }
 ,{ "top" }
 ,{ "element" }
 ,{ "of" }
 ,{ "the" }
 ,{ "list" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "pointer." }
 ,{ "Method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b37 = { {
 { "insAfter()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "in" }
 ,{ "the" }
 ,{ "list" }
 ,{ "after" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "given" }
 ,{ "non-null" }
 ,{ "position." }
 ,{ "Extra" }
 ,{ "method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
 ,{ "Cursor" }
 ,{ "is" }
 ,{ "updated." }
} , & fmt_text , & align_text } ;

Text b38 = { {
 { "del()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "top" }
 ,{ "element," }
 ,{ "if" }
 ,{ "any." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "if" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "element" }
 ,{ "was" }
 ,{ "deleted." }
} , & fmt_text , & align_text } ;

Text b39 = { {
 { "The" }
 ,{ "method" }
 ,{ "rotate()" , & fmt_text_b }
 ,{ "is" }
 ,{ "specific" }
 ,{ "for" }
 ,{ "circular" }
 ,{ "lists." }
 ,{ "It" }
 ,{ "rotates" }
 ,{ "the" }
 ,{ "list." }
 ,{ "The" }
 ,{ "top" }
 ,{ "element" }
 ,{ "moves" }
 ,{ "to" }
 ,{ "bottom." }
 ,{ "Pointer" }
 ,{ "to" }
 ,{ "this" }
 ,{ "element" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Link link_LinearDList = { & page , { 40 } } ;

Text b40 = { {
 { "LinearDList" }
} , & fmt_h4 , & align_h4 } ;

Text b41 = { {
 { "This" }
 ,{ "is" }
 ,{ "a" }
 ,{ "linear" }
 ,{ "double" }
 ,{ "linked" }
 ,{ "list" }
 ,{ "with" }
 ,{ "a" }
 ,{ "top" }
 ,{ "element" }
 ,{ "pointer." }
} , & fmt_text , & align_text } ;

Text b42 = { {
 { "getTop...()" , & fmt_text_b }
 ,{ "methods" }
 ,{ "return" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "top" }
 ,{ "element." }
} , & fmt_text , & align_text } ;

Text b43 = { {
 { "Cursor" }
 ,{ "can" }
 ,{ "move" }
 ,{ "backward." }
} , & fmt_text , & align_text } ;

Text b44 = { {
 { "ins()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "as" }
 ,{ "a" }
 ,{ "top" }
 ,{ "element" }
 ,{ "of" }
 ,{ "the" }
 ,{ "list" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "pointer." }
 ,{ "Method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b45 = { {
 { "insBefore()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "in" }
 ,{ "the" }
 ,{ "list" }
 ,{ "before" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "given" }
 ,{ "non-null" }
 ,{ "position." }
 ,{ "Extra" }
 ,{ "method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b46 = { {
 { "insAfter()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "in" }
 ,{ "the" }
 ,{ "list" }
 ,{ "after" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "given" }
 ,{ "non-null" }
 ,{ "position." }
 ,{ "Extra" }
 ,{ "method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b47 = { {
 { "del()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "top" }
 ,{ "element," }
 ,{ "if" }
 ,{ "any." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "if" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "element" }
 ,{ "was" }
 ,{ "deleted." }
} , & fmt_text , & align_text } ;

Text b48 = { {
 { "delAndMove()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "element" }
 ,{ "at" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "given" }
 ,{ "non-null" }
 ,{ "position." }
 ,{ "Cursor" }
 ,{ "is" }
 ,{ "updated" }
 ,{ "to" }
 ,{ "point" }
 ,{ "to" }
 ,{ "the" }
 ,{ "next" }
 ,{ "element." }
} , & fmt_text , & align_text } ;

Link link_LinearDList2 = { & page , { 49 } } ;

Text b49 = { {
 { "LinearDList2" }
} , & fmt_h4 , & align_h4 } ;

Text b50 = { {
 { "This" }
 ,{ "is" }
 ,{ "a" }
 ,{ "linear" }
 ,{ "double" }
 ,{ "linked" }
 ,{ "list" }
 ,{ "with" }
 ,{ "first" }
 ,{ "and" }
 ,{ "last" }
 ,{ "element" }
 ,{ "pointers." }
} , & fmt_text , & align_text } ;

Text b51 = { {
 { "getFirst...()" , & fmt_text_b }
 ,{ "methods" }
 ,{ "return" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "first" }
 ,{ "element." }
} , & fmt_text , & align_text } ;

Text b52 = { {
 { "getLast...()" , & fmt_text_b }
 ,{ "methods" }
 ,{ "return" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "last" }
 ,{ "element." }
} , & fmt_text , & align_text } ;

Text b53 = { {
 { "Cursor" }
 ,{ "can" }
 ,{ "move" }
 ,{ "backward." }
} , & fmt_text , & align_text } ;

Text b54 = { {
 { "This" }
 ,{ "list" }
 ,{ "supports" }
 ,{ "a" }
 ,{ "backward" }
 ,{ "cursor." }
} , & fmt_text , & align_text } ;

Text b55 = { {
 { "This" }
 ,{ "list" }
 ,{ "supports" }
 ,{ "a" }
 ,{ "reverse" }
 ,{ "order" }
 ,{ "for" }
 ,{ "range-based" , & fmt_text_b }
 ,{ "for" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b56 = { {
 { "insFirst()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "as" }
 ,{ "a" }
 ,{ "first" }
 ,{ "element" }
 ,{ "of" }
 ,{ "the" }
 ,{ "list" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "pointer." }
 ,{ "Method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b57 = { {
 { "insLast()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "as" }
 ,{ "a" }
 ,{ "last" }
 ,{ "element" }
 ,{ "of" }
 ,{ "the" }
 ,{ "list" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "pointer." }
 ,{ "Method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b58 = { {
 { "insBefore()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "in" }
 ,{ "the" }
 ,{ "list" }
 ,{ "before" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "(forward" }
 ,{ "or" }
 ,{ "backward)" }
 ,{ "given" }
 ,{ "non-null" }
 ,{ "position." }
 ,{ "Extra" }
 ,{ "method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b59 = { {
 { "insAfter()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "in" }
 ,{ "the" }
 ,{ "list" }
 ,{ "after" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "(forward" }
 ,{ "or" }
 ,{ "backward)" }
 ,{ "given" }
 ,{ "non-null" }
 ,{ "position." }
 ,{ "Extra" }
 ,{ "method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b60 = { {
 { "delFirst()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "first" }
 ,{ "element," }
 ,{ "if" }
 ,{ "any." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "if" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "element" }
 ,{ "was" }
 ,{ "deleted." }
} , & fmt_text , & align_text } ;

Text b61 = { {
 { "delLast()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "last" }
 ,{ "element," }
 ,{ "if" }
 ,{ "any." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "if" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "element" }
 ,{ "was" }
 ,{ "deleted." }
} , & fmt_text , & align_text } ;

Text b62 = { {
 { "delAndMove()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "element" }
 ,{ "at" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "(forward" }
 ,{ "or" }
 ,{ "backward)" }
 ,{ "given" }
 ,{ "non-null" }
 ,{ "position." }
 ,{ "Cursor" }
 ,{ "is" }
 ,{ "updated" }
 ,{ "to" }
 ,{ "point" }
 ,{ "to" }
 ,{ "the" }
 ,{ "next" }
 ,{ "element" }
 ,{ "(in" }
 ,{ "respect" }
 ,{ "to" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "movement" }
 ,{ "direction)." }
} , & fmt_text , & align_text } ;

Text b63 = { {
 { "This" }
 ,{ "list" }
 ,{ "supports" }
 ,{ "the" }
 ,{ "reverse" }
 ,{ "functor" }
 ,{ "applying." }
} , & fmt_text , & align_text } ;

Link link_CircularDList = { & page , { 64 } } ;

Text b64 = { {
 { "CircularDList" }
} , & fmt_h4 , & align_h4 } ;

Text b65 = { {
 { "This" }
 ,{ "is" }
 ,{ "a" }
 ,{ "circular" }
 ,{ "double" }
 ,{ "linked" }
 ,{ "list" }
 ,{ "with" }
 ,{ "a" }
 ,{ "top" }
 ,{ "element" }
 ,{ "pointer." }
} , & fmt_text , & align_text } ;

Text b66 = { {
 { "getTop...()" , & fmt_text_b }
 ,{ "methods" }
 ,{ "return" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "top" }
 ,{ "element." }
} , & fmt_text , & align_text } ;

Text b67 = { {
 { "Cursor" }
 ,{ "can" }
 ,{ "move" }
 ,{ "backward." }
} , & fmt_text , & align_text } ;

Text b68 = { {
 { "This" }
 ,{ "list" }
 ,{ "supports" }
 ,{ "a" }
 ,{ "backward" }
 ,{ "cursor." }
} , & fmt_text , & align_text } ;

Text b69 = { {
 { "This" }
 ,{ "list" }
 ,{ "supports" }
 ,{ "a" }
 ,{ "reverse" }
 ,{ "order" }
 ,{ "for" }
 ,{ "range-based" , & fmt_text_b }
 ,{ "for" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b70 = { {
 { "insFirst()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "as" }
 ,{ "a" }
 ,{ "first" }
 ,{ "element" }
 ,{ "of" }
 ,{ "the" }
 ,{ "list" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "pointer." }
 ,{ "Method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b71 = { {
 { "insLast()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "as" }
 ,{ "a" }
 ,{ "last" }
 ,{ "element" }
 ,{ "of" }
 ,{ "the" }
 ,{ "list" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "pointer." }
 ,{ "Method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b72 = { {
 { "insBefore()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "in" }
 ,{ "the" }
 ,{ "list" }
 ,{ "before" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "(forward" }
 ,{ "or" }
 ,{ "backward)" }
 ,{ "given" }
 ,{ "non-null" }
 ,{ "position." }
 ,{ "Extra" }
 ,{ "method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
 ,{ "Backward" }
 ,{ "cursor" }
 ,{ "is" }
 ,{ "updated." }
} , & fmt_text , & align_text } ;

Text b73 = { {
 { "insAfter()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "new" }
 ,{ "element" }
 ,{ "in" }
 ,{ "the" }
 ,{ "list" }
 ,{ "after" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "(forward" }
 ,{ "or" }
 ,{ "backward)" }
 ,{ "given" }
 ,{ "non-null" }
 ,{ "position." }
 ,{ "Extra" }
 ,{ "method" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "constructor." }
 ,{ "Forward" }
 ,{ "cursor" }
 ,{ "is" }
 ,{ "updated." }
} , & fmt_text , & align_text } ;

Text b74 = { {
 { "delFirst()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "first" }
 ,{ "element," }
 ,{ "if" }
 ,{ "any." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "if" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "element" }
 ,{ "was" }
 ,{ "deleted." }
} , & fmt_text , & align_text } ;

Text b75 = { {
 { "delLast()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "last" }
 ,{ "element," }
 ,{ "if" }
 ,{ "any." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "if" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "element" }
 ,{ "was" }
 ,{ "deleted." }
} , & fmt_text , & align_text } ;

Text b76 = { {
 { "delAndMove()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "element" }
 ,{ "at" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "(forward" }
 ,{ "or" }
 ,{ "backward)" }
 ,{ "given" }
 ,{ "non-null" }
 ,{ "position." }
 ,{ "Cursor" }
 ,{ "is" }
 ,{ "updated" }
 ,{ "to" }
 ,{ "point" }
 ,{ "to" }
 ,{ "the" }
 ,{ "next" }
 ,{ "element" }
 ,{ "(in" }
 ,{ "respect" }
 ,{ "to" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "movement" }
 ,{ "direction)." }
} , & fmt_text , & align_text } ;

Text b77 = { {
 { "This" }
 ,{ "list" }
 ,{ "supports" }
 ,{ "the" }
 ,{ "reverse" }
 ,{ "functor" }
 ,{ "applying." }
} , & fmt_text , & align_text } ;

Text b78 = { {
 { "The" }
 ,{ "following" }
 ,{ "two" }
 ,{ "methods" }
 ,{ "rotate...()" , & fmt_text_b }
 ,{ "are" }
 ,{ "specific" }
 ,{ "for" }
 ,{ "circular" }
 ,{ "lists." }
 ,{ "They" }
 ,{ "rotate" }
 ,{ "the" }
 ,{ "list." }
} , & fmt_text , & align_text } ;

Text b79 = { {
 { "rotateForward()" , & fmt_text_b }
 ,{ "rotates" }
 ,{ "the" }
 ,{ "list" }
 ,{ "forward." }
 ,{ "The" }
 ,{ "top" }
 ,{ "element" }
 ,{ "moves" }
 ,{ "to" }
 ,{ "bottom." }
 ,{ "Pointer" }
 ,{ "to" }
 ,{ "this" }
 ,{ "element" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b80 = { {
 { "rotateBackward()" , & fmt_text_b }
 ,{ "rotates" }
 ,{ "the" }
 ,{ "list" }
 ,{ "backward." }
 ,{ "The" }
 ,{ "bottom" }
 ,{ "element" }
 ,{ "moves" }
 ,{ "to" }
 ,{ "top." }
 ,{ "Pointer" }
 ,{ "to" }
 ,{ "this" }
 ,{ "element" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Container lists" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_text , outer_text , back_text }
 ,{ & b32 , null , inner_text , outer_text , back_text }
 ,{ & b33 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b34 , null , inner_text , outer_text , back_text }
 ,{ & b35 , null , inner_text , outer_text , back_text }
 ,{ & b36 , null , inner_text , outer_text , back_text }
 ,{ & b37 , null , inner_text , outer_text , back_text }
 ,{ & b38 , null , inner_text , outer_text , back_text }
 ,{ & b39 , null , inner_text , outer_text , back_text }
 ,{ & b40 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b41 , null , inner_text , outer_text , back_text }
 ,{ & b42 , null , inner_text , outer_text , back_text }
 ,{ & b43 , null , inner_text , outer_text , back_text }
 ,{ & b44 , null , inner_text , outer_text , back_text }
 ,{ & b45 , null , inner_text , outer_text , back_text }
 ,{ & b46 , null , inner_text , outer_text , back_text }
 ,{ & b47 , null , inner_text , outer_text , back_text }
 ,{ & b48 , null , inner_text , outer_text , back_text }
 ,{ & b49 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b50 , null , inner_text , outer_text , back_text }
 ,{ & b51 , null , inner_text , outer_text , back_text }
 ,{ & b52 , null , inner_text , outer_text , back_text }
 ,{ & b53 , null , inner_text , outer_text , back_text }
 ,{ & b54 , null , inner_text , outer_text , back_text }
 ,{ & b55 , null , inner_text , outer_text , back_text }
 ,{ & b56 , null , inner_text , outer_text , back_text }
 ,{ & b57 , null , inner_text , outer_text , back_text }
 ,{ & b58 , null , inner_text , outer_text , back_text }
 ,{ & b59 , null , inner_text , outer_text , back_text }
 ,{ & b60 , null , inner_text , outer_text , back_text }
 ,{ & b61 , null , inner_text , outer_text , back_text }
 ,{ & b62 , null , inner_text , outer_text , back_text }
 ,{ & b63 , null , inner_text , outer_text , back_text }
 ,{ & b64 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b65 , null , inner_text , outer_text , back_text }
 ,{ & b66 , null , inner_text , outer_text , back_text }
 ,{ & b67 , null , inner_text , outer_text , back_text }
 ,{ & b68 , null , inner_text , outer_text , back_text }
 ,{ & b69 , null , inner_text , outer_text , back_text }
 ,{ & b70 , null , inner_text , outer_text , back_text }
 ,{ & b71 , null , inner_text , outer_text , back_text }
 ,{ & b72 , null , inner_text , outer_text , back_text }
 ,{ & b73 , null , inner_text , outer_text , back_text }
 ,{ & b74 , null , inner_text , outer_text , back_text }
 ,{ & b75 , null , inner_text , outer_text , back_text }
 ,{ & b76 , null , inner_text , outer_text , back_text }
 ,{ & b77 , null , inner_text , outer_text , back_text }
 ,{ & b78 , null , inner_text , outer_text , back_text }
 ,{ & b79 , null , inner_text , outer_text , back_text }
 ,{ & b80 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_ConsoleInput#page , & page_Counters#page };

Link link = { &page } ;

}

scope page_Counters {

Text b0 = { {
 { "Counters" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/Counters.h" , & fmt_text_Files_b }
 ,{ "CCore/src/Counters.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Counting" }
 ,{ "events" }
 ,{ "is" }
 ,{ "a" }
 ,{ "very" }
 ,{ "useful" }
 ,{ "programming" }
 ,{ "technique" }
 ,{ "for" }
 ,{ "the" }
 ,{ "testing/debugging/monitoring" }
 ,{ "applications." }
 ,{ "It" }
 ,{ "is" }
 ,{ "widely" }
 ,{ "used" }
 ,{ "in" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "class" }
 ,{ "Counters" , & fmt_text_b }
 ,{ "is" }
 ,{ "designed" }
 ,{ "to" }
 ,{ "simplify" }
 ,{ "this" }
 ,{ "task." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Counters" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "set" }
 ,{ "of" }
 ,{ "counters," }
 ,{ "indexed" }
 ,{ "by" }
 ,{ "members" }
 ,{ "of" }
 ,{ "some" }
 ,{ "enum" , & fmt_text_b }
 ,{ ":" }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "The" }
 ,{ "default" }
 ,{ "constructor" }
 ,{ "and" }
 ,{ "the" }
 ,{ "method" }
 ,{ "reset()" , & fmt_text_b }
 ,{ "set" }
 ,{ "all" }
 ,{ "counters" }
 ,{ "to" }
 ,{ "zero." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "The" }
 ,{ "method" }
 ,{ "count()" , & fmt_text_b }
 ,{ "increments" }
 ,{ "or" }
 ,{ "increments" }
 ,{ "by" }
 ,{ "some" }
 ,{ "value" }
 ,{ "the" }
 ,{ "counter" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "index." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "The" }
 ,{ "overloaded" }
 ,{ "operator" , & fmt_text_b }
 ,{ "[]" , & fmt_text_b }
 ,{ "reads" }
 ,{ "the" }
 ,{ "specific" }
 ,{ "counter." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "The" }
 ,{ "overloaded" }
 ,{ "operator" , & fmt_text_b }
 ,{ "+=" , & fmt_text_b }
 ,{ "adds" }
 ,{ "counters" }
 ,{ "from" }
 ,{ "another" }
 ,{ "counter" }
 ,{ "set." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "The" }
 ,{ "overloaded" }
 ,{ "operator" , & fmt_text_b }
 ,{ "-=" , & fmt_text_b }
 ,{ "subtracts" }
 ,{ "counters" }
 ,{ "from" }
 ,{ "another" }
 ,{ "counter" }
 ,{ "set." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "You" }
 ,{ "can" }
 ,{ "use" }
 ,{ "the" }
 ,{ "method" }
 ,{ "diff()" , & fmt_text_b }
 ,{ "to" }
 ,{ "differentiate" }
 ,{ "a" }
 ,{ "sequence" }
 ,{ "of" }
 ,{ "counters:" }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "Finally," }
 ,{ "you" }
 ,{ "can" }
 ,{ "print" }
 ,{ "the" }
 ,{ "counters," }
 ,{ "to" }
 ,{ "give" }
 ,{ "names" }
 ,{ "to" }
 ,{ "indexes" }
 ,{ "define" }
 ,{ "GetTextDesc(Enum)" , & fmt_text_b }
 ,{ "." }
 ,{ "You" }
 ,{ "may" }
 ,{ "specify" }
 ,{ "print" }
 ,{ "options" }
 ,{ "per" }
 ,{ "enum" , & fmt_text_b }
 ,{ "." }
 ,{ "Only" }
 ,{ "non-null" }
 ,{ "counters" }
 ,{ "are" }
 ,{ "printed." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Counters" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_ContainerLists#page , & page_Crc#page };

Link link = { &page } ;

}

scope page_Crc {

Text b0 = { {
 { "Crc" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/Crc.h" , & fmt_text_Files_b }
 ,{ "CCore/src/Crc.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "There" }
 ,{ "are" }
 ,{ "three" }
 ,{ "Crc" }
 ,{ "classes:" }
 ,{ "Crc16" , & fmt_text_b }
 ,{ "," }
 ,{ "Crc24" , & fmt_text_b }
 ,{ "," }
 ,{ "Crc32" , & fmt_text_b }
 ,{ "to" }
 ,{ "calculate" }
 ,{ "a" }
 ,{ "CRC" }
 ,{ "value" }
 ,{ "of" }
 ,{ "a" }
 ,{ "byte" }
 ,{ "sequence." }
 ,{ "Technically," }
 ,{ "CRC" }
 ,{ "is" }
 ,{ "a" }
 ,{ "polynomial" }
 ,{ "division" }
 ,{ "reminder." }
 ,{ "It" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "control" }
 ,{ "sudden" }
 ,{ "errors" }
 ,{ "in" }
 ,{ "a" }
 ,{ "byte" }
 ,{ "stream." }
 ,{ "There" }
 ,{ "are" }
 ,{ "3" }
 ,{ "popular" }
 ,{ "and" }
 ,{ "standard" }
 ,{ "such" }
 ,{ "CRC," }
 ,{ "widely" }
 ,{ "used" }
 ,{ "in" }
 ,{ "IT." }
 ,{ "We" }
 ,{ "call" }
 ,{ "them" }
 ,{ "Crc16," }
 ,{ "Crc24" }
 ,{ "and" }
 ,{ "Crc32" }
 ,{ "by" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "output" }
 ,{ "bits." }
 ,{ "In" }
 ,{ "practical" }
 ,{ "applications" }
 ,{ "they" }
 ,{ "are" }
 ,{ "used" }
 ,{ "with" }
 ,{ "some" }
 ,{ "adjustments," }
 ,{ "i.e." }
 ,{ "the" }
 ,{ "byte" }
 ,{ "sequence" }
 ,{ "is" }
 ,{ "extended" }
 ,{ "with" }
 ,{ "some" }
 ,{ "start" }
 ,{ "sequence" }
 ,{ "in" }
 ,{ "order" }
 ,{ "to" }
 ,{ "calculate" }
 ,{ "its" }
 ,{ "CRC." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "CCore" , & fmt_text_b }
 ,{ "uses" }
 ,{ "a" }
 ,{ "generic" }
 ,{ "implementation" }
 ,{ "of" }
 ,{ "CRC" }
 ,{ "based" }
 ,{ "on" }
 ,{ "lookup" }
 ,{ "tables." }
 ,{ "So" }
 ,{ "Crc16" , & fmt_text_b }
 ,{ "," }
 ,{ "Crc24" , & fmt_text_b }
 ,{ "," }
 ,{ "Crc32" , & fmt_text_b }
 ,{ "are" }
 ,{ "instantiations" }
 ,{ "of" }
 ,{ "the" }
 ,{ "generic" }
 ,{ "CrcAccumulator" , & fmt_text_b }
 ,{ "class," }
 ,{ "parametrized" }
 ,{ "by" }
 ,{ "the" }
 ,{ "Algorithm" , & fmt_text_b }
 ,{ "Package" , & fmt_text_b }
 ,{ "s" }
 ,{ "AlgoCrc16," , & fmt_text_b }
 ,{ "AlgoCrc24," , & fmt_text_b }
 ,{ "AlgoCrc32" , & fmt_text_b }
 ,{ ":" }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "CrcAccumulator" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "\"accumulator\"" }
 ,{ "class:" }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "You" }
 ,{ "can" }
 ,{ "built" }
 ,{ "the" }
 ,{ "result" }
 ,{ "by" }
 ,{ "\"feeding\"" }
 ,{ "the" }
 ,{ "object" }
 ,{ "of" }
 ,{ "this" }
 ,{ "class" }
 ,{ "by" }
 ,{ "pieces" }
 ,{ "of" }
 ,{ "data." }
 ,{ "You" }
 ,{ "can" }
 ,{ "put" }
 ,{ "bytes" }
 ,{ "one-by-one" }
 ,{ "or" }
 ,{ "add" }
 ,{ "by" }
 ,{ "ranges." }
 ,{ "The" }
 ,{ "type" }
 ,{ "R" , & fmt_text_b }
 ,{ "in" }
 ,{ "the" }
 ,{ "method" }
 ,{ "addRange()" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "a" }
 ,{ "Cursor" , & fmt_text_b }
 ,{ "over" }
 ,{ "a" }
 ,{ "piece" }
 ,{ "of" }
 ,{ "data." }
 ,{ "By" }
 ,{ "default," }
 ,{ "CrcAccumulator" , & fmt_text_b }
 ,{ "starts" }
 ,{ "from" }
 ,{ "the" }
 ,{ "value" }
 ,{ "1." }
 ,{ "An" }
 ,{ "example:" }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Crc" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Counters#page , & page_CreateAt#page };

Link link = { &page } ;

}

scope page_CreateAt {

Text b0 = { {
 { "CreateAt" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/gadget/CreateAt.h" , & fmt_text_Files_b }
 ,{ "CCore/src/gadget/CreateAt.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "CreateAt()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "an" }
 ,{ "object" }
 ,{ "at" }
 ,{ "the" }
 ,{ "given" }
 ,{ "place." }
 ,{ "This" }
 ,{ "function" }
 ,{ "is" }
 ,{ "required" }
 ,{ "to" }
 ,{ "manipulate" }
 ,{ "members" }
 ,{ "of" }
 ,{ "non-trivial" }
 ,{ "unions." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "For" }
 ,{ "example," }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "To" }
 ,{ "make" }
 ,{ "an" }
 ,{ "actual" }
 ,{ "the" }
 ,{ "member" }
 ,{ "a" , & fmt_text_b }
 ,{ "of" }
 ,{ "the" }
 ,{ "union" }
 ,{ "you" }
 ,{ "can" }
 ,{ "use" }
 ,{ "the" }
 ,{ "function" }
 ,{ "CreateAt()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> CreateAt" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Crc#page , & page_Crypton#page };

Link link = { &page } ;

}

scope page_Crypton {

Text b0 = { {
 { "Crypton" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Crypton" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "set" }
 ,{ "of" }
 ,{ "cryptography" }
 ,{ "tools" }
 ,{ "in" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "enclosed" }
 ,{ "in" }
 ,{ "the" }
 ,{ "namespace" }
 ,{ "Crypton" , & fmt_text_b }
 ,{ "and" }
 ,{ "located" }
 ,{ "in" }
 ,{ "the" }
 ,{ "subfolders" }
 ,{ "crypton" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Crypton" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_CreateAt#page , & page_DDL#page };

Link link = { &page } ;

}

scope page_DDL {

Text b0 = { {
 { "DDL" }
 ,{ "language" }
 ,{ "(v.2)" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "DDL" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "Data" , & fmt_text_b }
 ,{ "Definition" , & fmt_text_b }
 ,{ "Language" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "language" }
 ,{ "is" }
 ,{ "to" }
 ,{ "record" }
 ,{ "a" }
 ,{ "general-kind" }
 ,{ "data" }
 ,{ "in" }
 ,{ "a" }
 ,{ "textual" }
 ,{ "form" }
 ,{ "similar" }
 ,{ "to" }
 ,{ "the" }
 ,{ "C" }
 ,{ "language." }
 ,{ "But" }
 ,{ "there" }
 ,{ "are" }
 ,{ "important" }
 ,{ "differences" }
 ,{ "between" }
 ,{ "how" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "and" }
 ,{ "C" , & fmt_text_b }
 ,{ "interprets" }
 ,{ "data" }
 ,{ "and" }
 ,{ "expressions." }
 ,{ "DDL" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "\"bye-bye" }
 ,{ "XML" , & fmt_text_b }
 ,{ "\"" }
 ,{ "language." }
} , & fmt_text , & align_text } ;

Text b2 = { {
 { "Brief" }
 ,{ "introduction" }
} , & fmt_h2 , & align_h2 } ;

Text b3 = { {
 { "Here" }
 ,{ "is" }
 ,{ "a" }
 ,{ "brief" }
 ,{ "introduction" }
 ,{ "to" }
 ,{ "the" }
 ,{ "language." }
 ,{ "You" }
 ,{ "can" }
 ,{ "read" }
 ,{ "this" , & fmt_text_a }
 ,{ "document" , & fmt_text_a }
 ,{ "for" }
 ,{ "further" }
 ,{ "details." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "DDL" , & fmt_text_b }
 ,{ "is" }
 ,{ "to" }
 ,{ "define" }
 ,{ "named" }
 ,{ "constants." }
 ,{ "Each" }
 ,{ "constant" }
 ,{ "has" }
 ,{ "an" }
 ,{ "associated" }
 ,{ "type." }
 ,{ "Types" }
 ,{ "can" }
 ,{ "be" }
 ,{ "basic" }
 ,{ "or" }
 ,{ "derived." }
 ,{ "The" }
 ,{ "most" }
 ,{ "important" }
 ,{ "derived" }
 ,{ "types" }
 ,{ "are" }
 ,{ "structures." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "Basic" }
 ,{ "types" }
 ,{ "are" }
 ,{ "integral" }
 ,{ "types," }
 ,{ "text" , & fmt_text_b }
 ,{ "and" }
 ,{ "ip" , & fmt_text_b }
 ,{ "." }
 ,{ "Integral" }
 ,{ "types" }
 ,{ "are:" }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "text" , & fmt_text_b }
 ,{ "type" }
 ,{ "represents" }
 ,{ "a" }
 ,{ "character" }
 ,{ "string." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "ip" , & fmt_text_b }
 ,{ "type" }
 ,{ "represents" }
 ,{ "an" }
 ,{ "IPv4" }
 ,{ "address." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "int" , & fmt_text_b }
 ,{ "," }
 ,{ "sint" , & fmt_text_b }
 ,{ "," }
 ,{ "uint" , & fmt_text_b }
 ,{ "are" }
 ,{ "target-dependent" }
 ,{ "\"machine-word-length\"" }
 ,{ "types." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "ulen" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "target-dependent" }
 ,{ "\"machine-address-length\"" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "Derived" }
 ,{ "types" }
 ,{ "are" }
 ,{ "pointers," }
 ,{ "arrays" }
 ,{ "and" }
 ,{ "structures:" }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "If" }
 ,{ "the" }
 ,{ "array" }
 ,{ "length" }
 ,{ "is" }
 ,{ "not" }
 ,{ "given" }
 ,{ "explicitly," }
 ,{ "then" }
 ,{ "it" }
 ,{ "is" }
 ,{ "inferred" }
 ,{ "from" }
 ,{ "the" }
 ,{ "initializer." }
 ,{ "Structure" }
 ,{ "members" }
 ,{ "may" }
 ,{ "have" }
 ,{ "default" }
 ,{ "initializers." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "Type" }
 ,{ "aliases" }
 ,{ "and" }
 ,{ "scopes" }
 ,{ "(aka" }
 ,{ "\"namespaces\")" }
 ,{ "are" }
 ,{ "supported:" }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "Dots" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "designate" }
 ,{ "the" }
 ,{ "current" }
 ,{ "scope" }
 ,{ "or" }
 ,{ "parent" }
 ,{ "scopes:" }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "The" }
 ,{ "language" }
 ,{ "is" }
 ,{ "commutative," }
 ,{ "i.e." }
 ,{ "the" }
 ,{ "order" }
 ,{ "of" }
 ,{ "declarations" }
 ,{ "is" }
 ,{ "not" }
 ,{ "important:" }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "Structures" }
 ,{ "define" }
 ,{ "scopes" }
 ,{ "and" }
 ,{ "may" }
 ,{ "declare" }
 ,{ "types" }
 ,{ "and" }
 ,{ "constants:" }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "DDL" , & fmt_text_b }
 ,{ "supports" }
 ,{ "file" }
 ,{ "inclusion:" }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "But" }
 ,{ "the" }
 ,{ "content" }
 ,{ "of" }
 ,{ "an" }
 ,{ "included" }
 ,{ "file" }
 ,{ "must" }
 ,{ "be" }
 ,{ "a" }
 ,{ "proper" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "text," }
 ,{ "except" }
 ,{ "names" }
 ,{ "may" }
 ,{ "not" }
 ,{ "be" }
 ,{ "defined" }
 ,{ "inside" }
 ,{ "the" }
 ,{ "included" }
 ,{ "file." }
 ,{ "Binding" }
 ,{ "a" }
 ,{ "file" }
 ,{ "name" }
 ,{ "with" }
 ,{ "a" }
 ,{ "particular" }
 ,{ "file" }
 ,{ "(real" }
 ,{ "or" }
 ,{ "virtual)" }
 ,{ "is" }
 ,{ "implementation-defined." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "DDL" }
 ,{ "elements" }
} , & fmt_h2 , & align_h2 } ;

Text b19 = { {
 { "DDL" , & fmt_text_b }
 ,{ "elements" }
 ,{ "are:" }
 ,{ "scopes," }
 ,{ "types," }
 ,{ "type" }
 ,{ "aliases," }
 ,{ "constants," }
 ,{ "literals" }
 ,{ "and" }
 ,{ "expressions." }
 ,{ "DDL" , & fmt_text_b }
 ,{ "text" }
 ,{ "is" }
 ,{ "a" }
 ,{ "sequence" }
 ,{ "of" }
 ,{ "definitions." }
 ,{ "A" }
 ,{ "definition" }
 ,{ "defines" }
 ,{ "a" }
 ,{ "scope," }
 ,{ "a" }
 ,{ "structure," }
 ,{ "a" }
 ,{ "type" }
 ,{ "alias" }
 ,{ "or" }
 ,{ "a" }
 ,{ "constant." }
 ,{ "Literals" }
 ,{ "and" }
 ,{ "expressions" }
 ,{ "are" }
 ,{ "used" }
 ,{ "to" }
 ,{ "define" }
 ,{ "a" }
 ,{ "constants" }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "Comments" }
} , & fmt_h3 , & align_h3 } ;

Text b21 = { {
 { "DDL" , & fmt_text_b }
 ,{ "accepts" }
 ,{ "long" }
 ,{ "and" }
 ,{ "short" }
 ,{ "comments:" }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "Scopes" }
} , & fmt_h3 , & align_h3 } ;

Text b23 = { {
 { "Scope" }
 ,{ "is" }
 ,{ "a" }
 ,{ "\"definition" }
 ,{ "directory\"." }
 ,{ "Scopes" }
 ,{ "can" }
 ,{ "be" }
 ,{ "nested" }
 ,{ "or" }
 ,{ "split." }
 ,{ "Each" }
 ,{ "named" }
 ,{ "language" }
 ,{ "element" }
 ,{ "belongs" }
 ,{ "to" }
 ,{ "some" }
 ,{ "scope." }
 ,{ "The" }
 ,{ "full" }
 ,{ "element" }
 ,{ "name" }
 ,{ "is" }
 ,{ "#" , & fmt_text_b }
 ,{ "Scope1Name" , & fmt_text_b }
 ,{ "#" , & fmt_text_b }
 ,{ "Scope2Name" , & fmt_text_b }
 ,{ "#" , & fmt_text_b }
 ,{ "..." , & fmt_text_b }
 ,{ "#" , & fmt_text_b }
 ,{ "ElementName" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "When" }
 ,{ "a" }
 ,{ "name" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "refer" }
 ,{ "to" }
 ,{ "a" }
 ,{ "language" }
 ,{ "element," }
 ,{ "it" }
 ,{ "may" }
 ,{ "be" }
 ,{ "either" }
 ,{ "relative" }
 ,{ "or" }
 ,{ "absolute." }
 ,{ "A" }
 ,{ "relative" }
 ,{ "name" }
 ,{ "starts" }
 ,{ "from" }
 ,{ "a" }
 ,{ "name," }
 ,{ "an" }
 ,{ "absolute" }
 ,{ "name" }
 ,{ "starts" }
 ,{ "from" }
 ,{ "the" }
 ,{ "#" , & fmt_text_b }
 ,{ "or" }
 ,{ "one" }
 ,{ "or" }
 ,{ "more" }
 ,{ "dots." }
 ,{ "One" }
 ,{ "dot" }
 ,{ "means" }
 ,{ "the" }
 ,{ "current" }
 ,{ "scope," }
 ,{ "2" }
 ,{ "dots" }
 ,{ "means" }
 ,{ "the" }
 ,{ "parent" }
 ,{ "scope" }
 ,{ "and" }
 ,{ "so" }
 ,{ "on." }
 ,{ "A" }
 ,{ "relative" }
 ,{ "name" }
 ,{ "is" }
 ,{ "looked" }
 ,{ "in" }
 ,{ "all" }
 ,{ "scopes" }
 ,{ "down" }
 ,{ "from" }
 ,{ "the" }
 ,{ "current." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "Types" }
 ,{ "and" }
 ,{ "type" }
 ,{ "aliases" }
} , & fmt_h3 , & align_h3 } ;

Text b26 = { {
 { "There" }
 ,{ "are" }
 ,{ "basic" }
 ,{ "types" }
 ,{ "and" }
 ,{ "derived" }
 ,{ "types." }
 ,{ "Basic" }
 ,{ "types" }
 ,{ "are" }
 ,{ "designated" }
 ,{ "by" }
 ,{ "the" }
 ,{ "following" }
 ,{ "keywords:" }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "Derived" }
 ,{ "types" }
 ,{ "are" }
 ,{ "pointers," }
 ,{ "arrays" }
 ,{ "and" }
 ,{ "structures." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "Pointer" }
 ,{ "type" }
 ,{ "is" }
 ,{ "designated" }
 ,{ "by" }
 ,{ "the" }
 ,{ "type" }
 ,{ "and" }
 ,{ "the" }
 ,{ "following" }
 ,{ "asterisk:" }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "Array" }
 ,{ "type" }
 ,{ "is" }
 ,{ "designated" }
 ,{ "by" }
 ,{ "the" }
 ,{ "type" }
 ,{ "and" }
 ,{ "the" }
 ,{ "following" }
 ,{ "pair" }
 ,{ "of" }
 ,{ "square" }
 ,{ "brackets" }
 ,{ "with" }
 ,{ "the" }
 ,{ "optional" }
 ,{ "expression" }
 ,{ "inside:" }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "The" }
 ,{ "expression" }
 ,{ "defines" }
 ,{ "the" }
 ,{ "array" }
 ,{ "length." }
 ,{ "The" }
 ,{ "resulting" }
 ,{ "type" }
 ,{ "of" }
 ,{ "this" }
 ,{ "expression" }
 ,{ "is" }
 ,{ "ulen" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "Non-pointer" }
 ,{ "and" }
 ,{ "non-array" }
 ,{ "type" }
 ,{ "can" }
 ,{ "be" }
 ,{ "a" }
 ,{ "basic" }
 ,{ "type" }
 ,{ "name," }
 ,{ "a" }
 ,{ "type" }
 ,{ "alias" }
 ,{ "name," }
 ,{ "a" }
 ,{ "structure" }
 ,{ "name" }
 ,{ "or" }
 ,{ "a" }
 ,{ "structure" }
 ,{ "definition." }
} , & fmt_text , & align_text } ;

Text b32 = { {
 { "Type" }
 ,{ "alias" }
 ,{ "definition" }
 ,{ "looks" }
 ,{ "like:" }
} , & fmt_text , & align_text } ;

Text b33 = { {
 { "Structures" }
} , & fmt_h3 , & align_h3 } ;

Text b34 = { {
 { "Structure" }
 ,{ "definition" }
 ,{ "looks" }
 ,{ "like:" }
} , & fmt_text , & align_text } ;

Text b35 = { {
 { "Each" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "a" }
 ,{ "name" }
 ,{ "and" }
 ,{ "a" }
 ,{ "list" }
 ,{ "of" }
 ,{ "fields." }
 ,{ "Each" }
 ,{ "field" }
 ,{ "has" }
 ,{ "a" }
 ,{ "name," }
 ,{ "a" }
 ,{ "type" }
 ,{ "and" }
 ,{ "an" }
 ,{ "optional" }
 ,{ "default" }
 ,{ "value," }
 ,{ "determined" }
 ,{ "by" }
 ,{ "an" }
 ,{ "expression." }
 ,{ "A" }
 ,{ "structure" }
 ,{ "also" }
 ,{ "defines" }
 ,{ "a" }
 ,{ "scope." }
 ,{ "This" }
 ,{ "scope" }
 ,{ "can" }
 ,{ "be" }
 ,{ "extended." }
 ,{ "A" }
 ,{ "structure" }
 ,{ "definition" }
 ,{ "can" }
 ,{ "also" }
 ,{ "defines" }
 ,{ "a" }
 ,{ "scope" }
 ,{ "type" }
 ,{ "aliases," }
 ,{ "structures" }
 ,{ "and" }
 ,{ "constants:" }
} , & fmt_text , & align_text } ;

Text b36 = { {
 { "To" }
 ,{ "define" }
 ,{ "a" }
 ,{ "constant" }
 ,{ "inside" }
 ,{ "a" }
 ,{ "structure" }
 ,{ "(not" }
 ,{ "a" }
 ,{ "field)" }
 ,{ "the" }
 ,{ "keyword" }
 ,{ "const" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "used." }
} , & fmt_text , & align_text } ;

Text b37 = { {
 { "Constants" }
} , & fmt_h3 , & align_h3 } ;

Text b38 = { {
 { "Constant" }
 ,{ "definition" }
 ,{ "looks" }
 ,{ "like:" }
} , & fmt_text , & align_text } ;

Text b39 = { {
 { "This" }
 ,{ "definition" }
 ,{ "defines" }
 ,{ "the" }
 ,{ "constant" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "name" }
 ,{ "in" }
 ,{ "the" }
 ,{ "current" }
 ,{ "scope" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "type" }
 ,{ "and" }
 ,{ "value," }
 ,{ "determined" }
 ,{ "by" }
 ,{ "the" }
 ,{ "expression." }
} , & fmt_text , & align_text } ;

Text b40 = { {
 { "Constant" }
 ,{ "can" }
 ,{ "be" }
 ,{ "defined" }
 ,{ "inside" }
 ,{ "a" }
 ,{ "structure" }
 ,{ "definition" }
 ,{ "with" }
 ,{ "the" }
 ,{ "keyword" }
 ,{ "const" , & fmt_text_b }
 ,{ ":" }
} , & fmt_text , & align_text } ;

Text b41 = { {
 { "Without" }
 ,{ "const" , & fmt_text_b }
 ,{ "it" }
 ,{ "would" }
 ,{ "be" }
 ,{ "a" }
 ,{ "field" }
 ,{ "definition." }
} , & fmt_text , & align_text } ;

Text b42 = { {
 { "Literals" }
} , & fmt_h3 , & align_h3 } ;

Text b43 = { {
 { "Universal" }
 ,{ "null" }
 ,{ "literal:" }
} , & fmt_text , & align_text } ;

Text b44 = { {
 { "Decimal" }
 ,{ "literals:" }
} , & fmt_text , & align_text } ;

Text b45 = { {
 { "Hexadecimal" }
 ,{ "literals:" }
} , & fmt_text , & align_text } ;

Text b46 = { {
 { "Binary" }
 ,{ "literals:" }
} , & fmt_text , & align_text } ;

Text b47 = { {
 { "Simple" }
 ,{ "string" }
 ,{ "literals:" }
} , & fmt_text , & align_text } ;

Text b48 = { {
 { "Advanced" }
 ,{ "string" }
 ,{ "literals" }
 ,{ "accept" }
 ,{ "usual" }
 ,{ "back-slash" }
 ,{ "special" }
 ,{ "character" }
 ,{ "representations:" }
} , & fmt_text , & align_text } ;

Text b49 = { {
 { "IP" }
 ,{ "literals:" }
} , & fmt_text , & align_text } ;

Text b50 = { {
 { "Expressions" }
} , & fmt_h3 , & align_h3 } ;

Text b51 = { {
 { "Expressions" }
 ,{ "are" }
 ,{ "used" }
 ,{ "to" }
 ,{ "assign" }
 ,{ "a" }
 ,{ "value" }
 ,{ "to" }
 ,{ "a" }
 ,{ "constant" }
 ,{ "(including" }
 ,{ "implicitly" }
 ,{ "defined" }
 ,{ "constants," }
 ,{ "like" }
 ,{ "array" }
 ,{ "lengths" }
 ,{ "or" }
 ,{ "default" }
 ,{ "structure" }
 ,{ "member" }
 ,{ "values)." }
 ,{ "Expression" }
 ,{ "can" }
 ,{ "be" }
 ,{ "scalar" }
 ,{ "or" }
 ,{ "compound." }
 ,{ "Scalar" }
 ,{ "expressions" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "assign" }
 ,{ "a" }
 ,{ "value" }
 ,{ "of" }
 ,{ "a" }
 ,{ "basic" }
 ,{ "type," }
 ,{ "compound" }
 ,{ "—" }
 ,{ "for" }
 ,{ "structures" }
 ,{ "and" }
 ,{ "arrays." }
 ,{ "A" }
 ,{ "special" }
 ,{ "class" }
 ,{ "of" }
 ,{ "scalar" }
 ,{ "expressions" }
 ,{ "defines" }
 ,{ "pointer" }
 ,{ "values." }
} , & fmt_text , & align_text } ;

Text b52 = { {
 { "The" }
 ,{ "most" }
 ,{ "important" }
 ,{ "thing" }
 ,{ "about" }
 ,{ "expressions:" }
 ,{ "they" }
 ,{ "are" }
 ,{ "calculated" }
 ,{ "in" }
 ,{ "the" }
 ,{ "context" }
 ,{ "of" }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "type." }
 ,{ "Resulting" }
 ,{ "type" }
 ,{ "of" }
 ,{ "expression" }
 ,{ "is" }
 ,{ "the" }
 ,{ "type" }
 ,{ "of" }
 ,{ "constant" }
 ,{ "this" }
 ,{ "expression" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "assign" }
 ,{ "a" }
 ,{ "value" }
 ,{ "to." }
} , & fmt_text , & align_text } ;

Text b53 = { {
 { "Compound" }
 ,{ "expression" }
 ,{ "is" }
 ,{ "a" }
 ,{ "list" }
 ,{ "of" }
 ,{ "expressions," }
 ,{ "or" }
 ,{ "a" }
 ,{ "list" }
 ,{ "of" }
 ,{ "named" }
 ,{ "expressions:" }
} , & fmt_text , & align_text } ;

Text b54 = { {
 { "Named" }
 ,{ "lists" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "as" }
 ,{ "value" }
 ,{ "modifiers:" }
} , & fmt_text , & align_text } ;

Text b55 = { {
 { "Usual" }
 ,{ "arithmetic" }
 ,{ "operations" }
 ,{ "+a," , & fmt_text_b }
 ,{ "-a," , & fmt_text_b }
 ,{ "a+b," , & fmt_text_b }
 ,{ "a-b," , & fmt_text_b }
 ,{ "a*b," , & fmt_text_b }
 ,{ "a/b," , & fmt_text_b }
 ,{ "a%b" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "with" }
 ,{ "integral" }
 ,{ "values." }
 ,{ "Operands" }
 ,{ "are" }
 ,{ "evaluated" }
 ,{ "to" }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "integral" }
 ,{ "type" }
 ,{ "and" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "performed" }
 ,{ "with" }
 ,{ "this" }
 ,{ "value" }
 ,{ "types." }
 ,{ "Additive" }
 ,{ "integral" }
 ,{ "operations" }
 ,{ "and" }
 ,{ "multiplication" }
 ,{ "are" }
 ,{ "operations" }
 ,{ "in" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "residual" }
 ,{ "ring." }
 ,{ "Division" }
 ,{ "operations" }
 ,{ "follows" }
 ,{ "C" , & fmt_text_b }
 ,{ "convention:" }
} , & fmt_text , & align_text } ;

Text b56 = { {
 { "Signed" }
 ,{ "integral" }
 ,{ "types" }
 ,{ "use" }
 ,{ "2'd" }
 ,{ "complementary" }
 ,{ "representation." }
 ,{ "Integral" }
 ,{ "literal" }
 ,{ "conversions" }
 ,{ "are" }
 ,{ "performed" }
 ,{ "by" }
 ,{ "the" }
 ,{ "module" }
 ,{ "reduction." }
} , & fmt_text , & align_text } ;

Text b57 = { {
 { "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "special" }
 ,{ "integral" }
 ,{ "cast" }
 ,{ "operation:" }
} , & fmt_text , & align_text } ;

Text b58 = { {
 { "The" }
 ,{ "expression" }
 ,{ "inside" }
 ,{ "a" }
 ,{ "cast" }
 ,{ "expression" }
 ,{ "is" }
 ,{ "evaluated" }
 ,{ "to" }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "cast" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b59 = { {
 { "ip" , & fmt_text_b }
 ,{ "constant" }
 ,{ "can" }
 ,{ "be" }
 ,{ "received" }
 ,{ "only" }
 ,{ "from" }
 ,{ "an" }
 ,{ "IP" }
 ,{ "literal." }
} , & fmt_text , & align_text } ;

Text b60 = { {
 { "text" , & fmt_text_b }
 ,{ "constant" }
 ,{ "can" }
 ,{ "be" }
 ,{ "received" }
 ,{ "from" }
 ,{ "a" }
 ,{ "text" }
 ,{ "literal," }
 ,{ "an" }
 ,{ "IP" }
 ,{ "literal," }
 ,{ "an" }
 ,{ "integral" }
 ,{ "literal" }
 ,{ "and" }
 ,{ "from" }
 ,{ "a" }
 ,{ "binary" }
 ,{ "plus" }
 ,{ "operator." }
} , & fmt_text , & align_text } ;

Text b61 = { {
 { "Integral" }
 ,{ "literals" }
 ,{ "are" }
 ,{ "converted" }
 ,{ "as" }
 ,{ "is." }
 ,{ "IP" }
 ,{ "literals" }
 ,{ "are" }
 ,{ "converted" }
 ,{ "to" }
 ,{ "IP" }
 ,{ "address" }
 ,{ "first." }
} , & fmt_text , & align_text } ;

Text b62 = { {
 { "null" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "\"universal" }
 ,{ "null\"." }
} , & fmt_text , & align_text } ;

Text b63 = { {
 { "Pointers" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "the" }
 ,{ "same" }
 ,{ "way" }
 ,{ "as" }
 ,{ "in" }
 ,{ "C" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b64 = { {
 { "Polymorphic" }
 ,{ "pointers" }
} , & fmt_h3 , & align_h3 } ;

Text b65 = { {
 { "Polymorphic" }
 ,{ "pointer" }
 ,{ "may" }
 ,{ "point" }
 ,{ "to" }
 ,{ "objects" }
 ,{ "of" }
 ,{ "different" }
 ,{ "types." }
 ,{ "It" }
 ,{ "looks" }
 ,{ "like:" }
} , & fmt_text , & align_text } ;

Text b66 = { {
 { "Point" }
 ,{ "of" }
 ,{ "usage" }
 ,{ "name" }
 ,{ "binding" }
} , & fmt_h3 , & align_h3 } ;

Text b67 = { {
 { "When" }
 ,{ "you" }
 ,{ "define" }
 ,{ "a" }
 ,{ "default" }
 ,{ "value" }
 ,{ "for" }
 ,{ "a" }
 ,{ "structure" }
 ,{ "field," }
 ,{ "you" }
 ,{ "may" }
 ,{ "use" }
 ,{ "the" }
 ,{ "name" }
 ,{ "with" }
 ,{ "question" }
 ,{ "mark" }
 ,{ "to" }
 ,{ "refer" }
 ,{ "a" }
 ,{ "name," }
 ,{ "which" }
 ,{ "is" }
 ,{ "bounded" }
 ,{ "with" }
 ,{ "the" }
 ,{ "definition" }
 ,{ "at" }
 ,{ "the" }
 ,{ "point" }
 ,{ "of" }
 ,{ "usage." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> DDL (v.2)" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text , outer_text , back_text }
 ,{ & b2 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_text , outer_text , back_text }
 ,{ & b32 , null , inner_text , outer_text , back_text }
 ,{ & b33 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b34 , null , inner_text , outer_text , back_text }
 ,{ & b35 , null , inner_text , outer_text , back_text }
 ,{ & b36 , null , inner_text , outer_text , back_text }
 ,{ & b37 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b38 , null , inner_text , outer_text , back_text }
 ,{ & b39 , null , inner_text , outer_text , back_text }
 ,{ & b40 , null , inner_text , outer_text , back_text }
 ,{ & b41 , null , inner_text , outer_text , back_text }
 ,{ & b42 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b43 , null , inner_text , outer_text , back_text }
 ,{ & b44 , null , inner_text , outer_text , back_text }
 ,{ & b45 , null , inner_text , outer_text , back_text }
 ,{ & b46 , null , inner_text , outer_text , back_text }
 ,{ & b47 , null , inner_text , outer_text , back_text }
 ,{ & b48 , null , inner_text , outer_text , back_text }
 ,{ & b49 , null , inner_text , outer_text , back_text }
 ,{ & b50 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b51 , null , inner_text , outer_text , back_text }
 ,{ & b52 , null , inner_text , outer_text , back_text }
 ,{ & b53 , null , inner_text , outer_text , back_text }
 ,{ & b54 , null , inner_text , outer_text , back_text }
 ,{ & b55 , null , inner_text , outer_text , back_text }
 ,{ & b56 , null , inner_text , outer_text , back_text }
 ,{ & b57 , null , inner_text , outer_text , back_text }
 ,{ & b58 , null , inner_text , outer_text , back_text }
 ,{ & b59 , null , inner_text , outer_text , back_text }
 ,{ & b60 , null , inner_text , outer_text , back_text }
 ,{ & b61 , null , inner_text , outer_text , back_text }
 ,{ & b62 , null , inner_text , outer_text , back_text }
 ,{ & b63 , null , inner_text , outer_text , back_text }
 ,{ & b64 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b65 , null , inner_text , outer_text , back_text }
 ,{ & b66 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b67 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Crypton#page , & page_DDLEngine#page };

Link link = { &page } ;

}

scope page_DDLEngine {

Text b0 = { {
 { "DDLEngine" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/ddl/DDLEngine.h" , & fmt_text_Files_b }
 ,{ "CCore/src/ddl/DDLEngine.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Files" }
 ,{ "CCore/inc/ddl/DDLMap.h" , & fmt_text_Files_b }
 ,{ "CCore/src/ddl/DDLMap.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b3 = { {
 { "Files" }
 ,{ "CCore/inc/ddl/DDLTypedMap.h" , & fmt_text_Files_b }
 ,{ "CCore/src/ddl/DDLTypeMap.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b4 = { {
 { "Files" }
 ,{ "CCore/inc/ddl/DDLPlatformTypes.h" , & fmt_text_Files_b }
 ,{ "CCore/src/ddl/DDLPlatformTypes.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b5 = { {
 { "Files" }
 ,{ "CCore/inc/ddl/DDLMapTypes.h" , & fmt_text_Files_b }
 ,{ "CCore/src/ddl/DDLMapTypes.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b6 = { {
 { "Files" }
 ,{ "CCore/inc/ddl/DDLMapBase.h" , & fmt_text_Files_b }
 ,{ "CCore/src/ddl/DDLMapBase.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b7 = { {
 { "Subfolders" }
 ,{ "CCore/inc/ddl" , & fmt_text_Files_b }
 ,{ "CCore/src/ddl" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b8 = { {
 { "DDL" }
 ,{ "implementation" }
} , & fmt_h2 , & align_h2 } ;

Text b9 = { {
 { "The" }
 ,{ "directory" }
 ,{ "ddl" , & fmt_text_b }
 ,{ "contains" }
 ,{ "a" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "implementation." }
 ,{ "It" }
 ,{ "is" }
 ,{ "contained" }
 ,{ "in" }
 ,{ "the" }
 ,{ "namespace" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "." }
 ,{ "To" }
 ,{ "process" }
 ,{ "a" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "source" }
 ,{ "there" }
 ,{ "are" }
 ,{ "two" }
 ,{ "main" }
 ,{ "classes:" }
 ,{ "TextEngine" , & fmt_text_b }
 ,{ "and" }
 ,{ "FileEngine" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "most" }
 ,{ "of" }
 ,{ "content" }
 ,{ "of" }
 ,{ "this" }
 ,{ "directory" }
 ,{ "is" }
 ,{ "a" }
 ,{ "DDL2" , & fmt_text_b }
 ,{ "parser" }
 ,{ "implementation" }
 ,{ "and" }
 ,{ "not" }
 ,{ "needed" }
 ,{ "to" }
 ,{ "be" }
 ,{ "used" }
 ,{ "directly." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "Engines" }
 ,{ "return" }
 ,{ "the" }
 ,{ "result" }
 ,{ "of" }
 ,{ "processing" }
 ,{ "of" }
 ,{ "the" }
 ,{ "following" }
 ,{ "type:" }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "It's" }
 ,{ "a" }
 ,{ "simple" }
 ,{ "lightweight" }
 ,{ "data" }
 ,{ "structure" }
 ,{ "with" }
 ,{ "two" }
 ,{ "fields." }
 ,{ "eval" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "EvalResult" , & fmt_text_b }
 ,{ "object," }
 ,{ "this" }
 ,{ "object" }
 ,{ "contains" }
 ,{ "constant" }
 ,{ "value" }
 ,{ "table." }
 ,{ "body" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "root" }
 ,{ "body" }
 ,{ "node," }
 ,{ "this" }
 ,{ "node" }
 ,{ "represents" }
 ,{ "the" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "source." }
 ,{ "Walking" }
 ,{ "from" }
 ,{ "this" }
 ,{ "node" }
 ,{ "you" }
 ,{ "can" }
 ,{ "examine" }
 ,{ "the" }
 ,{ "whole" }
 ,{ "source" }
 ,{ "content." }
 ,{ "If" }
 ,{ "the" }
 ,{ "processing" }
 ,{ "has" }
 ,{ "failed," }
 ,{ "the" }
 ,{ "result" }
 ,{ "is" }
 ,{ "null." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "The" }
 ,{ "first" }
 ,{ "constructor" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "stream," }
 ,{ "where" }
 ,{ "error" }
 ,{ "messages" }
 ,{ "will" }
 ,{ "be" }
 ,{ "printed" }
 ,{ "to." }
 ,{ "The" }
 ,{ "second" }
 ,{ "is" }
 ,{ "a" }
 ,{ "text" }
 ,{ "to" }
 ,{ "be" }
 ,{ "processed." }
 ,{ "The" }
 ,{ "third" }
 ,{ "is" }
 ,{ "a" }
 ,{ "\"pretext\"." }
 ,{ "It" }
 ,{ "is" }
 ,{ "included" }
 ,{ "before" }
 ,{ "the" }
 ,{ "text" , & fmt_text_b }
 ,{ "." }
 ,{ "To" }
 ,{ "do" }
 ,{ "the" }
 ,{ "job" }
 ,{ "use" }
 ,{ "the" }
 ,{ "method" }
 ,{ "process()" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "engine" }
 ,{ "does" }
 ,{ "not" }
 ,{ "support" }
 ,{ "the" }
 ,{ "file" }
 ,{ "inclusion." }
 ,{ "This" }
 ,{ "engine" }
 ,{ "is" }
 ,{ "one-shoot," }
 ,{ "it" }
 ,{ "should" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "process" }
 ,{ "one" }
 ,{ "input" }
 ,{ "once." }
 ,{ "Result" }
 ,{ "objects" }
 ,{ "life-time" }
 ,{ "is" }
 ,{ "ended" }
 ,{ "with" }
 ,{ "the" }
 ,{ "engine" }
 ,{ "life-time" }
 ,{ "end." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "FileEngine" , & fmt_text_b }
 ,{ "can" }
 ,{ "process" }
 ,{ "a" }
 ,{ "complex" }
 ,{ "input" }
 ,{ "from" }
 ,{ "a" }
 ,{ "real" }
 ,{ "or" }
 ,{ "a" }
 ,{ "virtual" }
 ,{ "file" }
 ,{ "system." }
 ,{ "Two" }
 ,{ "template" }
 ,{ "parameters" }
 ,{ "controls" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name" }
 ,{ "processing" }
 ,{ "and" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name" }
 ,{ "to" }
 ,{ "the" }
 ,{ "file" }
 ,{ "content" }
 ,{ "mapping." }
 ,{ "The" }
 ,{ "first" }
 ,{ "constructor" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "error" }
 ,{ "report" }
 ,{ "stream." }
 ,{ "Others" }
 ,{ "are" }
 ,{ "different" }
 ,{ "engine" }
 ,{ "limits." }
 ,{ "The" }
 ,{ "method" }
 ,{ "process()" , & fmt_text_b }
 ,{ "does" }
 ,{ "the" }
 ,{ "job." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "file" }
 ,{ "name" }
 ,{ "with" }
 ,{ "a" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "text." }
 ,{ "Additional" }
 ,{ "files" }
 ,{ "may" }
 ,{ "be" }
 ,{ "opened" }
 ,{ "during" }
 ,{ "include" }
 ,{ "operations." }
 ,{ "The" }
 ,{ "second" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "\"pretext\"." }
 ,{ "It" }
 ,{ "is" }
 ,{ "included" }
 ,{ "before" }
 ,{ "the" }
 ,{ "file" }
 ,{ "text." }
 ,{ "The" }
 ,{ "method" }
 ,{ "process()" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "called" }
 ,{ "multiple" }
 ,{ "times" }
 ,{ "for" }
 ,{ "different" }
 ,{ "files." }
 ,{ "Loaded" }
 ,{ "files" }
 ,{ "are" }
 ,{ "cached." }
 ,{ "Result" }
 ,{ "objects" }
 ,{ "life-time" }
 ,{ "is" }
 ,{ "ended" }
 ,{ "with" }
 ,{ "the" }
 ,{ "next" }
 ,{ "call" }
 ,{ "of" }
 ,{ "process()" , & fmt_text_b }
 ,{ "," }
 ,{ "or" }
 ,{ "with" }
 ,{ "the" }
 ,{ "engine" }
 ,{ "life-time" }
 ,{ "end." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "reset()" , & fmt_text_b }
 ,{ "cleans" }
 ,{ "the" }
 ,{ "engine" }
 ,{ "context." }
 ,{ "In" }
 ,{ "particular," }
 ,{ "all" }
 ,{ "result" }
 ,{ "nodes" }
 ,{ "are" }
 ,{ "destroyed." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "purge()" , & fmt_text_b }
 ,{ "purges" }
 ,{ "the" }
 ,{ "file" }
 ,{ "cache." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "The" }
 ,{ "first" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "FileName" , & fmt_text_b }
 ,{ "is" }
 ,{ "responsible" }
 ,{ "for" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name" }
 ,{ "manipulation." }
 ,{ "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "default" , & fmt_text_a , & ..#page_FileName#link }
 ,{ "implementation" , & fmt_text_a , & ..#page_FileName#link }
 ,{ "of" , & fmt_text_a , & ..#page_FileName#link }
 ,{ "this" , & fmt_text_a , & ..#page_FileName#link }
 ,{ "class" , & fmt_text_a , & ..#page_FileName#link }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "recommended" }
 ,{ "to" }
 ,{ "use" }
 ,{ "this" }
 ,{ "implementation." }
 ,{ "Any" }
 ,{ "other" }
 ,{ "implementation" }
 ,{ "must" }
 ,{ "be" }
 ,{ "interface" }
 ,{ "compatible" }
 ,{ "with" }
 ,{ "this" }
 ,{ "particular" }
 ,{ "one." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "The" }
 ,{ "second" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "must" }
 ,{ "do" }
 ,{ "the" }
 ,{ "same" }
 ,{ "thing" }
 ,{ "as" }
 ,{ "the" }
 ,{ "FileToMem" , & fmt_text_b }
 ,{ "class," }
 ,{ "i.e." }
 ,{ "load" }
 ,{ "the" }
 ,{ "file" }
 ,{ "content" }
 ,{ "into" }
 ,{ "the" }
 ,{ "memory." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "On" }
 ,{ "HCore" , & fmt_text_b }
 ,{ "targets" }
 ,{ "you" }
 ,{ "can" }
 ,{ "use" }
 ,{ "the" }
 ,{ "class" }
 ,{ "FileToMem" , & fmt_text_a , & ..#page_FileToMem#link }
 ,{ "as" }
 ,{ "the" }
 ,{ "FileText" , & fmt_text_b }
 ,{ "template" }
 ,{ "parameter." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "You" }
 ,{ "may" }
 ,{ "supply" }
 ,{ "additional" }
 ,{ "arguments" }
 ,{ "using" }
 ,{ "the" }
 ,{ "variables" }
 ,{ "args" , & fmt_text_b }
 ,{ "." }
 ,{ "They" }
 ,{ "are" }
 ,{ "copied" }
 ,{ "from" }
 ,{ "the" }
 ,{ "constructor" }
 ,{ "arguments" }
 ,{ "of" }
 ,{ "the" }
 ,{ "class" }
 ,{ "FileEngine" , & fmt_text_b }
 ,{ "and" }
 ,{ "stored" }
 ,{ "inside" }
 ,{ "an" }
 ,{ "object" }
 ,{ "of" }
 ,{ "this" }
 ,{ "class." }
 ,{ "Then" }
 ,{ "these" }
 ,{ "copies" }
 ,{ "are" }
 ,{ "used" }
 ,{ "in" }
 ,{ "FileText" , & fmt_text_b }
 ,{ "constructor" }
 ,{ "calls." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "EvalResult" }
} , & fmt_h3 , & align_h3 } ;

Text b21 = { {
 { "EvalResult" , & fmt_text_b }
 ,{ "contains" }
 ,{ "two" }
 ,{ "tables." }
 ,{ "Each" }
 ,{ "constant," }
 ,{ "defined" }
 ,{ "in" }
 ,{ "the" }
 ,{ "DDL2" , & fmt_text_b }
 ,{ "source," }
 ,{ "has" }
 ,{ "an" }
 ,{ "associated" }
 ,{ "ConstNode" , & fmt_text_b }
 ,{ "object." }
 ,{ "This" }
 ,{ "object" }
 ,{ "contains" }
 ,{ "the" }
 ,{ "field" }
 ,{ "index" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "entry" }
 ,{ "in" }
 ,{ "the" }
 ,{ "const_table" , & fmt_text_b }
 ,{ "with" }
 ,{ "this" }
 ,{ "index" }
 ,{ "contains" }
 ,{ "the" }
 ,{ "calculated" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "constant." }
 ,{ "Each" }
 ,{ "array" }
 ,{ "type" }
 ,{ "with" }
 ,{ "an" }
 ,{ "explicit" }
 ,{ "array" }
 ,{ "length" }
 ,{ "has" }
 ,{ "an" }
 ,{ "associated" }
 ,{ "LenNode" , & fmt_text_b }
 ,{ "object." }
 ,{ "This" }
 ,{ "object" }
 ,{ "contains" }
 ,{ "the" }
 ,{ "field" }
 ,{ "index" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "entry" }
 ,{ "in" }
 ,{ "the" }
 ,{ "len_table" , & fmt_text_b }
 ,{ "with" }
 ,{ "this" }
 ,{ "index" }
 ,{ "contains" }
 ,{ "the" }
 ,{ "calculated" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "ConstResult" , & fmt_text_b }
 ,{ "contains" }
 ,{ "three" }
 ,{ "fields." }
 ,{ "type" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "TypeNode" , & fmt_text_b }
 ,{ "pointer," }
 ,{ "node" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "ConstNode" , & fmt_text_b }
 ,{ "pointer," }
 ,{ "value" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "calculated" }
 ,{ "constant" }
 ,{ "value." }
 ,{ "This" }
 ,{ "class" }
 ,{ "is" }
 ,{ "printable." }
 ,{ "To" }
 ,{ "print" }
 ,{ "you" }
 ,{ "must" }
 ,{ "provide" }
 ,{ "the" }
 ,{ "option," }
 ,{ "bounded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "original" }
 ,{ "EvalResult" , & fmt_text_b }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "LenResult" , & fmt_text_b }
 ,{ "contains" }
 ,{ "two" }
 ,{ "fields." }
 ,{ "node" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "LenNode" , & fmt_text_b }
 ,{ "pointer," }
 ,{ "value" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "calculated" }
 ,{ "length" }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "All" }
 ,{ "LenNode" , & fmt_text_b }
 ,{ "s" }
 ,{ "are" }
 ,{ "zero-based" }
 ,{ "indexed." }
 ,{ "The" }
 ,{ "correspondent" }
 ,{ "index" }
 ,{ "is" }
 ,{ "assigned" }
 ,{ "to" }
 ,{ "the" }
 ,{ "index" , & fmt_text_b }
 ,{ "field." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "All" }
 ,{ "ConstNode" , & fmt_text_b }
 ,{ "s" }
 ,{ "are" }
 ,{ "zero-based" }
 ,{ "indexed." }
 ,{ "The" }
 ,{ "correspondent" }
 ,{ "index" }
 ,{ "is" }
 ,{ "assigned" }
 ,{ "to" }
 ,{ "the" }
 ,{ "index" , & fmt_text_b }
 ,{ "field." }
 ,{ "ConstNode" , & fmt_text_b }
 ,{ "contains" }
 ,{ "also" }
 ,{ "the" }
 ,{ "filed" }
 ,{ "name" , & fmt_text_b }
 ,{ "with" }
 ,{ "its" }
 ,{ "name" }
 ,{ "and" }
 ,{ "the" }
 ,{ "field" }
 ,{ "parent" , & fmt_text_b }
 ,{ "with" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "ScopeNode" , & fmt_text_b }
 ,{ "which" }
 ,{ "it" }
 ,{ "belongs" }
 ,{ "to." }
 ,{ "depth" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "scope" }
 ,{ "depth." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "ScopeNode" , & fmt_text_b }
 ,{ "has" }
 ,{ "the" }
 ,{ "field" }
 ,{ "parent" , & fmt_text_b }
 ,{ "with" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "ScopeNode" , & fmt_text_b }
 ,{ "which" }
 ,{ "it" }
 ,{ "belongs" }
 ,{ "to." }
 ,{ "It" }
 ,{ "also" }
 ,{ "has" }
 ,{ "the" }
 ,{ "field" }
 ,{ "name" , & fmt_text_b }
 ,{ "with" }
 ,{ "the" }
 ,{ "scope" }
 ,{ "name." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "NameIdNode" , & fmt_text_b }
 ,{ "has" }
 ,{ "the" }
 ,{ "method" }
 ,{ "getStr()" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "method" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "name" }
 ,{ "of" }
 ,{ "the" }
 ,{ "item." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "Value" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "union" }
 ,{ "of" }
 ,{ "different" }
 ,{ "types." }
 ,{ "The" }
 ,{ "actual" }
 ,{ "member" }
 ,{ "depends" }
 ,{ "on" }
 ,{ "the" }
 ,{ "value" }
 ,{ "type." }
 ,{ "You" }
 ,{ "may" }
 ,{ "use" }
 ,{ "get<Type>()" , & fmt_text_b }
 ,{ "and" }
 ,{ "set<Type>()" , & fmt_text_b }
 ,{ "methods" }
 ,{ "to" }
 ,{ "get" }
 ,{ "and" }
 ,{ "set" }
 ,{ "values." }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "To" }
 ,{ "represent" }
 ,{ "integral" }
 ,{ "types" }
 ,{ "imp_XXX" , & fmt_text_b }
 ,{ "are" }
 ,{ "used." }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "Integral" }
 ,{ "types" }
 ,{ "are:" }
 ,{ "sint8," , & fmt_text_b }
 ,{ "uint8," , & fmt_text_b }
 ,{ "..." , & fmt_text_b }
 ,{ "and" }
 ,{ "sint_type," , & fmt_text_b }
 ,{ "uint_type," , & fmt_text_b }
 ,{ "ulen_type" , & fmt_text_b }
 ,{ "." }
 ,{ "Last" }
 ,{ "three" }
 ,{ "types" }
 ,{ "are" }
 ,{ "platform-dependent." }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "Text" , & fmt_text_b }
 ,{ "represents" }
 ,{ "text" , & fmt_text_b }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b32 = { {
 { "IP" , & fmt_text_b }
 ,{ "represents" }
 ,{ "ip" , & fmt_text_b }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b33 = { {
 { "Non-scalar" }
 ,{ "values," }
 ,{ "like" }
 ,{ "structures" }
 ,{ "and" }
 ,{ "arrays," }
 ,{ "are" }
 ,{ "represented" }
 ,{ "using" }
 ,{ "the" }
 ,{ "type" }
 ,{ "Block" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b34 = { {
 { "Each" }
 ,{ "member" }
 ,{ "of" }
 ,{ "the" }
 ,{ "range" }
 ,{ "data" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "element" }
 ,{ "of" }
 ,{ "aggregate." }
} , & fmt_text , & align_text } ;

Text b35 = { {
 { "Pointer" }
 ,{ "values" }
 ,{ "are" }
 ,{ "represented" }
 ,{ "using" }
 ,{ "the" }
 ,{ "type" }
 ,{ "Ptr" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b36 = { {
 { "The" }
 ,{ "field" }
 ,{ "ptr_node" , & fmt_text_b }
 ,{ "points" }
 ,{ "to" }
 ,{ "the" }
 ,{ "PtrNode" , & fmt_text_b }
 ,{ "object." }
 ,{ "This" }
 ,{ "object" }
 ,{ "contains" }
 ,{ "three" }
 ,{ "fields." }
 ,{ "type" , & fmt_text_b }
 ,{ "describes" }
 ,{ "the" }
 ,{ "type" }
 ,{ "of" }
 ,{ "the" }
 ,{ "pointee" }
 ,{ "constant" }
 ,{ "or" }
 ,{ "sub-constant." }
 ,{ "If" }
 ,{ "this" }
 ,{ "constant" }
 ,{ "is" }
 ,{ "a" }
 ,{ "full" }
 ,{ "constant," }
 ,{ "then" }
 ,{ "parent" , & fmt_text_b }
 ,{ "is" }
 ,{ "null" }
 ,{ "and" }
 ,{ "index" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "ConstNode" , & fmt_text_b }
 ,{ "index." }
 ,{ "Otherwise" }
 ,{ "parent" , & fmt_text_b }
 ,{ "represents" }
 ,{ "the" }
 ,{ "aggregate," }
 ,{ "the" }
 ,{ "sub-constant" }
 ,{ "is" }
 ,{ "an" }
 ,{ "element" }
 ,{ "of," }
 ,{ "and" }
 ,{ "index" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "aggregate" }
 ,{ "element" }
 ,{ "index." }
} , & fmt_text , & align_text } ;

Text b37 = { {
 { "If" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "is" }
 ,{ "a" }
 ,{ "null" }
 ,{ "pointer" }
 ,{ "of" }
 ,{ "some" }
 ,{ "type," }
 ,{ "then" }
 ,{ "the" }
 ,{ "field" }
 ,{ "null" , & fmt_text_b }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "and" }
 ,{ "ptr_node->type" , & fmt_text_b }
 ,{ "describes" }
 ,{ "the" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b38 = { {
 { "TypeNode" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "represent" }
 ,{ "a" }
 ,{ "type." }
 ,{ "Different" }
 ,{ "type" }
 ,{ "classes" }
 ,{ "are" }
 ,{ "encoded" }
 ,{ "using" }
 ,{ "AnyPtr" , & fmt_text_b }
 ,{ "field" }
 ,{ "ptr" , & fmt_text_b }
 ,{ "." }
 ,{ "For" }
 ,{ "example," }
 ,{ "to" }
 ,{ "encode" }
 ,{ "the" }
 ,{ "type" }
 ,{ "uint8" , & fmt_text_b }
 ,{ "," }
 ,{ "ptr" , & fmt_text_b }
 ,{ "is" }
 ,{ "initialized" }
 ,{ "by" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object" }
 ,{ "of" }
 ,{ "type" }
 ,{ "TypeNode::Base" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "field" }
 ,{ "type" , & fmt_text_b }
 ,{ "of" }
 ,{ "this" }
 ,{ "object" }
 ,{ "has" }
 ,{ "the" }
 ,{ "value" }
 ,{ "TypeNode::Base::Type_uint8" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b39 = { {
 { "AliasNode" , & fmt_text_b }
 ,{ "repesents" }
 ,{ "a" }
 ,{ "type" }
 ,{ "declaration." }
 ,{ "The" }
 ,{ "field" }
 ,{ "result_type" , & fmt_text_b }
 ,{ "points" }
 ,{ "to" }
 ,{ "some" }
 ,{ "\"resulting\"" }
 ,{ "TypeNode" , & fmt_text_b }
 ,{ "," }
 ,{ "this" }
 ,{ "node" }
 ,{ "represents" }
 ,{ "the" }
 ,{ "aliased" }
 ,{ "type" }
 ,{ "and" }
 ,{ "is" }
 ,{ "not" }
 ,{ "a" }
 ,{ "Ref" , & fmt_text_b }
 ,{ "node" }
 ,{ "with" }
 ,{ "another" }
 ,{ "AliasNode" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b40 = { {
 { "StructNode" , & fmt_text_b }
 ,{ "represents" }
 ,{ "a" }
 ,{ "structure" }
 ,{ "declaration." }
 ,{ "The" }
 ,{ "field" }
 ,{ "scope_node" , & fmt_text_b }
 ,{ "represents" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "scope." }
 ,{ "The" }
 ,{ "field" }
 ,{ "field_list" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "list" }
 ,{ "of" }
 ,{ "structure" }
 ,{ "fields." }
 ,{ "dep_index" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "zero-based" }
 ,{ "index" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure." }
 ,{ "These" }
 ,{ "indexes" }
 ,{ "respect" }
 ,{ "structure" }
 ,{ "dependencies:" }
 ,{ "if" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "A" , & fmt_text_b }
 ,{ "has" }
 ,{ "a" }
 ,{ "filed" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "type" }
 ,{ "B" , & fmt_text_b }
 ,{ "(or" }
 ,{ "B[]" , & fmt_text_b }
 ,{ "or" }
 ,{ "B[Len]" , & fmt_text_b }
 ,{ ")," }
 ,{ "then" }
 ,{ "the" }
 ,{ "dep_index" , & fmt_text_b }
 ,{ "of" }
 ,{ "the" }
 ,{ "B" , & fmt_text_b }
 ,{ "is" }
 ,{ "less" }
 ,{ "than" }
 ,{ "the" }
 ,{ "dep_index" , & fmt_text_b }
 ,{ "of" }
 ,{ "the" }
 ,{ "A" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b41 = { {
 { "FieldNode" , & fmt_text_b }
 ,{ "describes" }
 ,{ "a" }
 ,{ "structure" }
 ,{ "field." }
 ,{ "index" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "zero-based" }
 ,{ "field" }
 ,{ "index" }
 ,{ "among" }
 ,{ "all" }
 ,{ "fields" }
 ,{ "of" }
 ,{ "all" }
 ,{ "structures." }
 ,{ "field_index" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "zero-based" }
 ,{ "field" }
 ,{ "index" }
 ,{ "of" }
 ,{ "this" }
 ,{ "particular" }
 ,{ "structure." }
 ,{ "name" , & fmt_text_b }
 ,{ "describes" }
 ,{ "the" }
 ,{ "field" }
 ,{ "name" }
 ,{ "and" }
 ,{ "type_node" , & fmt_text_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "field" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b42 = { {
 { "These" }
 ,{ "entities" }
 ,{ "are" }
 ,{ "used" }
 ,{ "to" }
 ,{ "represent" }
 ,{ "a" }
 ,{ "type" }
 ,{ "list." }
} , & fmt_text , & align_text } ;

Text b43 = { {
 { "Map" }
} , & fmt_h2 , & align_h2 } ;

Text b44 = { {
 { "The" }
 ,{ "best" }
 ,{ "way" }
 ,{ "to" }
 ,{ "deal" }
 ,{ "with" }
 ,{ "a" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "processing" }
 ,{ "result" }
 ,{ "is" }
 ,{ "to" }
 ,{ "map" }
 ,{ "it" }
 ,{ "into" }
 ,{ "a" }
 ,{ "block" }
 ,{ "of" }
 ,{ "memory." }
 ,{ "The" }
 ,{ "class" }
 ,{ "Map" , & fmt_text_b }
 ,{ "is" }
 ,{ "to" }
 ,{ "do" }
 ,{ "it." }
} , & fmt_text , & align_text } ;

Text b45 = { {
 { "You" }
 ,{ "create" }
 ,{ "an" }
 ,{ "object" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "Map" , & fmt_text_b }
 ,{ "," }
 ,{ "providing" }
 ,{ "the" }
 ,{ "EngineResult" , & fmt_text_b }
 ,{ "as" }
 ,{ "the" }
 ,{ "argument." }
 ,{ "Then" }
 ,{ "you" }
 ,{ "have" }
 ,{ "to" }
 ,{ "allocate" }
 ,{ "an" }
 ,{ "aligned" }
 ,{ "block" }
 ,{ "of" }
 ,{ "memory" }
 ,{ "of" }
 ,{ "the" }
 ,{ "length" }
 ,{ "getLen()" , & fmt_text_b }
 ,{ "." }
 ,{ "Once" }
 ,{ "it's" }
 ,{ "done," }
 ,{ "use" }
 ,{ "the" }
 ,{ "overloaded" }
 ,{ "operator" , & fmt_text_b }
 ,{ "()" , & fmt_text_b }
 ,{ "to" }
 ,{ "map" }
 ,{ "data" }
 ,{ "into" }
 ,{ "this" }
 ,{ "memory" }
 ,{ "block." }
 ,{ "You" }
 ,{ "may" }
 ,{ "destroy" }
 ,{ "the" }
 ,{ "Map" , & fmt_text_b }
 ,{ "object" }
 ,{ "and" }
 ,{ "the" }
 ,{ "Engine" , & fmt_text_b }
 ,{ "object" }
 ,{ "at" }
 ,{ "this" }
 ,{ "point" }
 ,{ "and" }
 ,{ "keep" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block" }
 ,{ "as" }
 ,{ "long" }
 ,{ "as" }
 ,{ "required." }
 ,{ "To" }
 ,{ "find" }
 ,{ "a" }
 ,{ "particular" }
 ,{ "constant" }
 ,{ "you" }
 ,{ "can" }
 ,{ "use" }
 ,{ "the" }
 ,{ "method" }
 ,{ "findConst()" , & fmt_text_b }
 ,{ "with" }
 ,{ "the" }
 ,{ "constant" }
 ,{ "name" }
 ,{ "and" }
 ,{ "type," }
 ,{ "encoded" }
 ,{ "using" }
 ,{ "the" }
 ,{ "class" }
 ,{ "TypeDesc" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "such" }
 ,{ "constant" }
 ,{ "or" }
 ,{ "types" }
 ,{ "mismatch" }
 ,{ "then" }
 ,{ "null" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "Otherwise" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "mapped" }
 ,{ "value" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b46 = { {
 { "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "simple" }
 ,{ "helper" }
 ,{ "class" }
 ,{ "MapBase" , & fmt_text_b }
 ,{ "to" }
 ,{ "help" }
 ,{ "with" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "allocation" }
 ,{ "for" }
 ,{ "a" }
 ,{ "Map" , & fmt_text_b }
 ,{ "object" }
 ,{ "(the" }
 ,{ "actual" }
 ,{ "implementation" }
 ,{ "is" }
 ,{ "slightly" }
 ,{ "different):" }
} , & fmt_text , & align_text } ;

Text b47 = { {
 { "TypeDesc" , & fmt_text_b }
 ,{ "," }
 ,{ "in" }
 ,{ "fact," }
 ,{ "is" }
 ,{ "a" }
 ,{ "base" }
 ,{ "class" }
 ,{ "for" }
 ,{ "the" }
 ,{ "family" }
 ,{ "of" }
 ,{ "derived" }
 ,{ "classes," }
 ,{ "designed" }
 ,{ "to" }
 ,{ "represent" }
 ,{ "different" }
 ,{ "type" }
 ,{ "classes." }
 ,{ "The" }
 ,{ "field" }
 ,{ "tag" , & fmt_text_b }
 ,{ "has" }
 ,{ "a" }
 ,{ "describing" }
 ,{ "type" }
 ,{ "value," }
 ,{ "and" }
 ,{ "derived" }
 ,{ "classes" }
 ,{ "has" }
 ,{ "additional" }
 ,{ "fields" }
 ,{ "with" }
 ,{ "extra" }
 ,{ "information" }
 ,{ "if" }
 ,{ "required." }
} , & fmt_text , & align_text } ;

Text b48 = { {
 { "This" }
 ,{ "class" }
 ,{ "is" }
 ,{ "to" }
 ,{ "represent" }
 ,{ "basic" }
 ,{ "types." }
 ,{ "You" }
 ,{ "provide" }
 ,{ "in" }
 ,{ "constructor" }
 ,{ "argument" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "type" }
 ,{ "tag." }
} , & fmt_text , & align_text } ;

Text b49 = { {
 { "This" }
 ,{ "class" }
 ,{ "represents" }
 ,{ "single" }
 ,{ "type" }
 ,{ "pointers." }
 ,{ "You" }
 ,{ "provide" }
 ,{ "in" }
 ,{ "constructor" }
 ,{ "argument" }
 ,{ "the" }
 ,{ "type" }
 ,{ "descriptor." }
} , & fmt_text , & align_text } ;

Text b50 = { {
 { "This" }
 ,{ "class" }
 ,{ "represents" }
 ,{ "polymorphic" }
 ,{ "pointer" }
 ,{ "types." }
 ,{ "You" }
 ,{ "provide" }
 ,{ "in" }
 ,{ "constructor" }
 ,{ "arguments" }
 ,{ "a" }
 ,{ "list" }
 ,{ "of" }
 ,{ "type" }
 ,{ "descriptors." }
 ,{ "TypeCount" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "number" }
 ,{ "of" }
 ,{ "types." }
} , & fmt_text , & align_text } ;

Text b51 = { {
 { "This" }
 ,{ "class" }
 ,{ "represents" }
 ,{ "array" }
 ,{ "types" }
 ,{ "without" }
 ,{ "length." }
 ,{ "You" }
 ,{ "provide" }
 ,{ "in" }
 ,{ "constructor" }
 ,{ "argument" }
 ,{ "the" }
 ,{ "element" }
 ,{ "type" }
 ,{ "descriptor." }
} , & fmt_text , & align_text } ;

Text b52 = { {
 { "This" }
 ,{ "class" }
 ,{ "represents" }
 ,{ "array" }
 ,{ "types" }
 ,{ "with" }
 ,{ "a" }
 ,{ "given" }
 ,{ "length." }
 ,{ "You" }
 ,{ "provide" }
 ,{ "in" }
 ,{ "constructor" }
 ,{ "arguments" }
 ,{ "the" }
 ,{ "element" }
 ,{ "type" }
 ,{ "descriptor" }
 ,{ "and" }
 ,{ "the" }
 ,{ "array" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b53 = { {
 { "This" }
 ,{ "class" }
 ,{ "represents" }
 ,{ "array" }
 ,{ "types" }
 ,{ "with" }
 ,{ "a" }
 ,{ "given" }
 ,{ "length." }
 ,{ "You" }
 ,{ "provide" }
 ,{ "in" }
 ,{ "constructor" }
 ,{ "argument" }
 ,{ "the" }
 ,{ "element" }
 ,{ "type" }
 ,{ "descriptor." }
 ,{ "But" }
 ,{ "the" }
 ,{ "actual" }
 ,{ "array" }
 ,{ "length" }
 ,{ "is" }
 ,{ "filled" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "findConst()" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "descriptor" }
 ,{ "must" }
 ,{ "participate" }
 ,{ "in" }
 ,{ "findConst()" , & fmt_text_b }
 ,{ "directly" }
 ,{ "or" }
 ,{ "indirectly" }
 ,{ "to" }
 ,{ "be" }
 ,{ "used" }
 ,{ "later." }
} , & fmt_text , & align_text } ;

Text b54 = { {
 { "This" }
 ,{ "class" }
 ,{ "represents" }
 ,{ "structure" }
 ,{ "types." }
 ,{ "You" }
 ,{ "provide" }
 ,{ "in" }
 ,{ "constructor" }
 ,{ "arguments" }
 ,{ "a" }
 ,{ "list" }
 ,{ "of" }
 ,{ "field" }
 ,{ "type" }
 ,{ "descriptors." }
 ,{ "FieldCount" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "number" }
 ,{ "of" }
 ,{ "fields." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "some" }
 ,{ "internal" }
 ,{ "fields," }
 ,{ "these" }
 ,{ "fields" }
 ,{ "are" }
 ,{ "filled" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "findConst()" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "descriptor" }
 ,{ "must" }
 ,{ "participate" }
 ,{ "in" }
 ,{ "findConst()" , & fmt_text_b }
 ,{ "directly" }
 ,{ "or" }
 ,{ "indirectly" }
 ,{ "to" }
 ,{ "be" }
 ,{ "used" }
 ,{ "later." }
} , & fmt_text , & align_text } ;

Text b55 = { {
 { "DataPtr" }
} , & fmt_h3 , & align_h3 } ;

Text b56 = { {
 { "DataPtr" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "helper" }
 ,{ "class." }
 ,{ "It" }
 ,{ "is" }
 ,{ "a" }
 ,{ "\"universal" }
 ,{ "pointer\"" }
 ,{ "class." }
 ,{ "You" }
 ,{ "may" }
 ,{ "initialize" }
 ,{ "an" }
 ,{ "object" }
 ,{ "of" }
 ,{ "this" }
 ,{ "type" }
 ,{ "by" }
 ,{ "the" }
 ,{ "value," }
 ,{ "returned" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "findConst()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b57 = { {
 { "Then" }
 ,{ "you" }
 ,{ "may" }
 ,{ "use" }
 ,{ "this" }
 ,{ "object" }
 ,{ "to" }
 ,{ "get" }
 ,{ "the" }
 ,{ "constant" }
 ,{ "value." }
 ,{ "Use" }
 ,{ "the" }
 ,{ "operator" , & fmt_text_b }
 ,{ "*" , & fmt_text_b }
 ,{ "and" }
 ,{ "assign" }
 ,{ "the" }
 ,{ "result" }
 ,{ "to" }
 ,{ "the" }
 ,{ "variable" }
 ,{ "of" }
 ,{ "the" }
 ,{ "proper" }
 ,{ "type." }
 ,{ "You" }
 ,{ "may" }
 ,{ "find" }
 ,{ "the" }
 ,{ "proper" }
 ,{ "type" }
 ,{ "in" }
 ,{ "the" }
 ,{ "TypeTag" , & fmt_text_b }
 ,{ "definition" }
 ,{ "above." }
} , & fmt_text , & align_text } ;

Text b58 = { {
 { "You" }
 ,{ "cannot" }
 ,{ "use" }
 ,{ "the" }
 ,{ "operator" , & fmt_text_b }
 ,{ "*" , & fmt_text_b }
 ,{ "," }
 ,{ "however," }
 ,{ "if" }
 ,{ "the" }
 ,{ "constant" }
 ,{ "type" }
 ,{ "is" }
 ,{ "a" }
 ,{ "structure" }
 ,{ "or" }
 ,{ "an" }
 ,{ "array" }
 ,{ "with" }
 ,{ "length." }
 ,{ "For" }
 ,{ "structure" }
 ,{ "types" }
 ,{ "you" }
 ,{ "may" }
 ,{ "use" }
 ,{ "the" }
 ,{ "method" }
 ,{ "select()" , & fmt_text_b }
 ,{ "to" }
 ,{ "create" }
 ,{ "a" }
 ,{ "DataPtr" , & fmt_text_b }
 ,{ "to" }
 ,{ "the" }
 ,{ "desired" }
 ,{ "field." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "structure" }
 ,{ "type" }
 ,{ "descriptor," }
 ,{ "the" }
 ,{ "second" }
 ,{ "is" }
 ,{ "the" }
 ,{ "zero-based" }
 ,{ "field" }
 ,{ "index." }
 ,{ "The" }
 ,{ "descriptor" }
 ,{ "contains" }
 ,{ "inside" }
 ,{ "some" }
 ,{ "internal" }
 ,{ "values," }
 ,{ "filled" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "findConst()" , & fmt_text_b }
 ,{ "to" }
 ,{ "locate" }
 ,{ "a" }
 ,{ "particular" }
 ,{ "field." }
} , & fmt_text , & align_text } ;

Text b59 = { {
 { "If" }
 ,{ "the" }
 ,{ "constant" }
 ,{ "type" }
 ,{ "is" }
 ,{ "an" }
 ,{ "array" }
 ,{ "without" }
 ,{ "length," }
 ,{ "you" }
 ,{ "can" }
 ,{ "cast" }
 ,{ "to" }
 ,{ "the" }
 ,{ "type" }
 ,{ "ArrayPtr" , & fmt_text_b }
 ,{ "," }
 ,{ "but" }
 ,{ "you" }
 ,{ "can" }
 ,{ "also" }
 ,{ "use" }
 ,{ "the" }
 ,{ "type" }
 ,{ "PtrLen<T>" , & fmt_text_b }
 ,{ "," }
 ,{ "where" }
 ,{ "the" }
 ,{ "type" }
 ,{ "T" }
 ,{ "corresponds" }
 ,{ "to" }
 ,{ "the" }
 ,{ "element" }
 ,{ "type." }
 ,{ "Again," }
 ,{ "you" }
 ,{ "cannot" }
 ,{ "do" }
 ,{ "it," }
 ,{ "if" }
 ,{ "the" }
 ,{ "element" }
 ,{ "type" }
 ,{ "is" }
 ,{ "a" }
 ,{ "structure" }
 ,{ "or" }
 ,{ "an" }
 ,{ "array" }
 ,{ "with" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b60 = { {
 { "This" }
 ,{ "structure" }
 ,{ "holds" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "first" }
 ,{ "element" }
 ,{ "of" }
 ,{ "the" }
 ,{ "array" }
 ,{ "and" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "the" }
 ,{ "array" }
 ,{ "elements." }
 ,{ "You" }
 ,{ "may" }
 ,{ "initialize" }
 ,{ "an" }
 ,{ "object" }
 ,{ "of" }
 ,{ "type" }
 ,{ "DataPtr" , & fmt_text_b }
 ,{ "from" }
 ,{ "this" }
 ,{ "pointer." }
} , & fmt_text , & align_text } ;

Text b61 = { {
 { "If" }
 ,{ "a" }
 ,{ "DataPtr" , & fmt_text_b }
 ,{ "object" }
 ,{ "corresponds" }
 ,{ "to" }
 ,{ "an" }
 ,{ "array" }
 ,{ "with" }
 ,{ "length," }
 ,{ "you" }
 ,{ "may" }
 ,{ "use" }
 ,{ "the" }
 ,{ "method" }
 ,{ "range()" , & fmt_text_b }
 ,{ "to" }
 ,{ "build" }
 ,{ "a" }
 ,{ "PtrLen<T>" , & fmt_text_b }
 ,{ "object" }
 ,{ "to" }
 ,{ "access" }
 ,{ "array" }
 ,{ "elements." }
 ,{ "Just" }
 ,{ "cast" }
 ,{ "the" }
 ,{ "return" }
 ,{ "value" }
 ,{ "to" }
 ,{ "the" }
 ,{ "proper" }
 ,{ "range" }
 ,{ "type." }
 ,{ "The" }
 ,{ "element" }
 ,{ "type" }
 ,{ "cannot" }
 ,{ "be" }
 ,{ "a" }
 ,{ "structure" }
 ,{ "or" }
 ,{ "array" }
 ,{ "with" }
 ,{ "length" }
 ,{ "in" }
 ,{ "this" }
 ,{ "case." }
} , & fmt_text , & align_text } ;

Text b62 = { {
 { "To" }
 ,{ "deal" }
 ,{ "with" }
 ,{ "an" }
 ,{ "array" }
 ,{ "of" }
 ,{ "structures," }
 ,{ "use" }
 ,{ "the" }
 ,{ "method" }
 ,{ "elem()" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "element" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "index." }
 ,{ "You" }
 ,{ "must" }
 ,{ "provide" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "descriptor." }
} , & fmt_text , & align_text } ;

Text b63 = { {
 { "TypedDataPtr" }
} , & fmt_h3 , & align_h3 } ;

Text b64 = { {
 { "This" }
 ,{ "class" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "deal" }
 ,{ "with" }
 ,{ "polymorphic" }
 ,{ "pointers." }
 ,{ "It" }
 ,{ "inherits" }
 ,{ "the" }
 ,{ "type" }
 ,{ "DataPtr" , & fmt_text_b }
 ,{ "and" }
 ,{ "has" }
 ,{ "the" }
 ,{ "additional" }
 ,{ "field" }
 ,{ "type" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "value" }
 ,{ "of" }
 ,{ "this" }
 ,{ "field" }
 ,{ "is" }
 ,{ "a" }
 ,{ "1-based" }
 ,{ "index" }
 ,{ "of" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "type" }
 ,{ "from" }
 ,{ "the" }
 ,{ "type" }
 ,{ "list." }
 ,{ "It" }
 ,{ "is" }
 ,{ "zero" }
 ,{ "if" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "is" }
 ,{ "a" }
 ,{ "typeless" }
 ,{ "null." }
} , & fmt_text , & align_text } ;

Link link_TypedMap = { & page , { 65 } } ;

Text b65 = { {
 { "TypedMap" }
} , & fmt_h2 , & align_h2 } ;

Text b66 = { {
 { "The" }
 ,{ "most" }
 ,{ "convenient" }
 ,{ "way" }
 ,{ "to" }
 ,{ "map" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "data" }
 ,{ "is" }
 ,{ "the" }
 ,{ "class" }
 ,{ "TypedMap" , & fmt_text_b }
 ,{ "." }
 ,{ "But" }
 ,{ "with" }
 ,{ "this" }
 ,{ "class" }
 ,{ "you" }
 ,{ "are" }
 ,{ "bounded" }
 ,{ "by" }
 ,{ "the" }
 ,{ "given" }
 ,{ "set" }
 ,{ "of" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "structure" }
 ,{ "types." }
 ,{ "These" }
 ,{ "type" }
 ,{ "set" }
 ,{ "is" }
 ,{ "represented" }
 ,{ "by" }
 ,{ "the" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "TypeSet" , & fmt_text_b }
 ,{ "." }
 ,{ "You" }
 ,{ "should" }
 ,{ "use" }
 ,{ "the" }
 ,{ "utility" }
 ,{ "DDLTypeSet" , & fmt_text_a , & ..#page_DDLTypeSet#link }
 ,{ "to" }
 ,{ "generate" }
 ,{ "the" }
 ,{ "definition" }
 ,{ "of" }
 ,{ "this" }
 ,{ "class" }
 ,{ "from" }
 ,{ "the" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "source." }
} , & fmt_text , & align_text } ;

Text b67 = { {
 { "TypedMap" , & fmt_text_b }
 ,{ "class" }
 ,{ "usage" }
 ,{ "is" }
 ,{ "the" }
 ,{ "same" }
 ,{ "as" }
 ,{ "for" }
 ,{ "Map" , & fmt_text_b }
 ,{ "class." }
 ,{ "The" }
 ,{ "difference" }
 ,{ "is" }
 ,{ "you" }
 ,{ "have" }
 ,{ "two" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "get" }
 ,{ "a" }
 ,{ "particular" }
 ,{ "constant" }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Text b68 = { {
 { "findConst()" , & fmt_text_b }
 ,{ "searches" }
 ,{ "for" }
 ,{ "the" }
 ,{ "constant" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "name" }
 ,{ "and" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "type" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "it." }
 ,{ "Null" }
 ,{ "is" }
 ,{ "returned" }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "such" }
 ,{ "constant" }
 ,{ "or" }
 ,{ "it" }
 ,{ "has" }
 ,{ "a" }
 ,{ "different" }
 ,{ "type." }
 ,{ "The" }
 ,{ "type" }
 ,{ "is" }
 ,{ "specified" }
 ,{ "as" }
 ,{ "the" }
 ,{ "template" }
 ,{ "parameter." }
} , & fmt_text , & align_text } ;

Text b69 = { {
 { "takeConst()" , & fmt_text_b }
 ,{ "does" }
 ,{ "the" }
 ,{ "same," }
 ,{ "but" }
 ,{ "it" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "value" }
 ,{ "and" }
 ,{ "throw" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "on" }
 ,{ "error." }
} , & fmt_text , & align_text } ;

Text b70 = { {
 { "In" }
 ,{ "this" }
 ,{ "case" }
 ,{ "you" }
 ,{ "always" }
 ,{ "get" }
 ,{ "a" }
 ,{ "value" }
 ,{ "of" }
 ,{ "some" }
 ,{ "C++" }
 ,{ "type," }
 ,{ "compatible" }
 ,{ "with" }
 ,{ "the" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "type." }
 ,{ "These" }
 ,{ "types" }
 ,{ "are" }
 ,{ "available" }
 ,{ "from" }
 ,{ "the" }
 ,{ "ddl/DDLMapTypes.h" , & fmt_text_b }
 ,{ "include" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Text b71 = { {
 { "For" }
 ,{ "integral" }
 ,{ "types" }
 ,{ "the" }
 ,{ "compatible" }
 ,{ "type" }
 ,{ "is" }
 ,{ "an" }
 ,{ "integral" }
 ,{ "C++" }
 ,{ "type." }
 ,{ "I.e." }
 ,{ "uint8" , & fmt_text_b }
 ,{ "is" }
 ,{ "mapped" }
 ,{ "as" }
 ,{ "uint8" , & fmt_text_b }
 ,{ "etc." }
 ,{ "sint" , & fmt_text_b }
 ,{ "is" }
 ,{ "mapped" }
 ,{ "as" }
 ,{ "sint_type" , & fmt_text_b }
 ,{ "," }
 ,{ "uint" , & fmt_text_b }
 ,{ "as" }
 ,{ "uint_type" , & fmt_text_b }
 ,{ "and" }
 ,{ "ulen" , & fmt_text_b }
 ,{ "as" }
 ,{ "ulen_type" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b72 = { {
 { "ip" , & fmt_text_b }
 ,{ "is" }
 ,{ "mapped" }
 ,{ "as" }
 ,{ "uint32" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b73 = { {
 { "text" , & fmt_text_b }
 ,{ "is" }
 ,{ "mapped" }
 ,{ "as" }
 ,{ "MapText" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b74 = { {
 { "Pointers" }
 ,{ "are" }
 ,{ "mapped" }
 ,{ "as" }
 ,{ "MapPtr" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b75 = { {
 { "Polymorphic" }
 ,{ "pointers" }
 ,{ "are" }
 ,{ "mapped" }
 ,{ "as" }
 ,{ "MapPolyPtr" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b76 = { {
 { "Arrays" }
 ,{ "are" }
 ,{ "mapped" }
 ,{ "as" }
 ,{ "MapRange" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b77 = { {
 { "Finally," }
 ,{ "structure" }
 ,{ "types" }
 ,{ "are" }
 ,{ "mapped" }
 ,{ "using" }
 ,{ "C++" }
 ,{ "structure" }
 ,{ "definitions" }
 ,{ "from" }
 ,{ "the" }
 ,{ "TypeSet" , & fmt_text_b }
 ,{ "class." }
} , & fmt_text , & align_text } ;

Text b78 = { {
 { "Example" }
} , & fmt_h3 , & align_h3 } ;

Text b79 = { {
 { "Here" }
 ,{ "is" }
 ,{ "LangTypes.ddl" , & fmt_text_b }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Text b80 = { {
 { "DDLTypeSet" , & fmt_text_b }
 ,{ "generates" }
 ,{ "two" }
 ,{ "C++" }
 ,{ "header" }
 ,{ "files:" }
 ,{ "LanTypeDef.gen.h" , & fmt_text_b }
 ,{ "and" }
 ,{ "LangTypeSet.gen.h" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b81 = { {
 { "The" }
 ,{ "first" }
 ,{ "defines" }
 ,{ "C++" }
 ,{ "structure" }
 ,{ "types" }
 ,{ "and" }
 ,{ "aliases." }
} , & fmt_text , & align_text } ;

Text b82 = { {
 { "You" }
 ,{ "should" }
 ,{ "use" }
 ,{ "TypeDef" , & fmt_text_b }
 ,{ "namespace" }
 ,{ "to" }
 ,{ "refer" }
 ,{ "a" }
 ,{ "particular" }
 ,{ "structure" }
 ,{ "or" }
 ,{ "a" }
 ,{ "type" }
 ,{ "alias." }
 ,{ "Use" }
 ,{ "the" }
 ,{ "same" }
 ,{ "name," }
 ,{ "as" }
 ,{ "the" }
 ,{ "name" }
 ,{ "of" }
 ,{ "the" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "entity." }
} , & fmt_text , & align_text } ;

Text b83 = { {
 { "To" }
 ,{ "use" }
 ,{ "this" }
 ,{ "file" }
 ,{ "include" }
 ,{ "it" }
 ,{ "in" }
 ,{ "your" }
 ,{ "C++" }
 ,{ "source" }
 ,{ "code" }
 ,{ "inside" }
 ,{ "some" }
 ,{ "namespace" }
 ,{ "to" }
 ,{ "isolate" }
 ,{ "it" }
 ,{ "from" }
 ,{ "the" }
 ,{ "other" }
 ,{ "stuff." }
} , & fmt_text , & align_text } ;

Text b84 = { {
 { "Each" }
 ,{ "structure" }
 ,{ "definition" }
 ,{ "contains" }
 ,{ "the" }
 ,{ "declaration" }
 ,{ "of" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "structure" }
 ,{ "Ext" , & fmt_text_b }
 ,{ "." }
 ,{ "You" }
 ,{ "may" }
 ,{ "provide" }
 ,{ "definitions" }
 ,{ "of" }
 ,{ "these" }
 ,{ "structures" }
 ,{ "to" }
 ,{ "add" }
 ,{ "additional" }
 ,{ "functions" }
 ,{ "to" }
 ,{ "work" }
 ,{ "with" }
 ,{ "these" }
 ,{ "structures." }
} , & fmt_text , & align_text } ;

Text b85 = { {
 { "You" }
 ,{ "may" }
 ,{ "assign" }
 ,{ "some" }
 ,{ "structures" }
 ,{ "the" }
 ,{ "extra" }
 ,{ "field" }
 ,{ "ext" , & fmt_text_b }
 ,{ "." }
 ,{ "To" }
 ,{ "do" }
 ,{ "so" }
 ,{ "use" }
 ,{ "the" }
 ,{ "ext" }
 ,{ "list" }
 ,{ "of" }
 ,{ "arguments" }
 ,{ "of" }
 ,{ "the" }
 ,{ "DDLTypeSet" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b86 = { {
 { "This" }
 ,{ "extra" }
 ,{ "field" }
 ,{ "is" }
 ,{ "set" }
 ,{ "to" }
 ,{ "zero" }
 ,{ "during" }
 ,{ "the" }
 ,{ "data" }
 ,{ "mapping." }
} , & fmt_text , & align_text } ;

Text b87 = { {
 { "The" }
 ,{ "second" }
 ,{ "file" }
 ,{ "contains" }
 ,{ "a" }
 ,{ "definition" }
 ,{ "of" }
 ,{ "the" }
 ,{ "TypeSet" , & fmt_text_b }
 ,{ "class." }
} , & fmt_text , & align_text } ;

Text b88 = { {
 { "Use" }
 ,{ "this" }
 ,{ "class" }
 ,{ "as" }
 ,{ "the" }
 ,{ "template" }
 ,{ "argument" }
 ,{ "for" }
 ,{ "the" }
 ,{ "TypedMap" , & fmt_text_b }
 ,{ "class" }
 ,{ "template." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> DDLEngine" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b3 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b4 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b5 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b6 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b7 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b8 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_text , outer_text , back_text }
 ,{ & b32 , null , inner_text , outer_text , back_text }
 ,{ & b33 , null , inner_text , outer_text , back_text }
 ,{ & b34 , null , inner_text , outer_text , back_text }
 ,{ & b35 , null , inner_text , outer_text , back_text }
 ,{ & b36 , null , inner_text , outer_text , back_text }
 ,{ & b37 , null , inner_text , outer_text , back_text }
 ,{ & b38 , null , inner_text , outer_text , back_text }
 ,{ & b39 , null , inner_text , outer_text , back_text }
 ,{ & b40 , null , inner_text , outer_text , back_text }
 ,{ & b41 , null , inner_text , outer_text , back_text }
 ,{ & b42 , null , inner_text , outer_text , back_text }
 ,{ & b43 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b44 , null , inner_text , outer_text , back_text }
 ,{ & b45 , null , inner_text , outer_text , back_text }
 ,{ & b46 , null , inner_text , outer_text , back_text }
 ,{ & b47 , null , inner_text , outer_text , back_text }
 ,{ & b48 , null , inner_text , outer_text , back_text }
 ,{ & b49 , null , inner_text , outer_text , back_text }
 ,{ & b50 , null , inner_text , outer_text , back_text }
 ,{ & b51 , null , inner_text , outer_text , back_text }
 ,{ & b52 , null , inner_text , outer_text , back_text }
 ,{ & b53 , null , inner_text , outer_text , back_text }
 ,{ & b54 , null , inner_text , outer_text , back_text }
 ,{ & b55 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b56 , null , inner_text , outer_text , back_text }
 ,{ & b57 , null , inner_text , outer_text , back_text }
 ,{ & b58 , null , inner_text , outer_text , back_text }
 ,{ & b59 , null , inner_text , outer_text , back_text }
 ,{ & b60 , null , inner_text , outer_text , back_text }
 ,{ & b61 , null , inner_text , outer_text , back_text }
 ,{ & b62 , null , inner_text , outer_text , back_text }
 ,{ & b63 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b64 , null , inner_text , outer_text , back_text }
 ,{ & b65 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b66 , null , inner_text , outer_text , back_text }
 ,{ & b67 , null , inner_text , outer_text , back_text }
 ,{ & b68 , null , inner_text , outer_text , back_text }
 ,{ & b69 , null , inner_text , outer_text , back_text }
 ,{ & b70 , null , inner_text , outer_text , back_text }
 ,{ & b71 , null , inner_text , outer_text , back_text }
 ,{ & b72 , null , inner_text , outer_text , back_text }
 ,{ & b73 , null , inner_text , outer_text , back_text }
 ,{ & b74 , null , inner_text , outer_text , back_text }
 ,{ & b75 , null , inner_text , outer_text , back_text }
 ,{ & b76 , null , inner_text , outer_text , back_text }
 ,{ & b77 , null , inner_text , outer_text , back_text }
 ,{ & b78 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b79 , null , inner_text , outer_text , back_text }
 ,{ & b80 , null , inner_text , outer_text , back_text }
 ,{ & b81 , null , inner_text , outer_text , back_text }
 ,{ & b82 , null , inner_text , outer_text , back_text }
 ,{ & b83 , null , inner_text , outer_text , back_text }
 ,{ & b84 , null , inner_text , outer_text , back_text }
 ,{ & b85 , null , inner_text , outer_text , back_text }
 ,{ & b86 , null , inner_text , outer_text , back_text }
 ,{ & b87 , null , inner_text , outer_text , back_text }
 ,{ & b88 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_DDL#page , & page_DDLShow#page };

Link link = { &page } ;

}

scope page_DDLShow {

Text b0 = { {
 { "DDLShow" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "DDLShow" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "simple" }
 ,{ "utility," }
 ,{ "it" }
 ,{ "takes" }
 ,{ "a" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "file" }
 ,{ "and" }
 ,{ "prints" }
 ,{ "the" }
 ,{ "result" }
 ,{ "of" }
 ,{ "processing" }
 ,{ "it." }
} , & fmt_text , & align_text } ;

Text b2 = { {
 { "This" }
 ,{ "command" }
 ,{ "processes" }
 ,{ "each" }
 ,{ "of" }
 ,{ "given" }
 ,{ "files" }
 ,{ "and" }
 ,{ "prints" }
 ,{ "a" }
 ,{ "processing" }
 ,{ "result" }
 ,{ "to" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ ".txt" , & fmt_text_b }
 ,{ "file:" }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "You" }
 ,{ "may" }
 ,{ "use" }
 ,{ "this" }
 ,{ "utility" }
 ,{ "to" }
 ,{ "learn" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> DDLShow" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text , outer_text , back_text }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_DDLEngine#page , & page_DDLTypeSet#page };

Link link = { &page } ;

}

scope page_DDLTypeSet {

Text b0 = { {
 { "DDLTypeSet" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "DDLTypeSet" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "tool" }
 ,{ "for" }
 ,{ "generation" }
 ,{ "a" }
 ,{ "TypeSet" , & fmt_text_b }
 ,{ "class." }
 ,{ "This" }
 ,{ "class" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "map" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "data" }
 ,{ "using" }
 ,{ "the" }
 ,{ "DDL::TypedMap" , & fmt_text_a , & ..#page_DDLEngine#link_TypedMap }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b2 = { {
 { "ddl-file-name" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "name" }
 ,{ "of" }
 ,{ "a" }
 ,{ "DDL" , & fmt_text_b }
 ,{ "file," }
 ,{ "which" }
 ,{ "contains" }
 ,{ "type" }
 ,{ "definitions." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "typedef-file" , & fmt_text_b }
 ,{ "will" }
 ,{ "contain" }
 ,{ "TypeDef" , & fmt_text_b }
 ,{ "declarations." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "typeset-file" , & fmt_text_b }
 ,{ "will" }
 ,{ "contain" }
 ,{ "TypeSet" , & fmt_text_b }
 ,{ "declarations." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "ext-list" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "list" }
 ,{ "of" }
 ,{ "names." }
 ,{ "All" }
 ,{ "structures" }
 ,{ "with" }
 ,{ "these" }
 ,{ "names" }
 ,{ "will" }
 ,{ "have" }
 ,{ "the" }
 ,{ "additional" }
 ,{ "field" }
 ,{ "ext" , & fmt_text_b }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "ulen" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "field" }
 ,{ "is" }
 ,{ "set" }
 ,{ "to" }
 ,{ "zero" , & fmt_text_b }
 ,{ "during" }
 ,{ "the" }
 ,{ "data" }
 ,{ "mapping" }
 ,{ "and" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "by" }
 ,{ "applications" }
 ,{ "for" }
 ,{ "various" }
 ,{ "purposes." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "For" }
 ,{ "an" }
 ,{ "example," }
 ,{ "see" }
 ,{ "files" }
 ,{ "LangTypes.ddl" , & fmt_text_b }
 ,{ "," }
 ,{ "LangTypeDef.gen.h" , & fmt_text_b }
 ,{ "," }
 ,{ "LangTypeSet.gen.h" , & fmt_text_b }
 ,{ "in" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "CCORE_ROOT/tools/CondLangLR1" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> DDLTypeSet" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text , outer_text , back_text }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_DDLShow#page , & page_DecodeFile#page };

Link link = { &page } ;

}

scope page_DecodeFile {

Text b0 = { {
 { "DecodeFile" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/DecodeFile.h" , & fmt_text_Files_b }
 ,{ "CCore/src/DecodeFile.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "DecodeFile" }
} , & fmt_h4 , & align_h4 } ;

Text b3 = { {
 { "A" }
 ,{ "DecodeFile" , & fmt_text_b }
 ,{ "object" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "as" }
 ,{ "a" }
 ,{ "serialization" , & fmt_text_a , & ..#page_SaveLoad#link_Devices }
 ,{ "input" , & fmt_text_a , & ..#page_SaveLoad#link_Devices }
 ,{ "device" , & fmt_text_a , & ..#page_SaveLoad#link_Devices }
 ,{ "." }
 ,{ "It" }
 ,{ "gets" }
 ,{ "data" }
 ,{ "bytes" }
 ,{ "from" }
 ,{ "the" }
 ,{ "input" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Defalut" }
 ,{ "constructor" }
 ,{ "creats" }
 ,{ "an" }
 ,{ "object" }
 ,{ "in" }
 ,{ "the" }
 ,{ "closed" }
 ,{ "state." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "To" }
 ,{ "create" }
 ,{ "an" }
 ,{ "opened" }
 ,{ "object" }
 ,{ "use" }
 ,{ "the" }
 ,{ "constructor" }
 ,{ "with" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "—" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "Destructor" }
 ,{ "closes" }
 ,{ "an" }
 ,{ "opened" }
 ,{ "object." }
 ,{ "Errors" }
 ,{ "are" }
 ,{ "reported." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "isOpened()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "opened," }
 ,{ "and" }
 ,{ "false" , & fmt_text_b }
 ,{ "otherwise." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "open()" , & fmt_text_b }
 ,{ "opens" }
 ,{ "a" }
 ,{ "closed" }
 ,{ "object" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "file" }
 ,{ "name." }
 ,{ "In" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "close()" , & fmt_text_b }
 ,{ "closes" }
 ,{ "an" }
 ,{ "opened" }
 ,{ "object." }
 ,{ "In" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error" }
 ,{ "and" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "soft_close()" , & fmt_text_b }
 ,{ "does" }
 ,{ "not" }
 ,{ "throw," }
 ,{ "it" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "group" }
 ,{ "of" }
 ,{ "errors" }
 ,{ "using" }
 ,{ "the" }
 ,{ "FileMultiError" , & fmt_text_a , & ..#page_Files#link }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "To" }
 ,{ "read" }
 ,{ "the" }
 ,{ "file" }
 ,{ "contetnt" }
 ,{ "you" }
 ,{ "can" }
 ,{ "use" }
 ,{ "serialization" }
 ,{ "methods," }
 ,{ "but" }
 ,{ "you" }
 ,{ "can" }
 ,{ "also" }
 ,{ "use" }
 ,{ "raw" }
 ,{ "input" }
 ,{ "methods:" }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "more()" , & fmt_text_b }
 ,{ "retuns" }
 ,{ "true" , & fmt_text_b }
 ,{ "iff" }
 ,{ "there" }
 ,{ "is" }
 ,{ "a" }
 ,{ "next" }
 ,{ "data" }
 ,{ "chunk." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "pump()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "next" }
 ,{ "data" }
 ,{ "chunk." }
 ,{ "This" }
 ,{ "range" }
 ,{ "is" }
 ,{ "valid" }
 ,{ "until" }
 ,{ "a" }
 ,{ "next" }
 ,{ "object" }
 ,{ "method" }
 ,{ "call." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "DecodeBinFile" }
} , & fmt_h4 , & align_h4 } ;

Text b15 = { {
 { "DecodeBinFile" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "similar" }
 ,{ "class," }
 ,{ "but" }
 ,{ "it" }
 ,{ "uses" }
 ,{ "BinFileToRead" , & fmt_text_a , & ..#page_BinFileToRead#link }
 ,{ "to" }
 ,{ "read" }
 ,{ "data" }
 ,{ "from" }
 ,{ "the" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> DecodeFile" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b15 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_DDLTypeSet#page , & page_DefaultFileDevice#page };

Link link = { &page } ;

}

scope page_DefaultFileDevice {

Text b0 = { {
 { "(XCore)" }
 ,{ "DefaultFileDevice" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/DefaultFileDevice.h" , & fmt_text_Files_b }
 ,{ "CCore/src/DefaultFileDevice.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "XCore" , & fmt_text_b }
 ,{ "has" }
 ,{ "a" }
 ,{ "global" }
 ,{ "default" }
 ,{ "file" }
 ,{ "device" }
 ,{ "name." }
 ,{ "By" }
 ,{ "default," }
 ,{ "it" }
 ,{ "is" }
 ,{ "\"host\"" , & fmt_text_b }
 ,{ "." }
 ,{ "You" }
 ,{ "can" }
 ,{ "get" }
 ,{ "or" }
 ,{ "set" }
 ,{ "this" }
 ,{ "name" }
 ,{ "by" }
 ,{ "the" }
 ,{ "following" }
 ,{ "functions:" }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "The" }
 ,{ "first" }
 ,{ "function" }
 ,{ "sets" }
 ,{ "the" }
 ,{ "name." }
 ,{ "The" }
 ,{ "name" }
 ,{ "length" }
 ,{ "must" }
 ,{ "not" }
 ,{ "exceed" }
 ,{ "MaxPathLen" , & fmt_text_b }
 ,{ "," }
 ,{ "otherwise" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "The" }
 ,{ "second" }
 ,{ "function" }
 ,{ "makes" }
 ,{ "a" }
 ,{ "copy" }
 ,{ "of" }
 ,{ "the" }
 ,{ "name" }
 ,{ "in" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "buffer." }
 ,{ "The" }
 ,{ "buffer" }
 ,{ "length" }
 ,{ "must" }
 ,{ "be" }
 ,{ "MaxPathLen" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "name" }
 ,{ "length" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "Both" }
 ,{ "functions" }
 ,{ "are" }
 ,{ "thread-safe." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "The" }
 ,{ "following" }
 ,{ "helper" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "simplify" }
 ,{ "the" }
 ,{ "name" }
 ,{ "extraction." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> (XCore) DefaultFileDevice" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_DecodeFile#page , & page_DefaultTimeout#page };

Link link = { &page } ;

}

scope page_DefaultTimeout {

Text b0 = { {
 { "DefaultTimeout" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/gadget/DefaultTimeout.h" , & fmt_text_Files_b }
 ,{ "CCore/src/gadget/DefaultTimeout.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Defines" }
 ,{ "DefaultTimeout" , & fmt_text_b }
 ,{ "equals" }
 ,{ "10" }
 ,{ "seconds." }
 ,{ "See" }
 ,{ "MSec" , & fmt_text_a , & ..#page_MSec#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> DefaultTimeout" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_DefaultFileDevice#page , & page_DeferCall#page };

Link link = { &page } ;

}

scope page_DeferCall {

Text b0 = { {
 { "DeferCalls" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/DeferCall.h" , & fmt_text_Files_b }
 ,{ "CCore/src/DeferCall.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "DeferCall" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "engine." }
 ,{ "It" }
 ,{ "allows" }
 ,{ "record" }
 ,{ "actions" }
 ,{ "and" }
 ,{ "execute" }
 ,{ "them" }
 ,{ "in" }
 ,{ "a" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "loop." }
 ,{ "This" }
 ,{ "technology" }
 ,{ "is" }
 ,{ "similar" }
 ,{ "to" }
 ,{ "the" }
 ,{ "message" }
 ,{ "loop" }
 ,{ "processing," }
 ,{ "known" }
 ,{ "in" }
 ,{ "the" }
 ,{ "GUI" }
 ,{ "application" }
 ,{ "development," }
 ,{ "but" }
 ,{ "is" }
 ,{ "not" }
 ,{ "restricted" }
 ,{ "to" }
 ,{ "a" }
 ,{ "predefined" }
 ,{ "set" }
 ,{ "of" }
 ,{ "messages." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "DeferCall" , & fmt_text_b }
 ,{ "is" }
 ,{ "essentially" }
 ,{ "single-threaded." }
 ,{ "You" }
 ,{ "may" }
 ,{ "run" }
 ,{ "several" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "loops" }
 ,{ "on" }
 ,{ "one" }
 ,{ "per" }
 ,{ "thread" }
 ,{ "basis." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "To" }
 ,{ "run" }
 ,{ "a" }
 ,{ "DeferCall" , & fmt_text_b }
 ,{ "loop," }
 ,{ "you" }
 ,{ "have" }
 ,{ "to" }
 ,{ "derive" }
 ,{ "a" }
 ,{ "class" }
 ,{ "from" }
 ,{ "the" }
 ,{ "DeferCallQueue" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "forward()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "when" }
 ,{ "the" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "queue" }
 ,{ "is" }
 ,{ "empty." }
 ,{ "This" }
 ,{ "method" }
 ,{ "must" }
 ,{ "generate" }
 ,{ "new" }
 ,{ "defer" }
 ,{ "calls" }
 ,{ "or" }
 ,{ "sleep" }
 ,{ "within" }
 ,{ "the" }
 ,{ "given" }
 ,{ "time_scope" , & fmt_text_b }
 ,{ "period." }
 ,{ "forward()" , & fmt_text_b }
 ,{ "should" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "generate" }
 ,{ "defer" }
 ,{ "calls" }
 ,{ "to" }
 ,{ "handle" }
 ,{ "external" }
 ,{ "events," }
 ,{ "like" }
 ,{ "key" }
 ,{ "pressing" }
 ,{ "of" }
 ,{ "mouse" }
 ,{ "movement." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "Next," }
 ,{ "you" }
 ,{ "have" }
 ,{ "to" }
 ,{ "create" }
 ,{ "a" }
 ,{ "queue" }
 ,{ "object," }
 ,{ "then" }
 ,{ "prepare" }
 ,{ "other" }
 ,{ "entities" }
 ,{ "and" }
 ,{ "run" }
 ,{ "the" }
 ,{ "loop." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "To" }
 ,{ "stop" }
 ,{ "the" }
 ,{ "loop" }
 ,{ "use" }
 ,{ "the" }
 ,{ "DeferCallQueue::Stop()" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "global" }
 ,{ "methods" }
 ,{ "address" }
 ,{ "the" }
 ,{ "current" }
 ,{ "active" }
 ,{ "DeferCallQueue" , & fmt_text_b }
 ,{ "object" }
 ,{ "for" }
 ,{ "the" }
 ,{ "current" }
 ,{ "thread." }
 ,{ "Objects," }
 ,{ "involved" }
 ,{ "in" }
 ,{ "the" }
 ,{ "DeferQueue" , & fmt_text_b }
 ,{ "processing" }
 ,{ "on" }
 ,{ "this" }
 ,{ "thread," }
 ,{ "should" }
 ,{ "live" }
 ,{ "withing" }
 ,{ "the" }
 ,{ "queue" }
 ,{ "object" }
 ,{ "life-time." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "To" }
 ,{ "add" }
 ,{ "a" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "input" }
 ,{ "to" }
 ,{ "some" }
 ,{ "class" }
 ,{ "use" }
 ,{ "the" }
 ,{ "DeferInput" , & fmt_text_b }
 ,{ "class:" }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "DeferCall" }
} , & fmt_h4 , & align_h4 } ;

Text b10 = { {
 { "The" }
 ,{ "class" }
 ,{ "DeferCall" , & fmt_text_b }
 ,{ "serves" }
 ,{ "as" }
 ,{ "the" }
 ,{ "base" }
 ,{ "class" }
 ,{ "of" }
 ,{ "other" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "classes." }
 ,{ "You" }
 ,{ "don't" }
 ,{ "need" }
 ,{ "to" }
 ,{ "use" }
 ,{ "it" }
 ,{ "directly." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "call()" , & fmt_text_b }
 ,{ "is" }
 ,{ "defined" }
 ,{ "in" }
 ,{ "a" }
 ,{ "derived" }
 ,{ "class" }
 ,{ "and" }
 ,{ "is" }
 ,{ "an" }
 ,{ "actual" }
 ,{ "processing" }
 ,{ "method." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "destroy()" , & fmt_text_b }
 ,{ "is" }
 ,{ "defined" }
 ,{ "in" }
 ,{ "a" }
 ,{ "derived" }
 ,{ "class" }
 ,{ "to" }
 ,{ "properly" }
 ,{ "destroy" }
 ,{ "the" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "safeCall()" , & fmt_text_b }
 ,{ "calls" }
 ,{ "the" }
 ,{ "call()" , & fmt_text_b }
 ,{ "and" }
 ,{ "catches" }
 ,{ "and" }
 ,{ "ignores" }
 ,{ "all" }
 ,{ "exceptions." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "Other" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "used" }
 ,{ "to" }
 ,{ "allocate" }
 ,{ "and" }
 ,{ "free" }
 ,{ "memory" }
 ,{ "for" }
 ,{ "the" }
 ,{ "object" }
 ,{ "from" }
 ,{ "the" }
 ,{ "given" }
 ,{ "DeferCallQueue" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "DeferCallHeap" }
} , & fmt_h4 , & align_h4 } ;

Text b16 = { {
 { "The" }
 ,{ "class" }
 ,{ "DeferCallHeap" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "allocate" }
 ,{ "and" }
 ,{ "free" }
 ,{ "memory" }
 ,{ "for" }
 ,{ "DeferCall" , & fmt_text_b }
 ,{ "objects." }
 ,{ "An" }
 ,{ "object" }
 ,{ "of" }
 ,{ "this" }
 ,{ "class" }
 ,{ "is" }
 ,{ "used" }
 ,{ "by" }
 ,{ "a" }
 ,{ "DeferCallQueue" , & fmt_text_b }
 ,{ "object" }
 ,{ "for" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "management." }
 ,{ "You" }
 ,{ "don't" }
 ,{ "need" }
 ,{ "to" }
 ,{ "use" }
 ,{ "this" }
 ,{ "class" }
 ,{ "directly." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "The" }
 ,{ "memory" }
 ,{ "is" }
 ,{ "taken" }
 ,{ "from" }
 ,{ "a" }
 ,{ "memory" }
 ,{ "block" }
 ,{ "of" }
 ,{ "mem_len" , & fmt_text_b }
 ,{ "length." }
 ,{ "This" }
 ,{ "block" }
 ,{ "is" }
 ,{ "allocated" }
 ,{ "by" }
 ,{ "the" }
 ,{ "constructor" }
 ,{ "and" }
 ,{ "released" }
 ,{ "by" }
 ,{ "the" }
 ,{ "destructor." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "alloc()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "null," }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "memory" }
 ,{ "available." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "free()" , & fmt_text_b }
 ,{ "argument" }
 ,{ "must" }
 ,{ "not" }
 ,{ "be" }
 ,{ "null." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "GetMaxLen()" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "for" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "allocation" }
 ,{ "caching." }
 ,{ "To" }
 ,{ "speed" }
 ,{ "up" }
 ,{ "memory" }
 ,{ "operations" }
 ,{ "for" }
 ,{ "short" }
 ,{ "objects" }
 ,{ "DeferCallHeap" , & fmt_text_b }
 ,{ "maintains" }
 ,{ "a" }
 ,{ "list" }
 ,{ "of" }
 ,{ "short" }
 ,{ "memory" }
 ,{ "blocks" }
 ,{ "up" }
 ,{ "to" }
 ,{ "some" }
 ,{ "count" }
 ,{ "for" }
 ,{ "such" }
 ,{ "allocations." }
 ,{ "GetMaxLen()" , & fmt_text_b }
 ,{ "determines" }
 ,{ "the" }
 ,{ "maximum" }
 ,{ "short" }
 ,{ "allocation" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "DeferCallQueue" }
} , & fmt_h4 , & align_h4 } ;

Text b22 = { {
 { "The" }
 ,{ "class" }
 ,{ "DeferCallQueue" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "main" }
 ,{ "DeferCall" , & fmt_text_b }
 ,{ "engine" }
 ,{ "class." }
 ,{ "It" }
 ,{ "maintains" }
 ,{ "the" }
 ,{ "list" }
 ,{ "of" }
 ,{ "DeferCall" , & fmt_text_b }
 ,{ "s" }
 ,{ "and" }
 ,{ "executes" }
 ,{ "them" }
 ,{ "in" }
 ,{ "a" }
 ,{ "loop." }
 ,{ "The" }
 ,{ "object" }
 ,{ "of" }
 ,{ "this" }
 ,{ "type" }
 ,{ "is" }
 ,{ "registered" }
 ,{ "per" }
 ,{ "thread" }
 ,{ "as" }
 ,{ "the" }
 ,{ "current" }
 ,{ "thread" }
 ,{ "DeferCall" , & fmt_text_b }
 ,{ "loop" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "forward()" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "defined" }
 ,{ "in" }
 ,{ "a" }
 ,{ "derived" }
 ,{ "class." }
 ,{ "This" }
 ,{ "method" }
 ,{ "is" }
 ,{ "called" }
 ,{ "when" }
 ,{ "the" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "queue" }
 ,{ "is" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "activate()" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "called" }
 ,{ "in" }
 ,{ "a" }
 ,{ "derived" }
 ,{ "class" }
 ,{ "constructor" }
 ,{ "to" }
 ,{ "register" }
 ,{ "the" }
 ,{ "object" }
 ,{ "with" }
 ,{ "the" }
 ,{ "current" }
 ,{ "thread." }
 ,{ "If" }
 ,{ "some" }
 ,{ "object" }
 ,{ "is" }
 ,{ "already" }
 ,{ "registered," }
 ,{ "an" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "deactivate()" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "called" }
 ,{ "in" }
 ,{ "a" }
 ,{ "derived" }
 ,{ "class" }
 ,{ "destructor" }
 ,{ "to" }
 ,{ "unregister" }
 ,{ "the" }
 ,{ "object" }
 ,{ "with" }
 ,{ "the" }
 ,{ "current" }
 ,{ "thread." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "DefaultMemLen" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "default" }
 ,{ "heap" }
 ,{ "capacity." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "The" }
 ,{ "argument" }
 ,{ "tick_period" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "tick" }
 ,{ "period," }
 ,{ "defaulted" }
 ,{ "to" }
 ,{ "the" }
 ,{ "DefaultTickPeriod" , & fmt_text_b }
 ,{ "," }
 ,{ "equals" }
 ,{ "40" }
 ,{ "milliseconds," }
 ,{ "that" }
 ,{ "gives" }
 ,{ "25" }
 ,{ "Hz" }
 ,{ "tick" }
 ,{ "frequency." }
 ,{ "The" }
 ,{ "tick" }
 ,{ "period" }
 ,{ "is" }
 ,{ "maintained" }
 ,{ "as" }
 ,{ "accurate," }
 ,{ "as" }
 ,{ "possible." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "The" }
 ,{ "argument" }
 ,{ "mem_len" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "heap" }
 ,{ "capacity." }
 ,{ "All" }
 ,{ "DeferCall" , & fmt_text_b }
 ,{ "objects" }
 ,{ "for" }
 ,{ "this" }
 ,{ "loop" }
 ,{ "are" }
 ,{ "created" }
 ,{ "in" }
 ,{ "the" }
 ,{ "heap" }
 ,{ "of" }
 ,{ "this" }
 ,{ "capacity." }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "The" }
 ,{ "following" }
 ,{ "four" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "heap" }
 ,{ "methods." }
 ,{ "You" }
 ,{ "don't" }
 ,{ "need" }
 ,{ "to" }
 ,{ "use" }
 ,{ "these" }
 ,{ "methods" }
 ,{ "directly." }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "try_alloc()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "null," }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "memory." }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "alloc()" , & fmt_text_b }
 ,{ "throws" }
 ,{ "an" }
 ,{ "exception," }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "memory." }
 ,{ "It" }
 ,{ "also" }
 ,{ "stops" , & fmt_text_Alert }
 ,{ "the" , & fmt_text_Alert }
 ,{ "defer" , & fmt_text_Alert }
 ,{ "call" , & fmt_text_Alert }
 ,{ "loop" , & fmt_text_Alert }
 ,{ "in" }
 ,{ "this" }
 ,{ "case." }
} , & fmt_text , & align_text } ;

Text b32 = { {
 { "free()" , & fmt_text_b }
 ,{ "releases" }
 ,{ "the" }
 ,{ "memory," }
 ,{ "the" }
 ,{ "argument" }
 ,{ "must" }
 ,{ "not" }
 ,{ "be" }
 ,{ "null." }
} , & fmt_text , & align_text } ;

Text b33 = { {
 { "destroy()" , & fmt_text_b }
 ,{ "destroys" }
 ,{ "a" }
 ,{ "DeferCall" , & fmt_text_b }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b34 = { {
 { "The" }
 ,{ "following" }
 ,{ "four" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "queue" }
 ,{ "methods." }
 ,{ "You" }
 ,{ "don't" }
 ,{ "need" }
 ,{ "to" }
 ,{ "use" }
 ,{ "these" }
 ,{ "methods" }
 ,{ "directly." }
 ,{ "Arguments" }
 ,{ "must" }
 ,{ "not" }
 ,{ "be" }
 ,{ "null." }
} , & fmt_text , & align_text } ;

Text b35 = { {
 { "post()" , & fmt_text_b }
 ,{ "puts" }
 ,{ "the" }
 ,{ "DeferCall" , & fmt_text_b }
 ,{ "object" }
 ,{ "in" }
 ,{ "the" }
 ,{ "queue." }
 ,{ "The" }
 ,{ "object" }
 ,{ "is" }
 ,{ "consumed." }
 ,{ "It" }
 ,{ "will" }
 ,{ "be" }
 ,{ "destroyed" }
 ,{ "after" }
 ,{ "processing" }
 ,{ "or" }
 ,{ "during" }
 ,{ "the" }
 ,{ "queue" }
 ,{ "cleanup" }
 ,{ "after" }
 ,{ "stop." }
} , & fmt_text , & align_text } ;

Text b36 = { {
 { "post_first()" , & fmt_text_b }
 ,{ "puts" }
 ,{ "the" }
 ,{ "DeferCall" , & fmt_text_b }
 ,{ "object" }
 ,{ "in" }
 ,{ "the" }
 ,{ "queue" }
 ,{ "head." }
 ,{ "The" }
 ,{ "object" }
 ,{ "is" }
 ,{ "consumed." }
 ,{ "It" }
 ,{ "will" }
 ,{ "be" }
 ,{ "destroyed" }
 ,{ "after" }
 ,{ "processing" }
 ,{ "or" }
 ,{ "during" }
 ,{ "the" }
 ,{ "queue" }
 ,{ "cleanup" }
 ,{ "after" }
 ,{ "stop." }
} , & fmt_text , & align_text } ;

Text b37 = { {
 { "start_tick()" , & fmt_text_b }
 ,{ "starts" }
 ,{ "ticks" }
 ,{ "on" }
 ,{ "the" }
 ,{ "object." }
 ,{ "The" }
 ,{ "object" }
 ,{ "is" }
 ,{ "not" }
 ,{ "consumed." }
 ,{ "It" }
 ,{ "retains" }
 ,{ "the" }
 ,{ "owner." }
 ,{ "Defer" }
 ,{ "tick" }
 ,{ "is" }
 ,{ "a" }
 ,{ "periodic" }
 ,{ "event," }
 ,{ "during" }
 ,{ "this" }
 ,{ "event" }
 ,{ "all" }
 ,{ "specified" }
 ,{ "defer" }
 ,{ "calls" }
 ,{ "are" }
 ,{ "called" }
 ,{ "to" }
 ,{ "do" }
 ,{ "a" }
 ,{ "periodic" }
 ,{ "processing." }
} , & fmt_text , & align_text } ;

Text b38 = { {
 { "stop_tick()" , & fmt_text_b }
 ,{ "stops" }
 ,{ "ticks" }
 ,{ "on" }
 ,{ "the" }
 ,{ "object." }
 ,{ "The" }
 ,{ "object" }
 ,{ "can" }
 ,{ "be" }
 ,{ "destroyed" }
 ,{ "now." }
} , & fmt_text , & align_text } ;

Text b39 = { {
 { "The" }
 ,{ "next" }
 ,{ "two" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "loop" }
 ,{ "methods." }
 ,{ "You" }
 ,{ "don't" }
 ,{ "need" }
 ,{ "to" }
 ,{ "use" }
 ,{ "these" }
 ,{ "methods" }
 ,{ "directly." }
} , & fmt_text , & align_text } ;

Text b40 = { {
 { "loop()" , & fmt_text_b }
 ,{ "starts" }
 ,{ "the" }
 ,{ "defer" }
 ,{ "calls" }
 ,{ "loop." }
} , & fmt_text , & align_text } ;

Text b41 = { {
 { "stop()" , & fmt_text_b }
 ,{ "stops" }
 ,{ "the" }
 ,{ "loop." }
} , & fmt_text , & align_text } ;

Text b42 = { {
 { "Finally," }
 ,{ "four" }
 ,{ "global" }
 ,{ "methods." }
} , & fmt_text , & align_text } ;

Text b43 = { {
 { "Get()" , & fmt_text_b }
 ,{ "gets" }
 ,{ "the" }
 ,{ "active" }
 ,{ "DeferCallQueue" , & fmt_text_b }
 ,{ "object." }
 ,{ "An" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown," }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "one." }
} , & fmt_text , & align_text } ;

Text b44 = { {
 { "IsActive()" , & fmt_text_b }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "iff" }
 ,{ "there" }
 ,{ "is" }
 ,{ "an" }
 ,{ "active" }
 ,{ "DeferCallQueue" , & fmt_text_b }
 ,{ "for" }
 ,{ "the" }
 ,{ "current" }
 ,{ "thread." }
} , & fmt_text , & align_text } ;

Text b45 = { {
 { "Loop()" , & fmt_text_b }
 ,{ "starts" }
 ,{ "the" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "loop." }
} , & fmt_text , & align_text } ;

Text b46 = { {
 { "Stop()" , & fmt_text_b }
 ,{ "stops" }
 ,{ "the" }
 ,{ "loop." }
} , & fmt_text , & align_text } ;

Text b47 = { {
 { "DeferCouple" }
} , & fmt_h4 , & align_h4 } ;

Text b48 = { {
 { "The" }
 ,{ "class" }
 ,{ "DeferCouple" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "helper" }
 ,{ "class," }
 ,{ "it" }
 ,{ "stores" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "a" }
 ,{ "DeferCallQueue" , & fmt_text_b }
 ,{ "object" }
 ,{ "and" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "a" }
 ,{ "DeferCall" , & fmt_text_b }
 ,{ "object." }
 ,{ "You" }
 ,{ "don't" }
 ,{ "need" }
 ,{ "to" }
 ,{ "use" }
 ,{ "this" }
 ,{ "class" }
 ,{ "directly." }
 ,{ "If" }
 ,{ "you" }
 ,{ "desire" }
 ,{ "to" }
 ,{ "do" }
 ,{ "it," }
 ,{ "think" }
 ,{ "throw" }
 ,{ "how" }
 ,{ "its" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "working," }
 ,{ "they" }
 ,{ "have" }
 ,{ "been" }
 ,{ "designed" }
 ,{ "to" }
 ,{ "serve" }
 ,{ "a" }
 ,{ "particular" }
 ,{ "purpose." }
} , & fmt_text , & align_text } ;

Text b49 = { {
 { "Default" }
 ,{ "constructor" }
 ,{ "and" }
 ,{ "NothingType" , & fmt_text_b }
 ,{ "-constructor" }
 ,{ "creates" }
 ,{ "a" }
 ,{ "null" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b50 = { {
 { "The" }
 ,{ "second" }
 ,{ "constructor" }
 ,{ "creates" }
 ,{ "an" }
 ,{ "object" }
 ,{ "with" }
 ,{ "given" }
 ,{ "object" }
 ,{ "pointers." }
 ,{ "If" }
 ,{ "the" }
 ,{ "DeferCall" , & fmt_text_b }
 ,{ "pointer" }
 ,{ "is" }
 ,{ "null," }
 ,{ "a" }
 ,{ "null" }
 ,{ "object" }
 ,{ "is" }
 ,{ "constructed." }
} , & fmt_text , & align_text } ;

Text b51 = { {
 { "There" }
 ,{ "is" }
 ,{ "no" }
 ,{ "destructor," }
 ,{ "so" }
 ,{ "you" }
 ,{ "have" }
 ,{ "to" }
 ,{ "cleanup" }
 ,{ "the" }
 ,{ "object" }
 ,{ "manually" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "cleanup()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b52 = { {
 { "operator" , & fmt_text_b }
 ,{ "!()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "null." }
} , & fmt_text , & align_text } ;

Text b53 = { {
 { "cleanup()" , & fmt_text_b }
 ,{ "destroys" }
 ,{ "the" }
 ,{ "DeferCall" , & fmt_text_b }
 ,{ "object" }
 ,{ "and" }
 ,{ "nullifies" }
 ,{ "the" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b54 = { {
 { "Other" }
 ,{ "methods" }
 ,{ "posts" }
 ,{ "the" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "or" }
 ,{ "starts" }
 ,{ "the" }
 ,{ "defer" }
 ,{ "tick" }
 ,{ "on" }
 ,{ "it." }
} , & fmt_text , & align_text } ;

Text b55 = { {
 { "DeferTick" }
} , & fmt_h4 , & align_h4 } ;

Text b56 = { {
 { "The" }
 ,{ "class" }
 ,{ "DeferTick" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "defer" }
 ,{ "tick" }
 ,{ "controller." }
 ,{ "It" }
 ,{ "may" }
 ,{ "own" }
 ,{ "some" }
 ,{ "defer" }
 ,{ "call," }
 ,{ "given" }
 ,{ "as" }
 ,{ "a" }
 ,{ "DeferCouple" , & fmt_text_b }
 ,{ "object." }
 ,{ "If" }
 ,{ "it" }
 ,{ "owns" }
 ,{ "some" }
 ,{ "defer" }
 ,{ "call," }
 ,{ "the" }
 ,{ "defer" }
 ,{ "tick" }
 ,{ "can" }
 ,{ "be" }
 ,{ "started" }
 ,{ "on" }
 ,{ "this" }
 ,{ "defer" }
 ,{ "call." }
} , & fmt_text , & align_text } ;

Text b57 = { {
 { "Constructor" }
 ,{ "builds" }
 ,{ "the" }
 ,{ "object," }
 ,{ "owning" }
 ,{ "the" }
 ,{ "given" }
 ,{ "defer" }
 ,{ "call," }
 ,{ "provided" }
 ,{ "as" }
 ,{ "a" }
 ,{ "DeferCouple" , & fmt_text_b }
 ,{ "object." }
 ,{ "If" }
 ,{ "the" }
 ,{ "DeferCouple" , & fmt_text_b }
 ,{ "object" }
 ,{ "is" }
 ,{ "null," }
 ,{ "the" }
 ,{ "tick" }
 ,{ "object" }
 ,{ "is" }
 ,{ "null." }
} , & fmt_text , & align_text } ;

Text b58 = { {
 { "Destructor" }
 ,{ "resets" }
 ,{ "the" }
 ,{ "object." }
 ,{ "If" }
 ,{ "a" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "object" }
 ,{ "was" }
 ,{ "owned," }
 ,{ "it" }
 ,{ "is" }
 ,{ "destroyed." }
} , & fmt_text , & align_text } ;

Text b59 = { {
 { "set()" , & fmt_text_b }
 ,{ "and" }
 ,{ "operator" , & fmt_text_b }
 ,{ "=" , & fmt_text_b }
 ,{ "sets" }
 ,{ "a" }
 ,{ "new" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "object," }
 ,{ "or" }
 ,{ "null." }
 ,{ "The" }
 ,{ "previous" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "is" }
 ,{ "destroyed," }
 ,{ "if" }
 ,{ "any." }
 ,{ "If" }
 ,{ "the" }
 ,{ "defer" }
 ,{ "tick" }
 ,{ "was" }
 ,{ "started," }
 ,{ "it" }
 ,{ "remains" }
 ,{ "started" }
 ,{ "on" }
 ,{ "the" }
 ,{ "new" }
 ,{ "defer" }
 ,{ "call," }
 ,{ "unless" }
 ,{ "null" }
 ,{ "is" }
 ,{ "provided." }
 ,{ "In" }
 ,{ "the" }
 ,{ "last" }
 ,{ "case" }
 ,{ "the" }
 ,{ "tick" }
 ,{ "becomes" }
 ,{ "stopped" }
 ,{ "and" }
 ,{ "the" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b60 = { {
 { "reset()" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "same" }
 ,{ "as" }
 ,{ "set(Nothing)" , & fmt_text_b }
 ,{ "." }
 ,{ "I.e." }
 ,{ "it" }
 ,{ "destroys" }
 ,{ "the" }
 ,{ "old" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "object" }
 ,{ "and" }
 ,{ "resets" }
 ,{ "the" }
 ,{ "tick" }
 ,{ "object" }
 ,{ "to" }
 ,{ "the" }
 ,{ "null" }
 ,{ "state." }
 ,{ "The" }
 ,{ "defer" }
 ,{ "tick" }
 ,{ "is" }
 ,{ "stopped," }
 ,{ "if" }
 ,{ "it" }
 ,{ "was" }
 ,{ "running." }
 ,{ "In" }
 ,{ "the" }
 ,{ "last" }
 ,{ "case" }
 ,{ "the" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b61 = { {
 { "start()" , & fmt_text_b }
 ,{ "starts" }
 ,{ "the" }
 ,{ "defer" }
 ,{ "tick" }
 ,{ "on" }
 ,{ "the" }
 ,{ "owned" }
 ,{ "defer" }
 ,{ "call," }
 ,{ "if" }
 ,{ "any." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "defer" }
 ,{ "tick" }
 ,{ "has" }
 ,{ "been" }
 ,{ "successfully" }
 ,{ "started." }
} , & fmt_text , & align_text } ;

Text b62 = { {
 { "stop()" , & fmt_text_b }
 ,{ "stops" }
 ,{ "the" }
 ,{ "defer" }
 ,{ "tick," }
 ,{ "if" }
 ,{ "it" }
 ,{ "is" }
 ,{ "running." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "defer" }
 ,{ "tick" }
 ,{ "has" }
 ,{ "been" }
 ,{ "successfully" }
 ,{ "stopped." }
} , & fmt_text , & align_text } ;

Text b63 = { {
 { "All" }
 ,{ "four" }
 ,{ "methods" }
 ,{ "return" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "defer" }
 ,{ "tick" }
 ,{ "status" }
 ,{ "(running" }
 ,{ "or" }
 ,{ "stopped)" }
 ,{ "has" }
 ,{ "been" }
 ,{ "changed." }
} , & fmt_text , & align_text } ;

Text b64 = { {
 { "DeferInput" }
} , & fmt_h4 , & align_h4 } ;

Text b65 = { {
 { "The" }
 ,{ "class" }
 ,{ "DeferInput" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "main" }
 ,{ "\"input\"" }
 ,{ "class." }
 ,{ "It" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "build" }
 ,{ "and" }
 ,{ "use" }
 ,{ "defer" }
 ,{ "calls," }
 ,{ "bounded" }
 ,{ "with" }
 ,{ "method" }
 ,{ "calls" }
 ,{ "of" }
 ,{ "some" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b66 = { {
 { "The" }
 ,{ "constructor" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "target" }
 ,{ "object." }
 ,{ "It" }
 ,{ "should" }
 ,{ "be" }
 ,{ "non-null" }
 ,{ "(otherwise" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "useless)." }
 ,{ "The" }
 ,{ "object" }
 ,{ "life-time" }
 ,{ "must" }
 ,{ "be" }
 ,{ "greater" }
 ,{ "than" }
 ,{ "the" }
 ,{ "DeferInput" , & fmt_text_b }
 ,{ "object" }
 ,{ "life-time." }
 ,{ "Constructor" }
 ,{ "also" }
 ,{ "captures" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "current" }
 ,{ "DeferCallQueue" , & fmt_text_b }
 ,{ "object." }
 ,{ "So" }
 ,{ "the" }
 ,{ "input" }
 ,{ "object" }
 ,{ "must" }
 ,{ "be" }
 ,{ "used" }
 ,{ "withing" }
 ,{ "the" }
 ,{ "thread" }
 ,{ "has" }
 ,{ "created" }
 ,{ "the" }
 ,{ "input" }
 ,{ "object" }
 ,{ "and" }
 ,{ "after" }
 ,{ "the" }
 ,{ "thread" }
 ,{ "is" }
 ,{ "attached" }
 ,{ "with" }
 ,{ "a" }
 ,{ "DeferCallQueue" , & fmt_text_b }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b67 = { {
 { "cancel()" , & fmt_text_b }
 ,{ "deactivates" }
 ,{ "all" }
 ,{ "pending" }
 ,{ "defer" }
 ,{ "calls." }
 ,{ "They" }
 ,{ "call()" , & fmt_text_b }
 ,{ "methods" }
 ,{ "become" }
 ,{ "\"doing" }
 ,{ "nothing\"." }
} , & fmt_text , & align_text } ;

Text b68 = { {
 { "There" }
 ,{ "are" }
 ,{ "four" }
 ,{ "groups" }
 ,{ "of" }
 ,{ "methods" }
 ,{ "for" }
 ,{ "the" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "creation" }
 ,{ "and" }
 ,{ "submission." }
 ,{ "The" }
 ,{ "first" }
 ,{ "method" }
 ,{ "creates" }
 ,{ "a" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "one" }
 ,{ "as" }
 ,{ "a" }
 ,{ "DeferCouple" , & fmt_text_b }
 ,{ "object." }
 ,{ "The" }
 ,{ "second" }
 ,{ "creates" }
 ,{ "and" }
 ,{ "posts" }
 ,{ "the" }
 ,{ "defer" }
 ,{ "call." }
 ,{ "The" }
 ,{ "third" }
 ,{ "creates" }
 ,{ "and" }
 ,{ "posts" }
 ,{ "at" }
 ,{ "the" }
 ,{ "queue" }
 ,{ "head." }
} , & fmt_text , & align_text } ;

Text b69 = { {
 { "The" }
 ,{ "first" }
 ,{ "group" }
 ,{ "creates" }
 ,{ "a" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "from" }
 ,{ "an" }
 ,{ "object" }
 ,{ "method" }
 ,{ "and" }
 ,{ "a" }
 ,{ "set" }
 ,{ "of" }
 ,{ "arguments." }
 ,{ "Rememebr," }
 ,{ "the" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "copied" }
 ,{ "and" }
 ,{ "stored," }
 ,{ "so" }
 ,{ "you" }
 ,{ "must" }
 ,{ "be" }
 ,{ "caution" }
 ,{ "with" }
 ,{ "arguments" }
 ,{ "of" }
 ,{ "a" }
 ,{ "\"pointer" }
 ,{ "type\"." }
 ,{ "Also" }
 ,{ "if" }
 ,{ "the" }
 ,{ "method" }
 ,{ "is" }
 ,{ "failed" }
 ,{ "due" }
 ,{ "to" }
 ,{ "the" }
 ,{ "lack" }
 ,{ "of" }
 ,{ "memory," }
 ,{ "the" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "loop" }
 ,{ "will" }
 ,{ "be" }
 ,{ "stopped." }
 ,{ "The" }
 ,{ "method" }
 ,{ "can" }
 ,{ "also" }
 ,{ "throw" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "from" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "copying." }
 ,{ "This" }
 ,{ "situation" }
 ,{ "is" }
 ,{ "considered" }
 ,{ "as" }
 ,{ "a" }
 ,{ "bad" }
 ,{ "design," }
 ,{ "it's" }
 ,{ "better" }
 ,{ "avoid" }
 ,{ "it." }
 ,{ "Don't" }
 ,{ "use" }
 ,{ "types" }
 ,{ "with" }
 ,{ "not" }
 ,{ "efficient" }
 ,{ "copy" }
 ,{ "constructors!" }
} , & fmt_text , & align_text } ;

Text b70 = { {
 { "create" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "from" }
 ,{ "the" }
 ,{ "given" }
 ,{ "object" }
 ,{ "method" }
 ,{ "and" }
 ,{ "the" }
 ,{ "set" }
 ,{ "of" }
 ,{ "arguments." }
 ,{ "You" }
 ,{ "need" }
 ,{ "this" }
 ,{ "method" }
 ,{ "for" }
 ,{ "the" }
 ,{ "defer" }
 ,{ "tick" }
 ,{ "processing." }
} , & fmt_text , & align_text } ;

Text b71 = { {
 { "post()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "and" }
 ,{ "post" }
 ,{ "a" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "from" }
 ,{ "the" }
 ,{ "given" }
 ,{ "object" }
 ,{ "method" }
 ,{ "and" }
 ,{ "the" }
 ,{ "set" }
 ,{ "of" }
 ,{ "arguments." }
} , & fmt_text , & align_text } ;

Text b72 = { {
 { "post_first()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "and" }
 ,{ "post" }
 ,{ "at" }
 ,{ "the" }
 ,{ "head" }
 ,{ "a" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "from" }
 ,{ "the" }
 ,{ "given" }
 ,{ "object" }
 ,{ "method" }
 ,{ "and" }
 ,{ "the" }
 ,{ "set" }
 ,{ "of" }
 ,{ "arguments." }
} , & fmt_text , & align_text } ;

Text b73 = { {
 { "The" }
 ,{ "second" }
 ,{ "group" }
 ,{ "of" }
 ,{ "methods" }
 ,{ "is" }
 ,{ "try" }
 ,{ "variants." }
} , & fmt_text , & align_text } ;

Text b74 = { {
 { "try_create()" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "same" }
 ,{ "as" }
 ,{ "the" }
 ,{ "create()" , & fmt_text_b }
 ,{ "," }
 ,{ "but" }
 ,{ "does" }
 ,{ "not" }
 ,{ "throw" }
 ,{ "exception" }
 ,{ "if" }
 ,{ "no" }
 ,{ "memory." }
 ,{ "In" }
 ,{ "this" }
 ,{ "case" }
 ,{ "the" }
 ,{ "method" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "null" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b75 = { {
 { "try_post()" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "same" }
 ,{ "as" }
 ,{ "the" }
 ,{ "post()" , & fmt_text_b }
 ,{ "," }
 ,{ "but" }
 ,{ "does" }
 ,{ "not" }
 ,{ "throw" }
 ,{ "exception" }
 ,{ "if" }
 ,{ "no" }
 ,{ "memory." }
 ,{ "In" }
 ,{ "this" }
 ,{ "case" }
 ,{ "the" }
 ,{ "method" }
 ,{ "does" }
 ,{ "nothing." }
} , & fmt_text , & align_text } ;

Text b76 = { {
 { "try_post_first()" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "same" }
 ,{ "as" }
 ,{ "the" }
 ,{ "post_first()" , & fmt_text_b }
 ,{ "," }
 ,{ "but" }
 ,{ "does" }
 ,{ "not" }
 ,{ "throw" }
 ,{ "exception" }
 ,{ "if" }
 ,{ "no" }
 ,{ "memory." }
 ,{ "In" }
 ,{ "this" }
 ,{ "case" }
 ,{ "the" }
 ,{ "method" }
 ,{ "does" }
 ,{ "nothing." }
} , & fmt_text , & align_text } ;

Text b77 = { {
 { "Last" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "similar," }
 ,{ "but" }
 ,{ "create" }
 ,{ "defer" }
 ,{ "calls" }
 ,{ "not" }
 ,{ "from" }
 ,{ "object" }
 ,{ "methods," }
 ,{ "but" }
 ,{ "from" }
 ,{ "functor" }
 ,{ "initialization" }
 ,{ "objects." }
 ,{ "Each" }
 ,{ "time" }
 ,{ "the" }
 ,{ "defer" }
 ,{ "call" }
 ,{ "is" }
 ,{ "called," }
 ,{ "the" }
 ,{ "functor" }
 ,{ "is" }
 ,{ "created" }
 ,{ "from" }
 ,{ "the" }
 ,{ "initializer" }
 ,{ "and" }
 ,{ "applied" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> DeferCalls" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_text , outer_text , back_text }
 ,{ & b32 , null , inner_text , outer_text , back_text }
 ,{ & b33 , null , inner_text , outer_text , back_text }
 ,{ & b34 , null , inner_text , outer_text , back_text }
 ,{ & b35 , null , inner_text , outer_text , back_text }
 ,{ & b36 , null , inner_text , outer_text , back_text }
 ,{ & b37 , null , inner_text , outer_text , back_text }
 ,{ & b38 , null , inner_text , outer_text , back_text }
 ,{ & b39 , null , inner_text , outer_text , back_text }
 ,{ & b40 , null , inner_text , outer_text , back_text }
 ,{ & b41 , null , inner_text , outer_text , back_text }
 ,{ & b42 , null , inner_text , outer_text , back_text }
 ,{ & b43 , null , inner_text , outer_text , back_text }
 ,{ & b44 , null , inner_text , outer_text , back_text }
 ,{ & b45 , null , inner_text , outer_text , back_text }
 ,{ & b46 , null , inner_text , outer_text , back_text }
 ,{ & b47 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b48 , null , inner_text , outer_text , back_text }
 ,{ & b49 , null , inner_text , outer_text , back_text }
 ,{ & b50 , null , inner_text , outer_text , back_text }
 ,{ & b51 , null , inner_text , outer_text , back_text }
 ,{ & b52 , null , inner_text , outer_text , back_text }
 ,{ & b53 , null , inner_text , outer_text , back_text }
 ,{ & b54 , null , inner_text , outer_text , back_text }
 ,{ & b55 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b56 , null , inner_text , outer_text , back_text }
 ,{ & b57 , null , inner_text , outer_text , back_text }
 ,{ & b58 , null , inner_text , outer_text , back_text }
 ,{ & b59 , null , inner_text , outer_text , back_text }
 ,{ & b60 , null , inner_text , outer_text , back_text }
 ,{ & b61 , null , inner_text , outer_text , back_text }
 ,{ & b62 , null , inner_text , outer_text , back_text }
 ,{ & b63 , null , inner_text , outer_text , back_text }
 ,{ & b64 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b65 , null , inner_text , outer_text , back_text }
 ,{ & b66 , null , inner_text , outer_text , back_text }
 ,{ & b67 , null , inner_text , outer_text , back_text }
 ,{ & b68 , null , inner_text , outer_text , back_text }
 ,{ & b69 , null , inner_text , outer_text , back_text }
 ,{ & b70 , null , inner_text , outer_text , back_text }
 ,{ & b71 , null , inner_text , outer_text , back_text }
 ,{ & b72 , null , inner_text , outer_text , back_text }
 ,{ & b73 , null , inner_text , outer_text , back_text }
 ,{ & b74 , null , inner_text , outer_text , back_text }
 ,{ & b75 , null , inner_text , outer_text , back_text }
 ,{ & b76 , null , inner_text , outer_text , back_text }
 ,{ & b77 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_DefaultTimeout#page , & page_Deflate#page };

Link link = { &page } ;

}

scope page_Deflate {

Text b0 = { {
 { "Deflate" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/Deflate.h" , & fmt_text_Files_b }
 ,{ "CCore/src/Deflate.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "implements" }
 ,{ "the" }
 ,{ "deflate" }
 ,{ "compression" }
 ,{ "algorithms," }
 ,{ "as" }
 ,{ "specified" }
 ,{ "in" }
 ,{ "the" }
 ,{ "RFC1951" , & fmt_text_a }
 ,{ "." }
 ,{ "This" }
 ,{ "implementation" }
 ,{ "is" }
 ,{ "a" }
 ,{ "reengineered" }
 ,{ "version" }
 ,{ "of" }
 ,{ "the" }
 ,{ "Crypto++" , & fmt_text_a }
 ,{ "variant." }
 ,{ "The" }
 ,{ "implementation" }
 ,{ "is" }
 ,{ "enclosed" }
 ,{ "in" }
 ,{ "the" }
 ,{ "Deflate" , & fmt_text_b }
 ,{ "namespace." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "To" }
 ,{ "compress" }
 ,{ "a" }
 ,{ "data" }
 ,{ "stream" }
 ,{ "you" }
 ,{ "create" }
 ,{ "an" }
 ,{ "object" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "Deflator" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "an" }
 ,{ "output" }
 ,{ "function." }
 ,{ "This" }
 ,{ "function" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "output" }
 ,{ "processed" }
 ,{ "data." }
 ,{ "To" }
 ,{ "inject" }
 ,{ "source" }
 ,{ "data" }
 ,{ "into" }
 ,{ "the" }
 ,{ "object" }
 ,{ "methods" }
 ,{ "put()" , & fmt_text_b }
 ,{ "are" }
 ,{ "used" }
 ,{ "and" }
 ,{ "the" }
 ,{ "method" }
 ,{ "complete()" , & fmt_text_b }
 ,{ "to" }
 ,{ "indicate" }
 ,{ "the" }
 ,{ "end" }
 ,{ "of" }
 ,{ "the" }
 ,{ "data" }
 ,{ "stream." }
 ,{ "This" }
 ,{ "method" }
 ,{ "completes" }
 ,{ "the" }
 ,{ "data" }
 ,{ "processing" }
 ,{ "and" }
 ,{ "flushes" }
 ,{ "the" }
 ,{ "output." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "To" }
 ,{ "uncompress" }
 ,{ "a" }
 ,{ "data" }
 ,{ "stream" }
 ,{ "you" }
 ,{ "create" }
 ,{ "an" }
 ,{ "object" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "Inflator" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "an" }
 ,{ "output" }
 ,{ "function." }
 ,{ "This" }
 ,{ "function" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "output" }
 ,{ "processed" }
 ,{ "data." }
 ,{ "To" }
 ,{ "inject" }
 ,{ "source" }
 ,{ "data" }
 ,{ "into" }
 ,{ "the" }
 ,{ "object" }
 ,{ "methods" }
 ,{ "put()" , & fmt_text_b }
 ,{ "are" }
 ,{ "used" }
 ,{ "and" }
 ,{ "the" }
 ,{ "method" }
 ,{ "complete()" , & fmt_text_b }
 ,{ "to" }
 ,{ "indicate" }
 ,{ "the" }
 ,{ "end" }
 ,{ "of" }
 ,{ "the" }
 ,{ "data" }
 ,{ "stream." }
 ,{ "This" }
 ,{ "method" }
 ,{ "completes" }
 ,{ "the" }
 ,{ "data" }
 ,{ "processing" }
 ,{ "and" }
 ,{ "flushes" }
 ,{ "the" }
 ,{ "output." }
 ,{ "The" }
 ,{ "source" }
 ,{ "data" }
 ,{ "stream" }
 ,{ "may" }
 ,{ "consist" }
 ,{ "of" }
 ,{ "several" }
 ,{ "compressed" }
 ,{ "substreams." }
 ,{ "In" }
 ,{ "such" }
 ,{ "case" }
 ,{ "sets" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "repeat" , & fmt_text_b }
 ,{ "to" }
 ,{ "true" , & fmt_text_b }
 ,{ "when" }
 ,{ "constructing" }
 ,{ "the" }
 ,{ "object." }
 ,{ "You" }
 ,{ "may" }
 ,{ "also" }
 ,{ "assign" }
 ,{ "a" }
 ,{ "trigger" , & fmt_text_b }
 ,{ "," }
 ,{ "this" }
 ,{ "function" }
 ,{ "is" }
 ,{ "called" }
 ,{ "each" }
 ,{ "time" }
 ,{ "the" }
 ,{ "compressed" }
 ,{ "stream" }
 ,{ "is" }
 ,{ "processed" }
 ,{ "and" }
 ,{ "flushed" }
 ,{ "to" }
 ,{ "the" }
 ,{ "output." }
 ,{ "If" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "repeat" , & fmt_text_b }
 ,{ "is" }
 ,{ "false" , & fmt_text_b }
 ,{ "," }
 ,{ "the" }
 ,{ "input" }
 ,{ "data" }
 ,{ "stream" }
 ,{ "is" }
 ,{ "sent" }
 ,{ "to" }
 ,{ "the" }
 ,{ "output" }
 ,{ "unchanged" }
 ,{ "after" }
 ,{ "the" }
 ,{ "compressed" }
 ,{ "part" }
 ,{ "is" }
 ,{ "finished." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Defalte" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_DeferCall#page , & page_DestroyGuard#page };

Link link = { &page } ;

}

scope page_DestroyGuard {

Text b0 = { {
 { "DestroyGuard" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/DestroyGuard.h" , & fmt_text_Files_b }
 ,{ "CCore/src/DestroyGuard.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "DestroyGuard" , & fmt_text_b }
 ,{ "is" }
 ,{ "designed" }
 ,{ "to" }
 ,{ "guard" }
 ,{ "the" }
 ,{ "object" }
 ,{ "destruction." }
 ,{ "It" }
 ,{ "is" }
 ,{ "used" }
 ,{ "in" }
 ,{ "the" }
 ,{ "signal" , & fmt_text_a , & ..#page_Signal#link }
 ,{ "implementation" , & fmt_text_a , & ..#page_Signal#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "The" }
 ,{ "object" }
 ,{ "has" }
 ,{ "the" }
 ,{ "internal" }
 ,{ "flag" }
 ,{ "locked" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "can" }
 ,{ "be" }
 ,{ "set" }
 ,{ "for" }
 ,{ "the" }
 ,{ "duration" }
 ,{ "of" }
 ,{ "some" }
 ,{ "scope" }
 ,{ "using" }
 ,{ "the" }
 ,{ "internal" }
 ,{ "class" }
 ,{ "Lock" , & fmt_text_b }
 ,{ "to" }
 ,{ "protect" }
 ,{ "against" }
 ,{ "some" }
 ,{ "unwanted" }
 ,{ "actions" }
 ,{ "(in" }
 ,{ "particular," }
 ,{ "from" }
 ,{ "the" }
 ,{ "object" }
 ,{ "destruction" }
 ,{ "while" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "in" }
 ,{ "use)." }
 ,{ "To" }
 ,{ "do" }
 ,{ "it" }
 ,{ "these" }
 ,{ "actions" }
 ,{ "must" }
 ,{ "guard" }
 ,{ "itself" }
 ,{ "using" }
 ,{ "a" }
 ,{ "methods" }
 ,{ "guard()" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "locked," }
 ,{ "then" }
 ,{ "the" }
 ,{ "Abort()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called." }
 ,{ "The" }
 ,{ "DestroyGuard" , & fmt_text_b }
 ,{ "destructor" }
 ,{ "guards" }
 ,{ "itself," }
 ,{ "so" }
 ,{ "you" }
 ,{ "cannot" }
 ,{ "destroy" }
 ,{ "the" }
 ,{ "object" }
 ,{ "while" }
 ,{ "it" }
 ,{ "is" }
 ,{ "locked." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> DestroyGuard" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Deflate#page , & page_DHExp#page };

Link link = { &page } ;

}

scope page_DHExp {

Text b0 = { {
 { "DHExp" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/crypton/DHExp.h" , & fmt_text_Files_b }
 ,{ "CCore/src/crypton/DHExp.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "tool" }
 ,{ "is" }
 ,{ "designed" }
 ,{ "to" }
 ,{ "perform" }
 ,{ "the" }
 ,{ "Diffie-Hellman" }
 ,{ "key" }
 ,{ "exchange" }
 ,{ "protocol." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "The" }
 ,{ "abstract" }
 ,{ "Diffie-Hellman" }
 ,{ "protocol" }
 ,{ "uses" }
 ,{ "some" }
 ,{ "finite" }
 ,{ "group" }
 ,{ "G" , & fmt_text_b }
 ,{ "with" }
 ,{ "efficient" }
 ,{ "octet" }
 ,{ "representation." }
 ,{ "\"Efficient\"" }
 ,{ "means" }
 ,{ "that" }
 ,{ "group" }
 ,{ "operations" }
 ,{ "can" }
 ,{ "be" }
 ,{ "performed" }
 ,{ "efficiently" }
 ,{ "from" }
 ,{ "the" }
 ,{ "octet" }
 ,{ "representation" }
 ,{ "of" }
 ,{ "elements." }
 ,{ "Some" }
 ,{ "group" }
 ,{ "element" }
 ,{ "g" , & fmt_text_b }
 ,{ "with" }
 ,{ "large" }
 ,{ "order" }
 ,{ "is" }
 ,{ "chosen" }
 ,{ "also." }
 ,{ "Two" }
 ,{ "peers" }
 ,{ "A" , & fmt_text_b }
 ,{ "and" }
 ,{ "B" , & fmt_text_b }
 ,{ "generate" }
 ,{ "secret" }
 ,{ "data" }
 ,{ "x" , & fmt_text_b }
 ,{ "and" }
 ,{ "y" , & fmt_text_b }
 ,{ "," }
 ,{ "which" }
 ,{ "are" }
 ,{ "long" }
 ,{ "integer" }
 ,{ "numbers." }
 ,{ "Then" }
 ,{ "A" , & fmt_text_b }
 ,{ "sends" }
 ,{ "g" , & fmt_text_b }
 ,{ "x" , & fmt_text_b }
 ,{ "to" }
 ,{ "B" , & fmt_text_b }
 ,{ "and" }
 ,{ "B" , & fmt_text_b }
 ,{ "sends" }
 ,{ "g" , & fmt_text_b }
 ,{ "y" , & fmt_text_b }
 ,{ "to" }
 ,{ "A" , & fmt_text_b }
 ,{ "." }
 ,{ "Each" }
 ,{ "side" }
 ,{ "can" }
 ,{ "calculate" }
 ,{ "g" , & fmt_text_b }
 ,{ "xy" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "is" }
 ,{ "a" }
 ,{ "common" }
 ,{ "secret." }
 ,{ "It" }
 ,{ "cannot" }
 ,{ "be" }
 ,{ "figured" }
 ,{ "out" }
 ,{ "from" }
 ,{ "intercepted" }
 ,{ "data," }
 ,{ "if" }
 ,{ "the" }
 ,{ "task" }
 ,{ "of" }
 ,{ "calculation" }
 ,{ "x" , & fmt_text_b }
 ,{ "from" }
 ,{ "g" , & fmt_text_b }
 ,{ "x" , & fmt_text_b }
 ,{ "is" }
 ,{ "difficult." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "The" }
 ,{ "simplest" }
 ,{ "example" }
 ,{ "of" }
 ,{ "G" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "multiplicative" }
 ,{ "group" }
 ,{ "of" }
 ,{ "invertible" }
 ,{ "elements" }
 ,{ "of" }
 ,{ "the" }
 ,{ "ring" }
 ,{ "Z/(p)" , & fmt_text_b }
 ,{ "," }
 ,{ "where" }
 ,{ "p" }
 ,{ "is" }
 ,{ "a" }
 ,{ "large" }
 ,{ "prime" }
 ,{ "number." }
 ,{ "Two" }
 ,{ "particular" }
 ,{ "such" }
 ,{ "numbers" }
 ,{ "are" }
 ,{ "well" }
 ,{ "known" }
 ,{ "as" }
 ,{ "Diffie-Hellman" }
 ,{ "Group" }
 ,{ "I" }
 ,{ "and" }
 ,{ "Diffie-Hellman" }
 ,{ "Group" }
 ,{ "II" }
 ,{ "primes." }
 ,{ "In" }
 ,{ "both" }
 ,{ "cases" }
 ,{ "g" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "class" }
 ,{ "of" }
 ,{ "2" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "This" }
 ,{ "class" }
 ,{ "implements" }
 ,{ "required" }
 ,{ "functionality" }
 ,{ "to" }
 ,{ "use" }
 ,{ "the" }
 ,{ "Diffie-Hellman" }
 ,{ "protocol." }
 ,{ "The" }
 ,{ "first" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "gives" }
 ,{ "the" }
 ,{ "group" }
 ,{ "related" }
 ,{ "data." }
 ,{ "The" }
 ,{ "second" }
 ,{ "is" }
 ,{ "an" }
 ,{ "Algorithm" , & fmt_text_b }
 ,{ "Package" , & fmt_text_b }
 ,{ "with" }
 ,{ "required" }
 ,{ "long" }
 ,{ "integer" }
 ,{ "algorithms." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "GLen" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "group" }
 ,{ "element" }
 ,{ "octet" }
 ,{ "representation." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "pow(a,x,ax)" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "the" }
 ,{ "power" }
 ,{ "of" }
 ,{ "the" }
 ,{ "element" }
 ,{ "a" , & fmt_text_b }
 ,{ "in" }
 ,{ "x" , & fmt_text_b }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "result" }
 ,{ "in" }
 ,{ "ax" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "pow(x,gx)" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "the" }
 ,{ "power" }
 ,{ "of" }
 ,{ "the" }
 ,{ "g" , & fmt_text_b }
 ,{ "in" }
 ,{ "x" , & fmt_text_b }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "result" }
 ,{ "in" }
 ,{ "gx" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "In" }
 ,{ "both" }
 ,{ "methods" }
 ,{ "x" , & fmt_text_b }
 ,{ "represents" }
 ,{ "the" }
 ,{ "unsigned" }
 ,{ "number" }
 ,{ "in" }
 ,{ "the" }
 ,{ "lendian" }
 ,{ "byte" }
 ,{ "order." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "These" }
 ,{ "two" }
 ,{ "types" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "as" }
 ,{ "the" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "DHMod" , & fmt_text_b }
 ,{ "and" }
 ,{ "contains" }
 ,{ "all" }
 ,{ "required" }
 ,{ "precalculated" }
 ,{ "data" }
 ,{ "for" }
 ,{ "Diffie-Hellman" }
 ,{ "Groups" }
 ,{ "I" }
 ,{ "and" }
 ,{ "II." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "GLen" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "octet" }
 ,{ "reprsentation" }
 ,{ "of" }
 ,{ "group" }
 ,{ "elements." }
 ,{ "A" }
 ,{ "group" }
 ,{ "element" }
 ,{ "is" }
 ,{ "represented" }
 ,{ "by" }
 ,{ "the" }
 ,{ "long" }
 ,{ "unsigned" }
 ,{ "number," }
 ,{ "using" }
 ,{ "the" }
 ,{ "lendian" }
 ,{ "representation." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "Mod" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "prime" }
 ,{ "module." }
 ,{ "This" }
 ,{ "number" }
 ,{ "is" }
 ,{ "normalized," }
 ,{ "i.e." }
 ,{ "the" }
 ,{ "most" }
 ,{ "significant" }
 ,{ "bit" }
 ,{ "equals" }
 ,{ "1" , & fmt_text_b }
 ,{ "." }
 ,{ "D" , & fmt_text_b }
 ,{ "below" }
 ,{ "is" }
 ,{ "the" }
 ,{ "power" }
 ,{ "of" }
 ,{ "2" , & fmt_text_b }
 ,{ "," }
 ,{ "D" , & fmt_text_b }
 ,{ "=" , & fmt_text_b }
 ,{ "2" , & fmt_text_b }
 ,{ "8*GLen" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "G" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "generator." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "InvMod" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "inversion" }
 ,{ "of" }
 ,{ "Mod" , & fmt_text_b }
 ,{ "by" }
 ,{ "module" }
 ,{ "D" , & fmt_text_b }
 ,{ "," }
 ,{ "i.e." }
 ,{ "InvMod*Mod" , & fmt_text_b }
 ,{ "=" , & fmt_text_b }
 ,{ "1" , & fmt_text_b }
 ,{ "(mod" , & fmt_text_b }
 ,{ "D)" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "Lift" , & fmt_text_b }
 ,{ "is" }
 ,{ "((D-Mod)*D)/Mod" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "Here" }
 ,{ "is" }
 ,{ "the" }
 ,{ "pattern" }
 ,{ "for" }
 ,{ "the" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "Algo" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "Unit" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type," }
 ,{ "used" }
 ,{ "as" }
 ,{ "the" }
 ,{ "long" }
 ,{ "integer" }
 ,{ "unit." }
 ,{ "Long" }
 ,{ "integers" }
 ,{ "are" }
 ,{ "represented" }
 ,{ "using" }
 ,{ "the" }
 ,{ "lendian" }
 ,{ "unit" }
 ,{ "order." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "UnitBits" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "bits" }
 ,{ "in" }
 ,{ "the" }
 ,{ "Unit" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "Two" }
 ,{ "inner" }
 ,{ "classes" }
 ,{ "MulOp" , & fmt_text_b }
 ,{ "and" }
 ,{ "AddOp" , & fmt_text_b }
 ,{ "are" }
 ,{ "used" }
 ,{ "to" }
 ,{ "perform" }
 ,{ "the" }
 ,{ "required" }
 ,{ "long" }
 ,{ "integer" }
 ,{ "operations." }
 ,{ "They" }
 ,{ "are" }
 ,{ "parametrized" }
 ,{ "by" }
 ,{ "the" }
 ,{ "long" }
 ,{ "integer" }
 ,{ "length" }
 ,{ "Len" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "MulOp" , & fmt_text_b }
 ,{ "operations" }
 ,{ "are:" }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "mul()" , & fmt_text_b }
 ,{ "multiplies" }
 ,{ "A" , & fmt_text_b }
 ,{ "and" }
 ,{ "B" , & fmt_text_b }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "result" }
 ,{ "of" }
 ,{ "the" }
 ,{ "double" }
 ,{ "length" }
 ,{ "in" }
 ,{ "C" , & fmt_text_b }
 ,{ "." }
 ,{ "No" }
 ,{ "overlap" }
 ,{ "C" , & fmt_text_b }
 ,{ "with" }
 ,{ "A" , & fmt_text_b }
 ,{ "or" }
 ,{ "B" , & fmt_text_b }
 ,{ "is" }
 ,{ "assumed." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "mulHi()" , & fmt_text_b }
 ,{ "multiplies" }
 ,{ "A" , & fmt_text_b }
 ,{ "and" }
 ,{ "B" , & fmt_text_b }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "high" }
 ,{ "part" }
 ,{ "of" }
 ,{ "the" }
 ,{ "result" }
 ,{ "in" }
 ,{ "C" , & fmt_text_b }
 ,{ "." }
 ,{ "No" }
 ,{ "overlap" }
 ,{ "C" , & fmt_text_b }
 ,{ "with" }
 ,{ "A" , & fmt_text_b }
 ,{ "or" }
 ,{ "B" , & fmt_text_b }
 ,{ "is" }
 ,{ "assumed." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "mulLo()" , & fmt_text_b }
 ,{ "multiplies" }
 ,{ "A" , & fmt_text_b }
 ,{ "and" }
 ,{ "B" , & fmt_text_b }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "lower" }
 ,{ "part" }
 ,{ "of" }
 ,{ "the" }
 ,{ "result" }
 ,{ "in" }
 ,{ "C" , & fmt_text_b }
 ,{ "." }
 ,{ "No" }
 ,{ "overlap" }
 ,{ "C" , & fmt_text_b }
 ,{ "with" }
 ,{ "A" , & fmt_text_b }
 ,{ "or" }
 ,{ "B" , & fmt_text_b }
 ,{ "is" }
 ,{ "assumed." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "mulLo1()" , & fmt_text_b }
 ,{ "multiplies" }
 ,{ "A" , & fmt_text_b }
 ,{ "and" }
 ,{ "B" , & fmt_text_b }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "lower" }
 ,{ "part" }
 ,{ "of" }
 ,{ "the" }
 ,{ "result" }
 ,{ "of" }
 ,{ "the" }
 ,{ "length" }
 ,{ "Len+1" , & fmt_text_b }
 ,{ "in" }
 ,{ "C" , & fmt_text_b }
 ,{ "." }
 ,{ "No" }
 ,{ "overlap" }
 ,{ "C" , & fmt_text_b }
 ,{ "with" }
 ,{ "A" , & fmt_text_b }
 ,{ "or" }
 ,{ "B" , & fmt_text_b }
 ,{ "is" }
 ,{ "assumed." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "sq()" , & fmt_text_b }
 ,{ "squares" }
 ,{ "A" , & fmt_text_b }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "result" }
 ,{ "of" }
 ,{ "the" }
 ,{ "double" }
 ,{ "length" }
 ,{ "in" }
 ,{ "B" , & fmt_text_b }
 ,{ "." }
 ,{ "No" }
 ,{ "overlap" }
 ,{ "B" , & fmt_text_b }
 ,{ "with" }
 ,{ "A" , & fmt_text_b }
 ,{ "is" }
 ,{ "assumed." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "AddOp" , & fmt_text_b }
 ,{ "operations" }
 ,{ "are:" }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "sub()" , & fmt_text_b }
 ,{ "subtracts" }
 ,{ "B" , & fmt_text_b }
 ,{ "from" }
 ,{ "A" , & fmt_text_b }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "result" }
 ,{ "in" }
 ,{ "C" , & fmt_text_b }
 ,{ "." }
 ,{ "Borrow" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "No" }
 ,{ "overlap" }
 ,{ "C" , & fmt_text_b }
 ,{ "with" }
 ,{ "A" , & fmt_text_b }
 ,{ "or" }
 ,{ "B" , & fmt_text_b }
 ,{ "is" }
 ,{ "assumed." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "add()" , & fmt_text_b }
 ,{ "adds" }
 ,{ "A" , & fmt_text_b }
 ,{ "to" }
 ,{ "B" , & fmt_text_b }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "carry." }
 ,{ "No" }
 ,{ "overlap" }
 ,{ "B" , & fmt_text_b }
 ,{ "with" }
 ,{ "A" , & fmt_text_b }
 ,{ "is" }
 ,{ "assumed." }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "neg()" , & fmt_text_b }
 ,{ "negates" }
 ,{ "A" , & fmt_text_b }
 ,{ "." }
 ,{ "Borrow" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "This" }
 ,{ "is" }
 ,{ "the" }
 ,{ "default" }
 ,{ "implementation" }
 ,{ "of" }
 ,{ "the" }
 ,{ "Algo" , & fmt_text_b }
 ,{ "," }
 ,{ "based" }
 ,{ "on" }
 ,{ "the" }
 ,{ "Math::IntegerFastAlgo" , & fmt_text_b }
 ,{ "package." }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "Concept" }
 ,{ "DHExpType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "Diffie-Hellman" }
 ,{ "classes" }
 ,{ "like" }
 ,{ "DHExp<....>" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> DHExp" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_DestroyGuard#page , & page_DirTreeRun#page };

Link link = { &page } ;

}

scope page_DirTreeRun {

Text b0 = { {
 { "DirTreeRun" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/DirTreeRun.h" , & fmt_text_Files_b }
 ,{ "CCore/src/DirTreeRun.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "The" }
 ,{ "class" }
 ,{ "DirTreeRun" , & fmt_text_b }
 ,{ "can" }
 ,{ "recursively" }
 ,{ "iterate" }
 ,{ "a" }
 ,{ "directory" }
 ,{ "content." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Constructor" }
 ,{ "prepares" }
 ,{ "the" }
 ,{ "object," }
 ,{ "the" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "root" }
 ,{ "directory" }
 ,{ "(the" }
 ,{ "content" }
 ,{ "of" }
 ,{ "this" }
 ,{ "directory" }
 ,{ "to" }
 ,{ "be" }
 ,{ "iterated)." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "pathOfRoot()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "full" }
 ,{ "path" }
 ,{ "of" }
 ,{ "the" }
 ,{ "root" }
 ,{ "directory" }
 ,{ "in" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "buffer" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "it." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "apply()" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "main" }
 ,{ "working" }
 ,{ "method." }
 ,{ "It" }
 ,{ "takes" }
 ,{ "a" }
 ,{ "reference" }
 ,{ "to" }
 ,{ "a" }
 ,{ "processing" }
 ,{ "object." }
 ,{ "Methods" }
 ,{ "of" }
 ,{ "the" }
 ,{ "object" }
 ,{ "are" }
 ,{ "called" }
 ,{ "per" }
 ,{ "each" }
 ,{ "directory" }
 ,{ "entry." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "The" }
 ,{ "processing" }
 ,{ "object" }
 ,{ "class" }
 ,{ "must" }
 ,{ "implement" }
 ,{ "the" }
 ,{ "following" }
 ,{ "interface:" }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "During" }
 ,{ "directory" }
 ,{ "iteration" }
 ,{ "an" }
 ,{ "object" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "DataType" , & fmt_text_b }
 ,{ "is" }
 ,{ "created" }
 ,{ "per" }
 ,{ "each" }
 ,{ "directory." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "The" }
 ,{ "first" }
 ,{ "method" }
 ,{ "dir()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "for" }
 ,{ "the" }
 ,{ "root" }
 ,{ "directory." }
 ,{ "The" }
 ,{ "root" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "root" }
 ,{ "directory" }
 ,{ "path." }
 ,{ "The" }
 ,{ "method" }
 ,{ "creates" }
 ,{ "a" }
 ,{ "data" }
 ,{ "object" }
 ,{ "for" }
 ,{ "this" }
 ,{ "directory" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "it." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "The" }
 ,{ "second" }
 ,{ "method" }
 ,{ "dir()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "per" }
 ,{ "each" }
 ,{ "subdirectory." }
 ,{ "The" }
 ,{ "path" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "path" }
 ,{ "of" }
 ,{ "the" }
 ,{ "parent" }
 ,{ "directory" }
 ,{ "and" }
 ,{ "the" }
 ,{ "name" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "name." }
 ,{ "The" }
 ,{ "parent_data" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "parent" }
 ,{ "directory" }
 ,{ "data" }
 ,{ "object." }
 ,{ "The" }
 ,{ "method" }
 ,{ "creates" }
 ,{ "a" }
 ,{ "data" }
 ,{ "object" }
 ,{ "for" }
 ,{ "this" }
 ,{ "directory" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "it." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "The" }
 ,{ "method" }
 ,{ "file()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "per" }
 ,{ "each" }
 ,{ "file." }
 ,{ "The" }
 ,{ "path" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "path" }
 ,{ "of" }
 ,{ "the" }
 ,{ "parent" }
 ,{ "directory" }
 ,{ "and" }
 ,{ "the" }
 ,{ "name" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name." }
 ,{ "path" , & fmt_text_b }
 ,{ "looks" }
 ,{ "like" }
 ,{ "root/." , & fmt_text_b }
 ,{ "or" }
 ,{ "root/./dir" , & fmt_text_b }
 ,{ "1" , & fmt_text_b }
 ,{ "/.../dir" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "parent_data" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "parent" }
 ,{ "directory" }
 ,{ "data" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "The" }
 ,{ "method" }
 ,{ "enddir()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "once" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "content" }
 ,{ "is" }
 ,{ "iterated." }
 ,{ "The" }
 ,{ "path" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "path" }
 ,{ "of" }
 ,{ "the" }
 ,{ "parent" }
 ,{ "directory" }
 ,{ "and" }
 ,{ "the" }
 ,{ "name" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "name." }
 ,{ "The" }
 ,{ "data" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "data" }
 ,{ "object." }
 ,{ "If" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "is" }
 ,{ "the" }
 ,{ "root" }
 ,{ "directory," }
 ,{ "then" }
 ,{ "path" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "root" }
 ,{ "path" }
 ,{ "and" }
 ,{ "the" }
 ,{ "name" , & fmt_text_b }
 ,{ "equals" }
 ,{ "\".\"" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> DirTreeRun" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_DHExp#page , & page_DynObject#page };

Link link = { &page } ;

}

scope page_DynObject {

Text b0 = { {
 { "DynObject" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/DynObject.h" , & fmt_text_Files_b }
 ,{ "CCore/src/DynObject.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "DynObject" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "smart" }
 ,{ "pointer" }
 ,{ "with" }
 ,{ "exclusive" }
 ,{ "ownership" }
 ,{ "and" }
 ,{ "constant" }
 ,{ "propagation." }
 ,{ "It" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "create" }
 ,{ "an" }
 ,{ "object" }
 ,{ "dynamically." }
 ,{ "The" }
 ,{ "object" }
 ,{ "is" }
 ,{ "destroyed" }
 ,{ "when" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "gets" }
 ,{ "out" }
 ,{ "of" }
 ,{ "the" }
 ,{ "scope." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "New()/Delete()" , & fmt_text_a , & ..#page_NewDelete#link }
 ,{ "with" }
 ,{ "the" }
 ,{ "DefaultHeapAlloc" , & fmt_text_b }
 ,{ "are" }
 ,{ "used" }
 ,{ "to" }
 ,{ "create" }
 ,{ "and" }
 ,{ "destroy" }
 ,{ "the" }
 ,{ "object." }
 ,{ "So" }
 ,{ "you" }
 ,{ "don't" }
 ,{ "have" }
 ,{ "to" }
 ,{ "derive" }
 ,{ "the" }
 ,{ "object" }
 ,{ "type" }
 ,{ "from" }
 ,{ "the" }
 ,{ "MemBase" , & fmt_text_a , & ..#page_MemoryManagement#link }
 ,{ "." }
 ,{ "Any" }
 ,{ "type" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used," }
 ,{ "the" }
 ,{ "only" }
 ,{ "assumption" }
 ,{ "is" }
 ,{ "that" }
 ,{ "the" }
 ,{ "object" }
 ,{ "destructor" }
 ,{ "is" }
 ,{ "nothrow." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Default" }
 ,{ "constructor" }
 ,{ "creates" }
 ,{ "the" }
 ,{ "null" }
 ,{ "pointer." }
 ,{ "It" }
 ,{ "points" }
 ,{ "to" }
 ,{ "no" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "NothingType-constructor" , & fmt_text_a , & ..#page_Nothing#link }
 ,{ "creates" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object," }
 ,{ "constructed" }
 ,{ "using" }
 ,{ "it's" }
 ,{ "default" }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "DynObject" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "copyable," }
 ,{ "but" }
 ,{ "movable" }
 ,{ "using" }
 ,{ "the" }
 ,{ "C++" }
 ,{ "move." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "For" }
 ,{ "an" }
 ,{ "existing" }
 ,{ "pointer" }
 ,{ "you" }
 ,{ "can" }
 ,{ "recreate" }
 ,{ "the" }
 ,{ "object" }
 ,{ "using" }
 ,{ "the" }
 ,{ "method" }
 ,{ "create()" , & fmt_text_b }
 ,{ "(the" }
 ,{ "previous" }
 ,{ "object," }
 ,{ "if" }
 ,{ "any," }
 ,{ "is" }
 ,{ "destroyed)" }
 ,{ "or" }
 ,{ "destroy" }
 ,{ "it" }
 ,{ "using" }
 ,{ "the" }
 ,{ "method" }
 ,{ "destroy()" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "method" }
 ,{ "destroy()" , & fmt_text_b }
 ,{ "sets" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "null" }
 ,{ "state." }
 ,{ "The" }
 ,{ "method" }
 ,{ "create()" , & fmt_text_b }
 ,{ "preserves" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "state," }
 ,{ "if" }
 ,{ "the" }
 ,{ "object" }
 ,{ "creation" }
 ,{ "ends" }
 ,{ "with" }
 ,{ "the" }
 ,{ "throwing" }
 ,{ "of" }
 ,{ "an" }
 ,{ "exception." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "The" }
 ,{ "usual" }
 ,{ "set" }
 ,{ "of" }
 ,{ "methods" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "access" }
 ,{ "the" }
 ,{ "object." }
 ,{ "The" }
 ,{ "difference" }
 ,{ "with" }
 ,{ "the" }
 ,{ "Object" , & fmt_text_a , & ..#page_Taxonomy#link_ObjectPointerInterface }
 ,{ "Pointer" , & fmt_text_a , & ..#page_Taxonomy#link_ObjectPointerInterface }
 ,{ "Interface" , & fmt_text_a , & ..#page_Taxonomy#link_ObjectPointerInterface }
 ,{ "is" }
 ,{ "that" }
 ,{ "the" }
 ,{ "constantness" }
 ,{ "is" }
 ,{ "propagated" }
 ,{ "from" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "DynObject" , & fmt_text_b }
 ,{ "is" }
 ,{ "swappable" }
 ,{ "and" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "-movable." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> DynObject" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_DirTreeRun#page , & page_EchoDevice#page };

Link link = { &page } ;

}

scope page_EchoDevice {

Text b0 = { {
 { "EchoDevice" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/net/EchoDevice.h" , & fmt_text_Files_b }
 ,{ "CCore/src/net/EchoDevice.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "The" }
 ,{ "class" }
 ,{ "EchoDevice" , & fmt_text_b }
 ,{ "implements" }
 ,{ "echo" }
 ,{ "service." }
 ,{ "It" }
 ,{ "can" }
 ,{ "be" }
 ,{ "attached" }
 ,{ "to" }
 ,{ "a" }
 ,{ "packet" }
 ,{ "multi-point" }
 ,{ "device." }
 ,{ "Been" }
 ,{ "attached" }
 ,{ "the" }
 ,{ "service" }
 ,{ "simply" }
 ,{ "reflects" }
 ,{ "incoming" }
 ,{ "packets." }
 ,{ "This" }
 ,{ "class" }
 ,{ "is" }
 ,{ "useful" }
 ,{ "in" }
 ,{ "a" }
 ,{ "net" }
 ,{ "testing." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Constructor" }
 ,{ "attaches" }
 ,{ "the" }
 ,{ "object" }
 ,{ "to" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "multi-point" }
 ,{ "device," }
 ,{ "registered" }
 ,{ "under" }
 ,{ "the" }
 ,{ "given" }
 ,{ "name." }
 ,{ "max_packets" , & fmt_text_b }
 ,{ "limits" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "usage." }
 ,{ "If" }
 ,{ "the" }
 ,{ "show_flag" , & fmt_text_b }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "object" }
 ,{ "will" }
 ,{ "print" }
 ,{ "messages" }
 ,{ "about" }
 ,{ "connection" }
 ,{ "events" }
 ,{ "to" }
 ,{ "the" }
 ,{ "console." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "getStat()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "device" }
 ,{ "statistic." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "getTraffic()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "device" }
 ,{ "traffic" }
 ,{ "counter." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> EchoDevice" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_DynObject#page , & page_EchoServer#page };

Link link = { &page } ;

}

scope page_EchoServer {

Text b0 = { {
 { "EchoServer" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "EchoServer" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "simple" }
 ,{ "UDP" , & fmt_text_b }
 ,{ "echo" }
 ,{ "server." }
 ,{ "It" }
 ,{ "occupied" }
 ,{ "the" }
 ,{ "standard" }
 ,{ "UDP" , & fmt_text_b }
 ,{ "echo" }
 ,{ "port" }
 ,{ "7" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "server" }
 ,{ "accepts" }
 ,{ "only" }
 ,{ "\"short\"" }
 ,{ "UDP" , & fmt_text_b }
 ,{ "packets" }
 ,{ "with" }
 ,{ "the" }
 ,{ "payload" }
 ,{ "length" }
 ,{ "not" }
 ,{ "greater" }
 ,{ "1472" , & fmt_text_b }
 ,{ "bytes." }
} , & fmt_text , & align_text } ;

Text b2 = { {
 { "There" }
 ,{ "are" }
 ,{ "no" }
 ,{ "command" }
 ,{ "line" }
 ,{ "arguments." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "You" }
 ,{ "can" }
 ,{ "show" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "statistic" }
 ,{ "using" }
 ,{ "the" }
 ,{ "command" }
 ,{ "stat" , & fmt_text_i }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> EchoServer" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text , outer_text , back_text }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_EchoDevice#page , & page_ElementPool#page };

Link link = { &page } ;

}

scope page_ElementPool {

Text b0 = { {
 { "Element" }
 ,{ "pool" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/ElementPool.h" , & fmt_text_Files_b }
 ,{ "CCore/src/ElementPool.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Element" }
 ,{ "pool" }
 ,{ "is" }
 ,{ "a" }
 ,{ "domain," }
 ,{ "where" }
 ,{ "objects" }
 ,{ "of" }
 ,{ "different" }
 ,{ "types" }
 ,{ "can" }
 ,{ "be" }
 ,{ "created" }
 ,{ "and" }
 ,{ "stored." }
 ,{ "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "restriction:" }
 ,{ "the" }
 ,{ "object" }
 ,{ "type" }
 ,{ "must" }
 ,{ "have" }
 ,{ "a" }
 ,{ "trivial" }
 ,{ "destructor." }
 ,{ "All" }
 ,{ "objects" }
 ,{ "in" }
 ,{ "the" }
 ,{ "pool" }
 ,{ "dies" }
 ,{ "together" }
 ,{ "when" }
 ,{ "the" }
 ,{ "element" }
 ,{ "pool" }
 ,{ "is" }
 ,{ "destroyed." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Element" }
 ,{ "pool" }
 ,{ "is" }
 ,{ "required" }
 ,{ "when" }
 ,{ "you" }
 ,{ "want" }
 ,{ "to" }
 ,{ "create" }
 ,{ "a" }
 ,{ "bunch" }
 ,{ "of" }
 ,{ "objects" }
 ,{ "dynamically" }
 ,{ "and" }
 ,{ "then" }
 ,{ "to" }
 ,{ "finish" }
 ,{ "their" }
 ,{ "life-time" }
 ,{ "simultaneously." }
 ,{ "Element" }
 ,{ "pool" }
 ,{ "can" }
 ,{ "speed" }
 ,{ "up" }
 ,{ "this" }
 ,{ "process," }
 ,{ "because" }
 ,{ "its" }
 ,{ "allocation" }
 ,{ "function" }
 ,{ "is" }
 ,{ "faster" }
 ,{ "and" }
 ,{ "you" }
 ,{ "don't" }
 ,{ "have" }
 ,{ "to" }
 ,{ "track" }
 ,{ "objects" }
 ,{ "to" }
 ,{ "destroy" }
 ,{ "them." }
 ,{ "Destruction" }
 ,{ "process" }
 ,{ "is" }
 ,{ "also" }
 ,{ "cheap:" }
 ,{ "it's" }
 ,{ "just" }
 ,{ "a" }
 ,{ "few" }
 ,{ "memory" }
 ,{ "blocks" }
 ,{ "release." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "CCore" , & fmt_text_b }
 ,{ "provides" }
 ,{ "two" }
 ,{ "classes" }
 ,{ "for" }
 ,{ "the" }
 ,{ "object" }
 ,{ "pooling:" }
 ,{ "MemPool" , & fmt_text_b }
 ,{ "and" }
 ,{ "ElementPool" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "ElementPool" }
} , & fmt_h4 , & align_h4 } ;

Text b6 = { {
 { "ElementPool" , & fmt_text_b }
 ,{ "constructor" }
 ,{ "accepts" }
 ,{ "the" }
 ,{ "same" }
 ,{ "arguments," }
 ,{ "as" }
 ,{ "the" }
 ,{ "MemPool" , & fmt_text_b }
 ,{ "(see" }
 ,{ "below)." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "The" }
 ,{ "method" }
 ,{ "create<T>()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "an" }
 ,{ "object" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "in" }
 ,{ "the" }
 ,{ "pool" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "it." }
 ,{ "On" }
 ,{ "failure" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown." }
 ,{ "Arguments" }
 ,{ "are" }
 ,{ "forwarded" }
 ,{ "to" }
 ,{ "the" }
 ,{ "T" , & fmt_text_b }
 ,{ "constructor." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "The" }
 ,{ "method" }
 ,{ "dup()" , & fmt_text_b }
 ,{ "duplicates" }
 ,{ "the" }
 ,{ "given" }
 ,{ "string" }
 ,{ "in" }
 ,{ "the" }
 ,{ "pool" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "duplicate." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "cat()" , & fmt_text_b }
 ,{ "casts" }
 ,{ "the" }
 ,{ "given" }
 ,{ "arguments" }
 ,{ "to" }
 ,{ "the" }
 ,{ "type" }
 ,{ "StrLen" , & fmt_text_b }
 ,{ "and" }
 ,{ "makes" }
 ,{ "a" }
 ,{ "string" }
 ,{ "in" }
 ,{ "the" }
 ,{ "pool" }
 ,{ "by" }
 ,{ "the" }
 ,{ "concatenation" }
 ,{ "of" }
 ,{ "the" }
 ,{ "received" }
 ,{ "strings." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "shrink_extra()" , & fmt_text_b }
 ,{ "releases" }
 ,{ "the" }
 ,{ "reserved" }
 ,{ "memory" }
 ,{ "at" }
 ,{ "the" }
 ,{ "pool" }
 ,{ "tail." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "erase()" , & fmt_text_b }
 ,{ "destroys" }
 ,{ "all" }
 ,{ "pool" }
 ,{ "objects." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "bunch" }
 ,{ "of" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "create" }
 ,{ "an" }
 ,{ "array" }
 ,{ "of" }
 ,{ "objects" }
 ,{ "in" }
 ,{ "the" }
 ,{ "pool." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "The" }
 ,{ "basic" }
 ,{ "method" }
 ,{ "createArray()" , & fmt_text_b }
 ,{ "initializes" }
 ,{ "array" }
 ,{ "by" }
 ,{ "default." }
 ,{ "It" }
 ,{ "takes" }
 ,{ "an" }
 ,{ "array" }
 ,{ "length" }
 ,{ "as" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "range" }
 ,{ "of" }
 ,{ "created" }
 ,{ "objects." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "Other" }
 ,{ "variations" }
 ,{ "of" }
 ,{ "the" }
 ,{ "createArray()" , & fmt_text_b }
 ,{ "have" }
 ,{ "the" }
 ,{ "same" }
 ,{ "semantic" }
 ,{ "as" }
 ,{ "the" }
 ,{ "different" }
 ,{ "Array" , & fmt_text_a , & ..#page_Arrays#link_DynArray }
 ,{ "constructors" , & fmt_text_a , & ..#page_Arrays#link_DynArray }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "createArray_raw()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "an" }
 ,{ "uninitialized" }
 ,{ "array," }
 ,{ "if" }
 ,{ "the" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "POD" }
 ,{ "type." }
 ,{ "You" }
 ,{ "must" }
 ,{ "give" }
 ,{ "values" }
 ,{ "to" }
 ,{ "array" }
 ,{ "elements" }
 ,{ "after." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "createArray_fill()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "an" }
 ,{ "array," }
 ,{ "where" }
 ,{ "each" }
 ,{ "element" }
 ,{ "is" }
 ,{ "constructed" }
 ,{ "using" }
 ,{ "the" }
 ,{ "same" }
 ,{ "constructor" }
 ,{ "with" }
 ,{ "provided" }
 ,{ "arguments." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "createArray_copy()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "an" }
 ,{ "array" }
 ,{ "by" }
 ,{ "per" }
 ,{ "element" }
 ,{ "copying" }
 ,{ "the" }
 ,{ "given" }
 ,{ "object" }
 ,{ "range." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "createArray_cast()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "an" }
 ,{ "array" }
 ,{ "by" }
 ,{ "per" }
 ,{ "element" }
 ,{ "casting" }
 ,{ "the" }
 ,{ "given" }
 ,{ "object" }
 ,{ "range" }
 ,{ "to" }
 ,{ "the" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "createArray_swap()" , & fmt_text_b }
 ,{ "uses" }
 ,{ "swap-create," }
 ,{ "i.e." }
 ,{ "creates" }
 ,{ "an" }
 ,{ "object" }
 ,{ "with" }
 ,{ "the" }
 ,{ "default" }
 ,{ "constructor" }
 ,{ "and" }
 ,{ "then" }
 ,{ "do" }
 ,{ "swap." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "createArray(ulen" , & fmt_text_b }
 ,{ "len,Creator" , & fmt_text_b }
 ,{ "creator)" , & fmt_text_b }
 ,{ "uses" }
 ,{ "the" }
 ,{ "given" }
 ,{ "object" }
 ,{ "Creator" , & fmt_text_b }
 ,{ "to" }
 ,{ "create" }
 ,{ "array" }
 ,{ "elements." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "ElementPool" , & fmt_text_b }
 ,{ "destructor" }
 ,{ "kills" }
 ,{ "all" }
 ,{ "created" }
 ,{ "objects." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "ElementPool" , & fmt_text_b }
 ,{ "is" }
 ,{ "swappable/movable" }
 ,{ "(but" }
 ,{ "not" }
 ,{ "std" }
 ,{ "movable)." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "MemPool" }
} , & fmt_h4 , & align_h4 } ;

Text b24 = { {
 { "You" }
 ,{ "probably" }
 ,{ "don't" }
 ,{ "need" }
 ,{ "to" }
 ,{ "use" }
 ,{ "this" }
 ,{ "class" }
 ,{ "directly." }
 ,{ "MemPool" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "pool" }
 ,{ "of" }
 ,{ "memory" }
 ,{ "blocks." }
 ,{ "You" }
 ,{ "may" }
 ,{ "create" }
 ,{ "a" }
 ,{ "new" }
 ,{ "memory" }
 ,{ "block" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "alloc()" , & fmt_text_b }
 ,{ "." }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "required" }
 ,{ "block" }
 ,{ "length." }
 ,{ "On" }
 ,{ "success," }
 ,{ "alloc()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "Place<void>" , & fmt_text_b }
 ,{ "at" }
 ,{ "the" }
 ,{ "begining" }
 ,{ "of" }
 ,{ "the" }
 ,{ "block." }
 ,{ "Blocks" }
 ,{ "are" }
 ,{ "always" }
 ,{ "aligned." }
 ,{ "On" }
 ,{ "failure" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "MemPool" , & fmt_text_b }
 ,{ "destructor" }
 ,{ "releases" }
 ,{ "all" }
 ,{ "allocated" }
 ,{ "memory" }
 ,{ "blocks." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "MemPool" , & fmt_text_b }
 ,{ "constructor" }
 ,{ "accepts" }
 ,{ "two" }
 ,{ "arguments:" }
 ,{ "block_len" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "internal" }
 ,{ "large" }
 ,{ "blocks" }
 ,{ "length," }
 ,{ "64" , & fmt_text_b }
 ,{ "KBytes" , & fmt_text_b }
 ,{ "by" }
 ,{ "default," }
 ,{ "mem_cap" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "total" }
 ,{ "memory" }
 ,{ "allocation" }
 ,{ "cap," }
 ,{ "no" }
 ,{ "cap" }
 ,{ "by" }
 ,{ "default." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "shrink_extra()" , & fmt_text_b }
 ,{ "releases" }
 ,{ "the" }
 ,{ "reserved" }
 ,{ "memory" }
 ,{ "at" }
 ,{ "the" }
 ,{ "pool" }
 ,{ "tail." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "erase()" , & fmt_text_b }
 ,{ "like" }
 ,{ "the" }
 ,{ "destructor" }
 ,{ "releases" }
 ,{ "all" }
 ,{ "allocated" }
 ,{ "memory" }
 ,{ "blocks." }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "MemPool" , & fmt_text_b }
 ,{ "is" }
 ,{ "swappable/movable" }
 ,{ "(but" }
 ,{ "not" }
 ,{ "std" }
 ,{ "movable)." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Element pool" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_EchoServer#page , & page_ELF#page };

Link link = { &page } ;

}

scope page_ELF {

Text b0 = { {
 { "ELF" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/Elf.h" , & fmt_text_Files_b }
 ,{ "CCore/src/Elf.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "CCore" , & fmt_text_b }
 ,{ "has" }
 ,{ "a" }
 ,{ "simple" }
 ,{ "ELF" }
 ,{ "file" }
 ,{ "parser." }
 ,{ "It" }
 ,{ "is" }
 ,{ "not" }
 ,{ "comprehensive," }
 ,{ "but" }
 ,{ "sufficient" }
 ,{ "for" }
 ,{ "the" }
 ,{ "current" }
 ,{ "purpose." }
 ,{ "The" }
 ,{ "parser" }
 ,{ "and" }
 ,{ "related" }
 ,{ "software" }
 ,{ "entities" }
 ,{ "are" }
 ,{ "enclosed" }
 ,{ "in" }
 ,{ "the" }
 ,{ "namespace" }
 ,{ "Elf" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Parse" }
} , & fmt_h3 , & align_h3 } ;

Text b4 = { {
 { "The" }
 ,{ "main" }
 ,{ "parser" }
 ,{ "function" }
 ,{ "is" }
 ,{ "called" }
 ,{ "Parse" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "a" }
 ,{ "template." }
 ,{ "The" }
 ,{ "second" }
 ,{ "parameter" }
 ,{ "is" }
 ,{ "a" }
 ,{ "processing" }
 ,{ "device" }
 ,{ "type." }
 ,{ "Usually" }
 ,{ "it" }
 ,{ "is" }
 ,{ "derived" }
 ,{ "from" }
 ,{ "the" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "type." }
 ,{ "But" }
 ,{ "the" }
 ,{ "first" }
 ,{ "parameter" }
 ,{ "is" }
 ,{ "a" }
 ,{ "Custom" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "must" }
 ,{ "be" }
 ,{ "one" }
 ,{ "of" }
 ,{ "the" }
 ,{ "LeOrder" , & fmt_text_b }
 ,{ "or" }
 ,{ "BeOrder" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "parameter" }
 ,{ "specifies" }
 ,{ "the" }
 ,{ "byte-to-integer" }
 ,{ "conversion" }
 ,{ "method" }
 ,{ "to" }
 ,{ "be" }
 ,{ "used" }
 ,{ "by" }
 ,{ "the" }
 ,{ "parser" }
 ,{ "during" }
 ,{ "the" }
 ,{ "ELF" }
 ,{ "image" }
 ,{ "processing." }
 ,{ "The" }
 ,{ "first" }
 ,{ "function" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "processing" }
 ,{ "device." }
 ,{ "The" }
 ,{ "object" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "called" }
 ,{ "with" }
 ,{ "various" }
 ,{ "piece" }
 ,{ "of" }
 ,{ "the" }
 ,{ "image" }
 ,{ "data." }
 ,{ "The" }
 ,{ "second" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "byte" }
 ,{ "range," }
 ,{ "it" }
 ,{ "is" }
 ,{ "considered" }
 ,{ "as" }
 ,{ "an" }
 ,{ "ELF" }
 ,{ "image." }
 ,{ "An" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "The" }
 ,{ "type" }
 ,{ "Dev" , & fmt_text_b }
 ,{ "must" }
 ,{ "comply" }
 ,{ "with" }
 ,{ "the" }
 ,{ "following" }
 ,{ "pattern:" }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "The" }
 ,{ "first" }
 ,{ "operator" }
 ,{ "is" }
 ,{ "called" }
 ,{ "first" }
 ,{ "with" }
 ,{ "a" }
 ,{ "reference" }
 ,{ "to" }
 ,{ "the" }
 ,{ "image" }
 ,{ "header." }
 ,{ "This" }
 ,{ "operator" }
 ,{ "should" }
 ,{ "check" }
 ,{ "the" }
 ,{ "expected" }
 ,{ "image" }
 ,{ "properties" }
 ,{ "and" }
 ,{ "throw" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "if" }
 ,{ "they" }
 ,{ "are" }
 ,{ "not" }
 ,{ "such." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "The" }
 ,{ "second" }
 ,{ "and" }
 ,{ "the" }
 ,{ "third" }
 ,{ "operators" }
 ,{ "are" }
 ,{ "called" }
 ,{ "next" }
 ,{ "per" }
 ,{ "each" }
 ,{ "image" }
 ,{ "section." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "section" }
 ,{ "index." }
 ,{ "The" }
 ,{ "second" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "section" }
 ,{ "name." }
 ,{ "The" }
 ,{ "third" }
 ,{ "is" }
 ,{ "a" }
 ,{ "reference" }
 ,{ "to" }
 ,{ "the" }
 ,{ "section" }
 ,{ "header." }
 ,{ "Finally," }
 ,{ "if" }
 ,{ "the" }
 ,{ "section" }
 ,{ "must" }
 ,{ "be" }
 ,{ "loaded" }
 ,{ "the" }
 ,{ "range" }
 ,{ "of" }
 ,{ "the" }
 ,{ "section" }
 ,{ "data" }
 ,{ "is" }
 ,{ "provided." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "The" }
 ,{ "last" }
 ,{ "operator" }
 ,{ "is" }
 ,{ "called" }
 ,{ "last" }
 ,{ "to" }
 ,{ "finish" }
 ,{ "the" }
 ,{ "processing." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "Each" }
 ,{ "of" }
 ,{ "operators" }
 ,{ "may" }
 ,{ "throw" }
 ,{ "an" }
 ,{ "exception." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "Image" }
 ,{ "description" }
 ,{ "types" }
} , & fmt_h3 , & align_h3 } ;

Text b11 = { {
 { "Header" }
} , & fmt_h4 , & align_h4 } ;

Text b12 = { {
 { "Header" , & fmt_text_b }
 ,{ "describes" }
 ,{ "various" }
 ,{ "properties" }
 ,{ "of" }
 ,{ "an" }
 ,{ "ELF" }
 ,{ "image." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "The" }
 ,{ "most" }
 ,{ "interesting" }
 ,{ "properties" }
 ,{ "are:" }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "bit_type" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "image" }
 ,{ "bit" }
 ,{ "type." }
 ,{ "It" }
 ,{ "must" }
 ,{ "be" }
 ,{ "BitType_32" , & fmt_text_b }
 ,{ "to" }
 ,{ "proceed" }
 ,{ "further." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "endian_type" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "image" }
 ,{ "endian" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "cpu_type" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "CPU" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "entry_point" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "image" }
 ,{ "entry" }
 ,{ "point," }
 ,{ "if" }
 ,{ "the" }
 ,{ "image" }
 ,{ "is" }
 ,{ "executable." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "check_id()" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "check" }
 ,{ "the" }
 ,{ "expected" }
 ,{ "bit" }
 ,{ "type" }
 ,{ "and" }
 ,{ "the" }
 ,{ "expected" }
 ,{ "endian" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "check_cpu()" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "check" }
 ,{ "the" }
 ,{ "expected" }
 ,{ "CPU" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "SectHeader" }
} , & fmt_h4 , & align_h4 } ;

Text b21 = { {
 { "SectHeader" , & fmt_text_b }
 ,{ "describes" }
 ,{ "various" }
 ,{ "properties" }
 ,{ "of" }
 ,{ "a" }
 ,{ "section." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "The" }
 ,{ "most" }
 ,{ "interesting" }
 ,{ "properties" }
 ,{ "are:" }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "flags" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "section" }
 ,{ "flags." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "address" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "section" }
 ,{ "load" }
 ,{ "address." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "size" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "section" }
 ,{ "size." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "isLoadable()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "iff" }
 ,{ "the" }
 ,{ "section" }
 ,{ "must" }
 ,{ "be" }
 ,{ "loaded." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> ELF" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b11 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_ElementPool#page , & page_EllipticPi#page };

Link link = { &page } ;

}

scope page_EllipticPi {

Text b0 = { {
 { "EllipticPi" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "This" }
 ,{ "program" }
 ,{ "calculates" }
 ,{ "the" }
 ,{ "π," }
 ,{ "using" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "Integer" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "interval" }
 ,{ "arithmetic" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "provide" }
 ,{ "a" }
 ,{ "error" }
 ,{ "estimate." }
} , & fmt_text , & align_text } ;

Text b2 = { {
 { "To" }
 ,{ "specify" }
 ,{ "the" }
 ,{ "desired" }
 ,{ "precision" }
 ,{ "you" }
 ,{ "have" }
 ,{ "to" }
 ,{ "edit" }
 ,{ "the" }
 ,{ "function" }
 ,{ "main()" , & fmt_text_b }
 ,{ "," }
 ,{ "uncomment" }
 ,{ "the" }
 ,{ "line" }
 ,{ "you" }
 ,{ "want" }
 ,{ "to" }
 ,{ "run:" }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "The" }
 ,{ "output" }
 ,{ "is" }
 ,{ "placed" }
 ,{ "in" }
 ,{ "the" }
 ,{ "file" }
 ,{ "piXXX.txt" , & fmt_text_b }
 ,{ ":" }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> EllipticPi" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text , outer_text , back_text }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_ELF#page , & page_ErrorText#page };

Link link = { &page } ;

}

scope page_ErrorText {

Text b0 = { {
 { "ErrorText" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/ErrorText.h" , & fmt_text_Files_b }
 ,{ "CCore/src/ErrorText.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "file" }
 ,{ "defines" }
 ,{ "the" }
 ,{ "word" }
 ,{ "Success" , & fmt_text_b }
 ,{ ":" }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "and" }
 ,{ "the" }
 ,{ "simple" }
 ,{ "type" }
 ,{ "ErrorText" , & fmt_text_b }
 ,{ ":" }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "This" }
 ,{ "type" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "return" }
 ,{ "a" }
 ,{ "error" }
 ,{ "description." }
 ,{ "It" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "ok" , & fmt_text_b }
 ,{ "and" }
 ,{ "etext" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "first" }
 ,{ "indicates" }
 ,{ "success" }
 ,{ "of" }
 ,{ "the" }
 ,{ "operation," }
 ,{ "the" }
 ,{ "secind" }
 ,{ "is" }
 ,{ "a" }
 ,{ "error" }
 ,{ "description." }
 ,{ "The" }
 ,{ "third" }
 ,{ "constructor" }
 ,{ "trims" }
 ,{ "the" }
 ,{ "error" }
 ,{ "text" }
 ,{ "(it" }
 ,{ "is" }
 ,{ "assumed," }
 ,{ "the" }
 ,{ "text" }
 ,{ "is" }
 ,{ "created" }
 ,{ "in" }
 ,{ "some" }
 ,{ "buffer" }
 ,{ "and" }
 ,{ "can" }
 ,{ "outfit" }
 ,{ "it)." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "The" }
 ,{ "last" }
 ,{ "type" }
 ,{ "is" }
 ,{ "similar" }
 ,{ "to" }
 ,{ "the" }
 ,{ "ErrorText" , & fmt_text_b }
 ,{ "," }
 ,{ "it" }
 ,{ "contains" }
 ,{ "some" }
 ,{ "return" }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> ErrorText" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_EllipticPi#page , & page_EthDevice#page };

Link link = { &page } ;

}

scope page_EthDevice {

Text b0 = { {
 { "EthDevice" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/net/EthDevice.h" , & fmt_text_Files_b }
 ,{ "CCore/src/net/EthDevice.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "EthDevice" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "abstract" }
 ,{ "interface." }
 ,{ "This" }
 ,{ "interface" }
 ,{ "should" }
 ,{ "be" }
 ,{ "implemented" }
 ,{ "by" }
 ,{ "an" }
 ,{ "Ethernet" }
 ,{ "device" }
 ,{ "driver" }
 ,{ "class" }
 ,{ "to" }
 ,{ "be" }
 ,{ "used" }
 ,{ "as" }
 ,{ "such." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Methods" }
 ,{ "of" }
 ,{ "this" }
 ,{ "interface" }
 ,{ "are" }
 ,{ "called" }
 ,{ "asynchronously." }
 ,{ "The" }
 ,{ "implementation" }
 ,{ "must" }
 ,{ "take" }
 ,{ "all" }
 ,{ "necessary" }
 ,{ "measures" }
 ,{ "to" }
 ,{ "deal" }
 ,{ "with" }
 ,{ "the" }
 ,{ "race" }
 ,{ "condition." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "The" }
 ,{ "first" }
 ,{ "three" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "static" }
 ,{ "properties" }
 ,{ "of" }
 ,{ "the" }
 ,{ "device." }
 ,{ "They" }
 ,{ "must" }
 ,{ "not" }
 ,{ "be" }
 ,{ "changed" }
 ,{ "during" }
 ,{ "the" }
 ,{ "object" }
 ,{ "life-time." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "getAddress()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "MAC" }
 ,{ "address" }
 ,{ "of" }
 ,{ "the" }
 ,{ "device." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "getTxFormat()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "packet" , & fmt_text_a , & ..#page_Packet#link_PacketFormat }
 ,{ "format" , & fmt_text_a , & ..#page_Packet#link_PacketFormat }
 ,{ "for" }
 ,{ "outbound" }
 ,{ "operations." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "getRxFormat()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "format" }
 ,{ "for" }
 ,{ "inbound" }
 ,{ "operations." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "The" }
 ,{ "max_len" , & fmt_text_b }
 ,{ "of" }
 ,{ "both" }
 ,{ "packet" }
 ,{ "formats" }
 ,{ "must" }
 ,{ "be" }
 ,{ "represented" }
 ,{ "by" }
 ,{ "IPLen" , & fmt_text_b }
 ,{ "type" }
 ,{ "(i.e." }
 ,{ "must" }
 ,{ "not" }
 ,{ "exceed" }
 ,{ "2" }
 ,{ "16" }
 ,{ "-1)." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "To" }
 ,{ "process" }
 ,{ "the" }
 ,{ "traffic" }
 ,{ "a" }
 ,{ "traffic" }
 ,{ "processor" }
 ,{ "must" }
 ,{ "be" }
 ,{ "attached." }
 ,{ "Only" }
 ,{ "one" }
 ,{ "processor" }
 ,{ "may" }
 ,{ "be" }
 ,{ "attached" }
 ,{ "at" }
 ,{ "the" }
 ,{ "time." }
 ,{ "While" }
 ,{ "a" }
 ,{ "processor" }
 ,{ "is" }
 ,{ "attached," }
 ,{ "it" }
 ,{ "is" }
 ,{ "received" }
 ,{ "the" }
 ,{ "inbound" }
 ,{ "traffic" }
 ,{ "as" }
 ,{ "well" }
 ,{ "as" }
 ,{ "other" }
 ,{ "notification" }
 ,{ "events." }
 ,{ "It" }
 ,{ "also" }
 ,{ "serves" }
 ,{ "as" }
 ,{ "the" }
 ,{ "source" }
 ,{ "of" }
 ,{ "outbound" }
 ,{ "packets." }
 ,{ "It" }
 ,{ "must" }
 ,{ "stay" }
 ,{ "alive" }
 ,{ "while" }
 ,{ "been" }
 ,{ "attached." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "attach()" , & fmt_text_b }
 ,{ "attaches" }
 ,{ "the" }
 ,{ "inbound" }
 ,{ "processor." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "detach()" , & fmt_text_b }
 ,{ "detaches" }
 ,{ "the" }
 ,{ "inbound" }
 ,{ "processor." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "The" }
 ,{ "next" }
 ,{ "group" }
 ,{ "of" }
 ,{ "methods" }
 ,{ "deals" }
 ,{ "with" }
 ,{ "dynamic" }
 ,{ "properties" }
 ,{ "of" }
 ,{ "the" }
 ,{ "device." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "getStat()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "device" }
 ,{ "statistic" }
 ,{ "counters." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "getPromiscMode()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "promiscuous" }
 ,{ "mode" }
 ,{ "flag." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "setPromiscMode()" , & fmt_text_b }
 ,{ "sets" }
 ,{ "the" }
 ,{ "promiscuous" }
 ,{ "mode" }
 ,{ "flag." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "The" }
 ,{ "last" }
 ,{ "methods" }
 ,{ "signals" }
 ,{ "to" }
 ,{ "the" }
 ,{ "device," }
 ,{ "that" }
 ,{ "there" }
 ,{ "are" }
 ,{ "some" }
 ,{ "outbound" }
 ,{ "packets." }
 ,{ "In" }
 ,{ "response" }
 ,{ "driver" }
 ,{ "must" }
 ,{ "extract" }
 ,{ "and" }
 ,{ "send" }
 ,{ "out" }
 ,{ "packets" }
 ,{ "from" }
 ,{ "the" }
 ,{ "traffic" }
 ,{ "processor." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "signalOutbound()" , & fmt_text_b }
 ,{ "signals" }
 ,{ "to" }
 ,{ "push" }
 ,{ "outbound" }
 ,{ "process." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "EthStatInfo" }
} , & fmt_h4 , & align_h4 } ;

Text b19 = { {
 { "EthStatInfo" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "set" }
 ,{ "of" }
 ,{ "statistic" }
 ,{ "counters" }
 ,{ "for" }
 ,{ "Ethernet" }
 ,{ "driver." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "EthProc" }
} , & fmt_h4 , & align_h4 } ;

Text b21 = { {
 { "EthProc" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "abstract" }
 ,{ "interface" }
 ,{ "of" }
 ,{ "a" }
 ,{ "traffic" }
 ,{ "processor." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "It" }
 ,{ "is" }
 ,{ "a" }
 ,{ "responsibility" }
 ,{ "of" }
 ,{ "the" }
 ,{ "driver" }
 ,{ "to" }
 ,{ "call" }
 ,{ "methods" }
 ,{ "of" }
 ,{ "this" }
 ,{ "interface" }
 ,{ "synchronously." }
 ,{ "So" }
 ,{ "traffic" }
 ,{ "processor" }
 ,{ "don't" }
 ,{ "have" }
 ,{ "to" }
 ,{ "protect" }
 ,{ "method" }
 ,{ "calls" }
 ,{ "by" }
 ,{ "a" }
 ,{ "mutex." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "start()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "once" }
 ,{ "at" }
 ,{ "the" }
 ,{ "moment" }
 ,{ "the" }
 ,{ "driver" }
 ,{ "is" }
 ,{ "started." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "linkUp()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "to" }
 ,{ "inform" }
 ,{ "the" }
 ,{ "link" }
 ,{ "is" }
 ,{ "up." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "linkDown()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "to" }
 ,{ "inform" }
 ,{ "the" }
 ,{ "link" }
 ,{ "is" }
 ,{ "down." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "tick()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "periodically" }
 ,{ "with" }
 ,{ "the" }
 ,{ "frequence" }
 ,{ "InboundTicksPerSec" , & fmt_text_b }
 ,{ "(10" }
 ,{ "Hz)" }
 ,{ "and" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "for" }
 ,{ "a" }
 ,{ "protocols" }
 ,{ "timeout" }
 ,{ "processing." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "inbound()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "to" }
 ,{ "process" }
 ,{ "an" }
 ,{ "inbound" }
 ,{ "Ethernet" }
 ,{ "packet." }
 ,{ "The" }
 ,{ "packet" , & fmt_text_b }
 ,{ "has" }
 ,{ "the" }
 ,{ "proper" }
 ,{ "packet" }
 ,{ "format" }
 ,{ "(" }
 ,{ "getRxFormat()" , & fmt_text_b }
 ,{ ")" }
 ,{ "and" }
 ,{ "has" }
 ,{ "the" }
 ,{ "attached" }
 ,{ "extension" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "EthRxExt" , & fmt_text_b }
 ,{ "with" }
 ,{ "additional" }
 ,{ "information." }
 ,{ "Packet" }
 ,{ "carries" }
 ,{ "an" }
 ,{ "Ethernet" }
 ,{ "packet" }
 ,{ "payload." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "prepareOutbound()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "to" }
 ,{ "process" }
 ,{ "the" }
 ,{ "outbound" }
 ,{ "traffic." }
 ,{ "This" }
 ,{ "method" }
 ,{ "is" }
 ,{ "called" }
 ,{ "first" }
 ,{ "as" }
 ,{ "the" }
 ,{ "reaction" }
 ,{ "on" }
 ,{ "the" }
 ,{ "signalOutbound()" , & fmt_text_b }
 ,{ "method" }
 ,{ "call." }
 ,{ "Then" }
 ,{ "driver" }
 ,{ "extracts" }
 ,{ "and" }
 ,{ "sends" }
 ,{ "out" }
 ,{ "packets" }
 ,{ "by" }
 ,{ "the" }
 ,{ "calling" }
 ,{ "of" }
 ,{ "the" }
 ,{ "method" }
 ,{ "outbound()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "outbound()" , & fmt_text_b }
 ,{ "method" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "retrieve" }
 ,{ "packets" }
 ,{ "from" }
 ,{ "the" }
 ,{ "outbound" }
 ,{ "packet" }
 ,{ "queue." }
 ,{ "The" }
 ,{ "null" }
 ,{ "packet" }
 ,{ "is" }
 ,{ "returned," }
 ,{ "if" }
 ,{ "the" }
 ,{ "queue" }
 ,{ "is" }
 ,{ "empty." }
 ,{ "The" }
 ,{ "packet" }
 ,{ "must" }
 ,{ "carry" }
 ,{ "Ethernet" }
 ,{ "payload" }
 ,{ "and" }
 ,{ "must" }
 ,{ "have" }
 ,{ "the" }
 ,{ "proper" }
 ,{ "packet" }
 ,{ "format" }
 ,{ "(" }
 ,{ "getTxFormat()" , & fmt_text_b }
 ,{ ")." }
 ,{ "It" }
 ,{ "also" }
 ,{ "has" }
 ,{ "the" }
 ,{ "attached" }
 ,{ "packet" }
 ,{ "extension" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "EthTxExt" , & fmt_text_b }
 ,{ "with" }
 ,{ "additional" }
 ,{ "information." }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "stop()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "once" }
 ,{ "at" }
 ,{ "the" }
 ,{ "moment" }
 ,{ "the" }
 ,{ "driver" }
 ,{ "is" }
 ,{ "stopped." }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "It" }
 ,{ "is" }
 ,{ "intended" }
 ,{ "that" }
 ,{ "packet" }
 ,{ "formats" }
 ,{ "reserve" }
 ,{ "a" }
 ,{ "space" }
 ,{ "for" }
 ,{ "Ethernet" }
 ,{ "packet" }
 ,{ "header" }
 ,{ "and" }
 ,{ "uses" }
 ,{ "max_data" , & fmt_text_b }
 ,{ "to" }
 ,{ "reflect" }
 ,{ "the" }
 ,{ "MTU" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b32 = { {
 { "A" }
 ,{ "typical" }
 ,{ "implementation" }
 ,{ "of" }
 ,{ "the" }
 ,{ "Ethernet" }
 ,{ "driver" }
 ,{ "would" }
 ,{ "start" }
 ,{ "a" }
 ,{ "task" }
 ,{ "for" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "processing" }
 ,{ "(\"Ethernet" }
 ,{ "task\")." }
 ,{ "It" }
 ,{ "is" }
 ,{ "assumed," }
 ,{ "that" }
 ,{ "a" }
 ,{ "traffic" }
 ,{ "processor" }
 ,{ "is" }
 ,{ "attached" }
 ,{ "first" }
 ,{ "and" }
 ,{ "then" }
 ,{ "task" }
 ,{ "is" }
 ,{ "started." }
 ,{ "At" }
 ,{ "that" }
 ,{ "moment" }
 ,{ "the" }
 ,{ "method" }
 ,{ "start()" , & fmt_text_b }
 ,{ "is" }
 ,{ "called." }
 ,{ "At" }
 ,{ "the" }
 ,{ "proper" }
 ,{ "moment" }
 ,{ "a" }
 ,{ "management" }
 ,{ "entity" }
 ,{ "should" }
 ,{ "stop" }
 ,{ "the" }
 ,{ "task," }
 ,{ "the" }
 ,{ "task" }
 ,{ "calls" }
 ,{ "stop()" , & fmt_text_b }
 ,{ "before" }
 ,{ "exit." }
 ,{ "Then" }
 ,{ "traffic" }
 ,{ "processor" }
 ,{ "is" }
 ,{ "detached" }
 ,{ "and" }
 ,{ "may" }
 ,{ "be" }
 ,{ "destroyed," }
 ,{ "as" }
 ,{ "well" }
 ,{ "as" }
 ,{ "the" }
 ,{ "driver" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b33 = { {
 { "EthTxExt" }
} , & fmt_h4 , & align_h4 } ;

Text b34 = { {
 { "This" }
 ,{ "structure" }
 ,{ "supplements" }
 ,{ "outbound" }
 ,{ "packets" }
 ,{ "and" }
 ,{ "used" }
 ,{ "by" }
 ,{ "a" }
 ,{ "driver" }
 ,{ "to" }
 ,{ "build" }
 ,{ "the" }
 ,{ "Ethernet" }
 ,{ "packet" }
 ,{ "header." }
 ,{ "It" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "dst" , & fmt_text_b }
 ,{ "with" }
 ,{ "a" }
 ,{ "destination" }
 ,{ "MAC" }
 ,{ "address" }
 ,{ "and" }
 ,{ "type" , & fmt_text_b }
 ,{ "with" }
 ,{ "an" }
 ,{ "Ethernet" }
 ,{ "packet" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b35 = { {
 { "EthRxExt" }
} , & fmt_h4 , & align_h4 } ;

Text b36 = { {
 { "This" }
 ,{ "structure" }
 ,{ "supplements" }
 ,{ "inbound" }
 ,{ "packets" }
 ,{ "and" }
 ,{ "filled" }
 ,{ "by" }
 ,{ "a" }
 ,{ "driver" }
 ,{ "from" }
 ,{ "the" }
 ,{ "Ethernet" }
 ,{ "packet" }
 ,{ "header." }
 ,{ "It" }
 ,{ "has" }
 ,{ "three" }
 ,{ "fields:" }
 ,{ "src" , & fmt_text_b }
 ,{ "with" }
 ,{ "a" }
 ,{ "source" }
 ,{ "MAC" }
 ,{ "address," }
 ,{ "dst" , & fmt_text_b }
 ,{ "with" }
 ,{ "a" }
 ,{ "destination" }
 ,{ "MAC" }
 ,{ "address" }
 ,{ "and" }
 ,{ "type" , & fmt_text_b }
 ,{ "with" }
 ,{ "an" }
 ,{ "Ethernet" }
 ,{ "packet" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> EthDevice" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_text , outer_text , back_text }
 ,{ & b32 , null , inner_text , outer_text , back_text }
 ,{ & b33 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b34 , null , inner_text , outer_text , back_text }
 ,{ & b35 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b36 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_ErrorText#page , & page_EuclidRotate#page };

Link link = { &page } ;

}

scope page_EuclidRotate {

Text b0 = { {
 { "EuclidRotate" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/algon/EuclidRotate.h" , & fmt_text_Files_b }
 ,{ "CCore/src/algon/EuclidRotate.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "EuclidRotateAlgo" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "Algorithm" , & fmt_text_b }
 ,{ "Package" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "parametrized" }
 ,{ "by" }
 ,{ "a" }
 ,{ "generalized" }
 ,{ "range" }
 ,{ "type" }
 ,{ "and" }
 ,{ "contains" }
 ,{ "range" }
 ,{ "rotation" }
 ,{ "algorithms." }
 ,{ "The" }
 ,{ "second" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "is" }
 ,{ "defaulted" }
 ,{ "to" }
 ,{ "the" }
 ,{ "BaseRangeAlgo<R>" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Rotate()" , & fmt_text_b }
 ,{ "rotates" }
 ,{ "the" }
 ,{ "range." }
 ,{ "Rotation" }
 ,{ "is" }
 ,{ "a" }
 ,{ "permutation" }
 ,{ "of" }
 ,{ "range" }
 ,{ "elements," }
 ,{ "it" }
 ,{ "can" }
 ,{ "be" }
 ,{ "considered" }
 ,{ "as" }
 ,{ "the" }
 ,{ "swapping" }
 ,{ "two" }
 ,{ "subranges:" }
 ,{ "prefix" }
 ,{ "and" }
 ,{ "suffix." }
 ,{ "prefix" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "prefix" }
 ,{ "length," }
 ,{ "suffix" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "suffix" }
 ,{ "length." }
 ,{ "Permutation" }
 ,{ "is" }
 ,{ "performed" }
 ,{ "by" }
 ,{ "the" }
 ,{ "swapping" }
 ,{ "elements." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Rotate_prefix()" , & fmt_text_b }
 ,{ "rotates" }
 ,{ "the" }
 ,{ "range," }
 ,{ "prefix" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "prefix" }
 ,{ "length." }
 ,{ "It" }
 ,{ "is" }
 ,{ "a" }
 ,{ "rotation" }
 ,{ "left" }
 ,{ "by" }
 ,{ "prefix" , & fmt_text_b }
 ,{ "elements." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "Rotate_suffix()" , & fmt_text_b }
 ,{ "rotates" }
 ,{ "the" }
 ,{ "range," }
 ,{ "suffix" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "suffix" }
 ,{ "length." }
 ,{ "It" }
 ,{ "is" }
 ,{ "a" }
 ,{ "rotation" }
 ,{ "right" }
 ,{ "by" }
 ,{ "suffix" , & fmt_text_b }
 ,{ "elements." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "family" }
 ,{ "of" }
 ,{ "functions" }
 ,{ "for" }
 ,{ "the" }
 ,{ "range" }
 ,{ "rotation." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "They" }
 ,{ "call" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "rotate" }
 ,{ "algorithms" }
 ,{ "from" }
 ,{ "the" }
 ,{ "EuclidRotateAlgo" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> EuclidRotate" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_EthDevice#page , & page_Event#page };

Link link = { &page } ;

}

scope page_Event {

Text b0 = { {
 { "Event" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/task/Event.h" , & fmt_text_Files_b }
 ,{ "CCore/src/task/Event.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Event" , & fmt_text_b }
 ,{ "is" }
 ,{ "similar" }
 ,{ "to" }
 ,{ "the" }
 ,{ "Sem" , & fmt_text_b }
 ,{ "." }
 ,{ "But" }
 ,{ "instead" }
 ,{ "of" }
 ,{ "counter" }
 ,{ "it" }
 ,{ "has" }
 ,{ "a" }
 ,{ "boolean" }
 ,{ "flag" }
 ,{ "as" }
 ,{ "an" }
 ,{ "internal" }
 ,{ "logical" }
 ,{ "state." }
 ,{ "The" }
 ,{ "method" }
 ,{ "trigger()" , & fmt_text_b }
 ,{ "sets" }
 ,{ "this" }
 ,{ "flag." }
 ,{ "And" }
 ,{ "the" }
 ,{ "method" }
 ,{ "wait()" , & fmt_text_b }
 ,{ "clears" }
 ,{ "it" }
 ,{ "if" }
 ,{ "it" }
 ,{ "is" }
 ,{ "set." }
 ,{ "But" }
 ,{ "if" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "is" }
 ,{ "cleared," }
 ,{ "the" }
 ,{ "method" }
 ,{ "is" }
 ,{ "waiting" }
 ,{ "until" }
 ,{ "it" }
 ,{ "can" }
 ,{ "be" }
 ,{ "performed." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "The" }
 ,{ "event" }
 ,{ "\"basket\"" }
 ,{ "can" }
 ,{ "store" }
 ,{ "only" }
 ,{ "one" }
 ,{ "apple." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "The" }
 ,{ "constructor" }
 ,{ "argument" }
 ,{ "flag" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "initial" }
 ,{ "event" }
 ,{ "state." }
 ,{ "It" }
 ,{ "is" }
 ,{ "false" , & fmt_text_b }
 ,{ "by" }
 ,{ "default." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "trigger()" , & fmt_text_b }
 ,{ "sets" }
 ,{ "the" }
 ,{ "flag." }
 ,{ "If" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "is" }
 ,{ "already" }
 ,{ "set," }
 ,{ "the" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "false" , & fmt_text_b }
 ,{ "," }
 ,{ "otherwise" }
 ,{ "it" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "try_wait()" , & fmt_text_b }
 ,{ "tries" }
 ,{ "to" }
 ,{ "consume" }
 ,{ "the" }
 ,{ "event." }
 ,{ "This" }
 ,{ "method" }
 ,{ "never" }
 ,{ "blocks." }
 ,{ "If" }
 ,{ "the" }
 ,{ "event" }
 ,{ "is" }
 ,{ "not" }
 ,{ "triggered," }
 ,{ "the" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "false" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "wait()" , & fmt_text_b }
 ,{ "waits" }
 ,{ "until" }
 ,{ "the" }
 ,{ "event" }
 ,{ "can" }
 ,{ "be" }
 ,{ "consumed" }
 ,{ "and" }
 ,{ "consume" }
 ,{ "it." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "wait(MSec)" , & fmt_text_b }
 ,{ "and" }
 ,{ "wait(TimeScope)" , & fmt_text_b }
 ,{ "are" }
 ,{ "timed" }
 ,{ "variants" }
 ,{ "of" }
 ,{ "the" }
 ,{ "wait()" , & fmt_text_b }
 ,{ "." }
 ,{ "These" }
 ,{ "methods" }
 ,{ "wait" }
 ,{ "up" }
 ,{ "to" }
 ,{ "the" }
 ,{ "specified" }
 ,{ "timeout" }
 ,{ "is" }
 ,{ "expired," }
 ,{ "then" }
 ,{ "operation" }
 ,{ "failed." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "method" }
 ,{ "was" }
 ,{ "successful." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "HCore" }
 ,{ "Event" }
} , & fmt_h4 , & align_h4 } ;

Text b10 = { {
 { "HCore" , & fmt_text_b }
 ,{ "Event" , & fmt_text_b }
 ,{ "has" }
 ,{ "the" }
 ,{ "common" }
 ,{ "interface." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "XCore" }
 ,{ "Event" }
} , & fmt_h4 , & align_h4 } ;

Text b12 = { {
 { "XCore" , & fmt_text_b }
 ,{ "Event" , & fmt_text_b }
 ,{ "is" }
 ,{ "essentially" }
 ,{ "the" }
 ,{ "same," }
 ,{ "but" }
 ,{ "has" }
 ,{ "trigger()" , & fmt_text_b }
 ,{ "method" }
 ,{ "variants" }
 ,{ "for" }
 ,{ "different" }
 ,{ "execution" }
 ,{ "contexts." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Event" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b12 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_EuclidRotate#page , & page_EventRecord#page };

Link link = { &page } ;

}

scope page_EventRecord {

Text b0 = { {
 { "Event" }
 ,{ "Recording" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/EventRecorder.h" , & fmt_text_Files_b }
 ,{ "CCore/src/EventRecorder.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Files" }
 ,{ "CCore/inc/task/TaskEvent.h" , & fmt_text_Files_b }
 ,{ "CCore/src/task/TaskEvent.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b3 = { {
 { "Event" }
 ,{ "recorder" }
 ,{ "is" }
 ,{ "a" }
 ,{ "tool" }
 ,{ "to" }
 ,{ "trace" }
 ,{ "an" }
 ,{ "application" }
 ,{ "execution." }
 ,{ "It" }
 ,{ "record" }
 ,{ "events:" }
 ,{ "small" }
 ,{ "data" }
 ,{ "structures" }
 ,{ "with" }
 ,{ "high-precision" }
 ,{ "time-stamp" }
 ,{ "and" }
 ,{ "event" }
 ,{ "id." }
 ,{ "An" }
 ,{ "event" }
 ,{ "may" }
 ,{ "also" }
 ,{ "contain" }
 ,{ "some" }
 ,{ "additional" }
 ,{ "descriptive" }
 ,{ "fields." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Event" }
 ,{ "recorder" }
 ,{ "is" }
 ,{ "efficient," }
 ,{ "event" }
 ,{ "record" }
 ,{ "operation" }
 ,{ "takes" }
 ,{ "only" }
 ,{ "a" }
 ,{ "small" }
 ,{ "number" }
 ,{ "of" }
 ,{ "CPU" }
 ,{ "clocks." }
 ,{ "On" }
 ,{ "XCore" , & fmt_text_b }
 ,{ "targets" }
 ,{ "recording" }
 ,{ "is" }
 ,{ "permitted" }
 ,{ "in" }
 ,{ "any" }
 ,{ "context," }
 ,{ "including" }
 ,{ "interrupt" }
 ,{ "context." }
 ,{ "Once" }
 ,{ "recording" }
 ,{ "if" }
 ,{ "finished," }
 ,{ "you" }
 ,{ "can" }
 ,{ "save" }
 ,{ "recorded" }
 ,{ "data" }
 ,{ "in" }
 ,{ "a" }
 ,{ "binary" }
 ,{ "form" }
 ,{ "and" }
 ,{ "transport" }
 ,{ "it" }
 ,{ "to" }
 ,{ "a" }
 ,{ "host" }
 ,{ "machine." }
 ,{ "Binary" }
 ,{ "representation" }
 ,{ "contains" }
 ,{ "meta-information," }
 ,{ "which" }
 ,{ "helps" }
 ,{ "display" }
 ,{ "events" }
 ,{ "in" }
 ,{ "a" }
 ,{ "user-friendly" }
 ,{ "fashion." }
 ,{ "The" }
 ,{ "data" }
 ,{ "format" }
 ,{ "is" }
 ,{ "standard." }
 ,{ "CCore" , & fmt_text_b }
 ,{ "has" }
 ,{ "a" }
 ,{ "prototype" }
 ,{ "tool" }
 ,{ "EventView" , & fmt_text_b }
 ,{ "to" }
 ,{ "display" }
 ,{ "and" }
 ,{ "work" }
 ,{ "with" }
 ,{ "event" }
 ,{ "records." }
 ,{ "You" }
 ,{ "may" }
 ,{ "also" }
 ,{ "create" }
 ,{ "and" }
 ,{ "use" }
 ,{ "your" }
 ,{ "own" }
 ,{ "such" }
 ,{ "tools" }
 ,{ "for" }
 ,{ "your" }
 ,{ "particular" }
 ,{ "purpose." }
} , & fmt_text , & align_text } ;

Bitmap b5 = { "EventView.zipmap" } ;

Text b6 = { {
 { "EventRecorder" }
} , & fmt_h2 , & align_h2 } ;

Text b7 = { {
 { "There" }
 ,{ "are" }
 ,{ "two" }
 ,{ "main" }
 ,{ "event" }
 ,{ "recording" }
 ,{ "classes:" }
 ,{ "EventRecorderHost" , & fmt_text_b }
 ,{ "and" }
 ,{ "EventRecorder" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "first" }
 ,{ "serves" }
 ,{ "as" }
 ,{ "a" }
 ,{ "recoding" }
 ,{ "operation" }
 ,{ "class." }
 ,{ "The" }
 ,{ "second" }
 ,{ "is" }
 ,{ "a" }
 ,{ "recording" }
 ,{ "operation" }
 ,{ "buffer." }
 ,{ "Normally," }
 ,{ "you" }
 ,{ "create" }
 ,{ "a" }
 ,{ "global" }
 ,{ "object" }
 ,{ "of" }
 ,{ "the" }
 ,{ "first" }
 ,{ "type" }
 ,{ "(or" }
 ,{ "use" }
 ,{ "the" }
 ,{ "default" }
 ,{ "one)" }
 ,{ "and" }
 ,{ "use" }
 ,{ "it" }
 ,{ "for" }
 ,{ "the" }
 ,{ "event" }
 ,{ "recording." }
 ,{ "Events" }
 ,{ "are" }
 ,{ "not" }
 ,{ "recorded," }
 ,{ "unless" }
 ,{ "some" }
 ,{ "EventRecorder" , & fmt_text_b }
 ,{ "is" }
 ,{ "attached" }
 ,{ "to" }
 ,{ "the" }
 ,{ "EventRecorderHost" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "Both" }
 ,{ "HCore" , & fmt_text_b }
 ,{ "and" }
 ,{ "XCore" , & fmt_text_b }
 ,{ "provides" }
 ,{ "default" }
 ,{ "event" }
 ,{ "recorders." }
 ,{ "They" }
 ,{ "are" }
 ,{ "declared" }
 ,{ "in" }
 ,{ "the" }
 ,{ "header" }
 ,{ "task/TaskEvent.h" , & fmt_text_b }
 ,{ "," }
 ,{ "included" }
 ,{ "in" }
 ,{ "the" }
 ,{ "Task.h" , & fmt_text_b }
 ,{ "." }
 ,{ "To" }
 ,{ "enable" }
 ,{ "event" }
 ,{ "recording," }
 ,{ "you" }
 ,{ "have" }
 ,{ "to" }
 ,{ "uncomment" }
 ,{ "the" }
 ,{ "following" }
 ,{ "line:" }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "and" }
 ,{ "rebuild" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "." }
 ,{ "You" }
 ,{ "may" }
 ,{ "also" }
 ,{ "comment" }
 ,{ "or" }
 ,{ "uncomment" }
 ,{ "the" }
 ,{ "lines:" }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "to" }
 ,{ "control" }
 ,{ "the" }
 ,{ "recording" }
 ,{ "of" }
 ,{ "the" }
 ,{ "particular" }
 ,{ "event" }
 ,{ "classes." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "Below" }
 ,{ "is" }
 ,{ "a" }
 ,{ "default" }
 ,{ "recoding" }
 ,{ "object" }
 ,{ "declarations:" }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "The" }
 ,{ "class" }
 ,{ "TaskEventAlgo" , & fmt_text_b }
 ,{ "contains" }
 ,{ "some" }
 ,{ "basic" }
 ,{ "algorithms," }
 ,{ "required" }
 ,{ "by" }
 ,{ "the" }
 ,{ "class" }
 ,{ "EventRecorder" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "Core" , & fmt_text_b }
 ,{ "-specific." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "TaskEventRecorder" , & fmt_text_b }
 ,{ "and" }
 ,{ "TaskEventHostType" , & fmt_text_b }
 ,{ "are" }
 ,{ "the" }
 ,{ "default" }
 ,{ "recorder" }
 ,{ "and" }
 ,{ "the" }
 ,{ "recorder" }
 ,{ "host" }
 ,{ "types." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "TaskEventHost" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "default" }
 ,{ "event" }
 ,{ "recorder" }
 ,{ "host," }
 ,{ "it" }
 ,{ "should" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "record" }
 ,{ "events." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "To" }
 ,{ "record" }
 ,{ "an" }
 ,{ "event" }
 ,{ "you" }
 ,{ "have" }
 ,{ "to" }
 ,{ "use" }
 ,{ "one" }
 ,{ "of" }
 ,{ "the" }
 ,{ "methods:" }
 ,{ "add()" , & fmt_text_b }
 ,{ "," }
 ,{ "addSync()" , & fmt_text_b }
 ,{ "," }
 ,{ "addProto()" , & fmt_text_b }
 ,{ "and" }
 ,{ "addDev()" , & fmt_text_b }
 ,{ "." }
 ,{ "They" }
 ,{ "do" }
 ,{ "the" }
 ,{ "same" }
 ,{ "thing:" }
 ,{ "record" }
 ,{ "an" }
 ,{ "event." }
 ,{ "The" }
 ,{ "difference" }
 ,{ "is:" }
 ,{ "some" }
 ,{ "of" }
 ,{ "these" }
 ,{ "methods" }
 ,{ "can" }
 ,{ "be" }
 ,{ "defined" }
 ,{ "as" }
 ,{ "NOP" }
 ,{ "operations," }
 ,{ "by" }
 ,{ "commenting" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "macros." }
 ,{ "It" }
 ,{ "allows" }
 ,{ "to" }
 ,{ "filter" }
 ,{ "out" }
 ,{ "events" }
 ,{ "by" }
 ,{ "their" }
 ,{ "sources." }
 ,{ "Sync" , & fmt_text_b }
 ,{ "events" }
 ,{ "come" }
 ,{ "from" }
 ,{ "synchronization" }
 ,{ "classes," }
 ,{ "Proto" , & fmt_text_b }
 ,{ "events" }
 ,{ "come" }
 ,{ "from" }
 ,{ "protocols" }
 ,{ "and" }
 ,{ "Dev" , & fmt_text_b }
 ,{ "events" }
 ,{ "come" }
 ,{ "from" }
 ,{ "device" }
 ,{ "drivers." }
 ,{ "Any" }
 ,{ "other" }
 ,{ "events" }
 ,{ "come" }
 ,{ "from" }
 ,{ "the" }
 ,{ "application" }
 ,{ "layer." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "tick()" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "add" }
 ,{ "tick" }
 ,{ "events." }
 ,{ "You" }
 ,{ "done" }
 ,{ "need" }
 ,{ "to" }
 ,{ "call" }
 ,{ "this" }
 ,{ "method" }
 ,{ "directly." }
 ,{ "On" }
 ,{ "XCore" , & fmt_text_b }
 ,{ "it" }
 ,{ "is" }
 ,{ "called" }
 ,{ "from" }
 ,{ "the" }
 ,{ "timer" }
 ,{ "interrupt." }
 ,{ "On" }
 ,{ "HCore" , & fmt_text_b }
 ,{ "there" }
 ,{ "is" }
 ,{ "a" }
 ,{ "special" }
 ,{ "task" }
 ,{ "to" }
 ,{ "generate" }
 ,{ "this" }
 ,{ "event." }
 ,{ "You" }
 ,{ "have" }
 ,{ "to" }
 ,{ "start" }
 ,{ "it" }
 ,{ "manually." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "The" }
 ,{ "inner" }
 ,{ "class" }
 ,{ "StartStop" , & fmt_text_b }
 ,{ "starts" }
 ,{ "and" }
 ,{ "stops" }
 ,{ "the" }
 ,{ "event" }
 ,{ "recording." }
 ,{ "Its" }
 ,{ "constructor" }
 ,{ "starts" }
 ,{ "the" }
 ,{ "process," }
 ,{ "the" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "recorder" }
 ,{ "host," }
 ,{ "the" }
 ,{ "second" }
 ,{ "is" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "recorder" }
 ,{ "buffer." }
 ,{ "Destructor" }
 ,{ "stops" }
 ,{ "the" }
 ,{ "recording." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "EventRecorderHost" }
} , & fmt_h3 , & align_h3 } ;

Text b19 = { {
 { "This" }
 ,{ "class" }
 ,{ "implements" }
 ,{ "the" }
 ,{ "event" }
 ,{ "recording" }
 ,{ "logic" }
 ,{ "and" }
 ,{ "the" }
 ,{ "recorder" }
 ,{ "attach/detach" }
 ,{ "logic." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "StartStop" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "start/stop" }
 ,{ "recording." }
 ,{ "Constructors" }
 ,{ "starts" }
 ,{ "operations," }
 ,{ "destructor" }
 ,{ "stops" }
 ,{ "them." }
 ,{ "The" }
 ,{ "recorder" , & fmt_text_b }
 ,{ "must" }
 ,{ "live" }
 ,{ "while" }
 ,{ "the" }
 ,{ "recording" }
 ,{ "is" }
 ,{ "running." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "add()" , & fmt_text_b }
 ,{ "adds" }
 ,{ "an" }
 ,{ "event." }
 ,{ "The" }
 ,{ "event" }
 ,{ "type" }
 ,{ "must" }
 ,{ "be" }
 ,{ "provided" }
 ,{ "as" }
 ,{ "well" }
 ,{ "as" }
 ,{ "required" }
 ,{ "by" }
 ,{ "this" }
 ,{ "type" }
 ,{ "event" }
 ,{ "arguments." }
 ,{ "The" }
 ,{ "type" }
 ,{ "must" }
 ,{ "follow" }
 ,{ "the" }
 ,{ "event" }
 ,{ "type" }
 ,{ "class" }
 ,{ "rules." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "tick()" , & fmt_text_b }
 ,{ "adds" }
 ,{ "the" }
 ,{ "tick" }
 ,{ "EventControl" , & fmt_text_b }
 ,{ "event." }
 ,{ "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "special" }
 ,{ "event" }
 ,{ "type:" }
 ,{ "EventControl" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "start" }
 ,{ "event" }
 ,{ "of" }
 ,{ "this" }
 ,{ "types" }
 ,{ "begins" }
 ,{ "the" }
 ,{ "recording," }
 ,{ "stop" }
 ,{ "event" }
 ,{ "ends" }
 ,{ "it" }
 ,{ "and" }
 ,{ "tick" }
 ,{ "events" }
 ,{ "must" }
 ,{ "be" }
 ,{ "generated" }
 ,{ "periodically." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "EventRecorder" }
} , & fmt_h3 , & align_h3 } ;

Text b24 = { {
 { "The" }
 ,{ "class" }
 ,{ "EventRecorder" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "recorder" }
 ,{ "class." }
 ,{ "It" }
 ,{ "stores" }
 ,{ "recorded" }
 ,{ "events." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "Constructor" }
 ,{ "creates" }
 ,{ "an" }
 ,{ "object" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "event" }
 ,{ "buffer" }
 ,{ "capacity." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "add()" , & fmt_text_b }
 ,{ "adds" }
 ,{ "an" }
 ,{ "event." }
 ,{ "The" }
 ,{ "first" }
 ,{ "template" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "event" }
 ,{ "object" }
 ,{ "type" }
 ,{ "and" }
 ,{ "must" }
 ,{ "be" }
 ,{ "provided" }
 ,{ "explicitly." }
 ,{ "If" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "enough" }
 ,{ "space" }
 ,{ "the" }
 ,{ "event" }
 ,{ "is" }
 ,{ "discarded." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "parse()" , & fmt_text_b }
 ,{ "iterates" }
 ,{ "over" }
 ,{ "the" }
 ,{ "recorder" }
 ,{ "content." }
 ,{ "For" }
 ,{ "each" }
 ,{ "recorded" }
 ,{ "event" }
 ,{ "the" }
 ,{ "given" }
 ,{ "functor" }
 ,{ "is" }
 ,{ "called" }
 ,{ "with" }
 ,{ "three" }
 ,{ "arguments:" }
 ,{ "EventMetaInfo" , & fmt_text_b }
 ,{ "constant" }
 ,{ "reference," }
 ,{ "the" }
 ,{ "event" }
 ,{ "EventMetaInfo::EventDesc" , & fmt_text_b }
 ,{ "constant" }
 ,{ "reference" }
 ,{ "and" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "event" }
 ,{ "record." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "save()" , & fmt_text_b }
 ,{ "saves" }
 ,{ "the" }
 ,{ "recorder" }
 ,{ "content" }
 ,{ "in" }
 ,{ "a" }
 ,{ "binary" }
 ,{ "form" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "binary" , & fmt_text_a , & ..#page_SaveLoad#link }
 ,{ "output" , & fmt_text_a , & ..#page_SaveLoad#link }
 ,{ "device" , & fmt_text_a , & ..#page_SaveLoad#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "print()" , & fmt_text_b }
 ,{ "prints" }
 ,{ "the" }
 ,{ "recorder" }
 ,{ "content" }
 ,{ "(can" }
 ,{ "be" }
 ,{ "a" }
 ,{ "large" }
 ,{ "output)." }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "You" }
 ,{ "may" }
 ,{ "find" }
 ,{ "an" }
 ,{ "example" }
 ,{ "of" }
 ,{ "the" }
 ,{ "event" }
 ,{ "recording" }
 ,{ "in" }
 ,{ "the" }
 ,{ "test3028.PTP.cpp" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "TaskEventAlgo" }
} , & fmt_h2 , & align_h2 } ;

Text b32 = { {
 { "This" }
 ,{ "is" }
 ,{ "a" }
 ,{ "core-specific" }
 ,{ "structure" }
 ,{ "with" }
 ,{ "some" }
 ,{ "basic" }
 ,{ "algorithms." }
} , & fmt_text , & align_text } ;

Text b33 = { {
 { "RecordAlign" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "memory" }
 ,{ "alignment" }
 ,{ "for" }
 ,{ "event" }
 ,{ "types." }
 ,{ "This" }
 ,{ "value" }
 ,{ "equals" }
 ,{ "4" }
 ,{ "both" }
 ,{ "for" }
 ,{ "HCore" , & fmt_text_b }
 ,{ "and" }
 ,{ "XCore" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "means" }
 ,{ "any" }
 ,{ "event" }
 ,{ "type" }
 ,{ "must" }
 ,{ "not" }
 ,{ "have" }
 ,{ "stronger" }
 ,{ "alignment" }
 ,{ "requirement" }
 ,{ "than" }
 ,{ "this" }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Text b34 = { {
 { "TimeFreq" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "time-stamp" }
 ,{ "frequency." }
 ,{ "This" }
 ,{ "value" }
 ,{ "is" }
 ,{ "0" }
 ,{ "for" }
 ,{ "HCore" , & fmt_text_b }
 ,{ "and" }
 ,{ "a" }
 ,{ "real" }
 ,{ "timer" }
 ,{ "interrupt" }
 ,{ "frequency" }
 ,{ "on" }
 ,{ "XCore" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b35 = { {
 { "The" }
 ,{ "last" }
 ,{ "member" }
 ,{ "is" }
 ,{ "the" }
 ,{ "class" }
 ,{ "AllocPos" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "allocate" }
 ,{ "a" }
 ,{ "space" }
 ,{ "for" }
 ,{ "an" }
 ,{ "event" }
 ,{ "and" }
 ,{ "time-stamp" }
 ,{ "it." }
 ,{ "The" }
 ,{ "implementation" }
 ,{ "is" }
 ,{ "differ" }
 ,{ "on" }
 ,{ "XCore" , & fmt_text_b }
 ,{ "than" }
 ,{ "on" }
 ,{ "HCore" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b36 = { {
 { "TickTask" }
} , & fmt_h2 , & align_h2 } ;

Text b37 = { {
 { "This" }
 ,{ "class" }
 ,{ "is" }
 ,{ "used" }
 ,{ "on" }
 ,{ "HCore" , & fmt_text_b }
 ,{ "to" }
 ,{ "inject" }
 ,{ "tick" }
 ,{ "events" }
 ,{ "with" }
 ,{ "10" }
 ,{ "Hz" }
 ,{ "frequency." }
} , & fmt_text , & align_text } ;

Text b38 = { {
 { "Constructor" }
 ,{ "starts" }
 ,{ "the" }
 ,{ "tick" }
 ,{ "task," }
 ,{ "destructor" }
 ,{ "stops" }
 ,{ "it." }
 ,{ "You" }
 ,{ "should" }
 ,{ "always" }
 ,{ "use" }
 ,{ "this" }
 ,{ "class" }
 ,{ "on" }
 ,{ "HCore" , & fmt_text_b }
 ,{ "targets" }
 ,{ "to" }
 ,{ "properly" }
 ,{ "time" }
 ,{ "events," }
 ,{ "because" }
 ,{ "the" }
 ,{ "time-stamp" }
 ,{ "frequency" }
 ,{ "is" }
 ,{ "unknown" }
 ,{ "and" }
 ,{ "may" }
 ,{ "vary." }
} , & fmt_text , & align_text } ;

Text b39 = { {
 { "The" }
 ,{ "class" }
 ,{ "with" }
 ,{ "the" }
 ,{ "same" }
 ,{ "name" }
 ,{ "exists" }
 ,{ "on" }
 ,{ "XCore" , & fmt_text_b }
 ,{ "also," }
 ,{ "but" }
 ,{ "it" }
 ,{ "is" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Text b40 = { {
 { "Event" }
 ,{ "types" }
} , & fmt_h2 , & align_h2 } ;

Text b41 = { {
 { "Each" }
 ,{ "event" }
 ,{ "type" }
 ,{ "must" }
 ,{ "be" }
 ,{ "a" }
 ,{ "short" }
 ,{ "POD" }
 ,{ "structure" }
 ,{ "with" }
 ,{ "the" }
 ,{ "following" }
 ,{ "starting" }
 ,{ "fields:" }
} , & fmt_text , & align_text } ;

Text b42 = { {
 { "It" }
 ,{ "must" }
 ,{ "also" }
 ,{ "have" }
 ,{ "two" }
 ,{ "methods:" }
 ,{ "init()" , & fmt_text_b }
 ,{ "to" }
 ,{ "initialize" }
 ,{ "the" }
 ,{ "object" }
 ,{ "and" }
 ,{ "Register()" , & fmt_text_b }
 ,{ "to" }
 ,{ "register" }
 ,{ "a" }
 ,{ "type" }
 ,{ "meta-information." }
 ,{ "The" }
 ,{ "total" }
 ,{ "structure" }
 ,{ "length" }
 ,{ "must" }
 ,{ "not" }
 ,{ "exceed" }
 ,{ "256" }
 ,{ "bytes." }
} , & fmt_text , & align_text } ;

Text b43 = { {
 { "Additional" }
 ,{ "arguments" }
 ,{ "of" }
 ,{ "the" }
 ,{ "method" }
 ,{ "init()" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "provided" }
 ,{ "in" }
 ,{ "the" }
 ,{ "method" }
 ,{ "add()" , & fmt_text_b }
 ,{ "during" }
 ,{ "an" }
 ,{ "event" }
 ,{ "recording." }
} , & fmt_text , & align_text } ;

Text b44 = { {
 { "For" }
 ,{ "example," }
 ,{ "the" }
 ,{ "type" }
 ,{ "EventControl" , & fmt_text_b }
 ,{ "is" }
 ,{ "implemented" }
 ,{ "as" }
 ,{ "following:" }
} , & fmt_text , & align_text } ;

Text b45 = { {
 { "And" }
 ,{ "here" }
 ,{ "is" }
 ,{ "the" }
 ,{ "method" }
 ,{ "Register()" , & fmt_text_b }
 ,{ ":" }
} , & fmt_text , & align_text } ;

Text b46 = { {
 { "To" }
 ,{ "register" }
 ,{ "a" }
 ,{ "type," }
 ,{ "you" }
 ,{ "have" }
 ,{ "to" }
 ,{ "add" }
 ,{ "a" }
 ,{ "structure" }
 ,{ "description" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "EventMetaInfo" , & fmt_text_b }
 ,{ "object" }
 ,{ "and" }
 ,{ "then" }
 ,{ "complete" }
 ,{ "the" }
 ,{ "registration" }
 ,{ "using" }
 ,{ "the" }
 ,{ "method" }
 ,{ "setStructId()" , & fmt_text_b }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "EventMetaInfo::EventDesc" , & fmt_text_b }
 ,{ "descriptor" }
 ,{ "object" }
 ,{ "as" }
 ,{ "shown" }
 ,{ "above." }
 ,{ "To" }
 ,{ "add" }
 ,{ "a" }
 ,{ "structure" }
 ,{ "description" }
 ,{ "you" }
 ,{ "do" }
 ,{ "the" }
 ,{ "following" }
 ,{ "chain" }
 ,{ "call:" }
} , & fmt_text , & align_text } ;

Text b47 = { {
 { "To" }
 ,{ "add" }
 ,{ "a" }
 ,{ "field" }
 ,{ "description" }
 ,{ "you" }
 ,{ "will" }
 ,{ "need" }
 ,{ "the" }
 ,{ "\"field" }
 ,{ "cast" }
 ,{ "function\"." }
 ,{ "This" }
 ,{ "function" }
 ,{ "takes" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "field." }
 ,{ "In" }
 ,{ "the" }
 ,{ "example" }
 ,{ "above" }
 ,{ "Offset_time()" , & fmt_text_b }
 ,{ "," }
 ,{ "Offset_id()" , & fmt_text_b }
 ,{ "and" }
 ,{ "Offset_type()" , & fmt_text_b }
 ,{ "are" }
 ,{ "such" }
 ,{ "functions." }
 ,{ "You" }
 ,{ "may" }
 ,{ "use" }
 ,{ "the" }
 ,{ "following" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "add" }
 ,{ "a" }
 ,{ "field" }
 ,{ "description:" }
} , & fmt_text , & align_text } ;

Text b48 = { {
 { "The" }
 ,{ "first" }
 ,{ "three" }
 ,{ "methods" }
 ,{ "describe" }
 ,{ "fields" }
 ,{ "of" }
 ,{ "types" }
 ,{ "uint8" , & fmt_text_b }
 ,{ "," }
 ,{ "uint16" , & fmt_text_b }
 ,{ "and" }
 ,{ "uint32" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "next" }
 ,{ "three" }
 ,{ "describe" }
 ,{ "\"enum\"" }
 ,{ "fields." }
 ,{ "You" }
 ,{ "have" }
 ,{ "to" }
 ,{ "provide" }
 ,{ "an" }
 ,{ "enum" }
 ,{ "id." }
 ,{ "And" }
 ,{ "the" }
 ,{ "last" }
 ,{ "one" }
 ,{ "describes" }
 ,{ "a" }
 ,{ "\"structure\"" }
 ,{ "field." }
 ,{ "You" }
 ,{ "have" }
 ,{ "to" }
 ,{ "provide" }
 ,{ "a" }
 ,{ "structure" }
 ,{ "id." }
 ,{ "You" }
 ,{ "may" }
 ,{ "use" }
 ,{ "the" }
 ,{ "const" , & fmt_text_b }
 ,{ "char" , & fmt_text_b }
 ,{ "*" , & fmt_text_b }
 ,{ "type" }
 ,{ "to" }
 ,{ "specify" }
 ,{ "a" }
 ,{ "name." }
} , & fmt_text , & align_text } ;

Text b49 = { {
 { "\"Enum\"" }
 ,{ "types" }
 ,{ "are," }
 ,{ "in" }
 ,{ "fact," }
 ,{ "the" }
 ,{ "types" }
 ,{ "uint8" , & fmt_text_b }
 ,{ "," }
 ,{ "uint16" , & fmt_text_b }
 ,{ "and" }
 ,{ "uint32" , & fmt_text_b }
 ,{ "," }
 ,{ "but" }
 ,{ "supplied" }
 ,{ "with" }
 ,{ "names" }
 ,{ "for" }
 ,{ "some" }
 ,{ "values" }
 ,{ "(and" }
 ,{ "optionally" }
 ,{ "event" }
 ,{ "markers)." }
 ,{ "To" }
 ,{ "add" }
 ,{ "an" }
 ,{ "enum" }
 ,{ "description" }
 ,{ "you" }
 ,{ "do" }
 ,{ "the" }
 ,{ "following" }
 ,{ "chain" }
 ,{ "call:" }
} , & fmt_text , & align_text } ;

Text b50 = { {
 { "You" }
 ,{ "may" }
 ,{ "use" }
 ,{ "the" }
 ,{ "following" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "add" }
 ,{ "an" }
 ,{ "enum" }
 ,{ "description:" }
} , & fmt_text , & align_text } ;

Text b51 = { {
 { "The" }
 ,{ "following" }
 ,{ "method" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "add" }
 ,{ "a" }
 ,{ "value" }
 ,{ "description:" }
} , & fmt_text , & align_text } ;

Text b52 = { {
 { "You" }
 ,{ "may" }
 ,{ "specify" }
 ,{ "an" }
 ,{ "\"append\"" }
 ,{ "function" }
 ,{ "for" }
 ,{ "enum:" }
} , & fmt_text , & align_text } ;

Text b53 = { {
 { "This" }
 ,{ "function" }
 ,{ "is" }
 ,{ "called" }
 ,{ "for" }
 ,{ "each" }
 ,{ "enum" }
 ,{ "description" }
 ,{ "after" }
 ,{ "the" }
 ,{ "recording" }
 ,{ "process" }
 ,{ "is" }
 ,{ "stopped" }
 ,{ "to" }
 ,{ "update" }
 ,{ "value/name" }
 ,{ "couples." }
 ,{ "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "helper" }
 ,{ "class" }
 ,{ "EventEnumValue" , & fmt_text_b }
 ,{ "," }
 ,{ "which" }
 ,{ "implements" }
 ,{ "a" }
 ,{ "run-time" }
 ,{ "enum" }
 ,{ "name" }
 ,{ "allocation." }
} , & fmt_text , & align_text } ;

Text b54 = { {
 { "In" }
 ,{ "some" }
 ,{ "cases" }
 ,{ "you" }
 ,{ "may" }
 ,{ "want" }
 ,{ "to" }
 ,{ "use" }
 ,{ "the" }
 ,{ "same" }
 ,{ "meta" }
 ,{ "type" }
 ,{ "to" }
 ,{ "define" }
 ,{ "multiple" }
 ,{ "meta" }
 ,{ "types." }
 ,{ "You" }
 ,{ "must" }
 ,{ "use" }
 ,{ "for" }
 ,{ "this" }
 ,{ "the" }
 ,{ "EventTypeId" , & fmt_text_b }
 ,{ "template:" }
} , & fmt_text , & align_text } ;

Text b55 = { {
 { "The" }
 ,{ "structure" }
 ,{ "TypeReg" , & fmt_text_b }
 ,{ "provides" }
 ,{ "a" }
 ,{ "registration" }
 ,{ "method:" }
} , & fmt_text , & align_text } ;

Text b56 = { {
 { "You" }
 ,{ "may" }
 ,{ "assign" }
 ,{ "a" }
 ,{ "classid" }
 ,{ "to" }
 ,{ "the" }
 ,{ "event," }
 ,{ "using" }
 ,{ "the" }
 ,{ "method" }
 ,{ "classId()" , & fmt_text_b }
 ,{ ":" }
} , & fmt_text , & align_text } ;

Text b57 = { {
 { "An" }
 ,{ "event" }
 ,{ "descriptor" }
 ,{ "is" }
 ,{ "assigned" }
 ,{ "the" }
 ,{ "event" }
 ,{ "classid," }
 ,{ "equals" }
 ,{ "the" }
 ,{ "event" }
 ,{ "id" }
 ,{ "by" }
 ,{ "default." }
 ,{ "But" }
 ,{ "you" }
 ,{ "may" }
 ,{ "assign" }
 ,{ "a" }
 ,{ "different" }
 ,{ "classid." }
 ,{ "This" }
 ,{ "value" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "group" }
 ,{ "multiple" }
 ,{ "event" }
 ,{ "types" }
 ,{ "into" }
 ,{ "a" }
 ,{ "group" }
 ,{ "to" }
 ,{ "help" }
 ,{ "a" }
 ,{ "visualization" }
 ,{ "of" }
 ,{ "events" }
 ,{ "of" }
 ,{ "related" }
 ,{ "types." }
} , & fmt_text , & align_text } ;

Text b58 = { {
 { "EventMarker" }
} , & fmt_h2 , & align_h2 } ;

Text b59 = { {
 { "EventMarker" , & fmt_text_b }
 ,{ "may" }
 ,{ "be" }
 ,{ "assigned" }
 ,{ "to" }
 ,{ "an" }
 ,{ "enum" }
 ,{ "value." }
 ,{ "This" }
 ,{ "marker" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "by" }
 ,{ "event" }
 ,{ "visualization" }
 ,{ "tools" }
 ,{ "to" }
 ,{ "show" }
 ,{ "a" }
 ,{ "marker" }
 ,{ "on" }
 ,{ "this" }
 ,{ "event." }
 ,{ "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "standard" }
 ,{ "list" }
 ,{ "of" }
 ,{ "marker" }
 ,{ "glyphs." }
} , & fmt_text , & align_text } ;

Bitmap b60 = { "Markers.zipmap" } ;

Text b61 = { {
 { "By" }
 ,{ "convention," }
 ,{ "the" }
 ,{ "marker" }
 ,{ "from" }
 ,{ "an" }
 ,{ "enum" }
 ,{ "field" }
 ,{ "with" }
 ,{ "a" }
 ,{ "non-null" }
 ,{ "markers" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "mark" }
 ,{ "an" }
 ,{ "event." }
 ,{ "The" }
 ,{ "field" }
 ,{ "with" }
 ,{ "the" }
 ,{ "name" }
 ,{ "type" , & fmt_text_b }
 ,{ "is" }
 ,{ "preferred" }
 ,{ "over" }
 ,{ "others." }
} , & fmt_text , & align_text } ;

Text b62 = { {
 { "EventControl" }
} , & fmt_h2 , & align_h2 } ;

Text b63 = { {
 { "EventControl" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "special" }
 ,{ "control" }
 ,{ "event." }
 ,{ "It" }
 ,{ "has" }
 ,{ "the" }
 ,{ "field" }
 ,{ "type" , & fmt_text_b }
 ,{ "with" }
 ,{ "possible" }
 ,{ "four" }
 ,{ "enum" }
 ,{ "values:" }
} , & fmt_text , & align_text } ;

Text b64 = { {
 { "The" }
 ,{ "event" }
 ,{ "Start" , & fmt_text_b }
 ,{ "is" }
 ,{ "generated" }
 ,{ "as" }
 ,{ "the" }
 ,{ "first" }
 ,{ "event" }
 ,{ "once" }
 ,{ "the" }
 ,{ "recording" }
 ,{ "process" }
 ,{ "is" }
 ,{ "started." }
 ,{ "The" }
 ,{ "correspondent" }
 ,{ "marker" }
 ,{ "is" }
 ,{ "Push" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b65 = { {
 { "The" }
 ,{ "event" }
 ,{ "Tick" , & fmt_text_b }
 ,{ "is" }
 ,{ "generated" }
 ,{ "with" }
 ,{ "some" }
 ,{ "period" }
 ,{ "during" }
 ,{ "the" }
 ,{ "recording" }
 ,{ "process." }
 ,{ "The" }
 ,{ "correspondent" }
 ,{ "marker" }
 ,{ "is" }
 ,{ "Tick" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b66 = { {
 { "The" }
 ,{ "event" }
 ,{ "Stop" , & fmt_text_b }
 ,{ "is" }
 ,{ "generated" }
 ,{ "as" }
 ,{ "the" }
 ,{ "last" }
 ,{ "event" }
 ,{ "once" }
 ,{ "the" }
 ,{ "recording" }
 ,{ "process" }
 ,{ "is" }
 ,{ "stopped." }
 ,{ "The" }
 ,{ "correspondent" }
 ,{ "marker" }
 ,{ "is" }
 ,{ "Stop" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b67 = { {
 { "The" }
 ,{ "event" }
 ,{ "End" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "generated," }
 ,{ "but" }
 ,{ "added" }
 ,{ "during" }
 ,{ "the" }
 ,{ "saving" }
 ,{ "operation" }
 ,{ "as" }
 ,{ "the" }
 ,{ "last" }
 ,{ "event" }
 ,{ "to" }
 ,{ "mark" }
 ,{ "the" }
 ,{ "end" }
 ,{ "of" }
 ,{ "the" }
 ,{ "binary" }
 ,{ "stream." }
} , & fmt_text , & align_text } ;

Text b68 = { {
 { "EventEnumValue" }
} , & fmt_h2 , & align_h2 } ;

Text b69 = { {
 { "The" }
 ,{ "class" }
 ,{ "EventEnumValue" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "update" }
 ,{ "a" }
 ,{ "value/name" }
 ,{ "couple" }
 ,{ "list" }
 ,{ "of" }
 ,{ "an" }
 ,{ "enum" }
 ,{ "at" }
 ,{ "run-time." }
} , & fmt_text , & align_text } ;

Text b70 = { {
 { "You" }
 ,{ "must" }
 ,{ "declare" }
 ,{ "a" }
 ,{ "structure" }
 ,{ "with" }
 ,{ "some" }
 ,{ "static" }
 ,{ "members" }
 ,{ "first." }
 ,{ "The" }
 ,{ "members" }
 ,{ "are:" }
 ,{ "ValueType" , & fmt_text_b }
 ,{ "," }
 ,{ "Base" , & fmt_text_b }
 ,{ "and" }
 ,{ "Lim" , & fmt_text_b }
 ,{ "." }
 ,{ "A" }
 ,{ "value" }
 ,{ "range" }
 ,{ "from" }
 ,{ "Base" , & fmt_text_b }
 ,{ "to" }
 ,{ "Lim" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "allocate" }
 ,{ "a" }
 ,{ "value" }
 ,{ "with" }
 ,{ "an" }
 ,{ "assigned" }
 ,{ "name." }
 ,{ "To" }
 ,{ "allocate" }
 ,{ "a" }
 ,{ "value" }
 ,{ "simply" }
 ,{ "create" }
 ,{ "an" }
 ,{ "instance" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "EventEnumValue<T>" , & fmt_text_b }
 ,{ "." }
 ,{ "Constructor" }
 ,{ "takes" }
 ,{ "a" }
 ,{ "TextLabel" , & fmt_text_b }
 ,{ "argument" }
 ,{ "to" }
 ,{ "specify" }
 ,{ "the" }
 ,{ "value" }
 ,{ "name." }
 ,{ "The" }
 ,{ "static" }
 ,{ "method" }
 ,{ "Append" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "used" }
 ,{ "as" }
 ,{ "the" }
 ,{ "append" }
 ,{ "function" }
 ,{ "when" }
 ,{ "registering" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "enum" }
 ,{ "meta-type." }
 ,{ "T::Marker" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "when" }
 ,{ "appending" }
 ,{ "allocated" }
 ,{ "values." }
} , & fmt_text , & align_text } ;

Text b71 = { {
 { "Binary" }
 ,{ "output" }
 ,{ "format" }
} , & fmt_h2 , & align_h2 } ;

Text b72 = { {
 { "Binary" }
 ,{ "output" }
 ,{ "uses" }
 ,{ "the" }
 ,{ "big-endian" }
 ,{ "byte" }
 ,{ "order" }
 ,{ "to" }
 ,{ "represent" }
 ,{ "base" }
 ,{ "types" }
 ,{ "(" }
 ,{ "uint8," , & fmt_text_b }
 ,{ "uint16," , & fmt_text_b }
 ,{ "uint32," , & fmt_text_b }
 ,{ "uint64" , & fmt_text_b }
 ,{ ")." }
 ,{ "The" }
 ,{ "following" }
 ,{ "type" }
 ,{ "representation" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "encode" }
 ,{ "the" }
 ,{ "meta-information." }
} , & fmt_text , & align_text } ;

Text b73 = { {
 { "An" }
 ,{ "item" }
 ,{ "id" }
 ,{ "is" }
 ,{ "the" }
 ,{ "index" }
 ,{ "in" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "item" }
 ,{ "list." }
} , & fmt_text , & align_text } ;

Text b74 = { {
 { "time_freq" , & fmt_text_b }
 ,{ "may" }
 ,{ "be" }
 ,{ "zero." }
 ,{ "In" }
 ,{ "this" }
 ,{ "case" }
 ,{ "time-stamp" }
 ,{ "frequency" }
 ,{ "is" }
 ,{ "unknown" }
 ,{ "and" }
 ,{ "should" }
 ,{ "be" }
 ,{ "derived" }
 ,{ "from" }
 ,{ "tick" }
 ,{ "events." }
} , & fmt_text , & align_text } ;

Text b75 = { {
 { "A" }
 ,{ "binary" }
 ,{ "output" }
 ,{ "starts" }
 ,{ "from" }
 ,{ "the" }
 ,{ "meta-information" }
 ,{ "and" }
 ,{ "followed" }
 ,{ "by" }
 ,{ "event" }
 ,{ "records." }
 ,{ "The" }
 ,{ "last" }
 ,{ "record" }
 ,{ "is" }
 ,{ "the" }
 ,{ "record" }
 ,{ "of" }
 ,{ "the" }
 ,{ "EventControl" , & fmt_text_b }
 ,{ "event" }
 ,{ "with" }
 ,{ "the" }
 ,{ "type" }
 ,{ "equals" }
 ,{ "End" , & fmt_text_b }
 ,{ "." }
 ,{ "Each" }
 ,{ "event" }
 ,{ "record" }
 ,{ "starts" }
 ,{ "from" }
 ,{ "two" }
 ,{ "fields:" }
} , & fmt_text , & align_text } ;

Text b76 = { {
 { "You" }
 ,{ "may" }
 ,{ "parse" }
 ,{ "an" }
 ,{ "event" }
 ,{ "record" }
 ,{ "using" }
 ,{ "the" }
 ,{ "event" }
 ,{ "id." }
 ,{ "The" }
 ,{ "rest" }
 ,{ "of" }
 ,{ "the" }
 ,{ "event" }
 ,{ "record" }
 ,{ "is" }
 ,{ "the" }
 ,{ "list" }
 ,{ "of" }
 ,{ "fields" }
 ,{ "of" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "structure" }
 ,{ "(except" }
 ,{ "first" }
 ,{ "two)." }
 ,{ "You" }
 ,{ "may" }
 ,{ "use" }
 ,{ "also" }
 ,{ "the" }
 ,{ "save_len" , & fmt_text_b }
 ,{ "field" }
 ,{ "of" }
 ,{ "the" }
 ,{ "event" }
 ,{ "meta-info." }
} , & fmt_text , & align_text } ;

Text b77 = { {
 { "Time-stamp" }
 ,{ "is" }
 ,{ "represented" }
 ,{ "using" }
 ,{ "the" }
 ,{ "uint32" , & fmt_text_b }
 ,{ "." }
 ,{ "As" }
 ,{ "long" }
 ,{ "as" }
 ,{ "a" }
 ,{ "periodic" }
 ,{ "tick" }
 ,{ "is" }
 ,{ "present" }
 ,{ "in" }
 ,{ "the" }
 ,{ "record" }
 ,{ "with" }
 ,{ "enough" }
 ,{ "frequency" }
 ,{ "you" }
 ,{ "always" }
 ,{ "may" }
 ,{ "restore" }
 ,{ "the" }
 ,{ "extended" }
 ,{ "time-stamp" }
 ,{ "by" }
 ,{ "the" }
 ,{ "differentiation" }
 ,{ "and" }
 ,{ "the" }
 ,{ "following" }
 ,{ "reaccumulation" }
 ,{ "of" }
 ,{ "time" }
 ,{ "stamps" }
 ,{ "in" }
 ,{ "a" }
 ,{ "variable" }
 ,{ "with" }
 ,{ "higher" }
 ,{ "value" }
 ,{ "range." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Event Recording" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_img , outer_img , back_img }
 ,{ & b6 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b32 , null , inner_text , outer_text , back_text }
 ,{ & b33 , null , inner_text , outer_text , back_text }
 ,{ & b34 , null , inner_text , outer_text , back_text }
 ,{ & b35 , null , inner_text , outer_text , back_text }
 ,{ & b36 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b37 , null , inner_text , outer_text , back_text }
 ,{ & b38 , null , inner_text , outer_text , back_text }
 ,{ & b39 , null , inner_text , outer_text , back_text }
 ,{ & b40 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b41 , null , inner_text , outer_text , back_text }
 ,{ & b42 , null , inner_text , outer_text , back_text }
 ,{ & b43 , null , inner_text , outer_text , back_text }
 ,{ & b44 , null , inner_text , outer_text , back_text }
 ,{ & b45 , null , inner_text , outer_text , back_text }
 ,{ & b46 , null , inner_text , outer_text , back_text }
 ,{ & b47 , null , inner_text , outer_text , back_text }
 ,{ & b48 , null , inner_text , outer_text , back_text }
 ,{ & b49 , null , inner_text , outer_text , back_text }
 ,{ & b50 , null , inner_text , outer_text , back_text }
 ,{ & b51 , null , inner_text , outer_text , back_text }
 ,{ & b52 , null , inner_text , outer_text , back_text }
 ,{ & b53 , null , inner_text , outer_text , back_text }
 ,{ & b54 , null , inner_text , outer_text , back_text }
 ,{ & b55 , null , inner_text , outer_text , back_text }
 ,{ & b56 , null , inner_text , outer_text , back_text }
 ,{ & b57 , null , inner_text , outer_text , back_text }
 ,{ & b58 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b59 , null , inner_text , outer_text , back_text }
 ,{ & b60 , null , inner_img , outer_img , back_img }
 ,{ & b61 , null , inner_text , outer_text , back_text }
 ,{ & b62 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b63 , null , inner_text , outer_text , back_text }
 ,{ & b64 , null , inner_text , outer_text , back_text }
 ,{ & b65 , null , inner_text , outer_text , back_text }
 ,{ & b66 , null , inner_text , outer_text , back_text }
 ,{ & b67 , null , inner_text , outer_text , back_text }
 ,{ & b68 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b69 , null , inner_text , outer_text , back_text }
 ,{ & b70 , null , inner_text , outer_text , back_text }
 ,{ & b71 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b72 , null , inner_text , outer_text , back_text }
 ,{ & b73 , null , inner_text , outer_text , back_text }
 ,{ & b74 , null , inner_text , outer_text , back_text }
 ,{ & b75 , null , inner_text , outer_text , back_text }
 ,{ & b76 , null , inner_text , outer_text , back_text }
 ,{ & b77 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Event#page , & page_Exceptions#page };

Link link = { &page } ;

}

scope page_Exceptions {

Text b0 = { {
 { "Exceptions" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/Exception.h" , & fmt_text_Files_b }
 ,{ "CCore/src/Exception.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "CCore" , & fmt_text_b }
 ,{ "uses" }
 ,{ "a" }
 ,{ "specially" }
 ,{ "designed" }
 ,{ "pattern" }
 ,{ "to" }
 ,{ "throw" }
 ,{ "exceptions." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "To" }
 ,{ "throw" }
 ,{ "an" }
 ,{ "exception," }
 ,{ "just" }
 ,{ "print" }
 ,{ "a" }
 ,{ "message" }
 ,{ "to" }
 ,{ "one" }
 ,{ "of" }
 ,{ "two" }
 ,{ "targets:" }
 ,{ "Exception" , & fmt_text_b }
 ,{ "or" }
 ,{ "NoException" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "you" }
 ,{ "print" }
 ,{ "to" }
 ,{ "the" }
 ,{ "Exception" , & fmt_text_b }
 ,{ "," }
 ,{ "the" }
 ,{ "print" }
 ,{ "statement" }
 ,{ "will" }
 ,{ "throw" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "CatchType" , & fmt_text_b }
 ,{ "." }
 ,{ "Printing" }
 ,{ "to" }
 ,{ "the" }
 ,{ "NoException" , & fmt_text_b }
 ,{ "does" }
 ,{ "not" }
 ,{ "throw" }
 ,{ "an" }
 ,{ "exception." }
 ,{ "But" }
 ,{ "it" }
 ,{ "prints" }
 ,{ "a" }
 ,{ "message" }
 ,{ "and" }
 ,{ "setup" }
 ,{ "a" }
 ,{ "error" }
 ,{ "flag" }
 ,{ "in" }
 ,{ "the" }
 ,{ "exception" }
 ,{ "report" }
 ,{ "object" }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "one." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "In" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "we" }
 ,{ "keep" }
 ,{ "these" }
 ,{ "statements" }
 ,{ "in" }
 ,{ ".cpp" , & fmt_text_b }
 ,{ "files." }
 ,{ "The" }
 ,{ "pattern" }
 ,{ "for" }
 ,{ "the" }
 ,{ "exception" }
 ,{ "message" }
 ,{ "is" }
 ,{ "the" }
 ,{ "following:" }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "PrintException" }
} , & fmt_h3 , & align_h3 } ;

Text b6 = { {
 { "The" }
 ,{ "class" }
 ,{ "PrintException" , & fmt_text_b }
 ,{ "serves" }
 ,{ "as" }
 ,{ "a" }
 ,{ "print" }
 ,{ "adapter" }
 ,{ "for" }
 ,{ "the" }
 ,{ "enum" , & fmt_text_b }
 ,{ "ExceptionType" , & fmt_text_b }
 ,{ "(the" }
 ,{ "type" }
 ,{ "of" }
 ,{ "constants" }
 ,{ "Exception" , & fmt_text_b }
 ,{ "and" }
 ,{ "NoException" , & fmt_text_b }
 ,{ ")." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "You" }
 ,{ "don't" }
 ,{ "need" }
 ,{ "this" }
 ,{ "class" }
 ,{ "for" }
 ,{ "a" }
 ,{ "direct" }
 ,{ "usage." }
 ,{ "It" }
 ,{ "does" }
 ,{ "its" }
 ,{ "job" }
 ,{ "inside" }
 ,{ "a" }
 ,{ "Printf()" , & fmt_text_b }
 ,{ "statement:" }
 ,{ "finds" }
 ,{ "a" }
 ,{ "ReportException" , & fmt_text_b }
 ,{ "object," }
 ,{ "prints" }
 ,{ "the" }
 ,{ "message" }
 ,{ "to" }
 ,{ "it," }
 ,{ "setup" }
 ,{ "a" }
 ,{ "error" }
 ,{ "flag" }
 ,{ "and" }
 ,{ "finally" }
 ,{ "in" }
 ,{ "destructor" }
 ,{ "throws" }
 ,{ "an" }
 ,{ "exception," }
 ,{ "if" }
 ,{ "required." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "ReportException" }
} , & fmt_h3 , & align_h3 } ;

Text b9 = { {
 { "Each" }
 ,{ "thread" }
 ,{ "may" }
 ,{ "have" }
 ,{ "an" }
 ,{ "associated" }
 ,{ "ReportException" , & fmt_text_b }
 ,{ "object." }
 ,{ "The" }
 ,{ "purpose" }
 ,{ "of" }
 ,{ "this" }
 ,{ "object" }
 ,{ "is" }
 ,{ "to" }
 ,{ "serve" }
 ,{ "as" }
 ,{ "the" }
 ,{ "printing" }
 ,{ "target" }
 ,{ "for" }
 ,{ "exception" }
 ,{ "messages." }
 ,{ "It" }
 ,{ "also" }
 ,{ "has" }
 ,{ "an" }
 ,{ "internal" }
 ,{ "flag," }
 ,{ "which" }
 ,{ "signals" }
 ,{ "if" }
 ,{ "there" }
 ,{ "were" }
 ,{ "exception" }
 ,{ "messages." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "By" }
 ,{ "default," }
 ,{ "ReportException" , & fmt_text_b }
 ,{ "prints" }
 ,{ "a" }
 ,{ "text" }
 ,{ "to" }
 ,{ "the" }
 ,{ "default" }
 ,{ "console." }
 ,{ "But" }
 ,{ "you" }
 ,{ "may" }
 ,{ "alter" }
 ,{ "this" }
 ,{ "by" }
 ,{ "deriving" }
 ,{ "a" }
 ,{ "class" }
 ,{ "from" }
 ,{ "the" }
 ,{ "ReportException" , & fmt_text_b }
 ,{ "and" }
 ,{ "overriding" }
 ,{ "virtual" }
 ,{ "methods" }
 ,{ "print()" , & fmt_text_b }
 ,{ "," }
 ,{ "start()" , & fmt_text_b }
 ,{ "," }
 ,{ "add()" , & fmt_text_b }
 ,{ "," }
 ,{ "and" }
 ,{ "end()" , & fmt_text_b }
 ,{ "." }
 ,{ "To" }
 ,{ "redirect" }
 ,{ "the" }
 ,{ "text" }
 ,{ "output," }
 ,{ "you" }
 ,{ "need" }
 ,{ "to" }
 ,{ "override" }
 ,{ "only" }
 ,{ "the" }
 ,{ "method" }
 ,{ "print()" , & fmt_text_b }
 ,{ "," }
 ,{ "but" }
 ,{ "you" }
 ,{ "may" }
 ,{ "alter" }
 ,{ "the" }
 ,{ "formating" }
 ,{ "or" }
 ,{ "processing" }
 ,{ "the" }
 ,{ "elements" }
 ,{ "of" }
 ,{ "the" }
 ,{ "message" }
 ,{ "by" }
 ,{ "overriding" }
 ,{ "other" }
 ,{ "methods." }
 ,{ "Print()" , & fmt_text_b }
 ,{ "prints" }
 ,{ "to" }
 ,{ "the" }
 ,{ "console." }
 ,{ "Be" }
 ,{ "caution" }
 ,{ "in" }
 ,{ "implementation" }
 ,{ "of" }
 ,{ "these" }
 ,{ "methods:" }
 ,{ "they" , & fmt_text_Alert }
 ,{ "must" , & fmt_text_Alert }
 ,{ "not" , & fmt_text_Alert }
 ,{ "throw" , & fmt_text_Alert }
 ,{ "exceptions," , & fmt_text_Alert }
 ,{ "it" , & fmt_text_Alert }
 ,{ "will" , & fmt_text_Alert }
 ,{ "lead" , & fmt_text_Alert }
 ,{ "to" , & fmt_text_Alert }
 ,{ "abort" , & fmt_text_Alert }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "The" }
 ,{ "static" }
 ,{ "method" }
 ,{ "Clear()" , & fmt_text_b }
 ,{ "clears" }
 ,{ "the" }
 ,{ "exception" }
 ,{ "flag" }
 ,{ "for" }
 ,{ "the" }
 ,{ "current" }
 ,{ "ReportException" , & fmt_text_b }
 ,{ "object," }
 ,{ "if" }
 ,{ "any." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "SilentReportException" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "such" }
 ,{ "derived" }
 ,{ "class," }
 ,{ "it" }
 ,{ "prints" }
 ,{ "nowhere." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "ReportException" , & fmt_text_b }
 ,{ "objects" }
 ,{ "must" }
 ,{ "be" }
 ,{ "created" }
 ,{ "as" }
 ,{ "local" }
 ,{ "variables" }
 ,{ "to" }
 ,{ "setup" }
 ,{ "a" }
 ,{ "report" }
 ,{ "exception" }
 ,{ "target" }
 ,{ "for" }
 ,{ "the" }
 ,{ "current" }
 ,{ "thread" }
 ,{ "for" }
 ,{ "the" }
 ,{ "scope" }
 ,{ "duration." }
 ,{ "Usually," }
 ,{ "you" }
 ,{ "should" }
 ,{ "couple" }
 ,{ "such" }
 ,{ "object" }
 ,{ "with" }
 ,{ "a" }
 ,{ "try/catch" , & fmt_text_b }
 ,{ "block." }
 ,{ "Here" }
 ,{ "is" }
 ,{ "an" }
 ,{ "example:" }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "Or" }
 ,{ "the" }
 ,{ "following" }
 ,{ "way:" }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "If" }
 ,{ "you" }
 ,{ "have" }
 ,{ "multiple" }
 ,{ "ReportException" , & fmt_text_b }
 ,{ "objects," }
 ,{ "then" }
 ,{ "the" }
 ,{ "last" }
 ,{ "is" }
 ,{ "the" }
 ,{ "current." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "ReportExceptionTo" }
} , & fmt_h3 , & align_h3 } ;

Text b17 = { {
 { "ReportExceptionTo" , & fmt_text_b }
 ,{ "class" }
 ,{ "is" }
 ,{ "a" }
 ,{ "derived" }
 ,{ "class" }
 ,{ "from" }
 ,{ "the" }
 ,{ "ReportException" , & fmt_text_b }
 ,{ "," }
 ,{ "this" }
 ,{ "class" }
 ,{ "redirects" }
 ,{ "exception" }
 ,{ "message" }
 ,{ "output" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "output" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "Constructor" }
 ,{ "takes" }
 ,{ "and" }
 ,{ "stores" }
 ,{ "the" }
 ,{ "reference" }
 ,{ "to" }
 ,{ "the" }
 ,{ "target" }
 ,{ "object." }
 ,{ "The" }
 ,{ "class" }
 ,{ "of" }
 ,{ "this" }
 ,{ "object" }
 ,{ "must" }
 ,{ "provide" }
 ,{ "the" }
 ,{ "method" }
 ,{ "put(const" , & fmt_text_b }
 ,{ "char" , & fmt_text_b }
 ,{ "*str,ulen" , & fmt_text_b }
 ,{ "len)" , & fmt_text_b }
 ,{ "." }
 ,{ "For" }
 ,{ "example," }
 ,{ "any" }
 ,{ "printing" }
 ,{ "object" }
 ,{ "classes" }
 ,{ "are" }
 ,{ "acceptable." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "The" }
 ,{ "virtual" }
 ,{ "method" }
 ,{ "print()" , & fmt_text_b }
 ,{ "is" }
 ,{ "public" }
 ,{ "for" }
 ,{ "this" }
 ,{ "class." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "Custom" }
 ,{ "exceptions" }
} , & fmt_h3 , & align_h3 } ;

Text b21 = { {
 { "Sometimes" }
 ,{ "you" }
 ,{ "may" }
 ,{ "want" }
 ,{ "to" }
 ,{ "throw" }
 ,{ "not" }
 ,{ "the" }
 ,{ "object" }
 ,{ "of" }
 ,{ "the" }
 ,{ "empty" }
 ,{ "CatchType" , & fmt_text_b }
 ,{ "," }
 ,{ "but" }
 ,{ "something" }
 ,{ "more." }
 ,{ "To" }
 ,{ "do" }
 ,{ "this" }
 ,{ "use" }
 ,{ "the" }
 ,{ "PrintCustomException" , & fmt_text_b }
 ,{ "class." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "For" }
 ,{ "example," }
 ,{ "that" }
 ,{ "is" }
 ,{ "the" }
 ,{ "way" }
 ,{ "we" }
 ,{ "throw" }
 ,{ "the" }
 ,{ "\"no-memory\"" }
 ,{ "exception:" }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "We" }
 ,{ "have" }
 ,{ "to" }
 ,{ "do" }
 ,{ "it" }
 ,{ "so" }
 ,{ "to" }
 ,{ "satisfy" }
 ,{ "the" }
 ,{ "C++" }
 ,{ "standard" }
 ,{ "requirements." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Exceptions" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_EventRecord#page , & page_ExceptionType#page };

Link link = { &page } ;

}

scope page_ExceptionType {

Text b0 = { {
 { "ExceptionType" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/gadget/ExceptionType.h" , & fmt_text_Files_b }
 ,{ "CCore/src/gadget/ExceptionType.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "ExceptionType" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "enum" , & fmt_text_b }
 ,{ "with" }
 ,{ "two" }
 ,{ "named" }
 ,{ "values." }
 ,{ "It" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "handle" }
 ,{ "an" }
 ,{ "exceptional" }
 ,{ "situation" }
 ,{ "in" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "CatchType" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "empty" }
 ,{ "base" }
 ,{ "class" }
 ,{ "for" }
 ,{ "exception" }
 ,{ "classes." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Handling" }
 ,{ "exceptional" }
 ,{ "situations" }
} , & fmt_h2 , & align_h2 } ;

Text b5 = { {
 { "CCore" , & fmt_text_b }
 ,{ "uses" }
 ,{ "the" }
 ,{ "following" }
 ,{ "pattern" }
 ,{ "to" }
 ,{ "handle" }
 ,{ "exceptional" }
 ,{ "situations." }
 ,{ "To" }
 ,{ "throw" }
 ,{ "an" }
 ,{ "exception:" }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "This" }
 ,{ "statement" }
 ,{ "picks" }
 ,{ "up" }
 ,{ "an" }
 ,{ "installed" }
 ,{ "error" }
 ,{ "report" }
 ,{ "handler," }
 ,{ "prints" }
 ,{ "the" }
 ,{ "specified" }
 ,{ "error" }
 ,{ "message" }
 ,{ "and" }
 ,{ "then" }
 ,{ "throws" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "CatchType" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "To" }
 ,{ "report" }
 ,{ "a" }
 ,{ "error" }
 ,{ "without" }
 ,{ "throwing" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "(i.e." }
 ,{ "inside" }
 ,{ "a" }
 ,{ "destructor):" }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "To" }
 ,{ "catch" }
 ,{ "exceptions" }
 ,{ "use" }
 ,{ "the" }
 ,{ "following" }
 ,{ "pattern:" }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "See" }
 ,{ "Exceptions" , & fmt_text_a , & ..#page_Exceptions#link }
 ,{ "for" }
 ,{ "more" }
 ,{ "details." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> ExceptionType" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Exceptions#page , & page_exectest#page };

Link link = { &page } ;

}

scope page_exectest {

Text b0 = { {
 { "exectest" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "exectest.exe" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "simple" }
 ,{ "utility," }
 ,{ "it" }
 ,{ "prints" }
 ,{ "the" }
 ,{ "command" }
 ,{ "line" }
 ,{ "arguments" }
 ,{ "into" }
 ,{ "the" }
 ,{ "file" }
 ,{ "args.txt" , & fmt_text_b }
 ,{ "in" }
 ,{ "the" }
 ,{ "current" }
 ,{ "directory." }
 ,{ "It" }
 ,{ "is" }
 ,{ "built" }
 ,{ "in" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "CCORE_ROOT/tools/PTPServer/root" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> exectest" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_ExceptionType#page , & page_FastMutex#page };

Link link = { &page } ;

}

scope page_FastMutex {

Text b0 = { {
 { "FastMutex" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/task/FastMutex.h" , & fmt_text_Files_b }
 ,{ "CCore/src/task/FastMutex.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "FastMutexBase" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "class," }
 ,{ "providing" }
 ,{ "simplified" }
 ,{ "mutex" }
 ,{ "locking" }
 ,{ "abilities." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "You" }
 ,{ "can" }
 ,{ "use" }
 ,{ "this" }
 ,{ "class" }
 ,{ "as" }
 ,{ "a" }
 ,{ "base" }
 ,{ "class" }
 ,{ "to" }
 ,{ "implement" }
 ,{ "an" }
 ,{ "execution" }
 ,{ "serialization" }
 ,{ "in" }
 ,{ "derived" }
 ,{ "class" }
 ,{ "methods." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "The" }
 ,{ "inner" }
 ,{ "class" }
 ,{ "Lock" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "only" }
 ,{ "way" }
 ,{ "to" }
 ,{ "lock" }
 ,{ "the" }
 ,{ "FastMutexBase" , & fmt_text_b }
 ,{ "." }
 ,{ "Locks" }
 ,{ "must" }
 ,{ "not" }
 ,{ "be" }
 ,{ "recursive." }
 ,{ "And" }
 ,{ "the" }
 ,{ "code" }
 ,{ "inside" }
 ,{ "a" }
 ,{ "locked" }
 ,{ "region" }
 ,{ "must" }
 ,{ "be" }
 ,{ "fast," }
 ,{ "in" }
 ,{ "particular," }
 ,{ "it" }
 ,{ "cannot" }
 ,{ "make" }
 ,{ "any" }
 ,{ "blocking" }
 ,{ "calls." }
 ,{ "Use" }
 ,{ "this" }
 ,{ "class" }
 ,{ "to" }
 ,{ "serialize" }
 ,{ "simple" }
 ,{ "operations," }
 ,{ "like" }
 ,{ "list" }
 ,{ "manipulations." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "HCore" }
 ,{ "FastMutexBase" }
} , & fmt_h4 , & align_h4 } ;

Text b6 = { {
 { "HCore" , & fmt_text_b }
 ,{ "FastMutexBase" , & fmt_text_b }
 ,{ "is" }
 ,{ "implemented" }
 ,{ "using" }
 ,{ "the" }
 ,{ "class" }
 ,{ "FastMutex" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "This" }
 ,{ "class" }
 ,{ "is" }
 ,{ "a" }
 ,{ "simplified" }
 ,{ "version" }
 ,{ "of" }
 ,{ "the" }
 ,{ "class" }
 ,{ "Mutex" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "XCore" }
 ,{ "FastMutexBase" }
} , & fmt_h4 , & align_h4 } ;

Text b9 = { {
 { "There" }
 ,{ "is" }
 ,{ "no" }
 ,{ "class" }
 ,{ "FastMutex" , & fmt_text_b }
 ,{ "in" }
 ,{ "XCore" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "class" }
 ,{ "FastMutexBase" , & fmt_text_b }
 ,{ "is" }
 ,{ "stateless." }
 ,{ "It" }
 ,{ "is" }
 ,{ "just" }
 ,{ "the" }
 ,{ "IntLock" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "The" }
 ,{ "code" }
 ,{ "inside" }
 ,{ "a" }
 ,{ "locked" }
 ,{ "region" }
 ,{ "runs" }
 ,{ "without" }
 ,{ "interruption," }
 ,{ "so" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "priority" }
 ,{ "inversion" }
 ,{ "problem" }
 ,{ "here." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> FastMutex" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_exectest#page , & page_FeedBuf#page };

Link link = { &page } ;

}

scope page_FeedBuf {

Text b0 = { {
 { "FeedBuf" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/FeedBuf.h" , & fmt_text_Files_b }
 ,{ "CCore/src/FeedBuf.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "FeedBuf" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "Class-function" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "It" }
 ,{ "copies" }
 ,{ "data" }
 ,{ "from" }
 ,{ "one" }
 ,{ "range" }
 ,{ "to" }
 ,{ "another." }
 ,{ "The" }
 ,{ "result" }
 ,{ "value" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "delta" , & fmt_text_b }
 ,{ "and" }
 ,{ "cmp" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "delta" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "number" }
 ,{ "of" }
 ,{ "object" }
 ,{ "copied," }
 ,{ "it" }
 ,{ "equlas" }
 ,{ "the" }
 ,{ "minimum" }
 ,{ "of" }
 ,{ "lengthes" }
 ,{ "of" }
 ,{ "source" }
 ,{ "and" }
 ,{ "destination" }
 ,{ "ranges." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "cmp" , & fmt_text_b }
 ,{ "if" }
 ,{ "the" }
 ,{ "result" }
 ,{ "of" }
 ,{ "comparison" }
 ,{ "of" }
 ,{ "the" }
 ,{ "destination" }
 ,{ "range" }
 ,{ "length" }
 ,{ "and" }
 ,{ "the" }
 ,{ "source" }
 ,{ "ones." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "This" }
 ,{ "function" }
 ,{ "feeds" }
 ,{ "the" }
 ,{ "destination" }
 ,{ "range" }
 ,{ "from" }
 ,{ "the" }
 ,{ "source" }
 ,{ "and" }
 ,{ "updates" }
 ,{ "dst" , & fmt_text_b }
 ,{ "to" }
 ,{ "the" }
 ,{ "remaining" }
 ,{ "range." }
 ,{ "The" }
 ,{ "overflow" }
 ,{ "flag" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "This" }
 ,{ "function" }
 ,{ "pumps" }
 ,{ "the" }
 ,{ "destination" }
 ,{ "range" }
 ,{ "from" }
 ,{ "the" }
 ,{ "source" }
 ,{ "and" }
 ,{ "updates" }
 ,{ "both" }
 ,{ "dst" , & fmt_text_b }
 ,{ "and" }
 ,{ "src" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "underflow" }
 ,{ "flag" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> FeedBuf" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_FastMutex#page , & page_Fifo#page };

Link link = { &page } ;

}

scope page_Fifo {

Text b0 = { {
 { "Fifo" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/Fifo.h" , & fmt_text_Files_b }
 ,{ "CCore/src/Fifo.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Fifo" }
} , & fmt_h4 , & align_h4 } ;

Text b3 = { {
 { "The" }
 ,{ "Partial" , & fmt_text_b }
 ,{ "class" , & fmt_text_b }
 ,{ "Fifo" , & fmt_text_b }
 ,{ "implements" }
 ,{ "a" }
 ,{ "buffer" }
 ,{ "fifo" }
 ,{ "upon" }
 ,{ "a" }
 ,{ "provided" }
 ,{ "buffer." }
} , & fmt_text , & align_text } ;

Bitmap b4 = { "Fifo.zipmap" } ;

Text b5 = { {
 { "Constructor" }
 ,{ "builds" }
 ,{ "a" }
 ,{ "fifo" }
 ,{ "in" }
 ,{ "the" }
 ,{ "initial" }
 ,{ "empty" }
 ,{ "state," }
 ,{ "the" }
 ,{ "provided" }
 ,{ "buffer" }
 ,{ "will" }
 ,{ "be" }
 ,{ "used" }
 ,{ "in" }
 ,{ "subsequent" }
 ,{ "operations." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "getCount()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "elements" }
 ,{ "in" }
 ,{ "the" }
 ,{ "fifo." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "getAvail()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "available" }
 ,{ "positions" }
 ,{ "in" }
 ,{ "the" }
 ,{ "fifo." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "isEmpty()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "iff" }
 ,{ "the" }
 ,{ "fifo" }
 ,{ "is" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "isFull()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "iff" }
 ,{ "the" }
 ,{ "fifo" }
 ,{ "is" }
 ,{ "full." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "reset()" , & fmt_text_b }
 ,{ "resets" }
 ,{ "fifo" }
 ,{ "in" }
 ,{ "the" }
 ,{ "initial" }
 ,{ "state." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "Keep" }
 ,{ "in" }
 ,{ "mind," }
 ,{ "that" }
 ,{ "the" }
 ,{ "buffer" }
 ,{ "is" }
 ,{ "not" }
 ,{ "just" }
 ,{ "a" }
 ,{ "memory" }
 ,{ "space." }
 ,{ "It" }
 ,{ "is" }
 ,{ "the" }
 ,{ "object" , & fmt_text_b }
 ,{ "array." }
 ,{ "Some" }
 ,{ "of" }
 ,{ "these" }
 ,{ "objects" }
 ,{ "are" }
 ,{ "the" }
 ,{ "logical" }
 ,{ "part" }
 ,{ "of" }
 ,{ "the" }
 ,{ "fifo," }
 ,{ "but" }
 ,{ "other" }
 ,{ "are" }
 ,{ "unused." }
 ,{ "It" }
 ,{ "is" }
 ,{ "nothing," }
 ,{ "if" }
 ,{ "the" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "is" }
 ,{ "int" , & fmt_text_b }
 ,{ "or" }
 ,{ "any" }
 ,{ "Small" , & fmt_text_b }
 ,{ "Data" , & fmt_text_b }
 ,{ "Type" , & fmt_text_b }
 ,{ "," }
 ,{ "but" }
 ,{ "it" }
 ,{ "would" }
 ,{ "lead" }
 ,{ "to" }
 ,{ "a" }
 ,{ "resource" }
 ,{ "leak," }
 ,{ "if" }
 ,{ "T" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "String" , & fmt_text_b }
 ,{ "," }
 ,{ "for" }
 ,{ "example." }
 ,{ "To" }
 ,{ "deal" }
 ,{ "with" }
 ,{ "this" }
 ,{ "problem," }
 ,{ "choose" }
 ,{ "carefully" }
 ,{ "an" }
 ,{ "exact" }
 ,{ "method" }
 ,{ "of" }
 ,{ "putting/getting" }
 ,{ "objects" }
 ,{ "into" }
 ,{ "the" }
 ,{ "fifo." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "Putting/getting" }
 ,{ "methods" }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "was" }
 ,{ "successful," }
 ,{ "otherwise" }
 ,{ "they" }
 ,{ "return" }
 ,{ "false" , & fmt_text_b }
 ,{ "and" }
 ,{ "does" }
 ,{ "not" }
 ,{ "change" }
 ,{ "the" }
 ,{ "state" }
 ,{ "of" }
 ,{ "the" }
 ,{ "fifo." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "put()" , & fmt_text_b }
 ,{ "puts" }
 ,{ "the" }
 ,{ "object" }
 ,{ "into" }
 ,{ "the" }
 ,{ "fifo," }
 ,{ "using" }
 ,{ "copying." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "put_swap()" , & fmt_text_b }
 ,{ "puts" }
 ,{ "the" }
 ,{ "object" }
 ,{ "into" }
 ,{ "the" }
 ,{ "fifo," }
 ,{ "using" }
 ,{ "swapping." }
 ,{ "I.e." }
 ,{ "it" }
 ,{ "swaps" }
 ,{ "the" }
 ,{ "given" }
 ,{ "object" }
 ,{ "with" }
 ,{ "the" }
 ,{ "target" }
 ,{ "buffer" }
 ,{ "element." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "put_gen()" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "generic" }
 ,{ "way" }
 ,{ "to" }
 ,{ "put" }
 ,{ "an" }
 ,{ "object" }
 ,{ "into" }
 ,{ "the" }
 ,{ "fifo," }
 ,{ "its" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "functor," }
 ,{ "which" }
 ,{ "is" }
 ,{ "called" }
 ,{ "to" }
 ,{ "do" }
 ,{ "the" }
 ,{ "job." }
 ,{ "func" , & fmt_text_b }
 ,{ "is" }
 ,{ "called" }
 ,{ "as" }
 ,{ "func(dst)" , & fmt_text_b }
 ,{ "," }
 ,{ "where" }
 ,{ "dst" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "target" }
 ,{ "buffer" }
 ,{ "element." }
 ,{ "It" }
 ,{ "is" }
 ,{ "assumed," }
 ,{ "this" }
 ,{ "call" }
 ,{ "will" }
 ,{ "change" }
 ,{ "this" }
 ,{ "element" }
 ,{ "to" }
 ,{ "store" }
 ,{ "a" }
 ,{ "required" }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "get()" , & fmt_text_b }
 ,{ "gets" }
 ,{ "the" }
 ,{ "object" }
 ,{ "from" }
 ,{ "the" }
 ,{ "fifo," }
 ,{ "using" }
 ,{ "copying." }
 ,{ "The" }
 ,{ "copy" }
 ,{ "of" }
 ,{ "the" }
 ,{ "object" }
 ,{ "remains" }
 ,{ "in" }
 ,{ "the" }
 ,{ "buffer." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "get_swap()" , & fmt_text_b }
 ,{ "gets" }
 ,{ "the" }
 ,{ "object" }
 ,{ "from" }
 ,{ "the" }
 ,{ "fifo," }
 ,{ "using" }
 ,{ "swapping." }
 ,{ "This" }
 ,{ "method" }
 ,{ "is" }
 ,{ "preferred," }
 ,{ "if" }
 ,{ "you" }
 ,{ "want" }
 ,{ "to" }
 ,{ "clean" }
 ,{ "the" }
 ,{ "object" }
 ,{ "in" }
 ,{ "the" }
 ,{ "buffer," }
 ,{ "or" }
 ,{ "if" }
 ,{ "the" }
 ,{ "type" }
 ,{ "T" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "copyable." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "get_gen()" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "generic" }
 ,{ "method" }
 ,{ "of" }
 ,{ "extraction" }
 ,{ "an" }
 ,{ "object" }
 ,{ "from" }
 ,{ "the" }
 ,{ "fifo," }
 ,{ "it" }
 ,{ "calls" }
 ,{ "the" }
 ,{ "given" }
 ,{ "functor" }
 ,{ "func" , & fmt_text_b }
 ,{ "to" }
 ,{ "do" }
 ,{ "the" }
 ,{ "job," }
 ,{ "the" }
 ,{ "same" }
 ,{ "way" }
 ,{ "as" }
 ,{ "the" }
 ,{ "put_gen()" , & fmt_text_b }
 ,{ "does." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "FifoBuf" }
} , & fmt_h4 , & align_h4 } ;

Text b20 = { {
 { "The" }
 ,{ "class" }
 ,{ "FifoBuf" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "upgraded" }
 ,{ "class" }
 ,{ "Fifo" , & fmt_text_b }
 ,{ "with" }
 ,{ "the" }
 ,{ "embedded" }
 ,{ "buffer:" }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "Here" }
 ,{ "is" }
 ,{ "an" }
 ,{ "example" }
 ,{ "of" }
 ,{ "the" }
 ,{ "String" , & fmt_text_b }
 ,{ "fifo" }
 ,{ "class:" }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Fifo" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_img , outer_img , back_img }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_FeedBuf#page , & page_FileName#page };

Link link = { &page } ;

}

scope page_FileName {

Text b0 = { {
 { "FileName" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/FileName.h" , & fmt_text_Files_b }
 ,{ "CCore/src/FileName.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "FileName" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "class," }
 ,{ "developed" }
 ,{ "to" }
 ,{ "deal" }
 ,{ "with" }
 ,{ "file" }
 ,{ "names" }
 ,{ "as" }
 ,{ "required" }
 ,{ "in" }
 ,{ "standard" }
 ,{ "handling" }
 ,{ "of" }
 ,{ "the" }
 ,{ "directive" }
 ,{ "include" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "with" }
 ,{ "the" }
 ,{ "DDL" , & fmt_text_a , & ..#page_DDLEngine#link }
 ,{ "Engine." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "A" }
 ,{ "FileName" , & fmt_text_b }
 ,{ "object" }
 ,{ "contains" }
 ,{ "inside" }
 ,{ "a" }
 ,{ "normalized" }
 ,{ "full" }
 ,{ "file" }
 ,{ "name." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "in" }
 ,{ "the" }
 ,{ "null" }
 ,{ "state," }
 ,{ "it" }
 ,{ "contains" }
 ,{ "empty" }
 ,{ "string" }
 ,{ "and" }
 ,{ "useless." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Below" }
 ,{ "are" }
 ,{ "some" }
 ,{ "definitions." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "extname" , & fmt_text_b }
 ,{ "—" }
 ,{ "non-empty" }
 ,{ "file" }
 ,{ "name," }
 ,{ "without" }
 ,{ "'/'" , & fmt_text_b }
 ,{ "," }
 ,{ "'\\'" , & fmt_text_b }
 ,{ "," }
 ,{ "':'" , & fmt_text_b }
 ,{ "characters," }
 ,{ "may" }
 ,{ "be" }
 ,{ "special" }
 ,{ "(" }
 ,{ "�.�" , & fmt_text_b }
 ,{ "," }
 ,{ "�..�" , & fmt_text_b }
 ,{ ")." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "name" , & fmt_text_b }
 ,{ "—" }
 ,{ "a" }
 ,{ "regular" }
 ,{ "file" }
 ,{ "name." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "General" }
 ,{ "file" }
 ,{ "name:" }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "Normalized" }
 ,{ "file" }
 ,{ "name:" }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "Absolute" }
 ,{ "names:" }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "Relative" }
 ,{ "names:" }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "Default" }
 ,{ "constructor" }
 ,{ "and" }
 ,{ "Nothing" , & fmt_text_b }
 ,{ "-constructor" }
 ,{ "create" }
 ,{ "the" }
 ,{ "null" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "operator" , & fmt_text_b }
 ,{ "+" , & fmt_text_b }
 ,{ "()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true," }
 ,{ "if" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "not" }
 ,{ "null." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "operator" , & fmt_text_b }
 ,{ "!" , & fmt_text_b }
 ,{ "()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true," }
 ,{ "if" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "null." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "getStr()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "full" }
 ,{ "path." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "getPath()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "a" }
 ,{ "path" }
 ,{ "part," }
 ,{ "including" }
 ,{ "trailing" }
 ,{ "slash," }
 ,{ "if" }
 ,{ "any." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "getFile()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "a" }
 ,{ "file" }
 ,{ "name" }
 ,{ "part." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "For" }
 ,{ "example," }
 ,{ "if" }
 ,{ "the" }
 ,{ "full" }
 ,{ "name" }
 ,{ "is" }
 ,{ "\"c:/dir/file_name.ext\"" , & fmt_text_b }
 ,{ "," }
 ,{ "then" }
 ,{ "getPath()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "\"c:/dir/\"" , & fmt_text_b }
 ,{ "and" }
 ,{ "getFile()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "\"file_name.ext\"" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "printPos()" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "helper" }
 ,{ "method," }
 ,{ "it" }
 ,{ "prints" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name" }
 ,{ "followed" }
 ,{ "by" }
 ,{ "the" }
 ,{ "given" }
 ,{ "text" }
 ,{ "position." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "FileName" , & fmt_text_b }
 ,{ "is" }
 ,{ "swappable" }
 ,{ "and" }
 ,{ "movable." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "FileName" , & fmt_text_b }
 ,{ "is" }
 ,{ "std" }
 ,{ "movable." }
 ,{ "The" }
 ,{ "original" }
 ,{ "object" }
 ,{ "is" }
 ,{ "nullified" }
 ,{ "during" }
 ,{ "the" }
 ,{ "move." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "The" }
 ,{ "main" }
 ,{ "job" }
 ,{ "this" }
 ,{ "class" }
 ,{ "is" }
 ,{ "doing" }
 ,{ "inside" }
 ,{ "two" }
 ,{ "non-trivial" }
 ,{ "constructors." }
 ,{ "The" }
 ,{ "first" }
 ,{ "of" }
 ,{ "them" }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "converts" }
 ,{ "the" }
 ,{ "given" }
 ,{ "general" }
 ,{ "file" }
 ,{ "name" }
 ,{ "into" }
 ,{ "the" }
 ,{ "normalized" }
 ,{ "form." }
 ,{ "If" }
 ,{ "the" }
 ,{ "given" }
 ,{ "name" }
 ,{ "is" }
 ,{ "bad" }
 ,{ "the" }
 ,{ "null" }
 ,{ "object" }
 ,{ "is" }
 ,{ "created." }
 ,{ "Exception" }
 ,{ "may" }
 ,{ "be" }
 ,{ "thrown" }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "enough" }
 ,{ "memory." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "The" }
 ,{ "second" }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "prepares" }
 ,{ "the" }
 ,{ "normalized" }
 ,{ "file" }
 ,{ "name" }
 ,{ "from" }
 ,{ "the" }
 ,{ "given" }
 ,{ "path" }
 ,{ "and" }
 ,{ "the" }
 ,{ "given" }
 ,{ "general" }
 ,{ "file" }
 ,{ "name." }
 ,{ "If" }
 ,{ "the" }
 ,{ "given" }
 ,{ "file" }
 ,{ "name" }
 ,{ "is" }
 ,{ "absolute," }
 ,{ "it" }
 ,{ "is" }
 ,{ "normalized," }
 ,{ "but" }
 ,{ "if" }
 ,{ "it" }
 ,{ "is" }
 ,{ "relative," }
 ,{ "the" }
 ,{ "given" }
 ,{ "path" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "generate" }
 ,{ "the" }
 ,{ "full" }
 ,{ "path." }
 ,{ "Again," }
 ,{ "if" }
 ,{ "the" }
 ,{ "given" }
 ,{ "name" }
 ,{ "is" }
 ,{ "bad" }
 ,{ "the" }
 ,{ "null" }
 ,{ "object" }
 ,{ "is" }
 ,{ "created." }
 ,{ "Exception" }
 ,{ "may" }
 ,{ "be" }
 ,{ "thrown" }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "enough" }
 ,{ "memory." }
 ,{ "path" , & fmt_text_b }
 ,{ "is" }
 ,{ "expected" }
 ,{ "to" }
 ,{ "be" }
 ,{ "the" }
 ,{ "proper" }
 ,{ "path" }
 ,{ "part," }
 ,{ "like" }
 ,{ "getPath()" , & fmt_text_b }
 ,{ "return" }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> FileName" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Fifo#page , & page_FileNameMatch#page };

Link link = { &page } ;

}

scope page_FileNameMatch {

Text b0 = { {
 { "FileNameMatch" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/FileNameMatch.h" , & fmt_text_Files_b }
 ,{ "CCore/src/FileNameMatch.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "FileNameFilter" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "class," }
 ,{ "designed" }
 ,{ "to" }
 ,{ "filter" }
 ,{ "file" }
 ,{ "names" }
 ,{ "according" }
 ,{ "a" }
 ,{ "set" }
 ,{ "of" }
 ,{ "usual" }
 ,{ "meta-templates" }
 ,{ "with" }
 ,{ "wildcards" }
 ,{ "'*'" , & fmt_text_b }
 ,{ "and" }
 ,{ "'?'" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Default" }
 ,{ "constructor" }
 ,{ "creates" }
 ,{ "an" }
 ,{ "object" }
 ,{ "in" }
 ,{ "null" }
 ,{ "state." }
 ,{ "You" }
 ,{ "can" }
 ,{ "reset" }
 ,{ "an" }
 ,{ "object" }
 ,{ "to" }
 ,{ "this" }
 ,{ "state" }
 ,{ "using" }
 ,{ "the" }
 ,{ "method" }
 ,{ "reset()" , & fmt_text_b }
 ,{ "." }
 ,{ "Null" }
 ,{ "state" }
 ,{ "object" }
 ,{ "cannot" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "filter" }
 ,{ "file" }
 ,{ "names." }
 ,{ "You" }
 ,{ "have" }
 ,{ "to" }
 ,{ "initialize" }
 ,{ "it" }
 ,{ "first." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Non-default" }
 ,{ "constructor" }
 ,{ "creates" }
 ,{ "an" }
 ,{ "initialized" }
 ,{ "object." }
 ,{ "filter" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "file" }
 ,{ "name" }
 ,{ "template" }
 ,{ "with" }
 ,{ "wildcards," }
 ,{ "max_states" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "number" }
 ,{ "of" }
 ,{ "states" }
 ,{ "limit." }
 ,{ "Constructor" }
 ,{ "creates" }
 ,{ "a" }
 ,{ "state" }
 ,{ "machine" }
 ,{ "to" }
 ,{ "examine" }
 ,{ "file" }
 ,{ "names." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "operator" , & fmt_text_b }
 ,{ "+" , & fmt_text_b }
 ,{ "()" , & fmt_text_b }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "iff" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "initialized." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "operator" , & fmt_text_b }
 ,{ "!" , & fmt_text_b }
 ,{ "()" , & fmt_text_b }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "iff" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "in" }
 ,{ "null" }
 ,{ "state." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "reset()" , & fmt_text_b }
 ,{ "return" }
 ,{ "the" }
 ,{ "object" }
 ,{ "into" }
 ,{ "the" }
 ,{ "null" }
 ,{ "state." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "reset()" , & fmt_text_b }
 ,{ "with" }
 ,{ "arguments" }
 ,{ "reinitializes" }
 ,{ "the" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "operator" , & fmt_text_b }
 ,{ "()" , & fmt_text_b }
 ,{ "checks," }
 ,{ "if" }
 ,{ "the" }
 ,{ "given" }
 ,{ "file" }
 ,{ "name" }
 ,{ "matches" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name" }
 ,{ "templates." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "not" }
 ,{ "initialized," }
 ,{ "false" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> FileNameMatch" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_FileName#page , & page_Files#page };

Link link = { &page } ;

}

scope page_Files {

Text b0 = { {
 { "Files" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/GenFile.h" , & fmt_text_Files_b }
 ,{ "CCore/src/GenFile.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "CCore" , & fmt_text_b }
 ,{ "uses" }
 ,{ "an" }
 ,{ "abstract" }
 ,{ "concept" }
 ,{ "of" }
 ,{ "working" }
 ,{ "with" }
 ,{ "a" }
 ,{ "file" }
 ,{ "system." }
 ,{ "It" }
 ,{ "includes" }
 ,{ "a" }
 ,{ "set" }
 ,{ "of" }
 ,{ "common" }
 ,{ "constants" }
 ,{ "and" }
 ,{ "abstract" }
 ,{ "operations" }
 ,{ "to" }
 ,{ "work" }
 ,{ "with" }
 ,{ "any" }
 ,{ "file" }
 ,{ "system," }
 ,{ "local" }
 ,{ "or" }
 ,{ "remote." }
 ,{ "The" }
 ,{ "term" }
 ,{ "file" , & fmt_text_b }
 ,{ "means" }
 ,{ "a" }
 ,{ "true" }
 ,{ "file," }
 ,{ "i.e." }
 ,{ "a" }
 ,{ "persistent" }
 ,{ "sequence" }
 ,{ "of" }
 ,{ "octets," }
 ,{ "stored" }
 ,{ "on" }
 ,{ "some" }
 ,{ "file" }
 ,{ "device" }
 ,{ "and" }
 ,{ "identified" }
 ,{ "by" }
 ,{ "its" }
 ,{ "name," }
 ,{ "which" }
 ,{ "may" }
 ,{ "include" }
 ,{ "a" }
 ,{ "device" }
 ,{ "specifier," }
 ,{ "a" }
 ,{ "path" }
 ,{ "specifier" }
 ,{ "and" }
 ,{ "finally" }
 ,{ "a" }
 ,{ "file" }
 ,{ "name." }
 ,{ "All" }
 ,{ "constant" }
 ,{ "standardize" }
 ,{ "a" }
 ,{ "name," }
 ,{ "a" }
 ,{ "type," }
 ,{ "a" }
 ,{ "meaning" }
 ,{ "and" }
 ,{ "a" }
 ,{ "value." }
 ,{ "You" }
 ,{ "may" }
 ,{ "find" }
 ,{ "these" }
 ,{ "definitions" }
 ,{ "in" }
 ,{ "the" }
 ,{ "txt/cpp/GenFile.txt.cpp" , & fmt_text_b }
 ,{ "also." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "File" }
 ,{ "constants" }
} , & fmt_h3 , & align_h3 } ;

Text b4 = { {
 { "FilePosType" , & fmt_text_b }
 ,{ "represents" }
 ,{ "a" }
 ,{ "file" }
 ,{ "position" }
 ,{ "and" }
 ,{ "a" }
 ,{ "length," }
 ,{ "it" }
 ,{ "is" }
 ,{ "64-bit" }
 ,{ "wide." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "CmpFileTimeType" , & fmt_text_b }
 ,{ "represents" }
 ,{ "a" }
 ,{ "file" }
 ,{ "time," }
 ,{ "it" }
 ,{ "is" }
 ,{ "64-bit" }
 ,{ "wide." }
 ,{ "It" }
 ,{ "is" }
 ,{ "an" }
 ,{ "abstract" }
 ,{ "time" }
 ,{ "value," }
 ,{ "without" }
 ,{ "any" }
 ,{ "known" }
 ,{ "resolution." }
 ,{ "It" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "compare" }
 ,{ "file" }
 ,{ "times." }
 ,{ "Null" }
 ,{ "value" }
 ,{ "is" }
 ,{ "reserved" }
 ,{ "for" }
 ,{ "non-existing" }
 ,{ "files." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "MaxPathLen" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "path" }
 ,{ "length" }
 ,{ "limit." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "FileOpenFlags" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "set" }
 ,{ "of" }
 ,{ "flags" }
 ,{ "used" }
 ,{ "to" }
 ,{ "control" }
 ,{ "a" }
 ,{ "file" }
 ,{ "open" }
 ,{ "operation." }
 ,{ "You" }
 ,{ "may" }
 ,{ "use" }
 ,{ "the" }
 ,{ "overloaded" }
 ,{ "operator" , & fmt_text_b }
 ,{ "|" , & fmt_text_b }
 ,{ "to" }
 ,{ "combine" }
 ,{ "a" }
 ,{ "set" }
 ,{ "of" }
 ,{ "flags" }
 ,{ "into" }
 ,{ "a" }
 ,{ "single" }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "Open_Read" , & fmt_text_b }
 ,{ "—" }
 ,{ "read" }
 ,{ "operations" }
 ,{ "must" }
 ,{ "be" }
 ,{ "available" }
 ,{ "on" }
 ,{ "opened" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "Open_Write" , & fmt_text_b }
 ,{ "—" }
 ,{ "write" }
 ,{ "operations" }
 ,{ "must" }
 ,{ "be" }
 ,{ "available" }
 ,{ "on" }
 ,{ "opened" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "Open_Pos" , & fmt_text_b }
 ,{ "—" }
 ,{ "position" }
 ,{ "operations" }
 ,{ "must" }
 ,{ "be" }
 ,{ "available" }
 ,{ "on" }
 ,{ "opened" }
 ,{ "file," }
 ,{ "this" }
 ,{ "includes" }
 ,{ "a" }
 ,{ "file" }
 ,{ "length" }
 ,{ "operation." }
 ,{ "This" }
 ,{ "flag" }
 ,{ "is" }
 ,{ "used," }
 ,{ "if" }
 ,{ "a" }
 ,{ "file" }
 ,{ "is" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "sequential" }
 ,{ "access" }
 ,{ "set" }
 ,{ "of" }
 ,{ "operations." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "Open_Create" , & fmt_text_b }
 ,{ "—" }
 ,{ "create" }
 ,{ "a" }
 ,{ "new" }
 ,{ "file," }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "a" }
 ,{ "file" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "name." }
 ,{ "If" }
 ,{ "this" }
 ,{ "flag" }
 ,{ "is" }
 ,{ "not" }
 ,{ "set" }
 ,{ "and" }
 ,{ "the" }
 ,{ "file" }
 ,{ "does" }
 ,{ "not" }
 ,{ "exist," }
 ,{ "the" }
 ,{ "open" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "failed." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "Open_Erase" , & fmt_text_b }
 ,{ "—" }
 ,{ "erase" }
 ,{ "the" }
 ,{ "file," }
 ,{ "if" }
 ,{ "one" }
 ,{ "exists." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "Open_New" , & fmt_text_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "file" }
 ,{ "must" }
 ,{ "be" }
 ,{ "a" }
 ,{ "new" }
 ,{ "file." }
 ,{ "If" }
 ,{ "the" }
 ,{ "file" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "name" }
 ,{ "exists," }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "failed." }
 ,{ "If" }
 ,{ "this" }
 ,{ "flags" }
 ,{ "is" }
 ,{ "set," }
 ,{ "then" }
 ,{ "Open_Create" , & fmt_text_b }
 ,{ "and" }
 ,{ "Open_Erase" , & fmt_text_b }
 ,{ "flags" }
 ,{ "are" }
 ,{ "ignored." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "Open_AutoDelete" , & fmt_text_b }
 ,{ "—" }
 ,{ "delete" }
 ,{ "the" }
 ,{ "file" }
 ,{ "during" }
 ,{ "the" }
 ,{ "close" }
 ,{ "operation." }
 ,{ "The" }
 ,{ "effect" }
 ,{ "of" }
 ,{ "this" }
 ,{ "flag" }
 ,{ "can" }
 ,{ "be" }
 ,{ "cancelled" }
 ,{ "after" }
 ,{ "the" }
 ,{ "file" }
 ,{ "is" }
 ,{ "opened." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "Open_PosEnd" , & fmt_text_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "file" }
 ,{ "position" }
 ,{ "is" }
 ,{ "set" }
 ,{ "to" }
 ,{ "the" }
 ,{ "end" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file." }
 ,{ "This" }
 ,{ "flag" }
 ,{ "is" }
 ,{ "used" }
 ,{ "if" }
 ,{ "a" }
 ,{ "file" }
 ,{ "is" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "sequential" }
 ,{ "access" }
 ,{ "set" }
 ,{ "of" }
 ,{ "operations." }
 ,{ "It" }
 ,{ "does" }
 ,{ "not" }
 ,{ "required" }
 ,{ "the" }
 ,{ "Open_Pos" , & fmt_text_b }
 ,{ "flag" }
 ,{ "to" }
 ,{ "be" }
 ,{ "set." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "Open_ToRead" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "combination" }
 ,{ "Open_Read" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "Open_ToWrite" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "combination" }
 ,{ "Open_Write|Open_Create|Open_Erase" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "Open_ToAppend" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "combination" }
 ,{ "Open_Write|Open_Create|Open_PosEnd" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "GetTextDesc(FileOpenFlags)" , & fmt_text_b }
 ,{ "creates" }
 ,{ "a" }
 ,{ "temporary" }
 ,{ "object" }
 ,{ "to" }
 ,{ "print" }
 ,{ "a" }
 ,{ "text" }
 ,{ "description" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "flags." }
 ,{ "The" }
 ,{ "output" }
 ,{ "looks" }
 ,{ "like" }
 ,{ "\"Read|Write|Create\"" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "FileError" , & fmt_text_b }
 ,{ "represent" }
 ,{ "a" }
 ,{ "list" }
 ,{ "of" }
 ,{ "typical" }
 ,{ "errors" }
 ,{ "happens" }
 ,{ "during" }
 ,{ "file" }
 ,{ "operations." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "FileType" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "designate" }
 ,{ "the" }
 ,{ "file" }
 ,{ "type:" }
 ,{ "is" }
 ,{ "it" }
 ,{ "a" }
 ,{ "file," }
 ,{ "a" }
 ,{ "directory" }
 ,{ "or" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "such" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "There" }
 ,{ "are" }
 ,{ "situations" }
 ,{ "when" }
 ,{ "several" }
 ,{ "errors" }
 ,{ "can" }
 ,{ "be" }
 ,{ "fired" }
 ,{ "during" }
 ,{ "the" }
 ,{ "one" }
 ,{ "operation," }
 ,{ "for" }
 ,{ "example," }
 ,{ "during" }
 ,{ "file" }
 ,{ "closing." }
 ,{ "FileMultiError" , & fmt_text_b }
 ,{ "can" }
 ,{ "store" }
 ,{ "multiple" }
 ,{ "error" }
 ,{ "codes." }
 ,{ "It" }
 ,{ "accumulates" }
 ,{ "up" }
 ,{ "to" }
 ,{ "10" }
 ,{ "error" }
 ,{ "codes" }
 ,{ "and" }
 ,{ "counts" }
 ,{ "any" }
 ,{ "extra." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "operator" , & fmt_text_b }
 ,{ "+" , & fmt_text_b }
 ,{ "and" }
 ,{ "operator" , & fmt_text_b }
 ,{ "!" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "test" }
 ,{ "if" }
 ,{ "there" }
 ,{ "are" }
 ,{ "accumulated" }
 ,{ "errors." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "add()" , & fmt_text_b }
 ,{ "adds" }
 ,{ "a" }
 ,{ "error" }
 ,{ "code" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "getFirst()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "first" }
 ,{ "error" }
 ,{ "code" }
 ,{ "or" }
 ,{ "FileError_Ok" , & fmt_text_b }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "one." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "copyTo()" , & fmt_text_b }
 ,{ "copies" }
 ,{ "the" }
 ,{ "state" }
 ,{ "to" }
 ,{ "another" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "print()" , & fmt_text_b }
 ,{ "prints" }
 ,{ "the" }
 ,{ "content" }
 ,{ "of" }
 ,{ "the" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "File" }
 ,{ "operations" }
} , & fmt_h3 , & align_h3 } ;

Text b29 = { {
 { "There" }
 ,{ "are" }
 ,{ "two" }
 ,{ "file" }
 ,{ "operations" }
 ,{ "sets:" }
 ,{ "the" }
 ,{ "classical," }
 ,{ "where" }
 ,{ "there" }
 ,{ "is" }
 ,{ "an" }
 ,{ "internal" }
 ,{ "file" }
 ,{ "position" }
 ,{ "and" }
 ,{ "the" }
 ,{ "alternative," }
 ,{ "where" }
 ,{ "read" }
 ,{ "or" }
 ,{ "write" }
 ,{ "position" }
 ,{ "is" }
 ,{ "provided" }
 ,{ "explicitly." }
 ,{ "File" }
 ,{ "names" }
 ,{ "are" }
 ,{ "encoded" }
 ,{ "as" }
 ,{ "a" }
 ,{ "byte" }
 ,{ "range." }
 ,{ "No" }
 ,{ "zero-termination" }
 ,{ "is" }
 ,{ "assumed." }
 ,{ "The" }
 ,{ "length" }
 ,{ "is" }
 ,{ "given" }
 ,{ "explicitly." }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "Basic" }
 ,{ "types" }
 ,{ "and" }
 ,{ "constants" }
} , & fmt_h4 , & align_h4 } ;

Text b31 = { {
 { "There" }
 ,{ "are" }
 ,{ "few" }
 ,{ "basic" }
 ,{ "types" }
 ,{ "and" }
 ,{ "constants." }
} , & fmt_text , & align_text } ;

Text b32 = { {
 { "Classical" }
 ,{ "set" }
} , & fmt_h4 , & align_h4 } ;

Text b33 = { {
 { "Here" }
 ,{ "is" }
 ,{ "the" }
 ,{ "classical" }
 ,{ "set" }
 ,{ "of" }
 ,{ "operations" }
 ,{ "as" }
 ,{ "an" }
 ,{ "abstract" }
 ,{ "set" }
 ,{ "of" }
 ,{ "functions." }
 ,{ "The" }
 ,{ "error" }
 ,{ "reporting" }
 ,{ "is" }
 ,{ "omitted." }
} , & fmt_text , & align_text } ;

Text b34 = { {
 { "To" }
 ,{ "start" }
 ,{ "working" }
 ,{ "with" }
 ,{ "a" }
 ,{ "file" }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "opened." }
 ,{ "The" }
 ,{ "open" , & fmt_text_b }
 ,{ "operation" }
 ,{ "arguments" }
 ,{ "are:" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name" }
 ,{ "(with" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name" }
 ,{ "length)," }
 ,{ "and" }
 ,{ "the" }
 ,{ "open" }
 ,{ "flags." }
 ,{ "The" }
 ,{ "opened" }
 ,{ "file" }
 ,{ "has" }
 ,{ "the" }
 ,{ "internal" }
 ,{ "file" }
 ,{ "position." }
 ,{ "This" }
 ,{ "position" }
 ,{ "is" }
 ,{ "set" }
 ,{ "to" }
 ,{ "0," }
 ,{ "unless" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "Open_PosEnd" , & fmt_text_b }
 ,{ "is" }
 ,{ "specified." }
 ,{ "If" }
 ,{ "this" }
 ,{ "flag" }
 ,{ "is" }
 ,{ "set," }
 ,{ "then" }
 ,{ "the" }
 ,{ "position" }
 ,{ "is" }
 ,{ "set" }
 ,{ "to" }
 ,{ "the" }
 ,{ "file" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b35 = { {
 { "The" }
 ,{ "close" , & fmt_text_b }
 ,{ "operation" }
 ,{ "has" }
 ,{ "the" }
 ,{ "argument:" }
 ,{ "preserve_file" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "used" }
 ,{ "with" }
 ,{ "the" }
 ,{ "open" }
 ,{ "flag" }
 ,{ "Open_AutoDelete" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "this" }
 ,{ "flag" }
 ,{ "is" }
 ,{ "set" }
 ,{ "then" }
 ,{ "the" }
 ,{ "file" }
 ,{ "is" }
 ,{ "deleted" }
 ,{ "during" }
 ,{ "the" }
 ,{ "close" }
 ,{ "operation." }
 ,{ "But" }
 ,{ "if" }
 ,{ "the" }
 ,{ "preserve_file" , & fmt_text_b }
 ,{ "is" }
 ,{ "true," }
 ,{ "it" }
 ,{ "is" }
 ,{ "preserved." }
} , & fmt_text , & align_text } ;

Text b36 = { {
 { "getLen" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "current" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file." }
 ,{ "The" }
 ,{ "length" }
 ,{ "can" }
 ,{ "be" }
 ,{ "changed" }
 ,{ "by" }
 ,{ "the" }
 ,{ "write" , & fmt_text_b }
 ,{ "operation." }
} , & fmt_text , & align_text } ;

Text b37 = { {
 { "getPos" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "current" }
 ,{ "file" }
 ,{ "position." }
} , & fmt_text , & align_text } ;

Text b38 = { {
 { "setPos" , & fmt_text_b }
 ,{ "sets" }
 ,{ "the" }
 ,{ "current" }
 ,{ "file" }
 ,{ "position." }
 ,{ "Setting" }
 ,{ "the" }
 ,{ "file" }
 ,{ "position" }
 ,{ "beyond" }
 ,{ "the" }
 ,{ "end-of-file" }
 ,{ "has" }
 ,{ "an" }
 ,{ "undefined" }
 ,{ "behavior." }
} , & fmt_text , & align_text } ;

Text b39 = { {
 { "read" , & fmt_text_b }
 ,{ "transfers" }
 ,{ "bytes" }
 ,{ "from" }
 ,{ "the" }
 ,{ "file" }
 ,{ "at" }
 ,{ "the" }
 ,{ "current" }
 ,{ "file" }
 ,{ "position" }
 ,{ "to" }
 ,{ "the" }
 ,{ "user" }
 ,{ "buffer" }
 ,{ "and" }
 ,{ "updates" }
 ,{ "the" }
 ,{ "file" }
 ,{ "position." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "can" }
 ,{ "be" }
 ,{ "less" }
 ,{ "than" }
 ,{ "the" }
 ,{ "given" }
 ,{ "length," }
 ,{ "if" }
 ,{ "the" }
 ,{ "end-of-file" }
 ,{ "is" }
 ,{ "encountered." }
} , & fmt_text , & align_text } ;

Text b40 = { {
 { "write" , & fmt_text_b }
 ,{ "transfers" }
 ,{ "bytes" }
 ,{ "from" }
 ,{ "the" }
 ,{ "user" }
 ,{ "buffer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "file" }
 ,{ "at" }
 ,{ "the" }
 ,{ "current" }
 ,{ "file" }
 ,{ "position" }
 ,{ "and" }
 ,{ "updates" }
 ,{ "the" }
 ,{ "file" }
 ,{ "position." }
 ,{ "Write" }
 ,{ "MAY" }
 ,{ "extend" }
 ,{ "the" }
 ,{ "file." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "should" }
 ,{ "be" }
 ,{ "equal" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "length," }
 ,{ "unless" }
 ,{ "there" }
 ,{ "is" }
 ,{ "a" }
 ,{ "good" }
 ,{ "reason" }
 ,{ "to" }
 ,{ "implement" }
 ,{ "another" }
 ,{ "behavior." }
} , & fmt_text , & align_text } ;

Link link_AltSet = { & page , { 41 } } ;

Text b41 = { {
 { "Alternative" }
 ,{ "set" }
} , & fmt_h4 , & align_h4 } ;

Text b42 = { {
 { "And" }
 ,{ "the" }
 ,{ "alternative" }
 ,{ "set" }
 ,{ "is:" }
} , & fmt_text , & align_text } ;

Text b43 = { {
 { "The" }
 ,{ "open" , & fmt_text_b }
 ,{ "operation" }
 ,{ "ignores" }
 ,{ "flags" }
 ,{ "Open_Pos" , & fmt_text_b }
 ,{ "and" }
 ,{ "Open_PosEnd" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "file" }
 ,{ "length." }
 ,{ "There" }
 ,{ "is" }
 ,{ "no" }
 ,{ "the" }
 ,{ "internal" }
 ,{ "file" }
 ,{ "position" }
 ,{ "in" }
 ,{ "this" }
 ,{ "case." }
} , & fmt_text , & align_text } ;

Text b44 = { {
 { "read" , & fmt_text_b }
 ,{ "uses" }
 ,{ "the" }
 ,{ "explicitly" }
 ,{ "given" }
 ,{ "file" }
 ,{ "position." }
 ,{ "The" }
 ,{ "read" }
 ,{ "range" }
 ,{ "must" }
 ,{ "be" }
 ,{ "in" }
 ,{ "the" }
 ,{ "file" }
 ,{ "range." }
} , & fmt_text , & align_text } ;

Text b45 = { {
 { "write" , & fmt_text_b }
 ,{ "also" }
 ,{ "uses" }
 ,{ "the" }
 ,{ "explicitly" }
 ,{ "given" }
 ,{ "file" }
 ,{ "position." }
 ,{ "But" }
 ,{ "the" }
 ,{ "write" }
 ,{ "range" }
 ,{ "may" }
 ,{ "be" }
 ,{ "outside" }
 ,{ "the" }
 ,{ "file" }
 ,{ "range." }
 ,{ "In" }
 ,{ "this" }
 ,{ "case" }
 ,{ "the" }
 ,{ "file" }
 ,{ "is" }
 ,{ "extended." }
 ,{ "The" }
 ,{ "return" }
 ,{ "length" }
 ,{ "is" }
 ,{ "the" }
 ,{ "new" }
 ,{ "file" }
 ,{ "length." }
 ,{ "If" }
 ,{ "there" }
 ,{ "is" }
 ,{ "a" }
 ,{ "hole" }
 ,{ "after" }
 ,{ "the" }
 ,{ "end-of-file" }
 ,{ "and" }
 ,{ "before" }
 ,{ "the" }
 ,{ "write" }
 ,{ "position," }
 ,{ "the" }
 ,{ "hole" }
 ,{ "is" }
 ,{ "filled" }
 ,{ "by" }
 ,{ "unpredicted" }
 ,{ "values." }
} , & fmt_text , & align_text } ;

Link link_FSO = { & page , { 46 } } ;

Text b46 = { {
 { "File" }
 ,{ "system" }
 ,{ "operations" }
} , & fmt_h3 , & align_h3 } ;

Text b47 = { {
 { "getFileType()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "file" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b48 = { {
 { "getFileUpdateTime()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "last" }
 ,{ "modification" }
 ,{ "time" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file" }
 ,{ "or" }
 ,{ "directory." }
} , & fmt_text , & align_text } ;

Text b49 = { {
 { "createFile()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "the" }
 ,{ "new" }
 ,{ "empty" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Text b50 = { {
 { "deleteFile()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "existing" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Text b51 = { {
 { "createDir()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "the" }
 ,{ "new" }
 ,{ "empty" }
 ,{ "directory." }
} , & fmt_text , & align_text } ;

Text b52 = { {
 { "deleteDir()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "existing" }
 ,{ "directory." }
 ,{ "If" }
 ,{ "the" }
 ,{ "recursive" , & fmt_text_b }
 ,{ "is" }
 ,{ "false," }
 ,{ "the" }
 ,{ "directory" }
 ,{ "must" }
 ,{ "be" }
 ,{ "empty." }
 ,{ "Otherwise" }
 ,{ "it" }
 ,{ "is" }
 ,{ "deleted" }
 ,{ "with" }
 ,{ "the" }
 ,{ "all" }
 ,{ "content" }
 ,{ "recursively." }
} , & fmt_text , & align_text } ;

Text b53 = { {
 { "rename()" , & fmt_text_b }
 ,{ "renames" }
 ,{ "or" }
 ,{ "moves" }
 ,{ "the" }
 ,{ "file" }
 ,{ "of" }
 ,{ "directory." }
 ,{ "The" }
 ,{ "allow_overwrite" , & fmt_text_b }
 ,{ "flag" }
 ,{ "allows" }
 ,{ "overwriting" }
 ,{ "the" }
 ,{ "existing" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Text b54 = { {
 { "remove()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "ether" }
 ,{ "the" }
 ,{ "existing" }
 ,{ "file" }
 ,{ "or" }
 ,{ "the" }
 ,{ "existing" }
 ,{ "empty" }
 ,{ "directory." }
} , & fmt_text , & align_text } ;

Text b55 = { {
 { "To" }
 ,{ "enumerate" }
 ,{ "a" }
 ,{ "directory" }
 ,{ "a" }
 ,{ "some" }
 ,{ "\"directory" }
 ,{ "cursor\"" }
 ,{ "is" }
 ,{ "required." }
} , & fmt_text , & align_text } ;

Text b56 = { {
 { "The" }
 ,{ "visible" }
 ,{ "state" }
 ,{ "of" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "has" }
 ,{ "the" }
 ,{ "following" }
 ,{ "members:" }
} , & fmt_text , & align_text } ;

Text b57 = { {
 { "file_name" , & fmt_text_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "name" }
 ,{ "of" }
 ,{ "the" }
 ,{ "current" }
 ,{ "file" }
 ,{ "or" }
 ,{ "directory." }
} , & fmt_text , & align_text } ;

Text b58 = { {
 { "len" , & fmt_text_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name." }
} , & fmt_text , & align_text } ;

Text b59 = { {
 { "type" , & fmt_text_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "type" }
 ,{ "of" }
 ,{ "the" }
 ,{ "current" }
 ,{ "file" }
 ,{ "or" }
 ,{ "directory." }
} , & fmt_text , & align_text } ;

Text b60 = { {
 { "error" , & fmt_text_b }
 ,{ "—" }
 ,{ "error" }
 ,{ "code," }
 ,{ "if" }
 ,{ "any." }
} , & fmt_text , & align_text } ;

Text b61 = { {
 { "There" }
 ,{ "are" }
 ,{ "three" }
 ,{ "cursor" }
 ,{ "operations." }
} , & fmt_text , & align_text } ;

Text b62 = { {
 { "init()" , & fmt_text_b }
 ,{ "initializes" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "to" }
 ,{ "enumerate" }
 ,{ "the" }
 ,{ "given" }
 ,{ "directory." }
 ,{ "The" }
 ,{ "cursor" }
 ,{ "is" }
 ,{ "at" }
 ,{ "before-the-first" }
 ,{ "element" }
 ,{ "position." }
 ,{ "If" }
 ,{ "this" }
 ,{ "operation" }
 ,{ "fails," }
 ,{ "other" }
 ,{ "operations" }
 ,{ "should" }
 ,{ "not" }
 ,{ "be" }
 ,{ "used." }
} , & fmt_text , & align_text } ;

Text b63 = { {
 { "next()" , & fmt_text_b }
 ,{ "moves" }
 ,{ "to" }
 ,{ "the" }
 ,{ "next" }
 ,{ "element," }
 ,{ "if" }
 ,{ "such" }
 ,{ "element" }
 ,{ "exists." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "is" }
 ,{ "moved," }
 ,{ "otherwise," }
 ,{ "if" }
 ,{ "the" }
 ,{ "cursor" }
 ,{ "is" }
 ,{ "already" }
 ,{ "at" }
 ,{ "the" }
 ,{ "last" }
 ,{ "element," }
 ,{ "the" }
 ,{ "false" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b64 = { {
 { "exit()" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "destroy" }
 ,{ "the" }
 ,{ "cursor." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Files" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b31 , null , inner_text , outer_text , back_text }
 ,{ & b32 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b33 , null , inner_text , outer_text , back_text }
 ,{ & b34 , null , inner_text , outer_text , back_text }
 ,{ & b35 , null , inner_text , outer_text , back_text }
 ,{ & b36 , null , inner_text , outer_text , back_text }
 ,{ & b37 , null , inner_text , outer_text , back_text }
 ,{ & b38 , null , inner_text , outer_text , back_text }
 ,{ & b39 , null , inner_text , outer_text , back_text }
 ,{ & b40 , null , inner_text , outer_text , back_text }
 ,{ & b41 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b42 , null , inner_text , outer_text , back_text }
 ,{ & b43 , null , inner_text , outer_text , back_text }
 ,{ & b44 , null , inner_text , outer_text , back_text }
 ,{ & b45 , null , inner_text , outer_text , back_text }
 ,{ & b46 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b47 , null , inner_text , outer_text , back_text }
 ,{ & b48 , null , inner_text , outer_text , back_text }
 ,{ & b49 , null , inner_text , outer_text , back_text }
 ,{ & b50 , null , inner_text , outer_text , back_text }
 ,{ & b51 , null , inner_text , outer_text , back_text }
 ,{ & b52 , null , inner_text , outer_text , back_text }
 ,{ & b53 , null , inner_text , outer_text , back_text }
 ,{ & b54 , null , inner_text , outer_text , back_text }
 ,{ & b55 , null , inner_text , outer_text , back_text }
 ,{ & b56 , null , inner_text , outer_text , back_text }
 ,{ & b57 , null , inner_text , outer_text , back_text }
 ,{ & b58 , null , inner_text , outer_text , back_text }
 ,{ & b59 , null , inner_text , outer_text , back_text }
 ,{ & b60 , null , inner_text , outer_text , back_text }
 ,{ & b61 , null , inner_text , outer_text , back_text }
 ,{ & b62 , null , inner_text , outer_text , back_text }
 ,{ & b63 , null , inner_text , outer_text , back_text }
 ,{ & b64 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_FileNameMatch#page , & page_FileSystem#page };

Link link = { &page } ;

}

scope page_FileSystem {

Text b0 = { {
 { "FileSystem" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/FileSystem.h" , & fmt_text_Files_b }
 ,{ "CCore/src/FileSystem.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "The" }
 ,{ "class" }
 ,{ "FileSystem" , & fmt_text_b }
 ,{ "implements" }
 ,{ "the" }
 ,{ "standard" , & fmt_text_a , & ..#page_Files#link_FSO }
 ,{ "list" , & fmt_text_a , & ..#page_Files#link_FSO }
 ,{ "of" , & fmt_text_a , & ..#page_Files#link_FSO }
 ,{ "file" , & fmt_text_a , & ..#page_Files#link_FSO }
 ,{ "system" , & fmt_text_a , & ..#page_Files#link_FSO }
 ,{ "operations" , & fmt_text_a , & ..#page_Files#link_FSO }
 ,{ "on" }
 ,{ "the" }
 ,{ "local" }
 ,{ "file" }
 ,{ "system." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Methods" }
 ,{ "throw" }
 ,{ "exceptions" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "errors." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "There" }
 ,{ "are" }
 ,{ "extra" }
 ,{ "operations," }
 ,{ "provided" }
 ,{ "by" }
 ,{ "this" }
 ,{ "class." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "exec()" , & fmt_text_b }
 ,{ "runs" }
 ,{ "a" }
 ,{ "program." }
 ,{ "dir" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "working" }
 ,{ "directory," }
 ,{ "program" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "file" }
 ,{ "of" }
 ,{ "the" }
 ,{ "program," }
 ,{ "arg" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "command" }
 ,{ "line." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "pathOf()" , & fmt_text_b }
 ,{ "converts" }
 ,{ "path" }
 ,{ "to" }
 ,{ "the" }
 ,{ "full" }
 ,{ "path" }
 ,{ "using" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "buffer" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "result." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "The" }
 ,{ "class" }
 ,{ "DirCursor" , & fmt_text_b }
 ,{ "can" }
 ,{ "list" }
 ,{ "a" }
 ,{ "directory" }
 ,{ "content." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "DirCursor" , & fmt_text_b }
 ,{ "constructor" }
 ,{ "creates" }
 ,{ "a" }
 ,{ "directory" }
 ,{ "enumerator." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "reference" }
 ,{ "to" }
 ,{ "the" }
 ,{ "FileSystem" , & fmt_text_b }
 ,{ "object," }
 ,{ "the" }
 ,{ "second" }
 ,{ "is" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "name." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "next()" , & fmt_text_b }
 ,{ "moves" }
 ,{ "to" }
 ,{ "the" }
 ,{ "next" }
 ,{ "file." }
 ,{ "Initially" }
 ,{ "the" }
 ,{ "current" }
 ,{ "file" }
 ,{ "is" }
 ,{ "the" }
 ,{ "\"before-the-first\"" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "getFileName()" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "name" }
 ,{ "of" }
 ,{ "the" }
 ,{ "current" }
 ,{ "file" }
 ,{ "(path" }
 ,{ "is" }
 ,{ "not" }
 ,{ "included)." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "getFileType()" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "type" }
 ,{ "of" }
 ,{ "the" }
 ,{ "current" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "apply()" , & fmt_text_b }
 ,{ "applies" }
 ,{ "the" }
 ,{ "given" }
 ,{ "functor" }
 ,{ "on" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name" }
 ,{ "list." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "An" }
 ,{ "example:" }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "These" }
 ,{ "classes" }
 ,{ "are" }
 ,{ "built" }
 ,{ "upon" }
 ,{ "the" }
 ,{ "target" }
 ,{ "classes" }
 ,{ "Sys::FileSystem" , & fmt_text_b }
 ,{ "and" }
 ,{ "Sys::FileSystem::DirCursor" , & fmt_text_b }
 ,{ "," }
 ,{ "declared" }
 ,{ "in" }
 ,{ "the" }
 ,{ "header" }
 ,{ "sys/SysFileSystem.h" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> FileSystem" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Files#page , & page_FileToMem#page };

Link link = { &page } ;

}

scope page_FileToMem {

Text b0 = { {
 { "FileToMem" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/FileToMem.h" , & fmt_text_Files_b }
 ,{ "CCore/src/FileToMem.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "FileToMem" }
} , & fmt_h4 , & align_h4 } ;

Text b3 = { {
 { "The" }
 ,{ "class" }
 ,{ "FileToMem" , & fmt_text_b }
 ,{ "loads" }
 ,{ "the" }
 ,{ "file" }
 ,{ "to" }
 ,{ "the" }
 ,{ "memory." }
 ,{ "It" }
 ,{ "is" }
 ,{ "derived" }
 ,{ "from" }
 ,{ "the" }
 ,{ "class" }
 ,{ "ToMemBase" , & fmt_text_a , & ..#page_ToMemBase#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "of" }
 ,{ "the" }
 ,{ "constructor" }
 ,{ "is" }
 ,{ "the" }
 ,{ "file_name" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "second" }
 ,{ "max_len" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "length" }
 ,{ "limit." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "ToMemBase" , & fmt_text_b }
 ,{ "is" }
 ,{ "std" }
 ,{ "movable." }
 ,{ "The" }
 ,{ "original" }
 ,{ "object" }
 ,{ "is" }
 ,{ "nullified" }
 ,{ "during" }
 ,{ "the" }
 ,{ "move." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "This" }
 ,{ "class" }
 ,{ "is" }
 ,{ "swappable" }
 ,{ "and" }
 ,{ "movable." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "PartFileToMem" }
} , & fmt_h4 , & align_h4 } ;

Text b8 = { {
 { "PartFileToMem" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "load" }
 ,{ "parts" }
 ,{ "of" }
 ,{ "a" }
 ,{ "file" }
 ,{ "into" }
 ,{ "a" }
 ,{ "memory" }
 ,{ "buffer." }
 ,{ "This" }
 ,{ "class" }
 ,{ "loads" }
 ,{ "file" }
 ,{ "parts" }
 ,{ "sequentially." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "Constructor" }
 ,{ "has" }
 ,{ "two" }
 ,{ "arguments:" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name" }
 ,{ "and" }
 ,{ "the" }
 ,{ "internal" }
 ,{ "buffer" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "getFileLen()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "file" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "getCurPos()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "current" }
 ,{ "position." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "getRestLen()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file" }
 ,{ "part" }
 ,{ "after" }
 ,{ "the" }
 ,{ "current" }
 ,{ "position." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "more()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "iff" }
 ,{ "there" }
 ,{ "is" }
 ,{ "a" }
 ,{ "room" }
 ,{ "after" }
 ,{ "the" }
 ,{ "current" }
 ,{ "position." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "read()" , & fmt_text_b }
 ,{ "reads" }
 ,{ "the" }
 ,{ "next" }
 ,{ "file" }
 ,{ "part" }
 ,{ "from" }
 ,{ "the" }
 ,{ "current" }
 ,{ "position" }
 ,{ "up" }
 ,{ "to" }
 ,{ "the" }
 ,{ "end" }
 ,{ "of" }
 ,{ "the" }
 ,{ "buffer" }
 ,{ "or" }
 ,{ "up" }
 ,{ "to" }
 ,{ "the" }
 ,{ "end" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file." }
 ,{ "The" }
 ,{ "part" }
 ,{ "is" }
 ,{ "stored" }
 ,{ "in" }
 ,{ "the" }
 ,{ "internal" }
 ,{ "buffer" }
 ,{ "and" }
 ,{ "the" }
 ,{ "constant" }
 ,{ "range" }
 ,{ "of" }
 ,{ "bytes" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> FileToMem" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_FileSystem#page , & page_FileToRead#page };

Link link = { &page } ;

}

scope page_FileToRead {

Text b0 = { {
 { "FileToRead" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/FileToRead.h" , & fmt_text_Files_b }
 ,{ "CCore/src/FileToRead.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "provides" }
 ,{ "two" }
 ,{ "BinFileToRead" , & fmt_text_a , & ..#page_BinFileToRead#link }
 ,{ "classes" }
 ,{ "for" }
 ,{ "host" }
 ,{ "targets." }
 ,{ "These" }
 ,{ "classes" }
 ,{ "uses" }
 ,{ "host" }
 ,{ "OS" }
 ,{ "file" }
 ,{ "IO" }
 ,{ "functions" }
 ,{ "to" }
 ,{ "read" }
 ,{ "raw" }
 ,{ "data" }
 ,{ "from" }
 ,{ "files." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "DefBinFileToRead" , & fmt_text_b }
 ,{ "access" }
 ,{ "files" }
 ,{ "of" }
 ,{ "the" }
 ,{ "host" }
 ,{ "file" }
 ,{ "system." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "VolumeBinFileToRead" , & fmt_text_b }
 ,{ "access" }
 ,{ "files" }
 ,{ "of" }
 ,{ "the" }
 ,{ "volume" , & fmt_text_a , & ..#page_Volume#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> FileToRead" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_FileToMem#page , & page_ForcedTimeout#page };

Link link = { &page } ;

}

scope page_ForcedTimeout {

Text b0 = { {
 { "ForcedTimeout" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/task/TaskCore.h" , & fmt_text_Files_b }
 ,{ "CCore/src/task/TaskCore.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "ForcedTimeout" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "simulate" }
 ,{ "a" }
 ,{ "timeout." }
 ,{ "It" }
 ,{ "can" }
 ,{ "be" }
 ,{ "useful" }
 ,{ "to" }
 ,{ "interrupt" }
 ,{ "a" }
 ,{ "blocking" }
 ,{ "call." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Lets" }
 ,{ "consider" }
 ,{ "an" }
 ,{ "example." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "In" }
 ,{ "this" }
 ,{ "example" }
 ,{ "we" }
 ,{ "create" }
 ,{ "the" }
 ,{ "ForcedTimeout" , & fmt_text_b }
 ,{ "object." }
 ,{ "Then" }
 ,{ "we" }
 ,{ "take" }
 ,{ "one" }
 ,{ "of" }
 ,{ "abort" }
 ,{ "functions," }
 ,{ "provided" }
 ,{ "by" }
 ,{ "the" }
 ,{ "object," }
 ,{ "and" }
 ,{ "create" }
 ,{ "and" }
 ,{ "start" }
 ,{ "a" }
 ,{ "Ticker" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "ticker" , & fmt_text_b }
 ,{ "will" }
 ,{ "call" }
 ,{ "this" }
 ,{ "function" }
 ,{ "after" }
 ,{ "the" }
 ,{ "3" , & fmt_text_b }
 ,{ "seconds" }
 ,{ "delay." }
 ,{ "Abort" }
 ,{ "function" }
 ,{ "interrupts" }
 ,{ "any" }
 ,{ "call" }
 ,{ "of" }
 ,{ "a" }
 ,{ "timed" }
 ,{ "blocking" }
 ,{ "synchronization" }
 ,{ "object" }
 ,{ "method." }
 ,{ "In" }
 ,{ "the" }
 ,{ "example" }
 ,{ "we" }
 ,{ "are" }
 ,{ "using" }
 ,{ "the" }
 ,{ "Sem" , & fmt_text_b }
 ,{ "." }
 ,{ "Without" }
 ,{ "ForcedTimeout" , & fmt_text_b }
 ,{ "the" }
 ,{ "call" }
 ,{ "sem.take(100_sec)" , & fmt_text_b }
 ,{ "would" }
 ,{ "block" }
 ,{ "the" }
 ,{ "execution" }
 ,{ "for" }
 ,{ "100" , & fmt_text_b }
 ,{ "seconds." }
 ,{ "Abort" }
 ,{ "function" }
 ,{ "is" }
 ,{ "interrupting" }
 ,{ "the" }
 ,{ "wait" }
 ,{ "after" }
 ,{ "3" , & fmt_text_b }
 ,{ "seconds." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "Three" }
 ,{ "variants" }
 ,{ "of" }
 ,{ "the" }
 ,{ "abort" }
 ,{ "function" }
 ,{ "are" }
 ,{ "called" }
 ,{ "from" }
 ,{ "different" }
 ,{ "execution" }
 ,{ "contexts:" }
 ,{ "function_abort()" , & fmt_text_b }
 ,{ "from" }
 ,{ "a" }
 ,{ "task" }
 ,{ "context," }
 ,{ "function_abort_int()" , & fmt_text_b }
 ,{ "from" }
 ,{ "the" }
 ,{ "interrupt" }
 ,{ "context" }
 ,{ "and" }
 ,{ "function_abort_any()" , & fmt_text_b }
 ,{ "from" }
 ,{ "everywhere." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "Only" }
 ,{ "timed" }
 ,{ "variants" }
 ,{ "of" }
 ,{ "blocking" }
 ,{ "methods" }
 ,{ "can" }
 ,{ "be" }
 ,{ "interrupted." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "An" }
 ,{ "abort" }
 ,{ "function" }
 ,{ "sets" }
 ,{ "the" }
 ,{ "forced" }
 ,{ "timeout" }
 ,{ "state" }
 ,{ "for" }
 ,{ "the" }
 ,{ "task." }
 ,{ "If" }
 ,{ "this" }
 ,{ "state" }
 ,{ "is" }
 ,{ "on," }
 ,{ "the" }
 ,{ "task" }
 ,{ "cannot" }
 ,{ "be" }
 ,{ "timed" }
 ,{ "blocked," }
 ,{ "and" }
 ,{ "any" }
 ,{ "timed" }
 ,{ "block" }
 ,{ "is" }
 ,{ "released." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "The" }
 ,{ "method" }
 ,{ "clear()" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "clear" }
 ,{ "the" }
 ,{ "forced" }
 ,{ "timeout" }
 ,{ "state" }
 ,{ "from" }
 ,{ "the" }
 ,{ "task." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "this" }
 ,{ "state," }
 ,{ "before" }
 ,{ "is" }
 ,{ "is" }
 ,{ "cleared." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "ForcedTimeout" , & fmt_text_b }
 ,{ "destructor" }
 ,{ "clears" }
 ,{ "the" }
 ,{ "forced" }
 ,{ "timeout" }
 ,{ "state." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> ForcedTimeout" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_FileToRead#page , & page_Forget#page };

Link link = { &page } ;

}

scope page_Forget {

Text b0 = { {
 { "Forget" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/crypton/Forget.h" , & fmt_text_Files_b }
 ,{ "CCore/src/crypton/Forget.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "\"Forget\"" }
 ,{ "is" }
 ,{ "a" }
 ,{ "family" }
 ,{ "of" }
 ,{ "functions," }
 ,{ "designed" }
 ,{ "to" }
 ,{ "clean" }
 ,{ "sensitive" }
 ,{ "data." }
 ,{ "Usually" }
 ,{ "these" }
 ,{ "functions" }
 ,{ "are" }
 ,{ "called" }
 ,{ "in" }
 ,{ "class" }
 ,{ "destructors" }
 ,{ "to" }
 ,{ "cleanup" }
 ,{ "such" }
 ,{ "data." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "PrepareForget()" , & fmt_text_b }
 ,{ "cleans" }
 ,{ "the" }
 ,{ "given" }
 ,{ "object" }
 ,{ "or" }
 ,{ "the" }
 ,{ "given" }
 ,{ "array." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Forget()" , & fmt_text_b }
 ,{ "performs" }
 ,{ "cleanup" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "object." }
 ,{ "It" }
 ,{ "calls" }
 ,{ "PrepareForget()" , & fmt_text_b }
 ,{ "first" }
 ,{ "and" }
 ,{ "OptimizeBarrier()" , & fmt_text_b }
 ,{ "next" }
 ,{ "to" }
 ,{ "ensure" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "changes" }
 ,{ "are" }
 ,{ "really" }
 ,{ "made." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "ForgetRange()" , & fmt_text_b }
 ,{ "forgets" }
 ,{ "the" }
 ,{ "given" }
 ,{ "range." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "OptimizeBarrier" }
} , & fmt_h2 , & align_h2 } ;

Text b7 = { {
 { "OptimizeBarrier()" , & fmt_text_b }
 ,{ "is" }
 ,{ "declared" }
 ,{ "in" }
 ,{ "the" }
 ,{ "file" }
 ,{ "PlatformBase.h" , & fmt_text_b }
 ,{ "," }
 ,{ "provided" }
 ,{ "by" }
 ,{ "the" }
 ,{ "target." }
 ,{ "It" }
 ,{ "ensures" }
 ,{ "that" }
 ,{ "memory" }
 ,{ "modifications" }
 ,{ "inside" }
 ,{ "the" }
 ,{ "given" }
 ,{ "block" }
 ,{ "are" }
 ,{ "really" }
 ,{ "made." }
 ,{ "The" }
 ,{ "best" }
 ,{ "way" }
 ,{ "to" }
 ,{ "implement" }
 ,{ "this" }
 ,{ "function" }
 ,{ "is" }
 ,{ "to" }
 ,{ "hide" }
 ,{ "the" }
 ,{ "code" }
 ,{ "in" }
 ,{ "an" }
 ,{ "assemble" }
 ,{ "file" }
 ,{ "to" }
 ,{ "prevent" }
 ,{ "the" }
 ,{ "compiler" }
 ,{ "from" }
 ,{ "unwanted" }
 ,{ "optimizations." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Forget" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b7 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_ForcedTimeout#page , & page_ForLoop#page };

Link link = { &page } ;

}

scope page_ForLoop {

Text b0 = { {
 { "ForLoop" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/ForLoop.h" , & fmt_text_Files_b }
 ,{ "CCore/src/ForLoop.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Some" }
 ,{ "tools" }
 ,{ "for" }
 ,{ "range-based" }
 ,{ "for" }
 ,{ "loop." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "IndLim" }
} , & fmt_h3 , & align_h3 } ;

Text b4 = { {
 { "IndLim" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "run" }
 ,{ "over" }
 ,{ "a" }
 ,{ "set" }
 ,{ "of" }
 ,{ "indexes." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "ForLoop" }
} , & fmt_h3 , & align_h3 } ;

Text b6 = { {
 { "ForLoop" , & fmt_text_b }
 ,{ "can" }
 ,{ "use" }
 ,{ "a" }
 ,{ "cursor" }
 ,{ "to" }
 ,{ "run" }
 ,{ "over" }
 ,{ "its" }
 ,{ "sequence." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> ForLoop" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b6 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Forget#page , & page_FuncTask#page };

Link link = { &page } ;

}

scope page_FuncTask {

Text b0 = { {
 { "FuncTask" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/task/FuncTask.h" , & fmt_text_Files_b }
 ,{ "CCore/src/task/FuncTask.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "RunFuncTask" , & fmt_text_b }
 ,{ "runs" }
 ,{ "a" }
 ,{ "task," }
 ,{ "which" }
 ,{ "calls" }
 ,{ "the" }
 ,{ "given" }
 ,{ "functor." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "Functor" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "Init" , & fmt_text_a , & ..#page_FunctorType#link }
 ,{ "object." }
 ,{ "The" }
 ,{ "functor" }
 ,{ "itself" }
 ,{ "is" }
 ,{ "created" }
 ,{ "by" }
 ,{ "the" }
 ,{ "spawned" }
 ,{ "task" }
 ,{ "and" }
 ,{ "then" }
 ,{ "it" }
 ,{ "is" }
 ,{ "called." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "The" }
 ,{ "second" }
 ,{ "argument" }
 ,{ "may" }
 ,{ "be" }
 ,{ "an" }
 ,{ "exit" }
 ,{ "function." }
 ,{ "It" }
 ,{ "is" }
 ,{ "called" }
 ,{ "as" }
 ,{ "a" }
 ,{ "part" }
 ,{ "of" }
 ,{ "the" }
 ,{ "task" }
 ,{ "exit" }
 ,{ "processing." }
 ,{ "This" }
 ,{ "function" }
 ,{ "is" }
 ,{ "always" }
 ,{ "called," }
 ,{ "even" }
 ,{ "if" }
 ,{ "the" }
 ,{ "task" }
 ,{ "run" }
 ,{ "failed." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "If" }
 ,{ "the" }
 ,{ "task" }
 ,{ "run" }
 ,{ "is" }
 ,{ "failed," }
 ,{ "then" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "Remaining" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "used" }
 ,{ "to" }
 ,{ "create" }
 ,{ "a" }
 ,{ "Task" , & fmt_text_b }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "To" }
 ,{ "run" }
 ,{ "a" }
 ,{ "task" }
 ,{ "the" }
 ,{ "following" }
 ,{ "class," }
 ,{ "derived" }
 ,{ "from" }
 ,{ "the" }
 ,{ "class" }
 ,{ "Task" , & fmt_text_b }
 ,{ "," }
 ,{ "is" }
 ,{ "used." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> FuncTask" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_ForLoop#page , & page_Function#page };

Link link = { &page } ;

}

scope page_Function {

Text b0 = { {
 { "Function" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/gadget/Function.h" , & fmt_text_Files_b }
 ,{ "CCore/src/gadget/Function.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Function" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "universal," }
 ,{ "lightweight" }
 ,{ "callback" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "last" }
 ,{ "property" }
 ,{ "is" }
 ,{ "essential" }
 ,{ "in" }
 ,{ "the" }
 ,{ "real-time" }
 ,{ "and" }
 ,{ "system" }
 ,{ "programming." }
 ,{ "Callback" , & fmt_text_b }
 ,{ "means" }
 ,{ "a" }
 ,{ "generalized" }
 ,{ "function" }
 ,{ "pointer." }
 ,{ "You" }
 ,{ "can" }
 ,{ "call" }
 ,{ "a" }
 ,{ "function" }
 ,{ "or" }
 ,{ "a" }
 ,{ "class" }
 ,{ "method" }
 ,{ "indirectly" }
 ,{ "using" }
 ,{ "a" }
 ,{ "callback" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "The" }
 ,{ "default" }
 ,{ "constructor" }
 ,{ "creates" }
 ,{ "a" }
 ,{ "\"null\"" }
 ,{ "function." }
 ,{ "This" }
 ,{ "function" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "default" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "R" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "You" }
 ,{ "can" }
 ,{ "bind" }
 ,{ "a" }
 ,{ "Function" , & fmt_text_b }
 ,{ "to" }
 ,{ "a" }
 ,{ "static" }
 ,{ "function," }
 ,{ "a" }
 ,{ "static" }
 ,{ "function" }
 ,{ "with" }
 ,{ "a" }
 ,{ "handle" }
 ,{ "or" }
 ,{ "an" }
 ,{ "object" }
 ,{ "with" }
 ,{ "a" }
 ,{ "method." }
 ,{ "Make" }
 ,{ "sure" }
 ,{ "the" }
 ,{ "handle" }
 ,{ "or" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "alive" }
 ,{ "when" }
 ,{ "you" }
 ,{ "do" }
 ,{ "call" }
 ,{ "the" }
 ,{ "function" }
 ,{ "—" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "a" }
 ,{ "life-time" }
 ,{ "control" }
 ,{ "in" }
 ,{ "the" }
 ,{ "Function" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "object" }
 ,{ "type" }
 ,{ "must" }
 ,{ "be" }
 ,{ "derived" }
 ,{ "from" }
 ,{ "the" }
 ,{ "Funchor" , & fmt_text_b }
 ,{ "base" }
 ,{ "class." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "The" }
 ,{ "static" }
 ,{ "method" }
 ,{ "FunctionOf" , & fmt_text_b }
 ,{ "of" }
 ,{ "this" }
 ,{ "class" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "create" }
 ,{ "a" }
 ,{ "Function" , & fmt_text_b }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "non-copyable" }
 ,{ "base" }
 ,{ "type" }
 ,{ "Funchor_nocopy" , & fmt_text_b }
 ,{ ":" }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "The" }
 ,{ "following" }
 ,{ "pattern" }
 ,{ "is" }
 ,{ "used" }
 ,{ "in" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "to" }
 ,{ "work" }
 ,{ "with" }
 ,{ "Function" , & fmt_text_b }
 ,{ "s:" }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "You" }
 ,{ "may" }
 ,{ "bind" }
 ,{ "virtual" }
 ,{ "methods" }
 ,{ "in" }
 ,{ "Function" , & fmt_text_b }
 ,{ "s," }
 ,{ "the" }
 ,{ "virtualization" }
 ,{ "is" }
 ,{ "working" }
 ,{ "in" }
 ,{ "such" }
 ,{ "case." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "The" }
 ,{ "second" }
 ,{ "way" }
 ,{ "to" }
 ,{ "create" }
 ,{ "a" }
 ,{ "Function" , & fmt_text_b }
 ,{ "is" }
 ,{ "to" }
 ,{ "convert" }
 ,{ "a" }
 ,{ "functor" }
 ,{ "to" }
 ,{ "the" }
 ,{ "function." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "This" }
 ,{ "function" }
 ,{ "takes" }
 ,{ "a" }
 ,{ "functor" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type," }
 ,{ "specified" }
 ,{ "by" }
 ,{ "the" }
 ,{ "first" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "and" }
 ,{ "creates" }
 ,{ "a" }
 ,{ "Funchor" , & fmt_text_b }
 ,{ "-derived" }
 ,{ "object." }
 ,{ "The" }
 ,{ "method" }
 ,{ "function()" , & fmt_text_b }
 ,{ "of" }
 ,{ "this" }
 ,{ "object" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "proxy" }
 ,{ "Function" , & fmt_text_b }
 ,{ "," }
 ,{ "which" }
 ,{ "calls" }
 ,{ "the" }
 ,{ "copy" }
 ,{ "of" }
 ,{ "the" }
 ,{ "original" }
 ,{ "functor." }
 ,{ "You" }
 ,{ "can" }
 ,{ "use" }
 ,{ "it" }
 ,{ "with" }
 ,{ "lambdas." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Function" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_FuncTask#page , & page_FunctorType#page };

Link link = { &page } ;

}

scope page_FunctorType {

Text b0 = { {
 { "FunctorType" }
 ,{ "and" }
 ,{ "Functor" }
 ,{ "Init" }
 ,{ "Pattern" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/FunctorType.h" , & fmt_text_Files_b }
 ,{ "CCore/src/FunctorType.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Functor" , & fmt_text_b }
 ,{ "Init" , & fmt_text_b }
 ,{ "Pattern" , & fmt_text_b }
 ,{ "is" }
 ,{ "widely" }
 ,{ "used" }
 ,{ "in" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "." }
 ,{ "In" }
 ,{ "the" }
 ,{ "modern" }
 ,{ "C++" }
 ,{ "functors" }
 ,{ "are" }
 ,{ "commonly" }
 ,{ "used." }
 ,{ "In" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "we" }
 ,{ "often" }
 ,{ "do" }
 ,{ "it" }
 ,{ "in" }
 ,{ "the" }
 ,{ "following" }
 ,{ "manner:" }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "I.e." }
 ,{ "the" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "not" }
 ,{ "used" }
 ,{ "directly" }
 ,{ "as" }
 ,{ "a" }
 ,{ "functor." }
 ,{ "Instead" }
 ,{ "we" }
 ,{ "create" }
 ,{ "the" }
 ,{ "functor" }
 ,{ "object" }
 ,{ "inside" }
 ,{ "a" }
 ,{ "function" }
 ,{ "from" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "argument" }
 ,{ "and" }
 ,{ "then" }
 ,{ "call" }
 ,{ "it." }
 ,{ "FunctorTypeOf<FuncInit>" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "template" }
 ,{ "typedef," }
 ,{ "defined" }
 ,{ "in" }
 ,{ "the" }
 ,{ "header" }
 ,{ "FunctorType.h" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "defines" }
 ,{ "the" }
 ,{ "exact" }
 ,{ "type" }
 ,{ "of" }
 ,{ "the" }
 ,{ "functor" }
 ,{ "object." }
 ,{ "The" }
 ,{ "rule" }
 ,{ "is" }
 ,{ "simple:" }
 ,{ "if" }
 ,{ "the" }
 ,{ "type" }
 ,{ "FuncInit" , & fmt_text_b }
 ,{ "defines" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "FunctorType" , & fmt_text_b }
 ,{ "," }
 ,{ "then" }
 ,{ "this" }
 ,{ "type" }
 ,{ "is" }
 ,{ "a" }
 ,{ "functor" }
 ,{ "type." }
 ,{ "Otherwise" }
 ,{ "FuncInit" , & fmt_text_b }
 ,{ "itself" }
 ,{ "is" }
 ,{ "a" }
 ,{ "functor" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "So" }
 ,{ "if" }
 ,{ "the" }
 ,{ "FuncInit" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "\"usual" }
 ,{ "functor\"," }
 ,{ "then" }
 ,{ "Call" , & fmt_text_b }
 ,{ "just" }
 ,{ "call" }
 ,{ "the" }
 ,{ "copy" }
 ,{ "of" }
 ,{ "it." }
 ,{ "But" }
 ,{ "the" }
 ,{ "more" }
 ,{ "complicated" }
 ,{ "scenario" }
 ,{ "is" }
 ,{ "possible:" }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "In" }
 ,{ "this" }
 ,{ "example" }
 ,{ "the" }
 ,{ "\"heavy\"" }
 ,{ "functor" }
 ,{ "is" }
 ,{ "created" }
 ,{ "inside" }
 ,{ "Call()" , & fmt_text_b }
 ,{ "from" }
 ,{ "a" }
 ,{ "lightweight" }
 ,{ "initializer." }
 ,{ "The" }
 ,{ "functor" }
 ,{ "may" }
 ,{ "be" }
 ,{ "non-copyable" }
 ,{ "and" }
 ,{ "may" }
 ,{ "have" }
 ,{ "a" }
 ,{ "non-trivial" }
 ,{ "destructor" }
 ,{ "(it" }
 ,{ "may" }
 ,{ "allocate" }
 ,{ "and" }
 ,{ "dispose" }
 ,{ "resources" }
 ,{ "temporary)." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "The" }
 ,{ "helper" }
 ,{ "class" }
 ,{ "FunctorRef" , & fmt_text_b }
 ,{ "is" }
 ,{ "designed" }
 ,{ "to" }
 ,{ "pass" }
 ,{ "a" }
 ,{ "functor" }
 ,{ "reference:" }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "There" }
 ,{ "are" }
 ,{ "two" }
 ,{ "concepts" }
 ,{ "similar" }
 ,{ "to" }
 ,{ "FuncType" , & fmt_text_b }
 ,{ "and" }
 ,{ "FuncArgType" , & fmt_text_b }
 ,{ "to" }
 ,{ "determine," }
 ,{ "if" }
 ,{ "some" }
 ,{ "type" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "as" }
 ,{ "a" }
 ,{ "Functor" , & fmt_text_b }
 ,{ "Initializer" , & fmt_text_b }
 ,{ "to" }
 ,{ "produce" }
 ,{ "a" }
 ,{ "functor" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "types" }
 ,{ "of" }
 ,{ "arguments" }
 ,{ "(and" }
 ,{ "return" }
 ,{ "value)." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> FunctorType" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Function#page , & page_Gadgets#page };

Link link = { &page } ;

}

scope page_Gadgets {

Text b0 = { {
 { "Gadgets" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/Gadget.h" , & fmt_text_Files_b }
 ,{ "CCore/src/Gadget.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Subfolders" }
 ,{ "CCore/inc/gadget" , & fmt_text_Files_b }
 ,{ "CCore/src/gadget" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b3 = { {
 { "Gadgets" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "collection" }
 ,{ "of" }
 ,{ "simple," }
 ,{ "helpful," }
 ,{ "widely-used" }
 ,{ "tools," }
 ,{ "available" }
 ,{ "from" }
 ,{ "the" }
 ,{ "single" }
 ,{ "include" }
 ,{ "file" }
 ,{ "Gadget.h" , & fmt_text_b }
 ,{ "." }
 ,{ "All" }
 ,{ "of" }
 ,{ "them" }
 ,{ "are" }
 ,{ "located" }
 ,{ "in" }
 ,{ "the" }
 ,{ "subfolder" }
 ,{ "/gadget" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Gadgets" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b3 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_FunctorType#page , & page_GCDConst#page };

Link link = { &page } ;

}

scope page_GCDConst {

Text b0 = { {
 { "GCDConst" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/algon/GCDConst.h" , & fmt_text_Files_b }
 ,{ "CCore/src/algon/GCDConst.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Here" }
 ,{ "is" }
 ,{ "two" }
 ,{ "Meta-constant" , & fmt_text_b }
 ,{ "s" }
 ,{ "to" }
 ,{ "calculate" }
 ,{ "GCD" }
 ,{ "(great" }
 ,{ "common" }
 ,{ "divisor)" }
 ,{ "and" }
 ,{ "LCM" }
 ,{ "(least" }
 ,{ "common" }
 ,{ "multiple)" }
 ,{ "in" }
 ,{ "the" }
 ,{ "compile-time." }
 ,{ "Arguments" }
 ,{ "are" }
 ,{ "template" }
 ,{ "parameters" }
 ,{ "of" }
 ,{ "some" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> GCDConst" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Gadgets#page , & page_Handle#page };

Link link = { &page } ;

}

scope page_Handle {

Text b0 = { {
 { "Handle" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/gadget/Handle.h" , & fmt_text_Files_b }
 ,{ "CCore/src/gadget/Handle.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Handle" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "universal" }
 ,{ "object" }
 ,{ "handle." }
 ,{ "It" }
 ,{ "is" }
 ,{ "a" }
 ,{ "union" }
 ,{ "of" }
 ,{ "four" }
 ,{ "common" }
 ,{ "handle" }
 ,{ "types:" }
 ,{ "int" , & fmt_text_b }
 ,{ "," }
 ,{ "unsigned" , & fmt_text_b }
 ,{ "," }
 ,{ "void" , & fmt_text_b }
 ,{ "*" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "function" }
 ,{ "pointer." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Handle" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_GCDConst#page , & page_HashFunction#page };

Link link = { &page } ;

}

scope page_HashFunction {

Text b0 = { {
 { "HashFunction" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/crypton/HashFunction.h" , & fmt_text_Files_b }
 ,{ "CCore/src/crypton/HashFunction.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "HashFunction" }
} , & fmt_h4 , & align_h4 } ;

Text b3 = { {
 { "HashFunction" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "abstract" }
 ,{ "hash" }
 ,{ "function" }
 ,{ "algorithm." }
 ,{ "It" }
 ,{ "is" }
 ,{ "a" }
 ,{ "template" }
 ,{ "and" }
 ,{ "the" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "provides" }
 ,{ "all" }
 ,{ "necessary" }
 ,{ "parts" }
 ,{ "to" }
 ,{ "implement" }
 ,{ "the" }
 ,{ "required" }
 ,{ "functionality." }
 ,{ "An" }
 ,{ "abstract" }
 ,{ "hash" }
 ,{ "function" }
 ,{ "processes" }
 ,{ "the" }
 ,{ "given" }
 ,{ "block" }
 ,{ "of" }
 ,{ "raw" }
 ,{ "data" }
 ,{ "(i.e." }
 ,{ "a" }
 ,{ "sequence" }
 ,{ "of" }
 ,{ "bytes)" }
 ,{ "into" }
 ,{ "a" }
 ,{ "\"message" }
 ,{ "digest\"," }
 ,{ "i.e." }
 ,{ "a" }
 ,{ "short" }
 ,{ "block" }
 ,{ "of" }
 ,{ "bytes" }
 ,{ "of" }
 ,{ "the" }
 ,{ "defined" }
 ,{ "length." }
 ,{ "A" }
 ,{ "good" }
 ,{ "hash" }
 ,{ "function" }
 ,{ "has" }
 ,{ "a" }
 ,{ "number" }
 ,{ "of" }
 ,{ "properties." }
 ,{ "For" }
 ,{ "instance," }
 ,{ "it" }
 ,{ "is" }
 ,{ "difficult" }
 ,{ "to" }
 ,{ "construct" }
 ,{ "an" }
 ,{ "input" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "output." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "DigestLen" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "digest." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "BlockLen" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "hash" }
 ,{ "function" }
 ,{ "\"block" }
 ,{ "length\"." }
 ,{ "It" }
 ,{ "is" }
 ,{ "some" }
 ,{ "internal" }
 ,{ "property" }
 ,{ "of" }
 ,{ "the" }
 ,{ "hash" }
 ,{ "algorithm." }
 ,{ "Usually" }
 ,{ "an" }
 ,{ "input" }
 ,{ "data" }
 ,{ "is" }
 ,{ "sliced" }
 ,{ "on" }
 ,{ "blocks" }
 ,{ "of" }
 ,{ "the" }
 ,{ "defined" }
 ,{ "length" }
 ,{ "before" }
 ,{ "the" }
 ,{ "processing." }
 ,{ "The" }
 ,{ "tail" }
 ,{ "is" }
 ,{ "padded" }
 ,{ "to" }
 ,{ "make" }
 ,{ "a" }
 ,{ "whole" }
 ,{ "number" }
 ,{ "of" }
 ,{ "blocks." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "GetName()" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "hash" }
 ,{ "function" }
 ,{ "common" }
 ,{ "name," }
 ,{ "like" }
 ,{ "\"SHA1\"" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "The" }
 ,{ "HashFunction" , & fmt_text_b }
 ,{ "is" }
 ,{ "working" }
 ,{ "incrementally." }
 ,{ "To" }
 ,{ "calculate" }
 ,{ "the" }
 ,{ "output," }
 ,{ "the" }
 ,{ "object" }
 ,{ "must" }
 ,{ "be" }
 ,{ "reset" }
 ,{ "first." }
 ,{ "It" }
 ,{ "is" }
 ,{ "performed" }
 ,{ "by" }
 ,{ "the" }
 ,{ "constructor" }
 ,{ "and" }
 ,{ "can" }
 ,{ "be" }
 ,{ "performed" }
 ,{ "also" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "reset()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "Destructor" }
 ,{ "does" }
 ,{ "clean" }
 ,{ "the" }
 ,{ "internal" }
 ,{ "state" }
 ,{ "from" }
 ,{ "any" }
 ,{ "information," }
 ,{ "accumulated" }
 ,{ "during" }
 ,{ "the" }
 ,{ "hash" }
 ,{ "calculation." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "add()" , & fmt_text_b }
 ,{ "adds" }
 ,{ "the" }
 ,{ "next" }
 ,{ "chunk" }
 ,{ "of" }
 ,{ "the" }
 ,{ "input." }
 ,{ "Two" }
 ,{ "variants" }
 ,{ "are" }
 ,{ "provided:" }
 ,{ "with" }
 ,{ "pointer" }
 ,{ "and" }
 ,{ "length" }
 ,{ "arguments" }
 ,{ "and" }
 ,{ "with" }
 ,{ "the" }
 ,{ "single" }
 ,{ "PtrLen<const" , & fmt_text_b }
 ,{ "uint8>" , & fmt_text_b }
 ,{ "argument." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "finish()" , & fmt_text_b }
 ,{ "completes" }
 ,{ "the" }
 ,{ "hash" }
 ,{ "calculation," }
 ,{ "copies" }
 ,{ "the" }
 ,{ "output" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "buffer" }
 ,{ "and" }
 ,{ "resets" }
 ,{ "the" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "The" }
 ,{ "real" }
 ,{ "job" }
 ,{ "is" }
 ,{ "performed" }
 ,{ "by" }
 ,{ "the" }
 ,{ "class" }
 ,{ "T" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "class" }
 ,{ "must" }
 ,{ "comply" }
 ,{ "with" }
 ,{ "the" }
 ,{ "following" }
 ,{ "pattern:" }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "The" }
 ,{ "method" }
 ,{ "forget()" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "clean" }
 ,{ "the" }
 ,{ "state." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "Concept" }
 ,{ "HashType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "hash" }
 ,{ "classes" }
 ,{ "like" }
 ,{ "HashFunction<....>" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "KeyedHashFunction" }
} , & fmt_h4 , & align_h4 } ;

Text b15 = { {
 { "KeyedHashFunction" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "a" }
 ,{ "keyed" }
 ,{ "message" }
 ,{ "digest" }
 ,{ "according" }
 ,{ "to" }
 ,{ "the" }
 ,{ "RFC" , & fmt_text_a }
 ,{ "2104" , & fmt_text_a }
 ,{ "." }
 ,{ "It" }
 ,{ "uses" }
 ,{ "a" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "of" }
 ,{ "the" }
 ,{ "same" }
 ,{ "kind" }
 ,{ "as" }
 ,{ "the" }
 ,{ "class" }
 ,{ "HashFunction" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "variant" }
 ,{ "of" }
 ,{ "the" }
 ,{ "hash" }
 ,{ "uses" }
 ,{ "the" }
 ,{ "additional" }
 ,{ "argument" }
 ,{ "—" }
 ,{ "the" }
 ,{ "key." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "This" }
 ,{ "class" }
 ,{ "is" }
 ,{ "working" }
 ,{ "the" }
 ,{ "same" }
 ,{ "way" }
 ,{ "as" }
 ,{ "the" }
 ,{ "HashFunction" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "main" }
 ,{ "difference" }
 ,{ "is:" }
 ,{ "before" }
 ,{ "the" }
 ,{ "hash" }
 ,{ "calculation" }
 ,{ "a" }
 ,{ "key" }
 ,{ "must" }
 ,{ "be" }
 ,{ "assigned" }
 ,{ "to" }
 ,{ "the" }
 ,{ "object." }
 ,{ "Otherwise" }
 ,{ "any" }
 ,{ "attempt" }
 ,{ "to" }
 ,{ "perform" }
 ,{ "the" }
 ,{ "hash" }
 ,{ "calculation" }
 ,{ "will" }
 ,{ "throw" }
 ,{ "an" }
 ,{ "exception." }
 ,{ "To" }
 ,{ "assign" }
 ,{ "a" }
 ,{ "key" }
 ,{ "the" }
 ,{ "method" }
 ,{ "key()" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "used." }
 ,{ "Or" }
 ,{ "the" }
 ,{ "constructor" }
 ,{ "with" }
 ,{ "the" }
 ,{ "key" }
 ,{ "as" }
 ,{ "the" }
 ,{ "argument." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "The" }
 ,{ "following" }
 ,{ "guard" }
 ,{ "function" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "throw" }
 ,{ "the" }
 ,{ "\"no-hash-key\"" }
 ,{ "exception:" }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "The" }
 ,{ "method" }
 ,{ "unkey()" , & fmt_text_b }
 ,{ "cleans" }
 ,{ "the" }
 ,{ "key" }
 ,{ "information" }
 ,{ "from" }
 ,{ "the" }
 ,{ "object." }
 ,{ "It" }
 ,{ "is" }
 ,{ "called" }
 ,{ "by" }
 ,{ "the" }
 ,{ "destructor." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "Concept" }
 ,{ "KeyedHashType" , & fmt_text_b }
 ,{ "covers" }
 ,{ "keyed" }
 ,{ "hash" }
 ,{ "classes" }
 ,{ "like" }
 ,{ "KeyedHashFunction<....>" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HashFunction" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Handle#page , & page_HCoreTargets#page };

Link link = { &page } ;

}

scope page_HCoreTargets {

Text b0 = { {
 { "HCore" }
 ,{ "Targets" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "HCore" , & fmt_text_b }
 ,{ "targets" }
 ,{ "are" }
 ,{ "required" }
 ,{ "to" }
 ,{ "build" }
 ,{ "applications," }
 ,{ "running" }
 ,{ "under" }
 ,{ "governing" }
 ,{ "of" }
 ,{ "some" }
 ,{ "operating" }
 ,{ "system," }
 ,{ "like" }
 ,{ "Windows" }
 ,{ "or" }
 ,{ "Linux." }
 ,{ "Target" }
 ,{ "itself" }
 ,{ "is" }
 ,{ "a" }
 ,{ "collection" }
 ,{ "of" }
 ,{ "files," }
 ,{ "located" }
 ,{ "at" }
 ,{ "some" }
 ,{ "directory" }
 ,{ "in" }
 ,{ "the" }
 ,{ "CCORE_ROOT/Target" , & fmt_text_b }
 ,{ "directory." }
 ,{ "The" }
 ,{ "name" }
 ,{ "of" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "is" }
 ,{ "the" }
 ,{ "target" }
 ,{ "name." }
 ,{ "CCore" , & fmt_text_b }
 ,{ "uses" }
 ,{ "GNU-compatible" }
 ,{ "make-based" }
 ,{ "build" }
 ,{ "system." }
 ,{ "To" }
 ,{ "build" }
 ,{ "an" }
 ,{ "application" }
 ,{ "for" }
 ,{ "the" }
 ,{ "particular" }
 ,{ "target" }
 ,{ "you" }
 ,{ "specify" }
 ,{ "the" }
 ,{ "target" }
 ,{ "name" }
 ,{ "as" }
 ,{ "one" , & fmt_text_a , & ..#page_CCoreGeneral#link }
 ,{ "of" , & fmt_text_a , & ..#page_CCoreGeneral#link }
 ,{ "the" , & fmt_text_a , & ..#page_CCoreGeneral#link }
 ,{ "build" , & fmt_text_a , & ..#page_CCoreGeneral#link }
 ,{ "variable" , & fmt_text_a , & ..#page_CCoreGeneral#link }
 ,{ "in" , & fmt_text_a , & ..#page_CCoreGeneral#link }
 ,{ "a" , & fmt_text_a , & ..#page_CCoreGeneral#link }
 ,{ "makefile" , & fmt_text_a , & ..#page_CCoreGeneral#link }
 ,{ "." }
 ,{ "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "special" }
 ,{ "target" }
 ,{ "Vanilla-H" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "target" }
 ,{ "is" }
 ,{ "a" }
 ,{ "template" }
 ,{ "for" }
 ,{ "any" }
 ,{ "host" }
 ,{ "target." }
 ,{ "If" }
 ,{ "you" }
 ,{ "want" }
 ,{ "to" }
 ,{ "create" }
 ,{ "a" }
 ,{ "new" }
 ,{ "HCore" , & fmt_text_b }
 ,{ "target," }
 ,{ "you" }
 ,{ "may" }
 ,{ "start" }
 ,{ "from" }
 ,{ "this" }
 ,{ "\"vanilla\"" }
 ,{ "target." }
} , & fmt_text , & align_text } ;

Text b2 = { {
 { "Here" }
 ,{ "is" }
 ,{ "the" }
 ,{ "file" }
 ,{ "layout" }
 ,{ "for" }
 ,{ "required" }
 ,{ "HCore" , & fmt_text_b }
 ,{ "target" }
 ,{ "files." }
 ,{ "You" }
 ,{ "may" }
 ,{ "add" }
 ,{ "additional" }
 ,{ "features" }
 ,{ "to" }
 ,{ "your" }
 ,{ "target" }
 ,{ "by" }
 ,{ "adding" }
 ,{ "extra" }
 ,{ "source" }
 ,{ "files." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Target" }
 ,{ "code" }
 ,{ "from" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "sys" , & fmt_text_b }
 ,{ "enclosed" }
 ,{ "in" }
 ,{ "the" }
 ,{ "namespace" }
 ,{ "Sys" , & fmt_text_b }
 ,{ "(inside" }
 ,{ "the" }
 ,{ "namespace" }
 ,{ "CCore" , & fmt_text_b }
 ,{ ")." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Target" }
 ,{ "code" }
 ,{ "from" }
 ,{ "the" }
 ,{ "file" }
 ,{ "Quick.h" , & fmt_text_b }
 ,{ "enclosed" }
 ,{ "in" }
 ,{ "the" }
 ,{ "namespace" }
 ,{ "Quick" , & fmt_text_b }
 ,{ "(inside" }
 ,{ "the" }
 ,{ "namespace" }
 ,{ "CCore" , & fmt_text_b }
 ,{ ")." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "Makefile" }
} , & fmt_h4 , & align_h4 } ;

Text b6 = { {
 { "Makefile" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "build" }
 ,{ "the" }
 ,{ "CCore.a" , & fmt_text_b }
 ,{ "library." }
 ,{ "It's" }
 ,{ "standard" }
 ,{ "and" }
 ,{ "looks" }
 ,{ "like" }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "To" }
 ,{ "support" }
 ,{ "GUI" }
 ,{ "development" }
 ,{ "add" }
 ,{ "$(CCORE_ROOT)/Desktop/CCore/src" , & fmt_text_b }
 ,{ "in" }
 ,{ "SRC_PATH_LIST" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "Makefile.tools" , & fmt_text_b }
 ,{ "defines" }
 ,{ "toolset" }
 ,{ "to" }
 ,{ "build" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "target" }
 ,{ "applications." }
 ,{ "It" }
 ,{ "looks" }
 ,{ "like" }
 ,{ "(" }
 ,{ "WIN32" , & fmt_text_b }
 ,{ "example)" }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "You" }
 ,{ "define" }
 ,{ "here" }
 ,{ "the" }
 ,{ "following" }
 ,{ "variables:" }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "ECHO" , & fmt_text_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "standard" }
 ,{ "Unix" }
 ,{ "echo" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "FIND" , & fmt_text_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "standard" }
 ,{ "Unix" }
 ,{ "find" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "MKDIR" , & fmt_text_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "standard" }
 ,{ "Unix" }
 ,{ "mkdir" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "CAT" , & fmt_text_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "standard" }
 ,{ "Unix" }
 ,{ "cat" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "TOUCH" , & fmt_text_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "standard" }
 ,{ "Unix" }
 ,{ "touch" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "CC" , & fmt_text_b }
 ,{ "—" }
 ,{ "C++" }
 ,{ "compiler." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "LD" , & fmt_text_b }
 ,{ "—" }
 ,{ "linker." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "AS" , & fmt_text_b }
 ,{ "—" }
 ,{ "assembler." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "AR" , & fmt_text_b }
 ,{ "—" }
 ,{ "librarian." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "RM" , & fmt_text_b }
 ,{ "—" }
 ,{ "file" }
 ,{ "delete" }
 ,{ "command." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "CCOPT" , & fmt_text_b }
 ,{ "—" }
 ,{ "options" }
 ,{ "for" }
 ,{ "the" }
 ,{ "C++" }
 ,{ "compiler." }
 ,{ "Among" }
 ,{ "other" }
 ,{ "they" }
 ,{ "must" }
 ,{ "specify" }
 ,{ "directories" }
 ,{ "to" }
 ,{ "search" }
 ,{ "include" }
 ,{ "files." }
 ,{ "The" }
 ,{ "order" }
 ,{ "of" }
 ,{ "directories" }
 ,{ "is:" }
 ,{ "target" }
 ,{ "include" }
 ,{ "path," }
 ,{ "HCore" , & fmt_text_b }
 ,{ "include" }
 ,{ "path," }
 ,{ "CCore" , & fmt_text_b }
 ,{ "include" }
 ,{ "paths." }
 ,{ "To" }
 ,{ "support" }
 ,{ "GUI" }
 ,{ "development" }
 ,{ "add" }
 ,{ "-I$(CCORE_ROOT)/Desktop" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "ASOPT" , & fmt_text_b }
 ,{ "—" }
 ,{ "options" }
 ,{ "for" }
 ,{ "the" }
 ,{ "assembler." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "LDOPT" , & fmt_text_b }
 ,{ "—" }
 ,{ "options" }
 ,{ "for" }
 ,{ "the" }
 ,{ "linker." }
 ,{ "Linker" }
 ,{ "options" }
 ,{ "must" }
 ,{ "specify" }
 ,{ "the" }
 ,{ "CCore.a" , & fmt_text_b }
 ,{ "library" }
 ,{ "to" }
 ,{ "be" }
 ,{ "linked." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "To" }
 ,{ "give" }
 ,{ "a" }
 ,{ "path" }
 ,{ "from" }
 ,{ "the" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "file" }
 ,{ "tree," }
 ,{ "you" }
 ,{ "should" }
 ,{ "use" }
 ,{ "the" }
 ,{ "variable" }
 ,{ "CCORE_ROOT" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "To" }
 ,{ "compile" }
 ,{ "a" }
 ,{ ".cpp" , & fmt_text_b }
 ,{ "source" }
 ,{ "file" }
 ,{ "the" }
 ,{ "following" }
 ,{ "command" }
 ,{ "is" }
 ,{ "used:" }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "To" }
 ,{ "generate" }
 ,{ "a" }
 ,{ "dependency" }
 ,{ "file" }
 ,{ "the" }
 ,{ "following" }
 ,{ "command" }
 ,{ "is" }
 ,{ "used:" }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "To" }
 ,{ "compile" }
 ,{ "an" }
 ,{ ".asm" , & fmt_text_b }
 ,{ "source" }
 ,{ "file" }
 ,{ "the" }
 ,{ "following" }
 ,{ "command" }
 ,{ "is" }
 ,{ "used:" }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "To" }
 ,{ "link" }
 ,{ "an" }
 ,{ "application" }
 ,{ "the" }
 ,{ "following" }
 ,{ "command" }
 ,{ "is" }
 ,{ "used:" }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "To" }
 ,{ "build" }
 ,{ "a" }
 ,{ "library" }
 ,{ "the" }
 ,{ "following" }
 ,{ "commands" }
 ,{ "are" }
 ,{ "used:" }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "Test" }
 ,{ "support" }
} , & fmt_h4 , & align_h4 } ;

Text b30 = { {
 { "CCore/test" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "for" }
 ,{ "target-specific" }
 ,{ "tests." }
 ,{ "The" }
 ,{ "file" }
 ,{ "names" }
 ,{ "here" }
 ,{ "must" }
 ,{ "have" }
 ,{ "the" }
 ,{ "following" }
 ,{ "form:" }
 ,{ "test6XXX.NNN.cpp" , & fmt_text_b }
 ,{ "." }
 ,{ "6XXX" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "decimal" }
 ,{ "test" }
 ,{ "number," }
 ,{ "starts" }
 ,{ "from" }
 ,{ "6001" , & fmt_text_b }
 ,{ "." }
 ,{ "NNN" , & fmt_text_b }
 ,{ "is" }
 ,{ "some" }
 ,{ "name" }
 ,{ "of" }
 ,{ "the" }
 ,{ "test." }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "Makefile" , & fmt_text_b }
 ,{ "from" }
 ,{ "the" }
 ,{ "test" , & fmt_text_b }
 ,{ "directory" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "build" }
 ,{ "the" }
 ,{ "target" }
 ,{ "test" }
 ,{ "application." }
 ,{ "It" }
 ,{ "has" }
 ,{ "the" }
 ,{ "following" }
 ,{ "standard" }
 ,{ "form" }
} , & fmt_text , & align_text } ;

Text b32 = { {
 { "main.cpp" , & fmt_text_b }
 ,{ "from" }
 ,{ "the" }
 ,{ "test" , & fmt_text_b }
 ,{ "directory" }
 ,{ "is" }
 ,{ "the" }
 ,{ "main" }
 ,{ "file" }
 ,{ "of" }
 ,{ "the" }
 ,{ "target" }
 ,{ "test" }
 ,{ "application." }
 ,{ "It" }
 ,{ "looks" }
 ,{ "like" }
} , & fmt_text , & align_text } ;

Text b33 = { {
 { "To" }
 ,{ "run" }
 ,{ "a" }
 ,{ "particular" }
 ,{ "test" }
 ,{ "edit" }
 ,{ "the" }
 ,{ "test" }
 ,{ "number." }
} , & fmt_text , & align_text } ;

Text b34 = { {
 { "Extra" }
 ,{ "features" }
} , & fmt_h4 , & align_h4 } ;

Text b35 = { {
 { "There" }
 ,{ "are" }
 ,{ "three" }
 ,{ "most" }
 ,{ "desired" }
 ,{ "extra" }
 ,{ "features" }
 ,{ "any" }
 ,{ "well-designed" }
 ,{ "target" }
 ,{ "must" }
 ,{ "provide:" }
 ,{ "the" }
 ,{ "fast" }
 ,{ "and" }
 ,{ "quality" }
 ,{ "random" }
 ,{ "number" }
 ,{ "generator," }
 ,{ "the" }
 ,{ "fast" }
 ,{ "integer" }
 ,{ "arithmetic" }
 ,{ "and" }
 ,{ "the" }
 ,{ "fast" }
 ,{ "cryptography." }
 ,{ "The" }
 ,{ "modern" }
 ,{ "CPU" }
 ,{ "and" }
 ,{ "SoC" }
 ,{ "often" }
 ,{ "has" }
 ,{ "a" }
 ,{ "hardware" }
 ,{ "support" }
 ,{ "for" }
 ,{ "these" }
 ,{ "tasks." }
} , & fmt_text , & align_text } ;

Text b36 = { {
 { "If" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "files" }
 ,{ "are" }
 ,{ "absent," }
 ,{ "the" }
 ,{ "default" }
 ,{ "implementation" }
 ,{ "will" }
 ,{ "be" }
 ,{ "used." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore Targets" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text , outer_text , back_text }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_text , outer_text , back_text }
 ,{ & b32 , null , inner_text , outer_text , back_text }
 ,{ & b33 , null , inner_text , outer_text , back_text }
 ,{ & b34 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b35 , null , inner_text , outer_text , back_text }
 ,{ & b36 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HashFunction#page , & page_HCore_PlanInit_CCore#page };

Link link = { &page } ;

}

scope page_HCore_PlanInit_CCore {

Text b0 = { {
 { "HCore" }
 ,{ "PlanInit_CCore" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/PlanInit.h" , & fmt_text_Files_b }
 ,{ "CCore/src/PlanInit_CCore.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "is" }
 ,{ "the" }
 ,{ "target" }
 ,{ "plan" , & fmt_text_a , & ..#page_PlanInit#link }
 ,{ "initalization" , & fmt_text_a , & ..#page_PlanInit#link }
 ,{ "node." }
 ,{ "The" }
 ,{ "node" }
 ,{ "tag" }
 ,{ "is" }
 ,{ "\"CCore\"" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "In" }
 ,{ "this" }
 ,{ "example" }
 ,{ "the" }
 ,{ "required" }
 ,{ "dependencies" }
 ,{ "are" }
 ,{ "included." }
 ,{ "A" }
 ,{ "target" }
 ,{ "may" }
 ,{ "have" }
 ,{ "additional" }
 ,{ "ones." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore PlanInit_CCore" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCoreTargets#page , & page_HCore_SysAbort#page };

Link link = { &page } ;

}

scope page_HCore_SysAbort {

Text b0 = { {
 { "HCore" }
 ,{ "SysAbort" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysAbort.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysAbort.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "provides" }
 ,{ "a" }
 ,{ "target" }
 ,{ "dependent" }
 ,{ "process" }
 ,{ "abort" }
 ,{ "function" }
 ,{ "AbortProcess()" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "function" }
 ,{ "is" }
 ,{ "a" }
 ,{ "0-priority" }
 ,{ "function." }
 ,{ "I.e." }
 ,{ "if" }
 ,{ "it" }
 ,{ "is" }
 ,{ "required" }
 ,{ "some" }
 ,{ "initialization," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "done" }
 ,{ "using" }
 ,{ "the" }
 ,{ "CCORE_INITPRI_0" , & fmt_text_b }
 ,{ "priority" , & fmt_text_a , & ..#page_PlanInit#link }
 ,{ "qualifier" , & fmt_text_a , & ..#page_PlanInit#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore SysAbort" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCore_PlanInit_CCore#page , & page_HCore_SysCon#page };

Link link = { &page } ;

}

scope page_HCore_SysCon {

Text b0 = { {
 { "HCore" }
 ,{ "SysCon" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysCon.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysCon.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "supports" }
 ,{ "console" }
 ,{ "input-output" }
 ,{ "operations." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "ConWrite()" , & fmt_text_b }
 ,{ "outputs" }
 ,{ "the" }
 ,{ "given" }
 ,{ "string" }
 ,{ "to" }
 ,{ "the" }
 ,{ "console." }
 ,{ "This" }
 ,{ "function" }
 ,{ "is" }
 ,{ "a" }
 ,{ "0-priority" }
 ,{ "function." }
 ,{ "I.e." }
 ,{ "if" }
 ,{ "it" }
 ,{ "is" }
 ,{ "required" }
 ,{ "some" }
 ,{ "initialization," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "done" }
 ,{ "using" }
 ,{ "the" }
 ,{ "CCORE_INITPRI_0" , & fmt_text_b }
 ,{ "priority" , & fmt_text_a , & ..#page_PlanInit#link }
 ,{ "qualifier" , & fmt_text_a , & ..#page_PlanInit#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "The" }
 ,{ "structure" }
 ,{ "ConRead" , & fmt_text_b }
 ,{ "supports" }
 ,{ "the" }
 ,{ "console" }
 ,{ "reading." }
 ,{ "To" }
 ,{ "read" }
 ,{ "characters" }
 ,{ "from" }
 ,{ "the" }
 ,{ "console," }
 ,{ "you" }
 ,{ "create" }
 ,{ "an" }
 ,{ "instance" }
 ,{ "of" }
 ,{ "this" }
 ,{ "structure," }
 ,{ "initialize" }
 ,{ "it" }
 ,{ "and" }
 ,{ "then" }
 ,{ "use" }
 ,{ "its" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "read" }
 ,{ "the" }
 ,{ "input" }
 ,{ "character" }
 ,{ "stream." }
 ,{ "Finally," }
 ,{ "you" }
 ,{ "uninitialize" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "Copying" }
 ,{ "of" }
 ,{ "the" }
 ,{ "instances" }
 ,{ "is" }
 ,{ "prohibited." }
 ,{ "The" }
 ,{ "private" }
 ,{ "content" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "is" }
 ,{ "target-dependent." }
 ,{ "The" }
 ,{ "reader" }
 ,{ "implements" }
 ,{ "\"non-buffered" }
 ,{ "read" }
 ,{ "without" }
 ,{ "echo\"." }
 ,{ "It" }
 ,{ "means," }
 ,{ "if" }
 ,{ "the" }
 ,{ "console" }
 ,{ "buffer" }
 ,{ "is" }
 ,{ "not" }
 ,{ "empty," }
 ,{ "the" }
 ,{ "read" }
 ,{ "operations" }
 ,{ "do" }
 ,{ "not" }
 ,{ "block." }
 ,{ "If" }
 ,{ "the" }
 ,{ "buffer" }
 ,{ "is" }
 ,{ "empty," }
 ,{ "they" }
 ,{ "wait" }
 ,{ "for" }
 ,{ "input." }
 ,{ "No" }
 ,{ "echo" }
 ,{ "is" }
 ,{ "printed." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "init()" , & fmt_text_b }
 ,{ "performs" }
 ,{ "the" }
 ,{ "initialization." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "successfully" }
 ,{ "initialized," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "uninitialized" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "exit()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "exit()" , & fmt_text_b }
 ,{ "performs" }
 ,{ "the" }
 ,{ "uninitialization." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "read()" , & fmt_text_b }
 ,{ "tries" }
 ,{ "to" }
 ,{ "read" }
 ,{ "the" }
 ,{ "input" }
 ,{ "stream" }
 ,{ "into" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "buffer." }
 ,{ "The" }
 ,{ "second" }
 ,{ "variant" }
 ,{ "uses" }
 ,{ "the" }
 ,{ "timeout" , & fmt_text_b }
 ,{ "for" }
 ,{ "the" }
 ,{ "operation." }
 ,{ "The" }
 ,{ "third" }
 ,{ "variant" }
 ,{ "uses" }
 ,{ "the" }
 ,{ "time_scope" , & fmt_text_b }
 ,{ "for" }
 ,{ "the" }
 ,{ "operation." }
 ,{ "All" }
 ,{ "functions" }
 ,{ "return" }
 ,{ "the" }
 ,{ "internal" }
 ,{ "type" }
 ,{ "IOResult" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "len" , & fmt_text_b }
 ,{ "and" }
 ,{ "error" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "error" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
 ,{ "If" }
 ,{ "it" }
 ,{ "is" }
 ,{ "zero," }
 ,{ "then" }
 ,{ "the" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "characters," }
 ,{ "copied" }
 ,{ "to" }
 ,{ "the" }
 ,{ "buffer." }
 ,{ "This" }
 ,{ "value" }
 ,{ "is" }
 ,{ "less" }
 ,{ "or" }
 ,{ "equal" }
 ,{ "than" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "len" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "first" }
 ,{ "function" }
 ,{ "may" }
 ,{ "block" }
 ,{ "infinitely." }
 ,{ "The" }
 ,{ "second" }
 ,{ "and" }
 ,{ "third" }
 ,{ "—" }
 ,{ "up" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "timeout." }
 ,{ "The" }
 ,{ "first" }
 ,{ "function" }
 ,{ "must" }
 ,{ "either" }
 ,{ "return" }
 ,{ "a" }
 ,{ "error" }
 ,{ "or" }
 ,{ "a" }
 ,{ "character(s)." }
 ,{ "The" }
 ,{ "second" }
 ,{ "and" }
 ,{ "third" }
 ,{ "may" }
 ,{ "return" }
 ,{ "neither" }
 ,{ "error," }
 ,{ "nor" }
 ,{ "character," }
 ,{ "if" }
 ,{ "the" }
 ,{ "user" }
 ,{ "did" }
 ,{ "not" }
 ,{ "hit" }
 ,{ "any" }
 ,{ "key" }
 ,{ "during" }
 ,{ "the" }
 ,{ "given" }
 ,{ "time" }
 ,{ "period." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore SysCon" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCore_SysAbort#page , & page_HCore_SysError#page };

Link link = { &page } ;

}

scope page_HCore_SysError {

Text b0 = { {
 { "HCore" }
 ,{ "SysError" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysError.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysError.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "It" }
 ,{ "is" }
 ,{ "assumed" }
 ,{ "that" }
 ,{ "the" }
 ,{ "OS" }
 ,{ "reports" }
 ,{ "errors" }
 ,{ "using" }
 ,{ "error" }
 ,{ "codes." }
 ,{ "These" }
 ,{ "codes" }
 ,{ "can" }
 ,{ "be" }
 ,{ "converted" }
 ,{ "to" }
 ,{ "text" }
 ,{ "messages." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "The" }
 ,{ "enumeration" }
 ,{ "ErrorType" , & fmt_text_b }
 ,{ "represents" }
 ,{ "error" }
 ,{ "codes." }
 ,{ "It" }
 ,{ "may" }
 ,{ "have" }
 ,{ "a" }
 ,{ "base" }
 ,{ "integral" }
 ,{ "type" }
 ,{ "(usually" }
 ,{ "int" , & fmt_text_b }
 ,{ ")." }
 ,{ "All" }
 ,{ "target" }
 ,{ "functions" }
 ,{ "report" }
 ,{ "errors" }
 ,{ "using" }
 ,{ "this" }
 ,{ "enumeration." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "NoError" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "\"no-error\"" }
 ,{ "code" }
 ,{ "and" }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "equal" }
 ,{ "zero." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "The" }
 ,{ "structure" }
 ,{ "ErrorDesc" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "convert" }
 ,{ "a" }
 ,{ "error" }
 ,{ "code" }
 ,{ "to" }
 ,{ "the" }
 ,{ "text" }
 ,{ "message." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "The" }
 ,{ "fields" }
 ,{ "str" , & fmt_text_b }
 ,{ "and" }
 ,{ "len" , & fmt_text_b }
 ,{ "defines" }
 ,{ "the" }
 ,{ "text" }
 ,{ "string." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "init()" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "initialize" }
 ,{ "the" }
 ,{ "structure." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "error" }
 ,{ "code." }
 ,{ "The" }
 ,{ "second" }
 ,{ "is" }
 ,{ "a" }
 ,{ "buffer" }
 ,{ "to" }
 ,{ "store" }
 ,{ "the" }
 ,{ "text" }
 ,{ "message." }
 ,{ "It" }
 ,{ "may" }
 ,{ "or" }
 ,{ "may" }
 ,{ "not" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "copy" }
 ,{ "a" }
 ,{ "text" }
 ,{ "representation" }
 ,{ "of" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
 ,{ "If" }
 ,{ "the" }
 ,{ "buffer" }
 ,{ "is" }
 ,{ "not" }
 ,{ "used," }
 ,{ "then" }
 ,{ "the" }
 ,{ "text" }
 ,{ "is" }
 ,{ "a" }
 ,{ "static" }
 ,{ "text." }
 ,{ "If" }
 ,{ "the" }
 ,{ "buffer" }
 ,{ "is" }
 ,{ "not" }
 ,{ "large" }
 ,{ "enough," }
 ,{ "the" }
 ,{ "message" }
 ,{ "may" }
 ,{ "be" }
 ,{ "truncated" }
 ,{ "or" }
 ,{ "the" }
 ,{ "function" }
 ,{ "may" }
 ,{ "fail." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "success." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore SysError" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCore_SysCon#page , & page_HCore_SysFile#page };

Link link = { &page } ;

}

scope page_HCore_SysFile {

Text b0 = { {
 { "HCore" }
 ,{ "SysFile" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysFile.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysFile.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "contains" }
 ,{ "OS" }
 ,{ "backed" }
 ,{ "file" }
 ,{ "access" }
 ,{ "tools." }
 ,{ "These" }
 ,{ "tools" }
 ,{ "comply" }
 ,{ "with" }
 ,{ "the" }
 ,{ "general" , & fmt_text_a , & ..#page_Files#link }
 ,{ "file" , & fmt_text_a , & ..#page_Files#link }
 ,{ "operation" , & fmt_text_a , & ..#page_Files#link }
 ,{ "set" , & fmt_text_a , & ..#page_Files#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "These" , & fmt_text_Alert }
 ,{ "structures" , & fmt_text_Alert }
 ,{ "uses" , & fmt_text_Alert }
 ,{ "types" , & fmt_text_Alert }
 ,{ "and" , & fmt_text_Alert }
 ,{ "constants" , & fmt_text_Alert }
 ,{ "from" , & fmt_text_Alert }
 ,{ "the" , & fmt_text_Alert }
 ,{ "GenFile.h" , & fmt_text_Alert }
 ,{ "," , & fmt_text_Alert }
 ,{ "this" , & fmt_text_Alert }
 ,{ "includes" , & fmt_text_Alert }
 ,{ "error" , & fmt_text_Alert }
 ,{ "codes." , & fmt_text_Alert }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Classical" }
 ,{ "file" }
 ,{ "access" }
} , & fmt_h4 , & align_h4 } ;

Text b5 = { {
 { "The" }
 ,{ "structure" }
 ,{ "File" , & fmt_text_b }
 ,{ "implements" }
 ,{ "the" }
 ,{ "classical" }
 ,{ "file" }
 ,{ "access." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "To" }
 ,{ "work" }
 ,{ "with" }
 ,{ "a" }
 ,{ "file" }
 ,{ "you" }
 ,{ "create" }
 ,{ "an" }
 ,{ "instance" }
 ,{ "of" }
 ,{ "this" }
 ,{ "structure." }
 ,{ "Then" }
 ,{ "you" }
 ,{ "open" }
 ,{ "the" }
 ,{ "required" }
 ,{ "file" }
 ,{ "using" }
 ,{ "the" }
 ,{ "method" }
 ,{ "open()" , & fmt_text_b }
 ,{ "." }
 ,{ "Then" }
 ,{ "you" }
 ,{ "use" }
 ,{ "its" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "do" }
 ,{ "file" }
 ,{ "operations." }
 ,{ "Finally," }
 ,{ "you" }
 ,{ "uninitialize" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "Copying" }
 ,{ "of" }
 ,{ "the" }
 ,{ "instances" }
 ,{ "is" }
 ,{ "prohibited." }
 ,{ "The" }
 ,{ "private" }
 ,{ "content" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "is" }
 ,{ "target-dependent." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "open()" , & fmt_text_b }
 ,{ "initializes" }
 ,{ "the" }
 ,{ "instance" }
 ,{ "and" }
 ,{ "prepares" }
 ,{ "it" }
 ,{ "to" }
 ,{ "perform" }
 ,{ "file" }
 ,{ "operations" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "file." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name." }
 ,{ "The" }
 ,{ "second" }
 ,{ "is" }
 ,{ "the" }
 ,{ "open" }
 ,{ "flags." }
 ,{ "The" }
 ,{ "meaning" }
 ,{ "of" }
 ,{ "the" }
 ,{ "flags" }
 ,{ "is" }
 ,{ "described" }
 ,{ "in" }
 ,{ "the" }
 ,{ "general" , & fmt_text_a , & ..#page_Files#link }
 ,{ "file" , & fmt_text_a , & ..#page_Files#link }
 ,{ "operation" , & fmt_text_a , & ..#page_Files#link }
 ,{ "set" , & fmt_text_a , & ..#page_Files#link }
 ,{ "." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "successfully" }
 ,{ "initialized," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "uninitialized" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "close()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "close()" , & fmt_text_b }
 ,{ "closes" }
 ,{ "the" }
 ,{ "file." }
 ,{ "The" }
 ,{ "first" }
 ,{ "variant" }
 ,{ "uses" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "FileMultiError" , & fmt_text_b }
 ,{ "object" }
 ,{ "to" }
 ,{ "return" }
 ,{ "operation" }
 ,{ "error(s)." }
 ,{ "If" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "preserve_file" , & fmt_text_b }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "the" }
 ,{ "file" }
 ,{ "is" }
 ,{ "preserved," }
 ,{ "even" }
 ,{ "if" }
 ,{ "it" }
 ,{ "was" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "Open_AutoDelete" , & fmt_text_b }
 ,{ "flag." }
 ,{ "The" }
 ,{ "second" }
 ,{ "variant" }
 ,{ "does" }
 ,{ "not" }
 ,{ "report" }
 ,{ "any" }
 ,{ "errors" }
 ,{ "and" }
 ,{ "does" }
 ,{ "not" }
 ,{ "preserve" }
 ,{ "the" }
 ,{ "file," }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "Open_AutoDelete" , & fmt_text_b }
 ,{ "flag." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "write()" , & fmt_text_b }
 ,{ "writes" }
 ,{ "the" }
 ,{ "given" }
 ,{ "byte" }
 ,{ "range" }
 ,{ "to" }
 ,{ "the" }
 ,{ "file" }
 ,{ "at" }
 ,{ "the" }
 ,{ "current" }
 ,{ "file" }
 ,{ "position." }
 ,{ "The" }
 ,{ "file" }
 ,{ "position" }
 ,{ "is" }
 ,{ "updated." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "has" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "IOResult" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "len" , & fmt_text_b }
 ,{ "and" }
 ,{ "error" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "bytes" }
 ,{ "have" }
 ,{ "been" }
 ,{ "written" }
 ,{ "and" }
 ,{ "the" }
 ,{ "error" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
 ,{ "The" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "less" }
 ,{ "or" }
 ,{ "equal" }
 ,{ "than" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "len" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "file" }
 ,{ "may" }
 ,{ "be" }
 ,{ "extended" }
 ,{ "by" }
 ,{ "this" }
 ,{ "operation." }
 ,{ "If" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "successful," }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "length" }
 ,{ "should" }
 ,{ "be" }
 ,{ "equal" }
 ,{ "the" }
 ,{ "input" }
 ,{ "length." }
 ,{ "Other" }
 ,{ "behavior" }
 ,{ "is" }
 ,{ "not" }
 ,{ "recommended." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "available" }
 ,{ "only" }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "has" }
 ,{ "been" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "Open_Write" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "read()" , & fmt_text_b }
 ,{ "reads" }
 ,{ "the" }
 ,{ "byte" }
 ,{ "range" }
 ,{ "from" }
 ,{ "the" }
 ,{ "file" }
 ,{ "to" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "buffer" }
 ,{ "from" }
 ,{ "the" }
 ,{ "current" }
 ,{ "file" }
 ,{ "position." }
 ,{ "The" }
 ,{ "file" }
 ,{ "position" }
 ,{ "is" }
 ,{ "updated." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "has" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "IOResult" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "len" , & fmt_text_b }
 ,{ "and" }
 ,{ "error" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "bytes" }
 ,{ "have" }
 ,{ "been" }
 ,{ "red" }
 ,{ "and" }
 ,{ "the" }
 ,{ "error" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
 ,{ "The" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "less" }
 ,{ "or" }
 ,{ "equal" }
 ,{ "than" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "len" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "successful," }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "length" }
 ,{ "should" }
 ,{ "be" }
 ,{ "equal" }
 ,{ "minimum" }
 ,{ "of" }
 ,{ "the" }
 ,{ "input" }
 ,{ "length" }
 ,{ "and" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "bytes" }
 ,{ "after" }
 ,{ "the" }
 ,{ "current" }
 ,{ "file" }
 ,{ "position" }
 ,{ "to" }
 ,{ "the" }
 ,{ "end" }
 ,{ "of" }
 ,{ "file." }
 ,{ "Other" }
 ,{ "behavior" }
 ,{ "is" }
 ,{ "not" }
 ,{ "recommended." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "available" }
 ,{ "only" }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "has" }
 ,{ "been" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "Open_Read" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "getLen()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "current" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "represented" }
 ,{ "by" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "structure" }
 ,{ "PosResult" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "pos" , & fmt_text_b }
 ,{ "and" }
 ,{ "error" , & fmt_text_b }
 ,{ "." }
 ,{ "pos" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file," }
 ,{ "error" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "available" }
 ,{ "only" }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "has" }
 ,{ "been" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "Open_Pos" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "getPos()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "current" }
 ,{ "position" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "represented" }
 ,{ "by" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "structure" }
 ,{ "PosResult" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "pos" , & fmt_text_b }
 ,{ "and" }
 ,{ "error" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "pos" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "file" }
 ,{ "position," }
 ,{ "the" }
 ,{ "error" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "available" }
 ,{ "only" }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "has" }
 ,{ "been" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "Open_Pos" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "setPos()" , & fmt_text_b }
 ,{ "sets" }
 ,{ "the" }
 ,{ "current" }
 ,{ "position" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "If" }
 ,{ "the" }
 ,{ "position" }
 ,{ "is" }
 ,{ "after" }
 ,{ "the" }
 ,{ "end-of-file," }
 ,{ "the" }
 ,{ "behavior" }
 ,{ "is" }
 ,{ "undefined." }
 ,{ "If" }
 ,{ "you" }
 ,{ "want" }
 ,{ "to" }
 ,{ "extend" }
 ,{ "the" }
 ,{ "file," }
 ,{ "it" }
 ,{ "can" }
 ,{ "be" }
 ,{ "done" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "write()" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "available" }
 ,{ "only" }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "has" }
 ,{ "been" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "Open_Pos" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "Alternative" }
 ,{ "file" }
 ,{ "access" }
} , & fmt_h4 , & align_h4 } ;

Text b15 = { {
 { "The" }
 ,{ "structure" }
 ,{ "AltFile" , & fmt_text_b }
 ,{ "implements" }
 ,{ "an" }
 ,{ "alternative" }
 ,{ "file" }
 ,{ "access." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "To" }
 ,{ "work" }
 ,{ "with" }
 ,{ "a" }
 ,{ "file" }
 ,{ "you" }
 ,{ "create" }
 ,{ "an" }
 ,{ "instance" }
 ,{ "of" }
 ,{ "this" }
 ,{ "structure." }
 ,{ "Then" }
 ,{ "you" }
 ,{ "open" }
 ,{ "the" }
 ,{ "required" }
 ,{ "file" }
 ,{ "using" }
 ,{ "the" }
 ,{ "method" }
 ,{ "open()" , & fmt_text_b }
 ,{ "." }
 ,{ "Then" }
 ,{ "you" }
 ,{ "use" }
 ,{ "its" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "do" }
 ,{ "file" }
 ,{ "operations." }
 ,{ "Finally," }
 ,{ "you" }
 ,{ "uninitialize" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "Copying" }
 ,{ "of" }
 ,{ "the" }
 ,{ "instances" }
 ,{ "is" }
 ,{ "prohibited." }
 ,{ "The" }
 ,{ "private" }
 ,{ "content" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "is" }
 ,{ "target-dependent." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "open()" , & fmt_text_b }
 ,{ "initializes" }
 ,{ "the" }
 ,{ "instance" }
 ,{ "and" }
 ,{ "prepares" }
 ,{ "it" }
 ,{ "to" }
 ,{ "perform" }
 ,{ "file" }
 ,{ "operations" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "file." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "has" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "Result" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "file_len" , & fmt_text_b }
 ,{ "and" }
 ,{ "error" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "file_len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file," }
 ,{ "the" }
 ,{ "error" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name." }
 ,{ "The" }
 ,{ "second" }
 ,{ "is" }
 ,{ "the" }
 ,{ "open" }
 ,{ "flags." }
 ,{ "This" }
 ,{ "kind" }
 ,{ "of" }
 ,{ "file" }
 ,{ "has" }
 ,{ "no" }
 ,{ "an" }
 ,{ "internal" }
 ,{ "file" }
 ,{ "position." }
 ,{ "The" }
 ,{ "meaning" }
 ,{ "of" }
 ,{ "the" }
 ,{ "flags" }
 ,{ "is" }
 ,{ "described" }
 ,{ "in" }
 ,{ "the" }
 ,{ "general" , & fmt_text_a , & ..#page_Files#link }
 ,{ "file" , & fmt_text_a , & ..#page_Files#link }
 ,{ "operation" , & fmt_text_a , & ..#page_Files#link }
 ,{ "set" , & fmt_text_a , & ..#page_Files#link }
 ,{ "." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "successfully" }
 ,{ "initialized," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "uninitialized" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "close()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "close()" , & fmt_text_b }
 ,{ "closes" }
 ,{ "the" }
 ,{ "file." }
 ,{ "The" }
 ,{ "first" }
 ,{ "variant" }
 ,{ "uses" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "FileMultiError" , & fmt_text_b }
 ,{ "object" }
 ,{ "to" }
 ,{ "return" }
 ,{ "operation" }
 ,{ "error(s)." }
 ,{ "If" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "preserve_file" , & fmt_text_b }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "the" }
 ,{ "file" }
 ,{ "is" }
 ,{ "preserved," }
 ,{ "even" }
 ,{ "if" }
 ,{ "it" }
 ,{ "was" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "Open_AutoDelete" , & fmt_text_b }
 ,{ "flag." }
 ,{ "The" }
 ,{ "second" }
 ,{ "variant" }
 ,{ "does" }
 ,{ "not" }
 ,{ "report" }
 ,{ "any" }
 ,{ "errors" }
 ,{ "and" }
 ,{ "does" }
 ,{ "not" }
 ,{ "preserve" }
 ,{ "the" }
 ,{ "file," }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "Open_AutoDelete" , & fmt_text_b }
 ,{ "flag." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "write()" , & fmt_text_b }
 ,{ "writes" }
 ,{ "the" }
 ,{ "given" }
 ,{ "byte" }
 ,{ "range" }
 ,{ "to" }
 ,{ "the" }
 ,{ "file." }
 ,{ "The" }
 ,{ "file" }
 ,{ "position" }
 ,{ "to" }
 ,{ "write" }
 ,{ "is" }
 ,{ "given" }
 ,{ "by" }
 ,{ "the" }
 ,{ "first" }
 ,{ "argument." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "may" }
 ,{ "extend" }
 ,{ "the" }
 ,{ "file." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "has" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "Result" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "file_len" , & fmt_text_b }
 ,{ "and" }
 ,{ "error" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "file_len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "new" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file," }
 ,{ "the" }
 ,{ "error" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "available" }
 ,{ "only" }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "has" }
 ,{ "been" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "Open_Write" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "read()" , & fmt_text_b }
 ,{ "reads" }
 ,{ "the" }
 ,{ "byte" }
 ,{ "range" }
 ,{ "from" }
 ,{ "the" }
 ,{ "file" }
 ,{ "to" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "buffer." }
 ,{ "The" }
 ,{ "file" }
 ,{ "position" }
 ,{ "to" }
 ,{ "read" }
 ,{ "is" }
 ,{ "given" }
 ,{ "by" }
 ,{ "the" }
 ,{ "first" }
 ,{ "argument." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "The" }
 ,{ "read" }
 ,{ "range" }
 ,{ "must" }
 ,{ "not" }
 ,{ "cross" }
 ,{ "end-of-file." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "available" }
 ,{ "only" }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "has" }
 ,{ "been" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "Open_Read" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "Async" }
 ,{ "file" }
 ,{ "access" }
} , & fmt_h4 , & align_h4 } ;

Text b22 = { {
 { "The" }
 ,{ "structure" }
 ,{ "AltFile" , & fmt_text_b }
 ,{ "implements" }
 ,{ "an" }
 ,{ "alternative" }
 ,{ "file" }
 ,{ "access" }
 ,{ "in" }
 ,{ "an" }
 ,{ "asynchronous" }
 ,{ "manner." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "To" }
 ,{ "work" }
 ,{ "with" }
 ,{ "a" }
 ,{ "file" }
 ,{ "you" }
 ,{ "create" }
 ,{ "an" }
 ,{ "instance" }
 ,{ "of" }
 ,{ "this" }
 ,{ "structure." }
 ,{ "Then" }
 ,{ "you" }
 ,{ "open" }
 ,{ "the" }
 ,{ "required" }
 ,{ "file" }
 ,{ "using" }
 ,{ "the" }
 ,{ "method" }
 ,{ "open()" , & fmt_text_b }
 ,{ "." }
 ,{ "Then" }
 ,{ "you" }
 ,{ "use" }
 ,{ "its" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "do" }
 ,{ "file" }
 ,{ "operations." }
 ,{ "Finally," }
 ,{ "you" }
 ,{ "uninitialize" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "Copying" }
 ,{ "of" }
 ,{ "the" }
 ,{ "instances" }
 ,{ "is" }
 ,{ "prohibited." }
 ,{ "The" }
 ,{ "private" }
 ,{ "content" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "is" }
 ,{ "target-dependent." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "open()" , & fmt_text_b }
 ,{ "initializes" }
 ,{ "the" }
 ,{ "instance" }
 ,{ "and" }
 ,{ "prepares" }
 ,{ "it" }
 ,{ "to" }
 ,{ "perform" }
 ,{ "file" }
 ,{ "operations" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "file." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "has" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "Result" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "file_len" , & fmt_text_b }
 ,{ "and" }
 ,{ "error" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "file_len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file," }
 ,{ "the" }
 ,{ "error" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name." }
 ,{ "The" }
 ,{ "second" }
 ,{ "is" }
 ,{ "the" }
 ,{ "open" }
 ,{ "flags." }
 ,{ "This" }
 ,{ "kind" }
 ,{ "of" }
 ,{ "file" }
 ,{ "has" }
 ,{ "no" }
 ,{ "an" }
 ,{ "internal" }
 ,{ "file" }
 ,{ "position." }
 ,{ "The" }
 ,{ "meaning" }
 ,{ "of" }
 ,{ "the" }
 ,{ "flags" }
 ,{ "is" }
 ,{ "described" }
 ,{ "in" }
 ,{ "the" }
 ,{ "general" , & fmt_text_a , & ..#page_Files#link }
 ,{ "file" , & fmt_text_a , & ..#page_Files#link }
 ,{ "operation" , & fmt_text_a , & ..#page_Files#link }
 ,{ "set" , & fmt_text_a , & ..#page_Files#link }
 ,{ "." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "successfully" }
 ,{ "initialized," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "uninitialized" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "close()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "close()" , & fmt_text_b }
 ,{ "closes" }
 ,{ "the" }
 ,{ "file." }
 ,{ "The" }
 ,{ "first" }
 ,{ "variant" }
 ,{ "uses" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "FileMultiError" , & fmt_text_b }
 ,{ "object" }
 ,{ "to" }
 ,{ "return" }
 ,{ "operation" }
 ,{ "error(s)." }
 ,{ "If" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "preserve_file" , & fmt_text_b }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "the" }
 ,{ "file" }
 ,{ "is" }
 ,{ "preserved," }
 ,{ "even" }
 ,{ "if" }
 ,{ "it" }
 ,{ "was" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "Open_AutoDelete" , & fmt_text_b }
 ,{ "flag." }
 ,{ "The" }
 ,{ "second" }
 ,{ "variant" }
 ,{ "does" }
 ,{ "not" }
 ,{ "report" }
 ,{ "any" }
 ,{ "errors" }
 ,{ "and" }
 ,{ "does" }
 ,{ "not" }
 ,{ "preserve" }
 ,{ "the" }
 ,{ "file," }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "Open_AutoDelete" , & fmt_text_b }
 ,{ "flag." }
 ,{ "All" }
 ,{ "pending" }
 ,{ "file" }
 ,{ "read/write" }
 ,{ "operations" }
 ,{ "must" }
 ,{ "be" }
 ,{ "finished" }
 ,{ "before" }
 ,{ "the" }
 ,{ "call" }
 ,{ "of" }
 ,{ "this" }
 ,{ "method." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "testRead()" , & fmt_text_b }
 ,{ "checks" }
 ,{ "the" }
 ,{ "read" }
 ,{ "position." }
 ,{ "If" }
 ,{ "the" }
 ,{ "read" }
 ,{ "range" }
 ,{ "does" }
 ,{ "not" }
 ,{ "fit" }
 ,{ "into" }
 ,{ "the" }
 ,{ "file" }
 ,{ "range" }
 ,{ "it" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "error." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "available" }
 ,{ "only" }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "has" }
 ,{ "been" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "Open_Read" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "setWrite()" , & fmt_text_b }
 ,{ "prepares" }
 ,{ "the" }
 ,{ "file" }
 ,{ "write" }
 ,{ "operation." }
 ,{ "It" }
 ,{ "checks" }
 ,{ "the" }
 ,{ "write" }
 ,{ "range" }
 ,{ "for" }
 ,{ "overflow" }
 ,{ "and" }
 ,{ "increases" }
 ,{ "the" }
 ,{ "internal" }
 ,{ "file" }
 ,{ "length" }
 ,{ "field," }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "is" }
 ,{ "to" }
 ,{ "be" }
 ,{ "extended." }
 ,{ "This" }
 ,{ "method" }
 ,{ "must" }
 ,{ "be" }
 ,{ "called" }
 ,{ "before" }
 ,{ "the" }
 ,{ "startWrite()" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "available" }
 ,{ "only" }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "has" }
 ,{ "been" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "Open_Write" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "startRead()" , & fmt_text_b }
 ,{ "starts" }
 ,{ "the" }
 ,{ "read" }
 ,{ "operation." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "an" }
 ,{ "async" }
 ,{ "token." }
 ,{ "The" }
 ,{ "type" }
 ,{ "of" }
 ,{ "this" }
 ,{ "token" }
 ,{ "is" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "Async" , & fmt_text_b }
 ,{ "and" }
 ,{ "usually" }
 ,{ "it" }
 ,{ "is" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "some" }
 ,{ "structure" }
 ,{ "(" }
 ,{ "AsyncState" , & fmt_text_b }
 ,{ ")." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "has" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "RWResult" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "pending" , & fmt_text_b }
 ,{ "and" }
 ,{ "error" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "first" }
 ,{ "field" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "pending," }
 ,{ "otherwise" }
 ,{ "it" }
 ,{ "is" }
 ,{ "finished." }
 ,{ "The" }
 ,{ "second" }
 ,{ "is" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
 ,{ "If" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "finished," }
 ,{ "no" }
 ,{ "other" }
 ,{ "steps" }
 ,{ "are" }
 ,{ "required." }
 ,{ "If" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "pending," }
 ,{ "you" }
 ,{ "must" }
 ,{ "wait" }
 ,{ "until" }
 ,{ "the" }
 ,{ "token" }
 ,{ "is" }
 ,{ "finished" }
 ,{ "and" }
 ,{ "then" }
 ,{ "call" }
 ,{ "the" }
 ,{ "method" }
 ,{ "completeRead()" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "available" }
 ,{ "only" }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "has" }
 ,{ "been" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "Open_Read" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "completeRead()" , & fmt_text_b }
 ,{ "completes" }
 ,{ "the" }
 ,{ "read" }
 ,{ "operation." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "token," }
 ,{ "the" }
 ,{ "second" }
 ,{ "is" }
 ,{ "the" }
 ,{ "original" }
 ,{ "argument" }
 ,{ "len" , & fmt_text_b }
 ,{ "from" }
 ,{ "the" }
 ,{ "startRead()" , & fmt_text_b }
 ,{ "call." }
 ,{ "This" }
 ,{ "method" }
 ,{ "must" }
 ,{ "be" }
 ,{ "used" }
 ,{ "only" }
 ,{ "after" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "async" }
 ,{ "token" }
 ,{ "is" }
 ,{ "reported" }
 ,{ "finished." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "available" }
 ,{ "only" }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "has" }
 ,{ "been" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "Open_Read" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "startWrite()" , & fmt_text_b }
 ,{ "starts" }
 ,{ "the" }
 ,{ "write" }
 ,{ "operation." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "an" }
 ,{ "async" }
 ,{ "token." }
 ,{ "The" }
 ,{ "type" }
 ,{ "of" }
 ,{ "this" }
 ,{ "token" }
 ,{ "is" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "Async" , & fmt_text_b }
 ,{ "and" }
 ,{ "usually" }
 ,{ "it" }
 ,{ "is" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "some" }
 ,{ "structure" }
 ,{ "(" }
 ,{ "AsyncState" , & fmt_text_b }
 ,{ ")." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "has" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "RWResult" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "pending" , & fmt_text_b }
 ,{ "and" }
 ,{ "error" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "first" }
 ,{ "field" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "pending," }
 ,{ "otherwise" }
 ,{ "it" }
 ,{ "is" }
 ,{ "finished." }
 ,{ "The" }
 ,{ "second" }
 ,{ "is" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
 ,{ "If" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "finished," }
 ,{ "no" }
 ,{ "other" }
 ,{ "steps" }
 ,{ "are" }
 ,{ "required." }
 ,{ "If" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "pending," }
 ,{ "you" }
 ,{ "must" }
 ,{ "wait" }
 ,{ "until" }
 ,{ "the" }
 ,{ "token" }
 ,{ "is" }
 ,{ "finished" }
 ,{ "and" }
 ,{ "then" }
 ,{ "call" }
 ,{ "the" }
 ,{ "method" }
 ,{ "completeWrite()" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "available" }
 ,{ "only" }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "has" }
 ,{ "been" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "Open_Write" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "completeWrite()" , & fmt_text_b }
 ,{ "completes" }
 ,{ "the" }
 ,{ "write" }
 ,{ "operation." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "token," }
 ,{ "the" }
 ,{ "second" }
 ,{ "is" }
 ,{ "the" }
 ,{ "original" }
 ,{ "argument" }
 ,{ "len" , & fmt_text_b }
 ,{ "from" }
 ,{ "the" }
 ,{ "startWrite()" , & fmt_text_b }
 ,{ "call." }
 ,{ "This" }
 ,{ "method" }
 ,{ "must" }
 ,{ "be" }
 ,{ "used" }
 ,{ "only" }
 ,{ "after" }
 ,{ "the" }
 ,{ "correspondent" }
 ,{ "async" }
 ,{ "token" }
 ,{ "is" }
 ,{ "reported" }
 ,{ "finished." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "available" }
 ,{ "only" }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "has" }
 ,{ "been" }
 ,{ "opened" }
 ,{ "with" }
 ,{ "the" }
 ,{ "flag" }
 ,{ "Open_Write" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b32 = { {
 { "The" }
 ,{ "length" }
 ,{ "of" }
 ,{ "any" }
 ,{ "read" }
 ,{ "or" }
 ,{ "write" }
 ,{ "operation" }
 ,{ "must" }
 ,{ "not" }
 ,{ "exceed" }
 ,{ "MaxRWLen" , & fmt_text_b }
 ,{ "," }
 ,{ "which" }
 ,{ "should" }
 ,{ "has" }
 ,{ "the" }
 ,{ "value" }
 ,{ "like" }
 ,{ "1" }
 ,{ "MByte." }
 ,{ "The" }
 ,{ "data" }
 ,{ "buffer" }
 ,{ "is" }
 ,{ "in" }
 ,{ "use" }
 ,{ "during" }
 ,{ "the" }
 ,{ "whole" }
 ,{ "read" }
 ,{ "or" }
 ,{ "write" }
 ,{ "operation," }
 ,{ "so" }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "held" }
 ,{ "intact" }
 ,{ "until" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "complete." }
} , & fmt_text , & align_text } ;

Text b33 = { {
 { "Here" }
 ,{ "is" }
 ,{ "a" }
 ,{ "pattern" }
 ,{ "to" }
 ,{ "do" }
 ,{ "a" }
 ,{ "read" }
 ,{ "operation:" }
} , & fmt_text , & align_text } ;

Text b34 = { {
 { "Here" }
 ,{ "is" }
 ,{ "a" }
 ,{ "pattern" }
 ,{ "to" }
 ,{ "do" }
 ,{ "a" }
 ,{ "write" }
 ,{ "operation:" }
} , & fmt_text , & align_text } ;

Text b35 = { {
 { "To" }
 ,{ "work" }
 ,{ "with" }
 ,{ "async" }
 ,{ "tokens" }
 ,{ "there" }
 ,{ "is" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "AsyncFileWait" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b36 = { {
 { "This" }
 ,{ "structure" }
 ,{ "is" }
 ,{ "a" }
 ,{ "pool" }
 ,{ "of" }
 ,{ "tokens." }
 ,{ "To" }
 ,{ "work" }
 ,{ "with" }
 ,{ "tokens" }
 ,{ "you" }
 ,{ "create" }
 ,{ "an" }
 ,{ "instance" }
 ,{ "of" }
 ,{ "this" }
 ,{ "structure" }
 ,{ "and" }
 ,{ "initialize" }
 ,{ "it." }
 ,{ "Then" }
 ,{ "you" }
 ,{ "use" }
 ,{ "its" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "do" }
 ,{ "async" }
 ,{ "file" }
 ,{ "operations." }
 ,{ "Finally," }
 ,{ "you" }
 ,{ "uninitialize" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "Copying" }
 ,{ "of" }
 ,{ "the" }
 ,{ "instances" }
 ,{ "is" }
 ,{ "prohibited." }
 ,{ "The" }
 ,{ "private" }
 ,{ "content" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "is" }
 ,{ "target-dependent." }
} , & fmt_text , & align_text } ;

Text b37 = { {
 { "init()" , & fmt_text_b }
 ,{ "initializes" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "async" }
 ,{ "pool" }
 ,{ "size." }
 ,{ "This" }
 ,{ "value" }
 ,{ "must" }
 ,{ "not" }
 ,{ "exceed" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "constant" }
 ,{ "MaxAsyncs" , & fmt_text_b }
 ,{ "." }
 ,{ "Otherwise" }
 ,{ "the" }
 ,{ "method" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "error." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "successfully" }
 ,{ "initialized," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "uninitialized" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "exit()" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "pool" }
 ,{ "contains" }
 ,{ "async_count" , & fmt_text_b }
 ,{ "async" }
 ,{ "tokens." }
 ,{ "They" }
 ,{ "are" }
 ,{ "indexed" }
 ,{ "by" }
 ,{ "the" }
 ,{ "numbers" }
 ,{ "from" }
 ,{ "the" }
 ,{ "range" }
 ,{ "[0,async_count)" , & fmt_text_b }
 ,{ "." }
 ,{ "Some" }
 ,{ "of" }
 ,{ "them" }
 ,{ "comprise" }
 ,{ "the" }
 ,{ "\"wait" }
 ,{ "set\"." }
 ,{ "Initially" }
 ,{ "the" }
 ,{ "set" }
 ,{ "is" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Text b38 = { {
 { "exit()" , & fmt_text_b }
 ,{ "uninitializes" }
 ,{ "the" }
 ,{ "instance." }
} , & fmt_text , & align_text } ;

Text b39 = { {
 { "getAsync()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "token" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "index." }
} , & fmt_text , & align_text } ;

Text b40 = { {
 { "addWait()" , & fmt_text_b }
 ,{ "adds" }
 ,{ "the" }
 ,{ "token" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "index" }
 ,{ "to" }
 ,{ "the" }
 ,{ "wait" }
 ,{ "set." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "token" }
 ,{ "was" }
 ,{ "included" }
 ,{ "in" }
 ,{ "the" }
 ,{ "set," }
 ,{ "and" }
 ,{ "false" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "token" }
 ,{ "is" }
 ,{ "already" }
 ,{ "in" }
 ,{ "the" }
 ,{ "set." }
} , & fmt_text , & align_text } ;

Text b41 = { {
 { "delWait()" , & fmt_text_b }
 ,{ "removes" }
 ,{ "the" }
 ,{ "token" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "index" }
 ,{ "from" }
 ,{ "the" }
 ,{ "wait" }
 ,{ "set." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "token" }
 ,{ "was" }
 ,{ "excluded" }
 ,{ "from" }
 ,{ "the" }
 ,{ "set," }
 ,{ "and" }
 ,{ "false" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "token" }
 ,{ "is" }
 ,{ "already" }
 ,{ "not" }
 ,{ "in" }
 ,{ "the" }
 ,{ "set." }
} , & fmt_text , & align_text } ;

Text b42 = { {
 { "wait()" , & fmt_text_b }
 ,{ "waits" }
 ,{ "while" }
 ,{ "one" }
 ,{ "of" }
 ,{ "the" }
 ,{ "tokens" }
 ,{ "from" }
 ,{ "the" }
 ,{ "wait" }
 ,{ "set" }
 ,{ "is" }
 ,{ "finished," }
 ,{ "i.e." }
 ,{ "some" }
 ,{ "async" }
 ,{ "file" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "started" }
 ,{ "with" }
 ,{ "this" }
 ,{ "token" }
 ,{ "and" }
 ,{ "it" }
 ,{ "is" }
 ,{ "finished." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "has" }
 ,{ "the" }
 ,{ "type" }
 ,{ "WaitResult" , & fmt_text_a , & ..#page_HCore_SysWait#link }
 ,{ "." }
 ,{ "The" }
 ,{ "value" }
 ,{ "is" }
 ,{ "the" }
 ,{ "index" }
 ,{ "of" }
 ,{ "the" }
 ,{ "token" }
 ,{ "been" }
 ,{ "finished," }
 ,{ "or" }
 ,{ "one" }
 ,{ "of" }
 ,{ "the" }
 ,{ "negative" }
 ,{ "special" }
 ,{ "values." }
 ,{ "Two" }
 ,{ "variants" }
 ,{ "of" }
 ,{ "wait()" , & fmt_text_b }
 ,{ "accepts" }
 ,{ "timeouts" }
 ,{ "of" }
 ,{ "different" }
 ,{ "kinds:" }
 ,{ "as" }
 ,{ "a" }
 ,{ "MSec" , & fmt_text_b }
 ,{ "or" }
 ,{ "as" }
 ,{ "a" }
 ,{ "TimeScope" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "special" }
 ,{ "return" }
 ,{ "values" }
 ,{ "have" }
 ,{ "the" }
 ,{ "following" }
 ,{ "meanings:" }
} , & fmt_text , & align_text } ;

Text b43_0 = { {
 { "Wait_error" , & fmt_list_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "function" }
 ,{ "has" }
 ,{ "failed" }
 ,{ "for" }
 ,{ "some" }
 ,{ "reason," }
} , & fmt_list , & align_list } ;

Text b43_1 = { {
 { "Wait_timeout" , & fmt_list_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "wait" }
 ,{ "is" }
 ,{ "terminated" }
 ,{ "by" }
 ,{ "timeout," }
} , & fmt_list , & align_list } ;

Text b43_2 = { {
 { "Wait_interrupt" , & fmt_list_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "wait" }
 ,{ "is" }
 ,{ "terminated" }
 ,{ "by" }
 ,{ "the" }
 ,{ "interrupt()." , & fmt_list_b }
} , & fmt_list , & align_list } ;

TextList b43 = { {
 { '1.' , { { & b43_0 , null , ItemInner , ItemOuter } } }
 ,{ '2.' , { { & b43_1 , null , ItemInner , ItemOuter } } }
 ,{ '3.' , { { & b43_2 , null , ItemInner , ItemOuter } } }
} } ;

Text b44 = { {
 { "interrupt()" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "special" }
 ,{ "method." }
 ,{ "This" }
 ,{ "method" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "interrupt" }
 ,{ "the" }
 ,{ "wait()" , & fmt_text_b }
 ,{ "." }
 ,{ "Unlike" }
 ,{ "other" }
 ,{ "methods," }
 ,{ "this" }
 ,{ "one" }
 ,{ "can" }
 ,{ "be" }
 ,{ "called" }
 ,{ "in" }
 ,{ "parallel" }
 ,{ "to" }
 ,{ "other" }
 ,{ "method" }
 ,{ "calls." }
 ,{ "This" }
 ,{ "method" }
 ,{ "has" }
 ,{ "a" }
 ,{ "\"semaphore" }
 ,{ "behavior\"," }
 ,{ "i.e." }
 ,{ "several" }
 ,{ "calls" }
 ,{ "provide" }
 ,{ "several" }
 ,{ "interrupts." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore SysFile" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_text , outer_text , back_text }
 ,{ & b32 , null , inner_text , outer_text , back_text }
 ,{ & b33 , null , inner_text , outer_text , back_text }
 ,{ & b34 , null , inner_text , outer_text , back_text }
 ,{ & b35 , null , inner_text , outer_text , back_text }
 ,{ & b36 , null , inner_text , outer_text , back_text }
 ,{ & b37 , null , inner_text , outer_text , back_text }
 ,{ & b38 , null , inner_text , outer_text , back_text }
 ,{ & b39 , null , inner_text , outer_text , back_text }
 ,{ & b40 , null , inner_text , outer_text , back_text }
 ,{ & b41 , null , inner_text , outer_text , back_text }
 ,{ & b42 , null , inner_text , outer_text , back_text }
 ,{ & b43 , null , inner_list , outer_list , back_list }
 ,{ & b44 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCore_SysError#page , & page_HCore_SysFileSystem#page };

Link link = { &page } ;

}

scope page_HCore_SysFileSystem {

Text b0 = { {
 { "HCore" }
 ,{ "SysFileSystem" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysFileSystem.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysFileSystem.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "provides" }
 ,{ "OS" }
 ,{ "backed" }
 ,{ "file" }
 ,{ "system" }
 ,{ "operations." }
 ,{ "These" }
 ,{ "operations" }
 ,{ "comply" }
 ,{ "with" }
 ,{ "the" }
 ,{ "general" , & fmt_text_a , & ..#page_Files#link }
 ,{ "file" , & fmt_text_a , & ..#page_Files#link }
 ,{ "operation" , & fmt_text_a , & ..#page_Files#link }
 ,{ "set" , & fmt_text_a , & ..#page_Files#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "To" }
 ,{ "perform" }
 ,{ "a" }
 ,{ "file" }
 ,{ "system" }
 ,{ "operation" }
 ,{ "you" }
 ,{ "create" }
 ,{ "an" }
 ,{ "instance" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "FileSystem" , & fmt_text_b }
 ,{ "and" }
 ,{ "initialize" }
 ,{ "it." }
 ,{ "Then" }
 ,{ "you" }
 ,{ "use" }
 ,{ "this" }
 ,{ "structure" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "do" }
 ,{ "desired" }
 ,{ "operations." }
 ,{ "Finally," }
 ,{ "you" }
 ,{ "uninitialize" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "Copying" }
 ,{ "of" }
 ,{ "the" }
 ,{ "instances" }
 ,{ "is" }
 ,{ "prohibited." }
 ,{ "The" }
 ,{ "private" }
 ,{ "content" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "is" }
 ,{ "target-dependent." }
 ,{ "It's" }
 ,{ "very" }
 ,{ "likely," }
 ,{ "that" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "no" }
 ,{ "data" }
 ,{ "fields." }
 ,{ "In" }
 ,{ "such" }
 ,{ "case" }
 ,{ "its" }
 ,{ "methods" }
 ,{ "can" }
 ,{ "be" }
 ,{ "declared" }
 ,{ "static." }
 ,{ "But" }
 ,{ "you" }
 ,{ "should" }
 ,{ "not" }
 ,{ "use" }
 ,{ "them" }
 ,{ "as" }
 ,{ "such." }
 ,{ "This" , & fmt_text_Alert }
 ,{ "structure" , & fmt_text_Alert }
 ,{ "uses" , & fmt_text_Alert }
 ,{ "types" , & fmt_text_Alert }
 ,{ "and" , & fmt_text_Alert }
 ,{ "constants" , & fmt_text_Alert }
 ,{ "from" , & fmt_text_Alert }
 ,{ "the" , & fmt_text_Alert }
 ,{ "GenFile.h" , & fmt_text_Alert }
 ,{ "," , & fmt_text_Alert }
 ,{ "this" , & fmt_text_Alert }
 ,{ "includes" , & fmt_text_Alert }
 ,{ "error" , & fmt_text_Alert }
 ,{ "codes." , & fmt_text_Alert }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "init()" , & fmt_text_b }
 ,{ "initializes" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "successfully" }
 ,{ "initialized," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "uninitialized" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "exit()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "exit()" , & fmt_text_b }
 ,{ "uninitialize" }
 ,{ "the" }
 ,{ "instance." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "getFileType()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "file" }
 ,{ "type." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "specifies" }
 ,{ "a" }
 ,{ "file" }
 ,{ "or" }
 ,{ "a" }
 ,{ "directory." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "represented" }
 ,{ "by" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "structure" }
 ,{ "TypeResult" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "type" , & fmt_text_b }
 ,{ "and" }
 ,{ "error" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "type" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "object" }
 ,{ "type," }
 ,{ "the" }
 ,{ "error" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "getFileUpdateTime()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "last" }
 ,{ "modification" }
 ,{ "time" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file" }
 ,{ "or" }
 ,{ "directory." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "specifies" }
 ,{ "a" }
 ,{ "file" }
 ,{ "or" }
 ,{ "a" }
 ,{ "directory." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "represented" }
 ,{ "by" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "structure" }
 ,{ "CmpTimeResult" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "time" , & fmt_text_b }
 ,{ "and" }
 ,{ "error" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "time" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "requested" }
 ,{ "time," }
 ,{ "the" }
 ,{ "error" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "createFile()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "the" }
 ,{ "new" }
 ,{ "empty" }
 ,{ "file" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "name." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "deleteFile()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "file" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "name." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "createDir()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "the" }
 ,{ "empty" }
 ,{ "directory" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "name." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "deleteDir()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "name." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "The" }
 ,{ "second" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "recursion" }
 ,{ "flag." }
 ,{ "If" }
 ,{ "it" }
 ,{ "is" }
 ,{ "false" , & fmt_text_b }
 ,{ "," }
 ,{ "then" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "must" }
 ,{ "be" }
 ,{ "empty." }
 ,{ "Otherwise" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "is" }
 ,{ "deleted" }
 ,{ "with" }
 ,{ "all" }
 ,{ "its" }
 ,{ "content," }
 ,{ "including" }
 ,{ "nested" }
 ,{ "subdirectories." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "rename()" , & fmt_text_b }
 ,{ "renames" }
 ,{ "or" }
 ,{ "moves" }
 ,{ "the" }
 ,{ "file" }
 ,{ "of" }
 ,{ "directory." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "The" }
 ,{ "allow_overwrite" , & fmt_text_b }
 ,{ "flag" }
 ,{ "allows" }
 ,{ "overwriting" }
 ,{ "the" }
 ,{ "existing" }
 ,{ "file." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "remove()" , & fmt_text_b }
 ,{ "deletes" }
 ,{ "ether" }
 ,{ "the" }
 ,{ "existing" }
 ,{ "file" }
 ,{ "or" }
 ,{ "the" }
 ,{ "existing" }
 ,{ "empty" }
 ,{ "directory." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "exec()" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "a" }
 ,{ "file" }
 ,{ "system" }
 ,{ "operation." }
 ,{ "It" }
 ,{ "is" }
 ,{ "an" }
 ,{ "extra" }
 ,{ "operation." }
 ,{ "This" }
 ,{ "methods" }
 ,{ "starts" }
 ,{ "a" }
 ,{ "new" }
 ,{ "process." }
 ,{ "The" }
 ,{ "dir" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "working" }
 ,{ "directory" }
 ,{ "of" }
 ,{ "the" }
 ,{ "new" }
 ,{ "process," }
 ,{ "the" }
 ,{ "program" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "executable" }
 ,{ "file" }
 ,{ "name," }
 ,{ "the" }
 ,{ "arg" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "command" }
 ,{ "line." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "pathOf()" , & fmt_text_b }
 ,{ "is" }
 ,{ "another" }
 ,{ "extra" }
 ,{ "operation." }
 ,{ "This" }
 ,{ "method" }
 ,{ "builds" }
 ,{ "a" }
 ,{ "normalized" }
 ,{ "full" }
 ,{ "path" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file" }
 ,{ "or" }
 ,{ "directory." }
 ,{ "The" }
 ,{ "buf" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "storage" }
 ,{ "buffer" }
 ,{ "for" }
 ,{ "the" }
 ,{ "result." }
 ,{ "The" }
 ,{ "resulting" }
 ,{ "string" }
 ,{ "is" }
 ,{ "zero-terminated." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "represented" }
 ,{ "by" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "structure" }
 ,{ "PathOfResult" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "path" , & fmt_text_b }
 ,{ "and" }
 ,{ "error" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "path" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "path," }
 ,{ "the" }
 ,{ "error" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "DirCursor" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "structure." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "iterate" }
 ,{ "over" }
 ,{ "the" }
 ,{ "content" }
 ,{ "of" }
 ,{ "a" }
 ,{ "directory." }
 ,{ "Copying" }
 ,{ "of" }
 ,{ "the" }
 ,{ "instances" }
 ,{ "is" }
 ,{ "prohibited." }
 ,{ "The" }
 ,{ "private" }
 ,{ "content" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "is" }
 ,{ "target-dependent." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "file_name" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "buffer" }
 ,{ "for" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name." }
 ,{ "The" }
 ,{ "only" }
 ,{ "file" }
 ,{ "part" }
 ,{ "is" }
 ,{ "stored" }
 ,{ "here." }
 ,{ "The" }
 ,{ "name" }
 ,{ "is" }
 ,{ "not" }
 ,{ "zero-terminated." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "file" }
 ,{ "name." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "type" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "file" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "error" , & fmt_text_b }
 ,{ "contains" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code" }
 ,{ "after" }
 ,{ "method" }
 ,{ "calls" }
 ,{ "(except" }
 ,{ "exit()" , & fmt_text_b }
 ,{ ")." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "init()" , & fmt_text_b }
 ,{ "initializes" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "The" }
 ,{ "field" }
 ,{ "error" , & fmt_text_b }
 ,{ "will" }
 ,{ "contain" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "successfully" }
 ,{ "initialized," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "uninitialized" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "exit()" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "iterator" }
 ,{ "is" }
 ,{ "set" }
 ,{ "to" }
 ,{ "the" }
 ,{ "position" }
 ,{ "\"before" }
 ,{ "the" }
 ,{ "first\"." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "exit()" , & fmt_text_b }
 ,{ "uninitializes" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "No" }
 ,{ "errors" }
 ,{ "are" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "next()" , & fmt_text_b }
 ,{ "moves" }
 ,{ "to" }
 ,{ "the" }
 ,{ "next" }
 ,{ "file" }
 ,{ "(or" }
 ,{ "directory)" }
 ,{ "in" }
 ,{ "the" }
 ,{ "directory." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "such" }
 ,{ "file" }
 ,{ "is" }
 ,{ "found." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "false" , & fmt_text_b }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error" }
 ,{ "or" }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "no" }
 ,{ "more" }
 ,{ "files." }
 ,{ "The" }
 ,{ "field" }
 ,{ "error" , & fmt_text_b }
 ,{ "will" }
 ,{ "contain" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
 ,{ "Fields" }
 ,{ "file_name" , & fmt_text_b }
 ,{ "," }
 ,{ "len" , & fmt_text_b }
 ,{ "and" }
 ,{ "type" , & fmt_text_b }
 ,{ "contain" }
 ,{ "file" }
 ,{ "information," }
 ,{ "if" }
 ,{ "the" }
 ,{ "file" }
 ,{ "is" }
 ,{ "found." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore SysFileSystem" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCore_SysFile#page , & page_HCore_SysLaunchPath#page };

Link link = { &page } ;

}

scope page_HCore_SysLaunchPath {

Text b0 = { {
 { "HCore" }
 ,{ "SysLaunchPath" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysLaunchPath.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysLaunchPath.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "Class-function" , & fmt_text_b }
 ,{ "is" }
 ,{ "to" }
 ,{ "obtain" }
 ,{ "the" }
 ,{ "full" }
 ,{ "path" }
 ,{ "of" }
 ,{ "the" }
 ,{ "running" }
 ,{ "executable." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "To" }
 ,{ "call" }
 ,{ "the" }
 ,{ "function" }
 ,{ "you" }
 ,{ "must" }
 ,{ "provide" }
 ,{ "a" }
 ,{ "buffer" }
 ,{ "with" }
 ,{ "the" }
 ,{ "proper" }
 ,{ "length." }
 ,{ "The" }
 ,{ "path" }
 ,{ "is" }
 ,{ "copied" }
 ,{ "to" }
 ,{ "this" }
 ,{ "buffer." }
 ,{ "path" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "path," }
 ,{ "error" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore SysLaunchPath" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCore_SysFileSystem#page , & page_HCore_SysMemPage#page };

Link link = { &page } ;

}

scope page_HCore_SysMemPage {

Text b0 = { {
 { "HCore" }
 ,{ "SysMemPage" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysMemPage.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysMemPage.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "provides" }
 ,{ "primary" }
 ,{ "memory" }
 ,{ "allocation" }
 ,{ "functions." }
 ,{ "These" }
 ,{ "functions" }
 ,{ "are" }
 ,{ "backed" }
 ,{ "by" }
 ,{ "the" }
 ,{ "OS" }
 ,{ "and" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "manage" }
 ,{ "memory," }
 ,{ "accessible" }
 ,{ "by" }
 ,{ "the" }
 ,{ "application." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "MemPageLen" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "page." }
 ,{ "All" }
 ,{ "primary" }
 ,{ "memory" }
 ,{ "allocation" }
 ,{ "functions" }
 ,{ "work" }
 ,{ "with" }
 ,{ "memory" }
 ,{ "pages." }
 ,{ "MemPageLen" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "an" }
 ,{ "aligned" }
 ,{ "value." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "MemPageAlloc()" , & fmt_text_b }
 ,{ "allocates" }
 ,{ "to" }
 ,{ "the" }
 ,{ "application" }
 ,{ "a" }
 ,{ "continuous" }
 ,{ "range" }
 ,{ "of" }
 ,{ "memory" }
 ,{ "pages." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "pages" }
 ,{ "to" }
 ,{ "be" }
 ,{ "allocated." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "the" }
 ,{ "address" }
 ,{ "of" }
 ,{ "the" }
 ,{ "first" }
 ,{ "page," }
 ,{ "or" }
 ,{ "null" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error." }
 ,{ "If" }
 ,{ "the" }
 ,{ "num_pages" , & fmt_text_b }
 ,{ "is" }
 ,{ "null," }
 ,{ "the" }
 ,{ "return" }
 ,{ "value" }
 ,{ "may" }
 ,{ "or" }
 ,{ "may" }
 ,{ "not" }
 ,{ "be" }
 ,{ "null." }
 ,{ "Such" }
 ,{ "usage" }
 ,{ "is" }
 ,{ "pointless" }
 ,{ "and" }
 ,{ "not" }
 ,{ "recommended." }
 ,{ "Typically" }
 ,{ "MemPageAlloc()" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "allocate" }
 ,{ "large" }
 ,{ "blocks" }
 ,{ "of" }
 ,{ "memory." }
 ,{ "If" }
 ,{ "the" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "not" }
 ,{ "null," }
 ,{ "it" }
 ,{ "means" }
 ,{ "that" }
 ,{ "some" }
 ,{ "range" }
 ,{ "is" }
 ,{ "allocated" }
 ,{ "and" }
 ,{ "must" }
 ,{ "be" }
 ,{ "freed" }
 ,{ "using" }
 ,{ "the" }
 ,{ "function" }
 ,{ "MemPageFree()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "The" }
 ,{ "argument" }
 ,{ "mem" , & fmt_text_b }
 ,{ "in" }
 ,{ "the" }
 ,{ "following" }
 ,{ "functions" }
 ,{ "must" }
 ,{ "not" }
 ,{ "be" }
 ,{ "null." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "MemPageFree()" , & fmt_text_b }
 ,{ "deallocates" }
 ,{ "a" }
 ,{ "previously" }
 ,{ "allocated" }
 ,{ "range" }
 ,{ "of" }
 ,{ "memory" }
 ,{ "pages." }
 ,{ "You" }
 ,{ "must" }
 ,{ "provide" }
 ,{ "the" }
 ,{ "address" }
 ,{ "of" }
 ,{ "the" }
 ,{ "first" }
 ,{ "page" }
 ,{ "and" }
 ,{ "the" }
 ,{ "exact" }
 ,{ "number" }
 ,{ "of" }
 ,{ "pages" }
 ,{ "in" }
 ,{ "the" }
 ,{ "range." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "MemPageExtend()" , & fmt_text_b }
 ,{ "extends" }
 ,{ "a" }
 ,{ "previously" }
 ,{ "allocated" }
 ,{ "memory" }
 ,{ "page" }
 ,{ "range" }
 ,{ "by" }
 ,{ "the" }
 ,{ "given" }
 ,{ "number" }
 ,{ "of" }
 ,{ "pages." }
 ,{ "You" }
 ,{ "must" }
 ,{ "provide" }
 ,{ "the" }
 ,{ "address" }
 ,{ "of" }
 ,{ "the" }
 ,{ "first" }
 ,{ "page" }
 ,{ "and" }
 ,{ "the" }
 ,{ "exact" }
 ,{ "number" }
 ,{ "of" }
 ,{ "pages" }
 ,{ "in" }
 ,{ "the" }
 ,{ "range." }
 ,{ "The" }
 ,{ "last" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "extra" }
 ,{ "pages." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "success." }
 ,{ "If" }
 ,{ "the" }
 ,{ "OS" }
 ,{ "does" }
 ,{ "not" }
 ,{ "support" }
 ,{ "such" }
 ,{ "kind" }
 ,{ "of" }
 ,{ "operation" }
 ,{ "this" }
 ,{ "function" }
 ,{ "may" }
 ,{ "simply" }
 ,{ "return" }
 ,{ "false" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "MemPageShrink()" , & fmt_text_b }
 ,{ "shrinks" }
 ,{ "a" }
 ,{ "previously" }
 ,{ "allocated" }
 ,{ "memory" }
 ,{ "page" }
 ,{ "range" }
 ,{ "by" }
 ,{ "the" }
 ,{ "given" }
 ,{ "number" }
 ,{ "of" }
 ,{ "pages." }
 ,{ "You" }
 ,{ "must" }
 ,{ "provide" }
 ,{ "the" }
 ,{ "address" }
 ,{ "of" }
 ,{ "the" }
 ,{ "first" }
 ,{ "page" }
 ,{ "and" }
 ,{ "the" }
 ,{ "exact" }
 ,{ "number" }
 ,{ "of" }
 ,{ "pages" }
 ,{ "in" }
 ,{ "the" }
 ,{ "range." }
 ,{ "The" }
 ,{ "last" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "pages" }
 ,{ "to" }
 ,{ "discard." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "discarded" }
 ,{ "from" }
 ,{ "the" }
 ,{ "range" }
 ,{ "pages." }
 ,{ "It" }
 ,{ "is" }
 ,{ "less" }
 ,{ "or" }
 ,{ "equal" }
 ,{ "than" }
 ,{ "the" }
 ,{ "minus_num_pages" , & fmt_text_b }
 ,{ "and" }
 ,{ "than" }
 ,{ "the" }
 ,{ "num_pages" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "the" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "null," }
 ,{ "none" }
 ,{ "of" }
 ,{ "pages" }
 ,{ "have" }
 ,{ "been" }
 ,{ "discarded." }
 ,{ "If" }
 ,{ "the" }
 ,{ "final" }
 ,{ "number" }
 ,{ "of" }
 ,{ "pages" }
 ,{ "equals" }
 ,{ "zero," }
 ,{ "the" }
 ,{ "range" }
 ,{ "itself" }
 ,{ "is" }
 ,{ "still" }
 ,{ "allocated" }
 ,{ "and" }
 ,{ "must" }
 ,{ "be" }
 ,{ "freed" }
 ,{ "using" }
 ,{ "the" }
 ,{ "MemPageFree()" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "the" }
 ,{ "OS" }
 ,{ "does" }
 ,{ "not" }
 ,{ "support" }
 ,{ "such" }
 ,{ "kind" }
 ,{ "of" }
 ,{ "operation" }
 ,{ "this" }
 ,{ "function" }
 ,{ "may" }
 ,{ "simply" }
 ,{ "return" }
 ,{ "0" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore SysMemPage" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCore_SysLaunchPath#page , & page_HCore_SysNet#page };

Link link = { &page } ;

}

scope page_HCore_SysNet {

Text b0 = { {
 { "HCore" }
 ,{ "SysNet" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysNet.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysNet.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "provides" }
 ,{ "the" }
 ,{ "OS" }
 ,{ "backed" }
 ,{ "network" }
 ,{ "support." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "UDPSocket" }
} , & fmt_h4 , & align_h4 } ;

Text b4 = { {
 { "This" }
 ,{ "structure" }
 ,{ "supports" }
 ,{ "work" }
 ,{ "with" }
 ,{ "UDP" }
 ,{ "endpoints." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "Using" }
 ,{ "UDP" }
 ,{ "protocol" }
 ,{ "you" }
 ,{ "can" }
 ,{ "occupy" }
 ,{ "a" }
 ,{ "UDP" }
 ,{ "port" }
 ,{ "and" }
 ,{ "receive" }
 ,{ "UDP" }
 ,{ "packets" }
 ,{ "on" }
 ,{ "that" }
 ,{ "port," }
 ,{ "also" }
 ,{ "you" }
 ,{ "can" }
 ,{ "send" }
 ,{ "UDP" }
 ,{ "packets" }
 ,{ "to" }
 ,{ "any" }
 ,{ "host:port" }
 ,{ "destination." }
 ,{ "To" }
 ,{ "start" }
 ,{ "working" }
 ,{ "with" }
 ,{ "a" }
 ,{ "particular" }
 ,{ "UDP" }
 ,{ "port" }
 ,{ "you" }
 ,{ "create" }
 ,{ "an" }
 ,{ "instance" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "UDPSocket" , & fmt_text_b }
 ,{ "and" }
 ,{ "initialize" }
 ,{ "it." }
 ,{ "Then" }
 ,{ "you" }
 ,{ "use" }
 ,{ "methods" }
 ,{ "of" }
 ,{ "this" }
 ,{ "structure" }
 ,{ "to" }
 ,{ "send" }
 ,{ "and" }
 ,{ "receive" }
 ,{ "UDP" }
 ,{ "packets." }
 ,{ "Finally," }
 ,{ "you" }
 ,{ "uninitialize" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "Copying" }
 ,{ "of" }
 ,{ "the" }
 ,{ "instances" }
 ,{ "is" }
 ,{ "prohibited." }
 ,{ "The" }
 ,{ "private" }
 ,{ "content" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "is" }
 ,{ "target-dependent." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "open()" , & fmt_text_b }
 ,{ "initializes" }
 ,{ "the" }
 ,{ "instance" }
 ,{ "and" }
 ,{ "binds" }
 ,{ "it" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "UDP" }
 ,{ "port." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "successfully" }
 ,{ "initialized," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "uninitialized" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "close()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "close()" , & fmt_text_b }
 ,{ "uninitializes" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "outbound()" , & fmt_text_b }
 ,{ "sends" }
 ,{ "a" }
 ,{ "UDP" }
 ,{ "packet" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "destination." }
 ,{ "Destination" }
 ,{ "is" }
 ,{ "a" }
 ,{ "pair" }
 ,{ "IP" , & fmt_text_b }
 ,{ "address" , & fmt_text_b }
 ,{ ":" }
 ,{ "UDP" , & fmt_text_b }
 ,{ "port" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "wait_in()" , & fmt_text_b }
 ,{ "waits" }
 ,{ "for" }
 ,{ "inbound" }
 ,{ "packets" }
 ,{ "up" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "timeout." }
 ,{ "The" }
 ,{ "WaitResult" , & fmt_text_a , & ..#page_HCore_SysWait#link }
 ,{ "is" }
 ,{ "returned." }
 ,{ "The" }
 ,{ "value" }
 ,{ "is" }
 ,{ "0," }
 ,{ "if" }
 ,{ "a" }
 ,{ "packet" }
 ,{ "is" }
 ,{ "available" }
 ,{ "for" }
 ,{ "reading," }
 ,{ "Wait_timeout" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "timeout" }
 ,{ "is" }
 ,{ "expired" }
 ,{ "and" }
 ,{ "Wait_error" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "some" }
 ,{ "error" }
 ,{ "happened." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "indound()" , & fmt_text_b }
 ,{ "reads" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "data" }
 ,{ "from" }
 ,{ "the" }
 ,{ "first" }
 ,{ "inbound" }
 ,{ "packet" }
 ,{ "in" }
 ,{ "the" }
 ,{ "inbound" }
 ,{ "queue" }
 ,{ "and" }
 ,{ "removes" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "from" }
 ,{ "the" }
 ,{ "queue." }
 ,{ "If" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "data" }
 ,{ "buffer" }
 ,{ "is" }
 ,{ "not" }
 ,{ "large" }
 ,{ "enough," }
 ,{ "a" }
 ,{ "error" }
 ,{ "is" }
 ,{ "returned" }
 ,{ "(and" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "is" }
 ,{ "lost)." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "has" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "InResult" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "three" }
 ,{ "fields:" }
 ,{ "src" , & fmt_text_b }
 ,{ "," }
 ,{ "len" , & fmt_text_b }
 ,{ "and" }
 ,{ "error" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "src" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "address" }
 ,{ "of" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "originator." }
 ,{ "The" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "bytes," }
 ,{ "copied" }
 ,{ "to" }
 ,{ "the" }
 ,{ "input" }
 ,{ "buffer," }
 ,{ "this" }
 ,{ "value" }
 ,{ "is" }
 ,{ "less" }
 ,{ "or" }
 ,{ "equal" }
 ,{ "then" }
 ,{ "the" }
 ,{ "buf.len" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "error" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
 ,{ "If" }
 ,{ "the" }
 ,{ "inbound" }
 ,{ "queue" }
 ,{ "is" }
 ,{ "empty," }
 ,{ "the" }
 ,{ "method" }
 ,{ "blocks." }
 ,{ "You" }
 ,{ "should" }
 ,{ "never" }
 ,{ "call" }
 ,{ "this" }
 ,{ "method" }
 ,{ "alone," }
 ,{ "but" }
 ,{ "only" }
 ,{ "after" }
 ,{ "the" }
 ,{ "call" }
 ,{ "of" }
 ,{ "the" }
 ,{ "method" }
 ,{ "wait_in()" , & fmt_text_b }
 ,{ "to" }
 ,{ "avoid" }
 ,{ "infinite" }
 ,{ "block." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "AsyncUDPSocket" }
} , & fmt_h4 , & align_h4 } ;

Text b12 = { {
 { "This" }
 ,{ "structure" }
 ,{ "supports" }
 ,{ "work" }
 ,{ "with" }
 ,{ "UDP" }
 ,{ "endpoints" }
 ,{ "in" }
 ,{ "an" }
 ,{ "asynchronous" }
 ,{ "manner" }
 ,{ "similar" }
 ,{ "to" }
 ,{ "the" }
 ,{ "async" , & fmt_text_a , & ..#page_HCore_SysFile#link }
 ,{ "file" , & fmt_text_a , & ..#page_HCore_SysFile#link }
 ,{ "operations" , & fmt_text_a , & ..#page_HCore_SysFile#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "To" }
 ,{ "start" }
 ,{ "working" }
 ,{ "with" }
 ,{ "a" }
 ,{ "particular" }
 ,{ "UDP" }
 ,{ "port" }
 ,{ "you" }
 ,{ "create" }
 ,{ "an" }
 ,{ "instance" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "UDPSocket" , & fmt_text_b }
 ,{ "and" }
 ,{ "initialize" }
 ,{ "it." }
 ,{ "Then" }
 ,{ "you" }
 ,{ "use" }
 ,{ "methods" }
 ,{ "of" }
 ,{ "this" }
 ,{ "structure" }
 ,{ "to" }
 ,{ "send" }
 ,{ "and" }
 ,{ "receive" }
 ,{ "UDP" }
 ,{ "packets." }
 ,{ "Finally," }
 ,{ "you" }
 ,{ "uninitialize" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "Copying" }
 ,{ "of" }
 ,{ "the" }
 ,{ "instances" }
 ,{ "is" }
 ,{ "prohibited." }
 ,{ "The" }
 ,{ "private" }
 ,{ "content" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "is" }
 ,{ "target-dependent." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "open()" , & fmt_text_b }
 ,{ "initializes" }
 ,{ "the" }
 ,{ "instance" }
 ,{ "and" }
 ,{ "binds" }
 ,{ "it" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "UDP" }
 ,{ "port." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "successfully" }
 ,{ "initialized," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "uninitialized" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "close()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "close()" , & fmt_text_b }
 ,{ "uninitializes" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "This" , & fmt_text_Alert }
 ,{ "method" , & fmt_text_Alert }
 ,{ "aborts" , & fmt_text_Alert }
 ,{ "any" , & fmt_text_Alert }
 ,{ "pending" , & fmt_text_Alert }
 ,{ "operations" , & fmt_text_Alert }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "startOutbound()" , & fmt_text_b }
 ,{ "starts" }
 ,{ "the" }
 ,{ "outbound" }
 ,{ "operation." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "an" }
 ,{ "async" }
 ,{ "token." }
 ,{ "This" }
 ,{ "token" }
 ,{ "has" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "Async" , & fmt_text_b }
 ,{ "," }
 ,{ "which" }
 ,{ "is" }
 ,{ "usually" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "a" }
 ,{ "structure." }
 ,{ "The" }
 ,{ "data" }
 ,{ "buffer" }
 ,{ "is" }
 ,{ "in" }
 ,{ "use" }
 ,{ "during" }
 ,{ "the" }
 ,{ "whole" }
 ,{ "operation," }
 ,{ "so" }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "held" }
 ,{ "intact" }
 ,{ "until" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "complete." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "has" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "OutResult" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "pending" , & fmt_text_b }
 ,{ "and" }
 ,{ "error" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "first" }
 ,{ "field" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "not" }
 ,{ "finished" }
 ,{ "yet." }
 ,{ "The" }
 ,{ "second" }
 ,{ "is" }
 ,{ "a" }
 ,{ "error" }
 ,{ "code." }
 ,{ "If" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "pending," }
 ,{ "you" }
 ,{ "must" }
 ,{ "wait" }
 ,{ "until" }
 ,{ "the" }
 ,{ "token" }
 ,{ "is" }
 ,{ "finished" }
 ,{ "and" }
 ,{ "then" }
 ,{ "complete" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "using" }
 ,{ "the" }
 ,{ "method" }
 ,{ "completeOutbound()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "completeOutbound()" , & fmt_text_b }
 ,{ "completes" }
 ,{ "the" }
 ,{ "pending" }
 ,{ "outbound" }
 ,{ "operation." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "startInbound()" , & fmt_text_b }
 ,{ "starts" }
 ,{ "the" }
 ,{ "inbound" }
 ,{ "operation." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "an" }
 ,{ "async" }
 ,{ "token." }
 ,{ "This" }
 ,{ "token" }
 ,{ "has" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "Async" , & fmt_text_b }
 ,{ "," }
 ,{ "which" }
 ,{ "is" }
 ,{ "usually" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "a" }
 ,{ "structure." }
 ,{ "The" }
 ,{ "data" }
 ,{ "buffer" }
 ,{ "is" }
 ,{ "in" }
 ,{ "use" }
 ,{ "during" }
 ,{ "the" }
 ,{ "whole" }
 ,{ "operation," }
 ,{ "so" }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "held" }
 ,{ "intact" }
 ,{ "until" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "complete." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "has" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "StartInResult" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "two" }
 ,{ "fields:" }
 ,{ "pending" , & fmt_text_b }
 ,{ "and" }
 ,{ "result" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "first" }
 ,{ "field" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "not" }
 ,{ "finished" }
 ,{ "yet." }
 ,{ "The" }
 ,{ "second" }
 ,{ "is" }
 ,{ "an" }
 ,{ "operation" }
 ,{ "result." }
 ,{ "If" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "pending," }
 ,{ "you" }
 ,{ "must" }
 ,{ "wait" }
 ,{ "until" }
 ,{ "the" }
 ,{ "token" }
 ,{ "is" }
 ,{ "finished" }
 ,{ "and" }
 ,{ "then" }
 ,{ "complete" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "using" }
 ,{ "the" }
 ,{ "method" }
 ,{ "completeInbound()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "completeInbound()" , & fmt_text_b }
 ,{ "completes" }
 ,{ "the" }
 ,{ "pending" }
 ,{ "inbound" }
 ,{ "operation." }
 ,{ "The" }
 ,{ "operation" }
 ,{ "result" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "This" }
 ,{ "value" }
 ,{ "has" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type" }
 ,{ "InResult" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "structure" }
 ,{ "has" }
 ,{ "three" }
 ,{ "fields:" }
 ,{ "error" , & fmt_text_b }
 ,{ "," }
 ,{ "src" , & fmt_text_b }
 ,{ "and" }
 ,{ "len" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "error" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "error" }
 ,{ "code." }
 ,{ "The" }
 ,{ "src" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "address" }
 ,{ "of" }
 ,{ "the" }
 ,{ "packet" }
 ,{ "originator." }
 ,{ "The" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "bytes," }
 ,{ "copied" }
 ,{ "to" }
 ,{ "the" }
 ,{ "input" }
 ,{ "buffer," }
 ,{ "this" }
 ,{ "value" }
 ,{ "is" }
 ,{ "less" }
 ,{ "or" }
 ,{ "equal" }
 ,{ "then" }
 ,{ "the" }
 ,{ "buf.len" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "To" }
 ,{ "work" }
 ,{ "with" }
 ,{ "async" }
 ,{ "tokens" }
 ,{ "there" }
 ,{ "is" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "AsyncUDPSocketWait" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "This" }
 ,{ "structure" }
 ,{ "is" }
 ,{ "a" }
 ,{ "pool" }
 ,{ "of" }
 ,{ "tokens." }
 ,{ "To" }
 ,{ "work" }
 ,{ "with" }
 ,{ "tokens" }
 ,{ "you" }
 ,{ "create" }
 ,{ "an" }
 ,{ "instance" }
 ,{ "of" }
 ,{ "this" }
 ,{ "structure" }
 ,{ "and" }
 ,{ "initialize" }
 ,{ "it." }
 ,{ "Then" }
 ,{ "you" }
 ,{ "use" }
 ,{ "its" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "do" }
 ,{ "async" }
 ,{ "socket" }
 ,{ "operations." }
 ,{ "Finally," }
 ,{ "you" }
 ,{ "uninitialize" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "Copying" }
 ,{ "of" }
 ,{ "the" }
 ,{ "instances" }
 ,{ "is" }
 ,{ "prohibited." }
 ,{ "The" }
 ,{ "private" }
 ,{ "content" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "is" }
 ,{ "target-dependent." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "init()" , & fmt_text_b }
 ,{ "initializes" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "async" }
 ,{ "pool" }
 ,{ "size." }
 ,{ "This" }
 ,{ "value" }
 ,{ "must" }
 ,{ "not" }
 ,{ "exceed" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "constant" }
 ,{ "MaxAsync" , & fmt_text_b }
 ,{ "." }
 ,{ "Otherwise" }
 ,{ "the" }
 ,{ "method" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "error." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "successfully" }
 ,{ "initialized," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "uninitialized" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "exit()" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "pool" }
 ,{ "contains" }
 ,{ "async_count" , & fmt_text_b }
 ,{ "async" }
 ,{ "tokens." }
 ,{ "They" }
 ,{ "are" }
 ,{ "indexed" }
 ,{ "by" }
 ,{ "the" }
 ,{ "numbers" }
 ,{ "from" }
 ,{ "the" }
 ,{ "range" }
 ,{ "[0,async_count)" , & fmt_text_b }
 ,{ "." }
 ,{ "Some" }
 ,{ "of" }
 ,{ "them" }
 ,{ "comprise" }
 ,{ "the" }
 ,{ "\"wait" }
 ,{ "set\"." }
 ,{ "Initially" }
 ,{ "the" }
 ,{ "set" }
 ,{ "is" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "exit()" , & fmt_text_b }
 ,{ "uninitalizes" }
 ,{ "the" }
 ,{ "instance." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "getAsync()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "token" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "index." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "addWait()" , & fmt_text_b }
 ,{ "adds" }
 ,{ "the" }
 ,{ "token" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "index" }
 ,{ "to" }
 ,{ "the" }
 ,{ "wait" }
 ,{ "set." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "token" }
 ,{ "was" }
 ,{ "included" }
 ,{ "in" }
 ,{ "the" }
 ,{ "set," }
 ,{ "and" }
 ,{ "false" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "token" }
 ,{ "is" }
 ,{ "already" }
 ,{ "in" }
 ,{ "the" }
 ,{ "set." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "delWait()" , & fmt_text_b }
 ,{ "removes" }
 ,{ "the" }
 ,{ "token" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "index" }
 ,{ "from" }
 ,{ "the" }
 ,{ "wait" }
 ,{ "set." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "token" }
 ,{ "was" }
 ,{ "excluded" }
 ,{ "from" }
 ,{ "the" }
 ,{ "set," }
 ,{ "and" }
 ,{ "false" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "token" }
 ,{ "is" }
 ,{ "already" }
 ,{ "not" }
 ,{ "in" }
 ,{ "the" }
 ,{ "set." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "wait()" , & fmt_text_b }
 ,{ "waits" }
 ,{ "while" }
 ,{ "one" }
 ,{ "of" }
 ,{ "the" }
 ,{ "tokens" }
 ,{ "from" }
 ,{ "the" }
 ,{ "wait" }
 ,{ "set" }
 ,{ "is" }
 ,{ "finished," }
 ,{ "i.e." }
 ,{ "some" }
 ,{ "async" }
 ,{ "socket" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "started" }
 ,{ "with" }
 ,{ "this" }
 ,{ "token" }
 ,{ "and" }
 ,{ "it" }
 ,{ "is" }
 ,{ "finished." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "has" }
 ,{ "the" }
 ,{ "type" }
 ,{ "WaitResult" , & fmt_text_a , & ..#page_HCore_SysWait#link }
 ,{ "." }
 ,{ "The" }
 ,{ "value" }
 ,{ "is" }
 ,{ "the" }
 ,{ "index" }
 ,{ "of" }
 ,{ "the" }
 ,{ "token" }
 ,{ "been" }
 ,{ "finished," }
 ,{ "or" }
 ,{ "one" }
 ,{ "of" }
 ,{ "the" }
 ,{ "negative" }
 ,{ "special" }
 ,{ "values." }
 ,{ "Two" }
 ,{ "variants" }
 ,{ "of" }
 ,{ "wait()" , & fmt_text_b }
 ,{ "accepts" }
 ,{ "timeouts" }
 ,{ "of" }
 ,{ "different" }
 ,{ "kinds:" }
 ,{ "as" }
 ,{ "a" }
 ,{ "MSec" , & fmt_text_b }
 ,{ "or" }
 ,{ "as" }
 ,{ "a" }
 ,{ "TimeScope" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "special" }
 ,{ "return" }
 ,{ "values" }
 ,{ "have" }
 ,{ "the" }
 ,{ "following" }
 ,{ "meanings:" }
} , & fmt_text , & align_text } ;

Text b28_0 = { {
 { "Wait_error" , & fmt_list_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "function" }
 ,{ "has" }
 ,{ "failed" }
 ,{ "for" }
 ,{ "some" }
 ,{ "reason," }
} , & fmt_list , & align_list } ;

Text b28_1 = { {
 { "Wait_timeout" , & fmt_list_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "wait" }
 ,{ "is" }
 ,{ "terminated" }
 ,{ "by" }
 ,{ "timeout," }
} , & fmt_list , & align_list } ;

Text b28_2 = { {
 { "Wait_interrupt" , & fmt_list_b }
 ,{ "—" }
 ,{ "the" }
 ,{ "wait" }
 ,{ "is" }
 ,{ "terminated" }
 ,{ "by" }
 ,{ "the" }
 ,{ "interrupt()." , & fmt_list_b }
} , & fmt_list , & align_list } ;

TextList b28 = { {
 { '1.' , { { & b28_0 , null , ItemInner , ItemOuter } } }
 ,{ '2.' , { { & b28_1 , null , ItemInner , ItemOuter } } }
 ,{ '3.' , { { & b28_2 , null , ItemInner , ItemOuter } } }
} } ;

Text b29 = { {
 { "interrupt()" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "special" }
 ,{ "method." }
 ,{ "This" }
 ,{ "method" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "interrupt" }
 ,{ "the" }
 ,{ "wait()" , & fmt_text_b }
 ,{ "." }
 ,{ "Unlike" }
 ,{ "other" }
 ,{ "methods," }
 ,{ "this" }
 ,{ "one" }
 ,{ "can" }
 ,{ "be" }
 ,{ "called" }
 ,{ "in" }
 ,{ "parallel" }
 ,{ "to" }
 ,{ "other" }
 ,{ "method" }
 ,{ "calls." }
 ,{ "This" }
 ,{ "method" }
 ,{ "has" }
 ,{ "a" }
 ,{ "\"semaphore" }
 ,{ "behavior\"," }
 ,{ "i.e." }
 ,{ "several" }
 ,{ "calls" }
 ,{ "provide" }
 ,{ "several" }
 ,{ "interrupts." }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "waitAll()" , & fmt_text_b }
 ,{ "waits" }
 ,{ "while" }
 ,{ "all" }
 ,{ "tokens" }
 ,{ "from" }
 ,{ "the" }
 ,{ "wait" }
 ,{ "set" }
 ,{ "are" }
 ,{ "finished." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "0," }
 ,{ "if" }
 ,{ "it" }
 ,{ "has" }
 ,{ "happened." }
 ,{ "Otherwise" }
 ,{ "—" }
 ,{ "one" }
 ,{ "of" }
 ,{ "special" }
 ,{ "values." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore SysNet" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_list , outer_list , back_list }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCore_SysMemPage#page , & page_HCore_SysPlanInit#page };

Link link = { &page } ;

}

scope page_HCore_SysPlanInit {

Text b0 = { {
 { "HCore" }
 ,{ "SysPlanInit" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysPlanInit.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysPlanInit.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "is" }
 ,{ "the" }
 ,{ "target" }
 ,{ "part" }
 ,{ "of" }
 ,{ "the" }
 ,{ "plan" , & fmt_text_a , & ..#page_PlanInit#link }
 ,{ "initialization" , & fmt_text_a , & ..#page_PlanInit#link }
 ,{ "sequence." }
 ,{ "The" }
 ,{ "plan" }
 ,{ "initialization" }
 ,{ "node" }
 ,{ "tag" }
 ,{ "is" }
 ,{ "\"Sys\"" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "The" }
 ,{ "following" }
 ,{ "target" }
 ,{ "features" }
 ,{ "must" }
 ,{ "be" }
 ,{ "ready" }
 ,{ "for" }
 ,{ "use" }
 ,{ "after" }
 ,{ "the" }
 ,{ "Sys" , & fmt_text_b }
 ,{ "point" }
 ,{ "of" }
 ,{ "initialization:" }
} , & fmt_text , & align_text } ;

Text b4_0 = { {
 { "SysAtomic," }
} , & fmt_list , & align_list } ;

Text b4_1 = { {
 { "SysError," }
} , & fmt_list , & align_list } ;

Text b4_2 = { {
 { "SysMemPage," }
} , & fmt_list , & align_list } ;

Text b4_3 = { {
 { "SysProp," }
} , & fmt_list , & align_list } ;

Text b4_4 = { {
 { "SysSem," }
} , & fmt_list , & align_list } ;

Text b4_5 = { {
 { "SysTlsSlot," }
} , & fmt_list , & align_list } ;

Text b4_6 = { {
 { "Sys::GetTaskId()" }
 ,{ "from" }
 ,{ "the" }
 ,{ "SysTask.h" }
 ,{ "." }
} , & fmt_list , & align_list } ;

TextList b4 = { {
 { '1.' , { { & b4_0 , null , ItemInner , ItemOuter } } }
 ,{ '2.' , { { & b4_1 , null , ItemInner , ItemOuter } } }
 ,{ '3.' , { { & b4_2 , null , ItemInner , ItemOuter } } }
 ,{ '4.' , { { & b4_3 , null , ItemInner , ItemOuter } } }
 ,{ '5.' , { { & b4_4 , null , ItemInner , ItemOuter } } }
 ,{ '6.' , { { & b4_5 , null , ItemInner , ItemOuter } } }
 ,{ '7.' , { { & b4_6 , null , ItemInner , ItemOuter } } }
} } ;

Text b5 = { {
 { "See" }
 ,{ "this" , & fmt_text_a }
 ,{ "document" , & fmt_text_a }
 ,{ "for" }
 ,{ "the" }
 ,{ "brief" }
 ,{ "of" }
 ,{ "the" }
 ,{ "initialization" }
 ,{ "requirements." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore SysPlanInit" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_list , outer_list , back_list }
 ,{ & b5 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCore_SysNet#page , & page_HCore_SysProp#page };

Link link = { &page } ;

}

scope page_HCore_SysProp {

Text b0 = { {
 { "HCore" }
 ,{ "SysProp" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysProp.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysProp.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "provides" }
 ,{ "some" }
 ,{ "target" }
 ,{ "properties." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "GetCpuCount()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "CPU" }
 ,{ "cores." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "GetSpinCount()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "recommended" }
 ,{ "\"spin" }
 ,{ "count\"." }
 ,{ "This" }
 ,{ "value" }
 ,{ "is" }
 ,{ "used" }
 ,{ "in" }
 ,{ "the" }
 ,{ "Mutex" , & fmt_text_b }
 ,{ "implementation" }
 ,{ "for" }
 ,{ "spinning." }
 ,{ "It" }
 ,{ "must" }
 ,{ "be" }
 ,{ "null" }
 ,{ "for" }
 ,{ "the" }
 ,{ "single-core" }
 ,{ "processors." }
 ,{ "For" }
 ,{ "multi-core" }
 ,{ "it" }
 ,{ "has" }
 ,{ "the" }
 ,{ "value" }
 ,{ "of" }
 ,{ "order" }
 ,{ "1000" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore SysProp" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCore_SysPlanInit#page , & page_HCore_SysSem#page };

Link link = { &page } ;

}

scope page_HCore_SysSem {

Text b0 = { {
 { "HCore" }
 ,{ "SysSem" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysSem.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysSem.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "provides" }
 ,{ "an" }
 ,{ "OS" }
 ,{ "backed" }
 ,{ "semaphore." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "To" }
 ,{ "create" }
 ,{ "a" }
 ,{ "semaphore" }
 ,{ "you" }
 ,{ "create" }
 ,{ "an" }
 ,{ "instance" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "Sem" , & fmt_text_b }
 ,{ "and" }
 ,{ "initialize" }
 ,{ "it." }
 ,{ "Then" }
 ,{ "you" }
 ,{ "use" }
 ,{ "its" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "do" }
 ,{ "semaphore" }
 ,{ "operations." }
 ,{ "Finally," }
 ,{ "you" }
 ,{ "uninitialize" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "Copying" }
 ,{ "of" }
 ,{ "the" }
 ,{ "instances" }
 ,{ "is" }
 ,{ "prohibited." }
 ,{ "The" }
 ,{ "private" }
 ,{ "content" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "is" }
 ,{ "target-dependent." }
 ,{ "Semaphore" }
 ,{ "methods," }
 ,{ "except" }
 ,{ "init()" , & fmt_text_b }
 ,{ "," }
 ,{ "do" }
 ,{ "not" }
 ,{ "produce" }
 ,{ "errors." }
 ,{ "They" }
 ,{ "must" }
 ,{ "be" }
 ,{ "successful" }
 ,{ "or" }
 ,{ "call" }
 ,{ "abort." }
 ,{ "For" }
 ,{ "example," }
 ,{ "it" }
 ,{ "must" }
 ,{ "abort" }
 ,{ "on" }
 ,{ "the" }
 ,{ "counter" }
 ,{ "overflow." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "init()" , & fmt_text_b }
 ,{ "initialize" }
 ,{ "the" }
 ,{ "semaphore" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "counter" }
 ,{ "value." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "successfully" }
 ,{ "initialized," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "uninitialized" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "exit()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "exit()" , & fmt_text_b }
 ,{ "uninitialize" }
 ,{ "the" }
 ,{ "semaphore." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "give()" , & fmt_text_b }
 ,{ "\"gives\"" }
 ,{ "the" }
 ,{ "semaphore" }
 ,{ "counter" }
 ,{ "(i.e." }
 ,{ "increments" }
 ,{ "it)." }
 ,{ "It" }
 ,{ "may" }
 ,{ "release" }
 ,{ "a" }
 ,{ "thread," }
 ,{ "blocked" }
 ,{ "on" }
 ,{ "the" }
 ,{ "semaphore." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "give_many()" , & fmt_text_b }
 ,{ "\"gives\"" }
 ,{ "the" }
 ,{ "semaphore" }
 ,{ "counter" }
 ,{ "many" }
 ,{ "times" }
 ,{ "(i.e." }
 ,{ "increases" }
 ,{ "it)" }
 ,{ "by" }
 ,{ "the" }
 ,{ "given" }
 ,{ "value." }
 ,{ "It" }
 ,{ "may" }
 ,{ "release" }
 ,{ "multiple" }
 ,{ "threads," }
 ,{ "blocked" }
 ,{ "on" }
 ,{ "the" }
 ,{ "semaphore." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "try_take()" , & fmt_text_b }
 ,{ "tries" }
 ,{ "to" }
 ,{ "\"take\"" }
 ,{ "the" }
 ,{ "semaphore," }
 ,{ "i.e." }
 ,{ "tries" }
 ,{ "to" }
 ,{ "decrement" }
 ,{ "its" }
 ,{ "counter." }
 ,{ "If" }
 ,{ "the" }
 ,{ "counter" }
 ,{ "is" }
 ,{ "not" }
 ,{ "null," }
 ,{ "it" }
 ,{ "is" }
 ,{ "decremented" }
 ,{ "and" }
 ,{ "the" }
 ,{ "true" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
 ,{ "Otherwise" }
 ,{ "the" }
 ,{ "false" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "take()" , & fmt_text_b }
 ,{ "\"takes\"" }
 ,{ "the" }
 ,{ "semaphore" }
 ,{ "(i.e." }
 ,{ "decrements" }
 ,{ "its" }
 ,{ "counter)." }
 ,{ "If" }
 ,{ "the" }
 ,{ "counter" }
 ,{ "is" }
 ,{ "null," }
 ,{ "the" }
 ,{ "calling" }
 ,{ "thread" }
 ,{ "is" }
 ,{ "blocked" }
 ,{ "until" }
 ,{ "the" }
 ,{ "operation" }
 ,{ "becomes" }
 ,{ "possible." }
 ,{ "The" }
 ,{ "thread" }
 ,{ "may" }
 ,{ "be" }
 ,{ "blocked" }
 ,{ "infinitely." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "take(MSec" , & fmt_text_b }
 ,{ "timeout)" , & fmt_text_b }
 ,{ "and" }
 ,{ "take(TimeScope" , & fmt_text_b }
 ,{ "time_scope)" , & fmt_text_b }
 ,{ "\"takes\"" }
 ,{ "the" }
 ,{ "semaphore" }
 ,{ "(i.e." }
 ,{ "decrements" }
 ,{ "its" }
 ,{ "counter)." }
 ,{ "But" }
 ,{ "it" }
 ,{ "blocks" }
 ,{ "the" }
 ,{ "calling" }
 ,{ "thread" }
 ,{ "up" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "timeout." }
 ,{ "If" }
 ,{ "the" }
 ,{ "semaphore" }
 ,{ "was" }
 ,{ "taken" }
 ,{ "the" }
 ,{ "method" }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "." }
 ,{ "Otherwise" }
 ,{ "the" }
 ,{ "method" }
 ,{ "returns" }
 ,{ "false" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "means" }
 ,{ "the" }
 ,{ "semaphore" }
 ,{ "was" }
 ,{ "not" }
 ,{ "taken" }
 ,{ "and" }
 ,{ "the" }
 ,{ "method" }
 ,{ "call" }
 ,{ "is" }
 ,{ "finished" }
 ,{ "because" }
 ,{ "the" }
 ,{ "timeout" }
 ,{ "is" }
 ,{ "expired." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "Internally," }
 ,{ "Sem" , & fmt_text_b }
 ,{ "may" }
 ,{ "contain" }
 ,{ "only" }
 ,{ "some" }
 ,{ "\"handle\"" }
 ,{ "and" }
 ,{ "use" }
 ,{ "global" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "deal" }
 ,{ "with" }
 ,{ "it:" }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore SysSem" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCore_SysProp#page , & page_HCore_SysTask#page };

Link link = { &page } ;

}

scope page_HCore_SysTask {

Text b0 = { {
 { "HCore" }
 ,{ "SysTask" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysTask.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysTask.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "provides" }
 ,{ "OS" }
 ,{ "backed" }
 ,{ "thread" }
 ,{ "functions." }
 ,{ "We" }
 ,{ "often" }
 ,{ "use" }
 ,{ "the" }
 ,{ "term" }
 ,{ "task" }
 ,{ "instead" }
 ,{ "of" }
 ,{ "thread." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "To" }
 ,{ "run" }
 ,{ "a" }
 ,{ "task" }
 ,{ "you" }
 ,{ "create" }
 ,{ "an" }
 ,{ "instance" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "TaskEntry" , & fmt_text_b }
 ,{ "and" }
 ,{ "initialize" }
 ,{ "it." }
 ,{ "The" }
 ,{ "you" }
 ,{ "can" }
 ,{ "run" }
 ,{ "a" }
 ,{ "task" }
 ,{ "using" }
 ,{ "the" }
 ,{ "method" }
 ,{ "create()" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "instance" }
 ,{ "may" }
 ,{ "be" }
 ,{ "deleted" }
 ,{ "once" }
 ,{ "it's" }
 ,{ "not" }
 ,{ "in" }
 ,{ "use" }
 ,{ "(it" }
 ,{ "may" }
 ,{ "be" }
 ,{ "used" }
 ,{ "by" }
 ,{ "the" }
 ,{ "running" }
 ,{ "task)." }
 ,{ "Copying" }
 ,{ "of" }
 ,{ "the" }
 ,{ "instances" }
 ,{ "is" }
 ,{ "prohibited." }
 ,{ "The" }
 ,{ "private" }
 ,{ "content" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "is" }
 ,{ "target-dependent." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "init()" , & fmt_text_b }
 ,{ "initialize" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "task" }
 ,{ "entry" }
 ,{ "function." }
 ,{ "It" }
 ,{ "is" }
 ,{ "a" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "function." }
 ,{ "Once" }
 ,{ "the" }
 ,{ "task" }
 ,{ "is" }
 ,{ "started," }
 ,{ "this" }
 ,{ "function" }
 ,{ "is" }
 ,{ "called" }
 ,{ "in" }
 ,{ "the" }
 ,{ "task" }
 ,{ "context" }
 ,{ "with" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "—" }
 ,{ "the" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "This" }
 ,{ "method" }
 ,{ "is" }
 ,{ "always" }
 ,{ "successful." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "create()" , & fmt_text_b }
 ,{ "runs" }
 ,{ "the" }
 ,{ "task." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "YieldTask()" , & fmt_text_b }
 ,{ "gives" }
 ,{ "control" }
 ,{ "to" }
 ,{ "another" }
 ,{ "running" }
 ,{ "task," }
 ,{ "if" }
 ,{ "any." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "SleepTask()" , & fmt_text_b }
 ,{ "sleeps" }
 ,{ "the" }
 ,{ "current" }
 ,{ "task" }
 ,{ "by" }
 ,{ "the" }
 ,{ "specified" }
 ,{ "number" }
 ,{ "of" }
 ,{ "milliseconds." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "GetTaskId()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "current" }
 ,{ "task" }
 ,{ "identity." }
 ,{ "It" }
 ,{ "is" }
 ,{ "represented" }
 ,{ "by" }
 ,{ "the" }
 ,{ "type" }
 ,{ "TaskIdType" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "type" }
 ,{ "must" }
 ,{ "be" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type," }
 ,{ "and" }
 ,{ "it" }
 ,{ "must" }
 ,{ "not" }
 ,{ "be" }
 ,{ "wider" }
 ,{ "than" }
 ,{ "the" }
 ,{ "Atomic::Type" , & fmt_text_a , & ..#page_AnyCore_SysAtomic#link }
 ,{ "." }
 ,{ "Task" }
 ,{ "identity" }
 ,{ "uniquely" }
 ,{ "identifies" }
 ,{ "the" }
 ,{ "task" }
 ,{ "among" }
 ,{ "running" }
 ,{ "tasks." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore SysTask" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCore_SysSem#page , & page_HCore_SysTime#page };

Link link = { &page } ;

}

scope page_HCore_SysTime {

Text b0 = { {
 { "HCore" }
 ,{ "SysTime" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysTime.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysTime.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "provides" }
 ,{ "OS" }
 ,{ "backed" }
 ,{ "time" }
 ,{ "functions." }
 ,{ "CCore" , & fmt_text_b }
 ,{ "uses" }
 ,{ "three" }
 ,{ "time" }
 ,{ "functions," }
 ,{ "which" }
 ,{ "provides" }
 ,{ "continuous" }
 ,{ "times" }
 ,{ "with" }
 ,{ "different" }
 ,{ "resolutions." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "GetMSecTime()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "a" }
 ,{ "millisecond" }
 ,{ "time." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "has" }
 ,{ "the" }
 ,{ "type" }
 ,{ "MSecTimeType" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "must" }
 ,{ "be" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "GetSecTime()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "a" }
 ,{ "second" }
 ,{ "time." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "has" }
 ,{ "the" }
 ,{ "type" }
 ,{ "SecTimeType" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "must" }
 ,{ "be" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "GetClockTime()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "a" }
 ,{ "\"clock\"" }
 ,{ "time." }
 ,{ "It" }
 ,{ "must" }
 ,{ "be" }
 ,{ "a" }
 ,{ "fastest" }
 ,{ "available" }
 ,{ "time" }
 ,{ "resolution" }
 ,{ "on" }
 ,{ "the" }
 ,{ "target," }
 ,{ "with" }
 ,{ "resolution" }
 ,{ "at" }
 ,{ "least" }
 ,{ "1" }
 ,{ "microsecond." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "has" }
 ,{ "the" }
 ,{ "type" }
 ,{ "ClockTimeType" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "must" }
 ,{ "be" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type." }
 ,{ "Its" }
 ,{ "recommended," }
 ,{ "that" }
 ,{ "this" }
 ,{ "type" }
 ,{ "has" }
 ,{ "64" }
 ,{ "bits" }
 ,{ "width." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore SysTime" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCore_SysTask#page , & page_HCore_SysTlsSlot#page };

Link link = { &page } ;

}

scope page_HCore_SysTlsSlot {

Text b0 = { {
 { "HCore" }
 ,{ "SysTlsSlot" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysTlsSlot.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysTlsSlot.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "part" }
 ,{ "provides" }
 ,{ "the" }
 ,{ "OS" }
 ,{ "backed" }
 ,{ "thread" }
 ,{ "local" }
 ,{ "storage" }
 ,{ "support." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "To" }
 ,{ "allocate" }
 ,{ "a" }
 ,{ "system" }
 ,{ "TLS" }
 ,{ "slot" }
 ,{ "you" }
 ,{ "create" }
 ,{ "an" }
 ,{ "instance" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "TlsSlot" , & fmt_text_b }
 ,{ "and" }
 ,{ "initialize" }
 ,{ "it." }
 ,{ "Then" }
 ,{ "you" }
 ,{ "can" }
 ,{ "use" }
 ,{ "methods" }
 ,{ "set()" , & fmt_text_b }
 ,{ "and" }
 ,{ "get()" , & fmt_text_b }
 ,{ "to" }
 ,{ "access" }
 ,{ "a" }
 ,{ "thread" }
 ,{ "variable" }
 ,{ "in" }
 ,{ "this" }
 ,{ "slot" }
 ,{ "of" }
 ,{ "the" }
 ,{ "type" }
 ,{ "void" , & fmt_text_b }
 ,{ "*" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "initial" }
 ,{ "value" }
 ,{ "of" }
 ,{ "this" }
 ,{ "variable" }
 ,{ "is" }
 ,{ "null." }
 ,{ "Each" }
 ,{ "thread" }
 ,{ "of" }
 ,{ "execution" }
 ,{ "has" }
 ,{ "its" }
 ,{ "own" }
 ,{ "independent" }
 ,{ "copy" }
 ,{ "of" }
 ,{ "this" }
 ,{ "variable." }
 ,{ "Finally," }
 ,{ "you" }
 ,{ "uninitialize" }
 ,{ "the" }
 ,{ "instance." }
 ,{ "Copying" }
 ,{ "of" }
 ,{ "the" }
 ,{ "instances" }
 ,{ "is" }
 ,{ "prohibited." }
 ,{ "The" }
 ,{ "private" }
 ,{ "content" }
 ,{ "of" }
 ,{ "the" }
 ,{ "structure" }
 ,{ "is" }
 ,{ "target-dependent." }
 ,{ "TLS" }
 ,{ "methods," }
 ,{ "except" }
 ,{ "init()" , & fmt_text_b }
 ,{ "," }
 ,{ "do" }
 ,{ "not" }
 ,{ "produce" }
 ,{ "errors." }
 ,{ "They" }
 ,{ "must" }
 ,{ "be" }
 ,{ "successful" }
 ,{ "or" }
 ,{ "call" }
 ,{ "abort." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "init()" , & fmt_text_b }
 ,{ "initialize" }
 ,{ "the" }
 ,{ "TLS" }
 ,{ "slot." }
 ,{ "The" }
 ,{ "error" }
 ,{ "code" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "If" }
 ,{ "the" }
 ,{ "object" }
 ,{ "is" }
 ,{ "successfully" }
 ,{ "initialized," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "uninitialized" }
 ,{ "by" }
 ,{ "the" }
 ,{ "method" }
 ,{ "exit()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "exit()" , & fmt_text_b }
 ,{ "uninitialize" }
 ,{ "the" }
 ,{ "TLS" }
 ,{ "slot." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "get()" , & fmt_text_b }
 ,{ "gets" }
 ,{ "the" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "thread" }
 ,{ "variable." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "set()" , & fmt_text_b }
 ,{ "sets" }
 ,{ "the" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "thread" }
 ,{ "variable." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "Internally," }
 ,{ "TlsSlot" , & fmt_text_b }
 ,{ "may" }
 ,{ "contain" }
 ,{ "only" }
 ,{ "some" }
 ,{ "\"TLS" }
 ,{ "index\"" }
 ,{ "and" }
 ,{ "use" }
 ,{ "global" }
 ,{ "methods" }
 ,{ "to" }
 ,{ "deal" }
 ,{ "with" }
 ,{ "it:" }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore SysTlsSlot" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCore_SysTime#page , & page_HCore_SysWait#page };

Link link = { &page } ;

}

scope page_HCore_SysWait {

Text b0 = { {
 { "HCore" }
 ,{ "SysWait" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/sys/SysWait.h" , & fmt_text_Files_b }
 ,{ "CCore/src/sys/SysWait.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "SysWait" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "enumeration," }
 ,{ "which" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "represent" }
 ,{ "an" }
 ,{ "async" }
 ,{ "function" }
 ,{ "result." }
 ,{ "It" }
 ,{ "is" }
 ,{ "used" }
 ,{ "in" }
 ,{ "SysFile" , & fmt_text_b }
 ,{ "and" }
 ,{ "SysNet" , & fmt_text_b }
 ,{ "async" }
 ,{ "system" }
 ,{ "interfaces." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HCore SysWait" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCore_SysTlsSlot#page , & page_HeapEngine#page };

Link link = { &page } ;

}

scope page_HeapEngine {

Text b0 = { {
 { "HeapEngine" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/HeapEngine.h" , & fmt_text_Files_b }
 ,{ "CCore/src/HeapEngine.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "HeapEngine" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "fully-featured" }
 ,{ "heap" }
 ,{ "class." }
 ,{ "It" }
 ,{ "is" }
 ,{ "a" }
 ,{ "Resource" , & fmt_text_b }
 ,{ "Provider" , & fmt_text_b }
 ,{ "Type" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "implements" }
 ,{ "the" }
 ,{ "heap" }
 ,{ "functionality" }
 ,{ "using" }
 ,{ "another" }
 ,{ "heap" }
 ,{ "class." }
 ,{ "HeapEngine" , & fmt_text_b }
 ,{ "adds" }
 ,{ "three" }
 ,{ "important" }
 ,{ "things:" }
 ,{ "mutex" , & fmt_text_b }
 ,{ "protection," }
 ,{ "statistic" }
 ,{ "accounting" }
 ,{ "and" }
 ,{ "usage" }
 ,{ "limitation." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "The" }
 ,{ "name" , & fmt_text_b }
 ,{ "in" }
 ,{ "constructor" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "name" }
 ,{ "the" }
 ,{ "mutex" , & fmt_text_b }
 ,{ "." }
 ,{ "Other" }
 ,{ "arguments" }
 ,{ "are" }
 ,{ "used" }
 ,{ "to" }
 ,{ "initialize" }
 ,{ "the" }
 ,{ "heap" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "The" }
 ,{ "semantic" }
 ,{ "of" }
 ,{ "methods" }
 ,{ "are" }
 ,{ "the" }
 ,{ "same" }
 ,{ "as" }
 ,{ "of" }
 ,{ "global" }
 ,{ "heap" }
 ,{ "functions" }
 ,{ "Mem...()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "setLim()" , & fmt_text_b }
 ,{ "sets" }
 ,{ "the" }
 ,{ "limit" }
 ,{ "on" }
 ,{ "memory" }
 ,{ "allocation." }
 ,{ "Value" }
 ,{ "zero" }
 ,{ "means" }
 ,{ "no" }
 ,{ "limit." }
 ,{ "If" }
 ,{ "the" }
 ,{ "limit" }
 ,{ "is" }
 ,{ "set," }
 ,{ "then" }
 ,{ "the" }
 ,{ "HeapEngine" , & fmt_text_b }
 ,{ "will" }
 ,{ "keep" }
 ,{ "the" }
 ,{ "total" }
 ,{ "allocated" }
 ,{ "memory" }
 ,{ "below" }
 ,{ "this" }
 ,{ "limit." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "getStat()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "current" }
 ,{ "memory" }
 ,{ "allocation" }
 ,{ "statistics." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "getPeak()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "peak" }
 ,{ "memory" }
 ,{ "allocation" }
 ,{ "statistics." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "alloc()" , & fmt_text_b }
 ,{ "tries" }
 ,{ "to" }
 ,{ "allocate" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block." }
 ,{ "On" }
 ,{ "success" }
 ,{ "it" }
 ,{ "returns" }
 ,{ "its" }
 ,{ "address," }
 ,{ "on" }
 ,{ "failure" }
 ,{ "—" }
 ,{ "null." }
 ,{ "Even" }
 ,{ "if" }
 ,{ "the" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "null," }
 ,{ "the" }
 ,{ "address" }
 ,{ "of" }
 ,{ "the" }
 ,{ "allocated" }
 ,{ "memory" }
 ,{ "block" }
 ,{ "is" }
 ,{ "not" }
 ,{ "null" }
 ,{ "and" }
 ,{ "its" }
 ,{ "actual" }
 ,{ "length" }
 ,{ "too." }
 ,{ "The" }
 ,{ "actual" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "allocated" }
 ,{ "memory" }
 ,{ "block" }
 ,{ "may" }
 ,{ "be" }
 ,{ "a" }
 ,{ "slightly" }
 ,{ "greater" }
 ,{ "than" }
 ,{ "the" }
 ,{ "len" , & fmt_text_b }
 ,{ "." }
 ,{ "Memory" }
 ,{ "is" }
 ,{ "aligned," }
 ,{ "but" }
 ,{ "this" }
 ,{ "is" }
 ,{ "ensured" }
 ,{ "by" }
 ,{ "the" }
 ,{ "underlying" }
 ,{ "class" }
 ,{ "Heap" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "In" }
 ,{ "the" }
 ,{ "remaining" }
 ,{ "four" }
 ,{ "methods" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "mem" , & fmt_text_b }
 ,{ "may" }
 ,{ "be" }
 ,{ "null," }
 ,{ "in" }
 ,{ "this" }
 ,{ "case" }
 ,{ "methods" }
 ,{ "do" }
 ,{ "nothing." }
 ,{ "Otherwise" }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "an" }
 ,{ "address" }
 ,{ "of" }
 ,{ "a" }
 ,{ "previously" }
 ,{ "allocated" }
 ,{ "memory" }
 ,{ "block." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "getLen()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "actual" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "allocated" }
 ,{ "memory" }
 ,{ "block." }
 ,{ "If" }
 ,{ "the" }
 ,{ "mem" , & fmt_text_b }
 ,{ "is" }
 ,{ "null," }
 ,{ "it" }
 ,{ "returns" }
 ,{ "null." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "free()" , & fmt_text_b }
 ,{ "releases" }
 ,{ "the" }
 ,{ "allocated" }
 ,{ "memory" }
 ,{ "block." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "extend()" , & fmt_text_b }
 ,{ "extends" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block," }
 ,{ "if" }
 ,{ "it" }
 ,{ "is" }
 ,{ "possible." }
 ,{ "The" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "required" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "new" }
 ,{ "block." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "means" }
 ,{ "the" }
 ,{ "success" }
 ,{ "of" }
 ,{ "the" }
 ,{ "operation." }
 ,{ "If" }
 ,{ "the" }
 ,{ "mem" , & fmt_text_b }
 ,{ "is" }
 ,{ "null," }
 ,{ "it" }
 ,{ "returns" }
 ,{ "false" , & fmt_text_b }
 ,{ "." }
 ,{ "extend()" , & fmt_text_b }
 ,{ "is" }
 ,{ "always" }
 ,{ "successful" }
 ,{ "(but" }
 ,{ "does" }
 ,{ "nothing)" }
 ,{ "if" }
 ,{ "the" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "greater" }
 ,{ "than" }
 ,{ "the" }
 ,{ "actual" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "shrink()" , & fmt_text_b }
 ,{ "shrinks" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block." }
 ,{ "The" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "required" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "new" }
 ,{ "block." }
 ,{ "The" }
 ,{ "return" }
 ,{ "value" }
 ,{ "means" }
 ,{ "the" }
 ,{ "success" }
 ,{ "of" }
 ,{ "the" }
 ,{ "operation." }
 ,{ "If" }
 ,{ "the" }
 ,{ "mem" , & fmt_text_b }
 ,{ "is" }
 ,{ "null," }
 ,{ "it" }
 ,{ "returns" }
 ,{ "false" , & fmt_text_b }
 ,{ "." }
 ,{ "shrink()" , & fmt_text_b }
 ,{ "fails" }
 ,{ "only" }
 ,{ "if" }
 ,{ "the" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "greater" }
 ,{ "than" }
 ,{ "the" }
 ,{ "actual" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "Heap" }
} , & fmt_h4 , & align_h4 } ;

Text b15 = { {
 { "The" }
 ,{ "underlying" }
 ,{ "class" }
 ,{ "Heap" , & fmt_text_b }
 ,{ "must" }
 ,{ "provide" }
 ,{ "the" }
 ,{ "following" }
 ,{ "functionality:" }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "It" }
 ,{ "may" }
 ,{ "have" }
 ,{ "several" }
 ,{ "constructors" }
 ,{ "with" }
 ,{ "different" }
 ,{ "arguments" }
 ,{ "as" }
 ,{ "necessary." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "It" }
 ,{ "is" }
 ,{ "highly" }
 ,{ "recommended" }
 ,{ "that" }
 ,{ "the" }
 ,{ "destructor" }
 ,{ "checks" }
 ,{ "memory" }
 ,{ "leaks" }
 ,{ "and" }
 ,{ "abort" }
 ,{ "execution" }
 ,{ "if" }
 ,{ "there" }
 ,{ "is" }
 ,{ "unreleased" }
 ,{ "memory." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "alloc()" , & fmt_text_b }
 ,{ "tries" }
 ,{ "to" }
 ,{ "allocate" }
 ,{ "a" }
 ,{ "memory." }
 ,{ "On" }
 ,{ "failure" }
 ,{ "it" }
 ,{ "returns" }
 ,{ "a" }
 ,{ "null" }
 ,{ "Space" , & fmt_text_a , & ..#page_Space#link }
 ,{ "object." }
 ,{ "Otherwise" }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "Space" , & fmt_text_b }
 ,{ "object" }
 ,{ "contains" }
 ,{ "non-zero" }
 ,{ "memory" }
 ,{ "pointer" }
 ,{ "and" }
 ,{ "non-zero" }
 ,{ "memory" }
 ,{ "length," }
 ,{ "which" }
 ,{ "is" }
 ,{ "greater" }
 ,{ "or" }
 ,{ "equal" }
 ,{ "than" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "len" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "Other" }
 ,{ "methods" }
 ,{ "require" }
 ,{ "a" }
 ,{ "valid" }
 ,{ "non-null" }
 ,{ "pointer" }
 ,{ "mem" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "getLen()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "free()" , & fmt_text_b }
 ,{ "releases" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block," }
 ,{ "this" }
 ,{ "method" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "extend()" , & fmt_text_b }
 ,{ "extends" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block" }
 ,{ "up" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "len" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "possible." }
 ,{ "If" }
 ,{ "the" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "greater" }
 ,{ "than" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block," }
 ,{ "the" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "successful," }
 ,{ "but" }
 ,{ "change" }
 ,{ "nothing." }
 ,{ "The" }
 ,{ "resulting" }
 ,{ "DeltaLen" , & fmt_text_a , & ..#page_Space#link }
 ,{ "object" }
 ,{ "has" }
 ,{ "the" }
 ,{ "field" }
 ,{ "ok" , & fmt_text_b }
 ,{ "," }
 ,{ "which" }
 ,{ "indicates" }
 ,{ "success" }
 ,{ "of" }
 ,{ "the" }
 ,{ "operation," }
 ,{ "and" }
 ,{ "the" }
 ,{ "field" }
 ,{ "delta" , & fmt_text_b }
 ,{ "," }
 ,{ "equals" }
 ,{ "the" }
 ,{ "difference" }
 ,{ "between" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "new" }
 ,{ "block" }
 ,{ "and" }
 ,{ "the" }
 ,{ "old" }
 ,{ "one." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "shrink()" , & fmt_text_b }
 ,{ "shrinks" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block" }
 ,{ "down" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "len" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "operation" }
 ,{ "is" }
 ,{ "successful" }
 ,{ "only" }
 ,{ "if" }
 ,{ "the" }
 ,{ "len" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "greater" }
 ,{ "than" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "memory" }
 ,{ "block." }
 ,{ "The" }
 ,{ "resulting" }
 ,{ "DeltaLen" , & fmt_text_b }
 ,{ "object" }
 ,{ "has" }
 ,{ "the" }
 ,{ "field" }
 ,{ "ok" , & fmt_text_b }
 ,{ "," }
 ,{ "which" }
 ,{ "indicates" }
 ,{ "success" }
 ,{ "of" }
 ,{ "the" }
 ,{ "operation," }
 ,{ "and" }
 ,{ "the" }
 ,{ "field" }
 ,{ "delta" , & fmt_text_b }
 ,{ "," }
 ,{ "equals" }
 ,{ "the" }
 ,{ "difference" }
 ,{ "between" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "old" }
 ,{ "block" }
 ,{ "and" }
 ,{ "the" }
 ,{ "new" }
 ,{ "one." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> HeapEngine" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HCore_SysWait#page , & page_Init#page };

Link link = { &page } ;

}

scope page_Init {

Text b0 = { {
 { "Init" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/gadget/Init.h" , & fmt_text_Files_b }
 ,{ "CCore/src/gadget/Init.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "InitExitObject" }
} , & fmt_h4 , & align_h4 } ;

Text b3 = { {
 { "InitExitObject" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "class" }
 ,{ "for" }
 ,{ "the" }
 ,{ "manual" }
 ,{ "object" }
 ,{ "initialization/termination." }
 ,{ "It" }
 ,{ "is" }
 ,{ "a" }
 ,{ "POD" }
 ,{ "type," }
 ,{ "which" }
 ,{ "contains" }
 ,{ "inside" }
 ,{ "the" }
 ,{ "storage" }
 ,{ "room" }
 ,{ "for" }
 ,{ "the" }
 ,{ "object" }
 ,{ "and" }
 ,{ "the" }
 ,{ "object" }
 ,{ "pointer." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "You" }
 ,{ "should" }
 ,{ "not" }
 ,{ "touch" }
 ,{ "data" }
 ,{ "members" }
 ,{ "directly." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "Method" }
 ,{ "init()" , & fmt_text_b }
 ,{ "creates" }
 ,{ "the" }
 ,{ "object," }
 ,{ "exit()" , & fmt_text_b }
 ,{ "destroys" }
 ,{ "it." }
 ,{ "Using" }
 ,{ "these" }
 ,{ "methods" }
 ,{ "you" }
 ,{ "can" }
 ,{ "manually" }
 ,{ "control" }
 ,{ "the" }
 ,{ "life-time" }
 ,{ "of" }
 ,{ "the" }
 ,{ "object" }
 ,{ "and" }
 ,{ "recreate" }
 ,{ "it" }
 ,{ "if" }
 ,{ "necessary." }
 ,{ "To" }
 ,{ "use" }
 ,{ "InitExitObject" , & fmt_text_b }
 ,{ "the" }
 ,{ "prior" }
 ,{ "value" }
 ,{ "initialization" }
 ,{ "is" }
 ,{ "required." }
 ,{ "You" }
 ,{ "can" }
 ,{ "do" }
 ,{ "it" }
 ,{ "using" }
 ,{ "the" }
 ,{ "default" }
 ,{ "initialization" }
 ,{ "or" }
 ,{ "using" }
 ,{ "the" }
 ,{ "method" }
 ,{ "clean()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "For" }
 ,{ "example," }
 ,{ "you" }
 ,{ "can" }
 ,{ "create" }
 ,{ "a" }
 ,{ "global" }
 ,{ "variable:" }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "and" }
 ,{ "then" }
 ,{ "initialize" }
 ,{ "it" }
 ,{ "using" }
 ,{ "the" }
 ,{ "method" }
 ,{ "init()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "InitExitObject" , & fmt_text_b }
 ,{ "implements" }
 ,{ "the" }
 ,{ "Object-Pointer" , & fmt_text_b }
 ,{ "Interface" , & fmt_text_b }
 ,{ "to" }
 ,{ "check" }
 ,{ "the" }
 ,{ "state" }
 ,{ "of" }
 ,{ "the" }
 ,{ "object" }
 ,{ "and" }
 ,{ "access" }
 ,{ "it:" }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "InitStorage" }
} , & fmt_h4 , & align_h4 } ;

Text b10 = { {
 { "InitStorage" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "simple" }
 ,{ "structure," }
 ,{ "which" }
 ,{ "provides" }
 ,{ "an" }
 ,{ "aligned" }
 ,{ "storage" }
 ,{ "to" }
 ,{ "create" }
 ,{ "objects" }
 ,{ "inside:" }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "getMem()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "raw" }
 ,{ "memory" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "storage." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "getPlace()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "Place" , & fmt_text_b }
 ,{ "of" }
 ,{ "the" }
 ,{ "storage." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "NoObjectAbort()" }
} , & fmt_h4 , & align_h4 } ;

Text b14 = { {
 { "NoObjectAbort()" , & fmt_text_b }
 ,{ "is" }
 ,{ "an" }
 ,{ "Abort" , & fmt_text_b }
 ,{ "function" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "abort" }
 ,{ "the" }
 ,{ "execution" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "access" }
 ,{ "to" }
 ,{ "an" }
 ,{ "absent" }
 ,{ "object." }
 ,{ "You" }
 ,{ "can" }
 ,{ "use" }
 ,{ "it" }
 ,{ "in" }
 ,{ "similar" }
 ,{ "situations." }
 ,{ "It" }
 ,{ "calls" }
 ,{ "Abort()" , & fmt_text_b }
 ,{ "with" }
 ,{ "a" }
 ,{ "proper" }
 ,{ "diagnostic" }
 ,{ "message." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Init" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b14 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_HeapEngine#page , & page_InputUtils#page };

Link link = { &page } ;

}

scope page_InputUtils {

Text b0 = { {
 { "InputUtils" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/InputUtils.h" , & fmt_text_Files_b }
 ,{ "CCore/src/InputUtils.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "file" }
 ,{ "contains" }
 ,{ "a" }
 ,{ "set" }
 ,{ "of" }
 ,{ "simple" }
 ,{ "tools" }
 ,{ "to" }
 ,{ "work" }
 ,{ "with" }
 ,{ "console" }
 ,{ "input." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Utilities" }
} , & fmt_h4 , & align_h4 } ;

Text b4 = { {
 { "PutSymbol()" , & fmt_text_b }
 ,{ "puts" }
 ,{ "the" }
 ,{ "symbol" }
 ,{ "at" }
 ,{ "the" }
 ,{ "end" }
 ,{ "of" }
 ,{ "the" }
 ,{ "character" }
 ,{ "range" }
 ,{ "(i.e." }
 ,{ "starting" }
 ,{ "from" }
 ,{ "the" }
 ,{ "ptr+len" , & fmt_text_b }
 ,{ "position)." }
 ,{ "There" }
 ,{ "must" }
 ,{ "be" }
 ,{ "enough" }
 ,{ "room" }
 ,{ "to" }
 ,{ "store" }
 ,{ "this" }
 ,{ "symbol." }
 ,{ "The" }
 ,{ "new" }
 ,{ "range" }
 ,{ "length" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "PopSymbol()" , & fmt_text_b }
 ,{ "looks" }
 ,{ "for" }
 ,{ "the" }
 ,{ "last" }
 ,{ "symbol" }
 ,{ "at" }
 ,{ "the" }
 ,{ "end" }
 ,{ "of" }
 ,{ "the" }
 ,{ "non-empty" }
 ,{ "charcter" }
 ,{ "range" }
 ,{ "and" }
 ,{ "\"pops\"" }
 ,{ "it" }
 ,{ "from" }
 ,{ "the" }
 ,{ "range." }
 ,{ "The" }
 ,{ "new" }
 ,{ "range" }
 ,{ "length" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "ReadConBase" }
} , & fmt_h4 , & align_h4 } ;

Text b7 = { {
 { "The" }
 ,{ "class" }
 ,{ "ReadConBase" , & fmt_text_b }
 ,{ "implements" }
 ,{ "the" }
 ,{ "symbol" }
 ,{ "reading" }
 ,{ "from" }
 ,{ "the" }
 ,{ "character" }
 ,{ "stream." }
 ,{ "It" }
 ,{ "may" }
 ,{ "serve" }
 ,{ "as" }
 ,{ "a" }
 ,{ "base" }
 ,{ "class" }
 ,{ "in" }
 ,{ "a" }
 ,{ "console" }
 ,{ "reader" }
 ,{ "implementation." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "Reading" }
 ,{ "the" }
 ,{ "stream" }
 ,{ "is" }
 ,{ "implemented" }
 ,{ "using" }
 ,{ "pure" }
 ,{ "virtual" }
 ,{ "method(s)" }
 ,{ "read()" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "method" }
 ,{ "gets" }
 ,{ "the" }
 ,{ "buffer" }
 ,{ "to" }
 ,{ "read" }
 ,{ "to" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "received" }
 ,{ "characters." }
 ,{ "If" }
 ,{ "there" }
 ,{ "was" }
 ,{ "no" }
 ,{ "available" }
 ,{ "characters" }
 ,{ "withing" }
 ,{ "given" }
 ,{ "timeout," }
 ,{ "null" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "An" }
 ,{ "exception" }
 ,{ "may" }
 ,{ "be" }
 ,{ "thrown" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "error." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "SymbolParser" }
} , & fmt_h4 , & align_h4 } ;

Text b10 = { {
 { "The" }
 ,{ "class" }
 ,{ "SymbolPraser" , & fmt_text_b }
 ,{ "parses" }
 ,{ "the" }
 ,{ "character" }
 ,{ "stream" }
 ,{ "into" }
 ,{ "symbols." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "reset()" , & fmt_text_b }
 ,{ "resets" }
 ,{ "the" }
 ,{ "parser" }
 ,{ "into" }
 ,{ "the" }
 ,{ "initial" }
 ,{ "state." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "feed()" , & fmt_text_b }
 ,{ "feeds" }
 ,{ "the" }
 ,{ "parser" }
 ,{ "by" }
 ,{ "the" }
 ,{ "characters" }
 ,{ "(" }
 ,{ "text" , & fmt_text_b }
 ,{ "is" }
 ,{ "updated)." }
 ,{ "If" }
 ,{ "a" }
 ,{ "symbol" }
 ,{ "is" }
 ,{ "accumulated" }
 ,{ "the" }
 ,{ "return" }
 ,{ "value" }
 ,{ "is" }
 ,{ "true" , & fmt_text_b }
 ,{ "." }
 ,{ "Otherwise" }
 ,{ "text" , & fmt_text_b }
 ,{ "becomes" }
 ,{ "empty." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "get()" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "called" }
 ,{ "if" }
 ,{ "the" }
 ,{ "previous" }
 ,{ "feed()" , & fmt_text_b }
 ,{ "returned" }
 ,{ "true" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "method" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "accumulated" }
 ,{ "symbol" }
 ,{ "and" }
 ,{ "resets" }
 ,{ "the" }
 ,{ "parser." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> InputUtils" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Init#page , & page_Installation#page };

Link link = { &page } ;

}

scope page_Installation {

Text b0 = { {
 { "CCore" }
 ,{ "installation" }
} , & fmt_h1 , & align_h1 } ;

Text b1 = { {
 { "Cook" }
 ,{ "book" }
 ,{ "(updated" }
 ,{ "according" }
 ,{ "the" }
 ,{ "latest" }
 ,{ "cygwin" }
 ,{ "and" }
 ,{ "CCore-3.00" }
 ,{ "development)" }
} , & fmt_h2 , & align_h2 } ;

Text b2 = { {
 { "In" }
 ,{ "order" }
 ,{ "to" }
 ,{ "use" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "," }
 ,{ "you" }
 ,{ "have" }
 ,{ "to" }
 ,{ "\"cook\"" }
 ,{ "it." }
 ,{ "The" }
 ,{ "following" }
 ,{ "ingredients" }
 ,{ "are" }
 ,{ "required:" }
} , & fmt_text , & align_text } ;

Text b3_0 = { {
 { "Cygwin" , & fmt_list_a }
 ,{ "," }
} , & fmt_list , & align_list } ;

Text b3_1 = { {
 { "Eclipse" , & fmt_list_a }
 ,{ "(optional)" , & fmt_list_a }
 ,{ "," }
} , & fmt_list , & align_list } ;

Text b3_2 = { {
 { "CCore" , & fmt_list_b }
 ,{ "package" }
 ,{ "(or" }
 ,{ "repository)." }
} , & fmt_list , & align_list } ;

TextList b3 = { {
 { '•' , { { & b3_0 , null , ItemInner , ItemOuter } } }
 ,{ '•' , { { & b3_1 , null , ItemInner , ItemOuter } } }
 ,{ '•' , { { & b3_2 , null , ItemInner , ItemOuter } } }
} } ;

Text b4 = { {
 { "Install" }
 ,{ "cygwin" , & fmt_text_b }
 ,{ "first." }
 ,{ "Include" }
 ,{ "make" , & fmt_text_b }
 ,{ "," }
 ,{ "bash" , & fmt_text_b }
 ,{ "and" }
 ,{ "g++" , & fmt_text_b }
 ,{ "in" }
 ,{ "your" }
 ,{ "installation." }
 ,{ "If" }
 ,{ "you" }
 ,{ "are" }
 ,{ "not" }
 ,{ "familiar" }
 ,{ "with" }
 ,{ "this" }
 ,{ "platform," }
 ,{ "spend" }
 ,{ "some" }
 ,{ "time" }
 ,{ "to" }
 ,{ "learn" }
 ,{ "it." }
 ,{ "To" }
 ,{ "work" }
 ,{ "with" }
 ,{ "the" }
 ,{ "current" }
 ,{ "version" }
 ,{ "of" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "gcc-7.1.0" , & fmt_text_b }
 ,{ "is" }
 ,{ "required." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "Create" }
 ,{ "the" }
 ,{ "directory" }
 ,{ "bin" , & fmt_text_b }
 ,{ "in" }
 ,{ "your" }
 ,{ "cygwin" , & fmt_text_b }
 ,{ "home" , & fmt_text_b }
 ,{ "directory." }
 ,{ "CCore" , & fmt_text_b }
 ,{ "uses" }
 ,{ "some" }
 ,{ "tools" }
 ,{ "and" }
 ,{ "utilities," }
 ,{ "they" }
 ,{ "are" }
 ,{ "built" }
 ,{ "in" }
 ,{ "and" }
 ,{ "invoked" }
 ,{ "from" }
 ,{ "this" }
 ,{ "directory." }
 ,{ "Make" }
 ,{ "sure" }
 ,{ "this" }
 ,{ "directory" }
 ,{ "is" }
 ,{ "included" }
 ,{ "into" }
 ,{ "the" }
 ,{ "cygwin" , & fmt_text_b }
 ,{ "path" , & fmt_text_b }
 ,{ "." }
 ,{ "You" }
 ,{ "can" }
 ,{ "also" }
 ,{ "include" }
 ,{ "this" }
 ,{ "directory" }
 ,{ "into" }
 ,{ "the" }
 ,{ "Windows" , & fmt_text_b }
 ,{ "path" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "Unpack" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "package" }
 ,{ "(or" }
 ,{ "checkout" }
 ,{ "the" }
 ,{ "source" }
 ,{ "tree" }
 ,{ "from" }
 ,{ "a" }
 ,{ "repository)" }
 ,{ "somewhere" }
 ,{ "under" }
 ,{ "you" }
 ,{ "cygwin" , & fmt_text_b }
 ,{ "home" , & fmt_text_b }
 ,{ "directory." }
 ,{ "Avoid" , & fmt_text_Hint }
 ,{ "file" , & fmt_text_Hint }
 ,{ "and" , & fmt_text_Hint }
 ,{ "directory" , & fmt_text_Hint }
 ,{ "names" , & fmt_text_Hint }
 ,{ "with" , & fmt_text_Hint }
 ,{ "space" , & fmt_text_Hint }
 ,{ "characters." , & fmt_text_Hint }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "Open" }
 ,{ "bash" , & fmt_text_b }
 ,{ "console" }
 ,{ "(or" }
 ,{ "another" }
 ,{ "console" }
 ,{ "you" }
 ,{ "would" }
 ,{ "prefer," }
 ,{ "just" }
 ,{ "configure" }
 ,{ "it" }
 ,{ "to" }
 ,{ "use" }
 ,{ "cygwin" , & fmt_text_b }
 ,{ "bash" , & fmt_text_b }
 ,{ "as" }
 ,{ "a" }
 ,{ "command" }
 ,{ "processor)." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "Go" }
 ,{ "to" }
 ,{ "the" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "root" , & fmt_text_b }
 ,{ "directory." }
 ,{ "The" }
 ,{ "following" }
 ,{ "commands" }
 ,{ "are" }
 ,{ "used" }
 ,{ "to" }
 ,{ "prepare," }
 ,{ "clean" }
 ,{ "and" }
 ,{ "build" }
 ,{ "the" }
 ,{ "whole" }
 ,{ "installation:" }
} , & fmt_text , & align_text } ;

Text b9_0 = { {
 { "make" , & fmt_list_Cmd }
 ,{ "—" }
 ,{ "to" }
 ,{ "build" }
 ,{ "all," }
} , & fmt_list , & align_list } ;

Text b9_1 = { {
 { "make" , & fmt_list_Cmd }
 ,{ "clean" , & fmt_list_Cmd }
 ,{ "—" }
 ,{ "to" }
 ,{ "clean," }
} , & fmt_list , & align_list } ;

Text b9_2 = { {
 { "make" , & fmt_list_Cmd }
 ,{ "list" , & fmt_list_Cmd }
 ,{ "—" }
 ,{ "to" }
 ,{ "build" }
 ,{ "source" }
 ,{ "file" }
 ,{ "lists;" }
 ,{ "you" }
 ,{ "will" }
 ,{ "need" }
 ,{ "this" }
 ,{ "command" }
 ,{ "if" }
 ,{ "you" }
 ,{ "alter" }
 ,{ "source" }
 ,{ "file" }
 ,{ "set," }
 ,{ "before" , & fmt_list_Alert }
 ,{ "using" , & fmt_list_Alert }
 ,{ "it" , & fmt_list_Alert }
 ,{ "you" , & fmt_list_Alert }
 ,{ "have," , & fmt_list_Alert }
 ,{ "however," , & fmt_list_Alert }
 ,{ "to" , & fmt_list_Alert }
 ,{ "build" , & fmt_list_Alert }
 ,{ "CCore" , & fmt_list_Alert }
 ,{ "tools" , & fmt_list_Alert }
 ,{ "." }
} , & fmt_list , & align_list } ;

TextList b9 = { {
 { '•' , { { & b9_0 , null , ItemInner , ItemOuter } } }
 ,{ '•' , { { & b9_1 , null , ItemInner , ItemOuter } } }
 ,{ '•' , { { & b9_2 , null , ItemInner , ItemOuter } } }
} } ;

Text b10 = { {
 { "Post-install" }
 ,{ "notes" }
} , & fmt_h2 , & align_h2 } ;

Text b11 = { {
 { "You" }
 ,{ "may" }
 ,{ "need" }
 ,{ "to" }
 ,{ "update" }
 ,{ "the" }
 ,{ "file" }
 ,{ "Makefile.tools" , & fmt_text_b }
 ,{ "in" }
 ,{ "your" }
 ,{ "host" }
 ,{ "Target" }
 ,{ "directory" }
 ,{ "to" }
 ,{ "select" }
 ,{ "the" }
 ,{ "proper" }
 ,{ "compiler" }
 ,{ "and" }
 ,{ "other" }
 ,{ "tools." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "Once" }
 ,{ "you" }
 ,{ "install" }
 ,{ "and" }
 ,{ "build" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "," }
 ,{ "tools" }
 ,{ "are" }
 ,{ "built" }
 ,{ "in" }
 ,{ "the" }
 ,{ "~/bin" , & fmt_text_b }
 ,{ "directory." }
 ,{ "Two" }
 ,{ "of" }
 ,{ "them:" }
 ,{ "CCore-MakeList.exe" , & fmt_text_b }
 ,{ "and" }
 ,{ "CCore-Regen.exe" , & fmt_text_b }
 ,{ "," }
 ,{ "are" }
 ,{ "the" }
 ,{ "essential" }
 ,{ "part" }
 ,{ "of" }
 ,{ "the" }
 ,{ "build" }
 ,{ "process," }
 ,{ "so" , & fmt_text_Alert }
 ,{ "keep" , & fmt_text_Alert }
 ,{ "them" , & fmt_text_Alert }
 ,{ "in" , & fmt_text_Alert }
 ,{ "the" , & fmt_text_Alert }
 ,{ "working" , & fmt_text_Alert }
 ,{ "condition" , & fmt_text_Alert }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "cygwin" , & fmt_text_b }
 ,{ "terminal" }
 ,{ "has" }
 ,{ "a" }
 ,{ "limitation" }
 ,{ "in" }
 ,{ "its" }
 ,{ "console" }
 ,{ "functions." }
 ,{ "It" }
 ,{ "cannot" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "run" }
 ,{ "some" }
 ,{ "tools" }
 ,{ "and" }
 ,{ "tests." }
 ,{ "You" }
 ,{ "can" }
 ,{ "use" }
 ,{ "the" }
 ,{ "following" }
 ,{ "console" , & fmt_text_a }
 ,{ "program" , & fmt_text_a }
 ,{ "instead" }
 ,{ "to" }
 ,{ "avoid" }
 ,{ "troubles." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "You" }
 ,{ "can" }
 ,{ "use" }
 ,{ "Eclipse" , & fmt_text_b }
 ,{ "as" }
 ,{ "an" }
 ,{ "IDE" , & fmt_text_b }
 ,{ "to" }
 ,{ "work" }
 ,{ "with" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "and" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "-based" }
 ,{ "projects." }
 ,{ "CCore" , & fmt_text_b }
 ,{ "package" }
 ,{ "includes" }
 ,{ "the" }
 ,{ "archive" }
 ,{ "eclipse-Oxygen.7z" , & fmt_text_b }
 ,{ "with" }
 ,{ "the" }
 ,{ "Eclipse" , & fmt_text_b }
 ,{ "Oxygen" , & fmt_text_b }
 ,{ "workbench." }
 ,{ "You" }
 ,{ "will" }
 ,{ "need" }
 ,{ "Anonymouse" , & fmt_text_a }
 ,{ "Pro" , & fmt_text_a }
 ,{ "font" }
 ,{ "for" }
 ,{ "the" }
 ,{ "text" }
 ,{ "editor." }
 ,{ "Before" }
 ,{ "using" }
 ,{ "this" }
 ,{ "workbench" }
 ,{ "you" }
 ,{ "have" }
 ,{ "to" }
 ,{ "adjust" }
 ,{ "some" }
 ,{ "settings." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "Open" }
 ,{ "menu" }
 ,{ "Window/Preferences..." , & fmt_text_b }
 ,{ "." }
 ,{ "Then" }
 ,{ "open" }
 ,{ "the" }
 ,{ "C++/Build/Environment" , & fmt_text_b }
 ,{ "tab." }
 ,{ "Correct" }
 ,{ "variables" }
 ,{ "CYGWIN" , & fmt_text_b }
 ,{ "and" }
 ,{ "CYGWIN64" , & fmt_text_b }
 ,{ "to" }
 ,{ "point" }
 ,{ "to" }
 ,{ "cygwin" , & fmt_text_b }
 ,{ "and" }
 ,{ "cygwin64" , & fmt_text_b }
 ,{ "installation" }
 ,{ "directories." }
} , & fmt_text , & align_text } ;

Link link_WIN64 = { & page , { 16 } } ;

Text b16 = { {
 { "WIN64" }
} , & fmt_h2 , & align_h2 } ;

Text b17 = { {
 { "CCore" , & fmt_text_b }
 ,{ "supports" }
 ,{ "the" }
 ,{ "64-bits" }
 ,{ "Windows" }
 ,{ "development" }
 ,{ "using" }
 ,{ "cygwin64" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "host" }
 ,{ "target" }
 ,{ "WIN64" , & fmt_text_b }
 ,{ "is" }
 ,{ "provided." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "Place" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "at" }
 ,{ "a" }
 ,{ "desired" }
 ,{ "directory." }
 ,{ "You" }
 ,{ "need" }
 ,{ "/bin" , & fmt_text_b }
 ,{ "subdirectory" }
 ,{ "in" }
 ,{ "your" }
 ,{ "home" }
 ,{ "directory" }
 ,{ "for" }
 ,{ "tools," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "included" }
 ,{ "in" }
 ,{ "the" }
 ,{ "cygwin64" , & fmt_text_b }
 ,{ "search" }
 ,{ "path." }
 ,{ "You" }
 ,{ "have" }
 ,{ "to" }
 ,{ "edit" }
 ,{ "the" }
 ,{ "file" }
 ,{ "Makefile.host" , & fmt_text_b }
 ,{ ":" }
 ,{ "change" }
 ,{ "it" }
 ,{ "from" }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "to" }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "LIN64" }
} , & fmt_h2 , & align_h2 } ;

Text b21 = { {
 { "CCore" , & fmt_text_b }
 ,{ "supports" }
 ,{ "the" }
 ,{ "64-bits" }
 ,{ "Linux" }
 ,{ "development." }
 ,{ "The" }
 ,{ "host" }
 ,{ "target" }
 ,{ "LIN64" , & fmt_text_b }
 ,{ "is" }
 ,{ "provided." }
 ,{ "This" }
 ,{ "target" }
 ,{ "is" }
 ,{ "developed" }
 ,{ "based" }
 ,{ "on" }
 ,{ "Ubuntu" , & fmt_text_a }
 ,{ "13.04" , & fmt_text_a }
 ,{ "(running" }
 ,{ "on" }
 ,{ "the" }
 ,{ "VirtualBox" , & fmt_text_a }
 ,{ ")," }
 ,{ "but" }
 ,{ "should" }
 ,{ "be" }
 ,{ "fine" }
 ,{ "on" }
 ,{ "others" }
 ,{ "64-bits" }
 ,{ "Linux" }
 ,{ "platforms." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "To" }
 ,{ "deploy" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "on" }
 ,{ "Linux," }
 ,{ "you" }
 ,{ "need" }
 ,{ "to" }
 ,{ "install" }
 ,{ "some" }
 ,{ "additional" }
 ,{ "developers" }
 ,{ "components." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "First," }
 ,{ "you" }
 ,{ "need" }
 ,{ "gcc-7.1.0" , & fmt_text_b }
 ,{ "or" }
 ,{ "later." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "Second," }
 ,{ "you" }
 ,{ "need" }
 ,{ "the" }
 ,{ "library" }
 ,{ "libaio" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "Finally," }
 ,{ "you" }
 ,{ "need" }
 ,{ "the" }
 ,{ "library" }
 ,{ "libgmp" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "On" }
 ,{ "Ubuntu" , & fmt_text_b }
 ,{ "you" }
 ,{ "may" }
 ,{ "use" }
 ,{ "the" }
 ,{ "following" }
 ,{ "command" }
 ,{ "to" }
 ,{ "install" }
 ,{ "additional" }
 ,{ "packages:" }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "The" }
 ,{ "packages" }
 ,{ "you" }
 ,{ "need" }
 ,{ "are:" }
 ,{ "g++" , & fmt_text_b }
 ,{ "," }
 ,{ "libaio-dev" , & fmt_text_b }
 ,{ "," }
 ,{ "libgmp-dev" , & fmt_text_b }
 ,{ "(double" }
 ,{ "check" }
 ,{ "with" }
 ,{ "the" }
 ,{ "system" }
 ,{ "support)." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "Once" }
 ,{ "you" }
 ,{ "have" }
 ,{ "installed" }
 ,{ "required" }
 ,{ "packages," }
 ,{ "place" }
 ,{ "CCore" , & fmt_text_b }
 ,{ "at" }
 ,{ "a" }
 ,{ "desired" }
 ,{ "directory." }
 ,{ "You" }
 ,{ "need" }
 ,{ "/bin" , & fmt_text_b }
 ,{ "subdirectory" }
 ,{ "in" }
 ,{ "your" }
 ,{ "home" }
 ,{ "directory" }
 ,{ "for" }
 ,{ "tools," }
 ,{ "it" }
 ,{ "must" }
 ,{ "be" }
 ,{ "included" }
 ,{ "in" }
 ,{ "the" }
 ,{ "search" }
 ,{ "path." }
 ,{ "You" }
 ,{ "have" }
 ,{ "to" }
 ,{ "edit" }
 ,{ "the" }
 ,{ "file" }
 ,{ "Makefile.host" , & fmt_text_b }
 ,{ ":" }
 ,{ "change" }
 ,{ "it" }
 ,{ "from" }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "to" }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "To" }
 ,{ "run" }
 ,{ "on" }
 ,{ "the" }
 ,{ "VirtualBox" , & fmt_text_b }
 ,{ "hack" }
 ,{ "the" }
 ,{ "source" }
 ,{ "code" }
 ,{ "at" }
 ,{ "the" }
 ,{ "file" }
 ,{ "IntelCPUID.s" , & fmt_text_b }
 ,{ "(" }
 ,{ "Target/LIN64/CCore/src/crypton" , & fmt_text_b }
 ,{ ")." }
 ,{ "Uncomment" }
 ,{ "the" }
 ,{ "following" }
 ,{ "line" }
 ,{ "to" }
 ,{ "get" }
 ,{ "the" }
 ,{ "hardware" }
 ,{ "AES" }
 ,{ "support." }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "BeagleBoneBlack" }
} , & fmt_h2 , & align_h2 } ;

Text b32 = { {
 { "CCore" , & fmt_text_b }
 ,{ "includes" }
 ,{ "the" }
 ,{ "primary" }
 ,{ "XCore" , & fmt_text_b }
 ,{ "target" }
 ,{ "BeagleBoneBlack" , & fmt_text_b }
 ,{ "." }
 ,{ "You" }
 ,{ "can" }
 ,{ "use" }
 ,{ "this" }
 ,{ "target" }
 ,{ "to" }
 ,{ "build" }
 ,{ "applications" }
 ,{ "running" }
 ,{ "on" }
 ,{ "the" }
 ,{ "popular" }
 ,{ "board" }
 ,{ "BeagleBone" , & fmt_text_a }
 ,{ "Black" , & fmt_text_a }
 ,{ "." }
 ,{ "Read" }
 ,{ "this" , & fmt_text_a }
 ,{ "document" , & fmt_text_a }
 ,{ "to" }
 ,{ "learn" }
 ,{ "more" }
 ,{ "about" }
 ,{ "this" }
 ,{ "target." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Installation" ,
{
 { & b0 , null , inner_h1 , outer_h1 , back_h1 }
 ,{ & b1 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_list , outer_list , back_list }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_list , outer_list , back_list }
 ,{ & b10 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b32 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_InputUtils#page , & page_InstanceLock#page };

Link link = { &page } ;

}

scope page_InstanceLock {

Text b0 = { {
 { "InstanceLock" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/InstanceLock.h" , & fmt_text_Files_b }
 ,{ "CCore/src/InstanceLock.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "This" }
 ,{ "class" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "prevent" }
 ,{ "a" }
 ,{ "creation" }
 ,{ "of" }
 ,{ "multiple" }
 ,{ "objects" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "class." }
 ,{ "The" }
 ,{ "class" }
 ,{ "is" }
 ,{ "thread-safe." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "The" }
 ,{ "class" }
 ,{ "constructor" }
 ,{ "will" }
 ,{ "throw" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "if" }
 ,{ "an" }
 ,{ "object" }
 ,{ "with" }
 ,{ "the" }
 ,{ "same" }
 ,{ "index" }
 ,{ "has" }
 ,{ "already" }
 ,{ "being" }
 ,{ "created." }
 ,{ "So" }
 ,{ "up" }
 ,{ "to" }
 ,{ "the" }
 ,{ "Count" , & fmt_text_b }
 ,{ "objects" }
 ,{ "of" }
 ,{ "this" }
 ,{ "type" }
 ,{ "can" }
 ,{ "exist" }
 ,{ "simultaneously" }
 ,{ "each" }
 ,{ "with" }
 ,{ "a" }
 ,{ "unique" }
 ,{ "instance" }
 ,{ "index." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "name" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "in" }
 ,{ "the" }
 ,{ "exception" }
 ,{ "message." }
 ,{ "It" }
 ,{ "should" }
 ,{ "name" }
 ,{ "the" }
 ,{ "class." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "getInstanceIndex()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "instance" }
 ,{ "index." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "Here" }
 ,{ "is" }
 ,{ "a" }
 ,{ "typical" }
 ,{ "usage" }
 ,{ "example:" }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "This" }
 ,{ "will" }
 ,{ "prevent" }
 ,{ "the" }
 ,{ "creation" }
 ,{ "of" }
 ,{ "multiple" }
 ,{ "objects" }
 ,{ "of" }
 ,{ "the" }
 ,{ "class" }
 ,{ "SomeClass" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> InstanceLock" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Installation#page , & page_Integer#page };

Link link = { &page } ;

}

scope page_Integer {

Text b0 = { {
 { "Integer" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/math/Integer.h" , & fmt_text_Files_b }
 ,{ "CCore/src/math/Integer.cpp" , & fmt_text_Files_b }
 ,{ "master" }
 ,{ "include" }
 ,{ "file" }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "Files" }
 ,{ "CCore/inc/math/IntegerAlgo.h" , & fmt_text_Files_b }
 ,{ "CCore/src/math/IntegerAlgo.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b3 = { {
 { "Files" }
 ,{ "CCore/inc/math/IntegerBuilder.h" , & fmt_text_Files_b }
 ,{ "CCore/src/math/IntegerBuilder.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b4 = { {
 { "Files" }
 ,{ "CCore/inc/math/IntegerDivider.h" , & fmt_text_Files_b }
 ,{ "CCore/src/math/IntegerDivider.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b5 = { {
 { "Files" }
 ,{ "CCore/inc/math/IntegerPrint.h" , & fmt_text_Files_b }
 ,{ "CCore/src/math/IntegerPrint.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b6 = { {
 { "Files" }
 ,{ "CCore/inc/math/IntegerFromString.h" , & fmt_text_Files_b }
 ,{ "CCore/src/math/IntegerFromString.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b7 = { {
 { "Files" }
 ,{ "CCore/inc/math/IntegerGCD.h" , & fmt_text_Files_b }
 ,{ "CCore/src/math/IntegerGCD.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b8 = { {
 { "Integer" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "class," }
 ,{ "which" }
 ,{ "simulates" }
 ,{ "integer" }
 ,{ "numbers." }
 ,{ "It" }
 ,{ "can" }
 ,{ "represent" }
 ,{ "numbers" }
 ,{ "from" }
 ,{ "a" }
 ,{ "huge" }
 ,{ "value" }
 ,{ "range." }
 ,{ "This" }
 ,{ "range" }
 ,{ "is" }
 ,{ "limited" }
 ,{ "only" }
 ,{ "by" }
 ,{ "the" }
 ,{ "available" }
 ,{ "memory." }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "Internally" }
 ,{ "an" }
 ,{ "Integer" , & fmt_text_b }
 ,{ "value" }
 ,{ "is" }
 ,{ "represented" }
 ,{ "using" }
 ,{ "the" }
 ,{ "array" }
 ,{ "of" }
 ,{ "units." }
 ,{ "A" }
 ,{ "unit" }
 ,{ "has" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type" }
 ,{ "—" }
 ,{ "the" }
 ,{ "unit" }
 ,{ "type." }
 ,{ "The" }
 ,{ "range" }
 ,{ "of" }
 ,{ "units" }
 ,{ "is" }
 ,{ "called" }
 ,{ "the" }
 ,{ "body." }
 ,{ "Any" }
 ,{ "range" }
 ,{ "of" }
 ,{ "units" }
 ,{ "can" }
 ,{ "be" }
 ,{ "regarded" }
 ,{ "as" }
 ,{ "a" }
 ,{ "number." }
 ,{ "Let's" }
 ,{ "N" , & fmt_text_b }
 ,{ "be" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "bits" }
 ,{ "of" }
 ,{ "the" }
 ,{ "unit" }
 ,{ "type" }
 ,{ "and" }
 ,{ "B" , & fmt_text_b }
 ,{ "be" }
 ,{ "2" , & fmt_text_b }
 ,{ "N" , & fmt_text_b }
 ,{ "." }
 ,{ "Then" }
 ,{ "the" }
 ,{ "range" }
 ,{ "of" }
 ,{ "units" }
 ,{ "(U" , & fmt_text_b }
 ,{ "0" , & fmt_text_b }
 ,{ ",...,U" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ ")" , & fmt_text_b }
 ,{ "can" }
 ,{ "be" }
 ,{ "regarded" }
 ,{ "as" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "integer" }
 ,{ "using" }
 ,{ "the" }
 ,{ "base-" }
 ,{ "B" , & fmt_text_b }
 ,{ "positional" }
 ,{ "integer" }
 ,{ "representation," }
 ,{ "i.e." }
 ,{ "it" }
 ,{ "has" }
 ,{ "the" }
 ,{ "value" }
 ,{ "U" , & fmt_text_b }
 ,{ "0" , & fmt_text_b }
 ,{ "+U" , & fmt_text_b }
 ,{ "1" , & fmt_text_b }
 ,{ "*B+...+U" , & fmt_text_b }
 ,{ "n-1" , & fmt_text_b }
 ,{ "*B" , & fmt_text_b }
 ,{ "n-1" , & fmt_text_b }
 ,{ "+U" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ "*B" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "also" }
 ,{ "can" }
 ,{ "be" }
 ,{ "regarded" }
 ,{ "as" }
 ,{ "a" }
 ,{ "signed" }
 ,{ "integer," }
 ,{ "in" }
 ,{ "this" }
 ,{ "case" }
 ,{ "the" }
 ,{ "most" }
 ,{ "significant" }
 ,{ "unit" }
 ,{ "(" }
 ,{ "MSU" , & fmt_text_b }
 ,{ ")" }
 ,{ "is" }
 ,{ "treated" }
 ,{ "especially." }
 ,{ "It" }
 ,{ "regarded" }
 ,{ "as" }
 ,{ "a" }
 ,{ "signed" }
 ,{ "number" }
 ,{ "with" }
 ,{ "the" }
 ,{ "value" }
 ,{ "from" }
 ,{ "the" }
 ,{ "interval" }
 ,{ "[-B/2,B/2)" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "value" }
 ,{ "of" }
 ,{ "the" }
 ,{ "range" }
 ,{ "then" }
 ,{ "equals" }
 ,{ "U" , & fmt_text_b }
 ,{ "0" , & fmt_text_b }
 ,{ "+U" , & fmt_text_b }
 ,{ "1" , & fmt_text_b }
 ,{ "*B+...+U" , & fmt_text_b }
 ,{ "n-1" , & fmt_text_b }
 ,{ "*B" , & fmt_text_b }
 ,{ "n-1" , & fmt_text_b }
 ,{ "+signed(U" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ ")*B" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ "." }
 ,{ "All" }
 ,{ "units" }
 ,{ "except" }
 ,{ "the" }
 ,{ "most" }
 ,{ "significant" }
 ,{ "(which" }
 ,{ "is" }
 ,{ "the" }
 ,{ "last" }
 ,{ "in" }
 ,{ "the" }
 ,{ "range)" }
 ,{ "have" }
 ,{ "values" }
 ,{ "from" }
 ,{ "the" }
 ,{ "interval" }
 ,{ "[0,B)" , & fmt_text_b }
 ,{ "," }
 ,{ "and" }
 ,{ "the" }
 ,{ "MSU" , & fmt_text_b }
 ,{ "is" }
 ,{ "regarded" }
 ,{ "as" }
 ,{ "a" }
 ,{ "value" }
 ,{ "from" }
 ,{ "the" }
 ,{ "interval" }
 ,{ "[-B/2,B/2)" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "Integer" , & fmt_text_b }
 ,{ "itself" }
 ,{ "uses" }
 ,{ "the" }
 ,{ "signed" }
 ,{ "interpretation." }
 ,{ "But" }
 ,{ "some" }
 ,{ "low-level" }
 ,{ "algorithms" }
 ,{ "are" }
 ,{ "working" }
 ,{ "with" }
 ,{ "the" }
 ,{ "unsigned" }
 ,{ "numbers." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "An" }
 ,{ "Integer" , & fmt_text_b }
 ,{ "value" }
 ,{ "is" }
 ,{ "stored" }
 ,{ "in" }
 ,{ "the" }
 ,{ "normalized" }
 ,{ "form," }
 ,{ "i.e." }
 ,{ "you" }
 ,{ "cannot" }
 ,{ "represent" }
 ,{ "it" }
 ,{ "with" }
 ,{ "a" }
 ,{ "less" }
 ,{ "number" }
 ,{ "of" }
 ,{ "units." }
 ,{ "It" }
 ,{ "means" }
 ,{ "that" }
 ,{ "the" }
 ,{ "MSU" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "a" }
 ,{ "signed" }
 ,{ "extension" }
 ,{ "of" }
 ,{ "the" }
 ,{ "previous" }
 ,{ "unit." }
 ,{ "The" }
 ,{ "null" }
 ,{ "value" }
 ,{ "is" }
 ,{ "represented" }
 ,{ "by" }
 ,{ "the" }
 ,{ "empty" }
 ,{ "array." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "Integer" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "template." }
 ,{ "The" }
 ,{ "first" }
 ,{ "and" }
 ,{ "most" }
 ,{ "important" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "is" }
 ,{ "an" }
 ,{ "Algorithm" , & fmt_text_b }
 ,{ "package" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "parameter" }
 ,{ "determines" }
 ,{ "the" }
 ,{ "unit" }
 ,{ "type" }
 ,{ "and" }
 ,{ "the" }
 ,{ "set" }
 ,{ "of" }
 ,{ "low-level" }
 ,{ "functions" }
 ,{ "to" }
 ,{ "perform" }
 ,{ "the" }
 ,{ "integer" }
 ,{ "operations." }
 ,{ "These" }
 ,{ "functions" }
 ,{ "cannot" }
 ,{ "be" }
 ,{ "implemented" }
 ,{ "efficiently" }
 ,{ "in" }
 ,{ "general," }
 ,{ "so" }
 ,{ "you" }
 ,{ "should" }
 ,{ "use" }
 ,{ "some" }
 ,{ "\"fast\"" }
 ,{ "implementation" }
 ,{ "for" }
 ,{ "your" }
 ,{ "particular" }
 ,{ "target" }
 ,{ "CPU." }
 ,{ "For" }
 ,{ "example," }
 ,{ "you" }
 ,{ "can" }
 ,{ "use" }
 ,{ "the" }
 ,{ "GMP" , & fmt_text_a }
 ,{ "library" , & fmt_text_a }
 ,{ "for" }
 ,{ "that" }
 ,{ "purpose." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "The" }
 ,{ "second" }
 ,{ "and" }
 ,{ "third" }
 ,{ "template" }
 ,{ "parameters" }
 ,{ "define" }
 ,{ "the" }
 ,{ "array" }
 ,{ "to" }
 ,{ "be" }
 ,{ "used" }
 ,{ "to" }
 ,{ "store" }
 ,{ "an" }
 ,{ "integer" }
 ,{ "body." }
 ,{ "The" }
 ,{ "second" }
 ,{ "must" }
 ,{ "be" }
 ,{ "either" }
 ,{ "the" }
 ,{ "RefArray" , & fmt_text_b }
 ,{ "(default)" }
 ,{ "or" }
 ,{ "the" }
 ,{ "AtomicRefArray" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "third" }
 ,{ "should" }
 ,{ "almost" }
 ,{ "never" }
 ,{ "be" }
 ,{ "used" }
 ,{ "with" }
 ,{ "non-default" }
 ,{ "value." }
 ,{ "You" }
 ,{ "can" }
 ,{ "use" }
 ,{ "a" }
 ,{ "non-default" }
 ,{ "value" }
 ,{ "for" }
 ,{ "this" }
 ,{ "parameter" }
 ,{ "to" }
 ,{ "employ," }
 ,{ "for" }
 ,{ "example," }
 ,{ "custom" }
 ,{ "memory" }
 ,{ "allocation" }
 ,{ "functions." }
 ,{ "See" }
 ,{ "the" }
 ,{ "Array" , & fmt_text_a , & ..#page_Arrays#link }
 ,{ "page" , & fmt_text_a , & ..#page_Arrays#link }
 ,{ "for" }
 ,{ "more" }
 ,{ "information" }
 ,{ "about" }
 ,{ "arrays" }
 ,{ "and" }
 ,{ "array" }
 ,{ "algorithms." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "AlgoType" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "type," }
 ,{ "an" }
 ,{ "alias" }
 ,{ "of" }
 ,{ "the" }
 ,{ "first" }
 ,{ "template" }
 ,{ "parameter." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "Unit" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "unit" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b15 = { {
 { "UnitBits" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "unit" }
 ,{ "bits." }
} , & fmt_text , & align_text } ;

Text b16 = { {
 { "TempArrayType" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "Unit" , & fmt_text_b }
 ,{ "DynArray" , & fmt_text_b }
 ,{ "with" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "array" }
 ,{ "algorithm" }
 ,{ "package." }
 ,{ "This" }
 ,{ "type" }
 ,{ "is" }
 ,{ "intended" }
 ,{ "to" }
 ,{ "be" }
 ,{ "used" }
 ,{ "as" }
 ,{ "the" }
 ,{ "temporary" }
 ,{ "storage" }
 ,{ "type." }
 ,{ "This" }
 ,{ "type" }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "implement" }
 ,{ "some" }
 ,{ "operations" }
 ,{ "and" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "for" }
 ,{ "similar" }
 ,{ "purposes." }
} , & fmt_text , & align_text } ;

Text b17 = { {
 { "The" }
 ,{ "body" }
 ,{ "of" }
 ,{ "the" }
 ,{ "Integer" , & fmt_text_b }
 ,{ "is" }
 ,{ "stored" }
 ,{ "in" }
 ,{ "the" }
 ,{ "private" }
 ,{ "field" }
 ,{ "body" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "field" }
 ,{ "has" }
 ,{ "the" }
 ,{ "type" }
 ,{ "RefArray" , & fmt_text_b }
 ,{ "or" }
 ,{ "AtomicRefArray" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "means" }
 ,{ "it" }
 ,{ "is" }
 ,{ "efficiently" }
 ,{ "copyable" }
 ,{ "and" }
 ,{ "multiple" }
 ,{ "objects" }
 ,{ "can" }
 ,{ "share" }
 ,{ "the" }
 ,{ "same" }
 ,{ "body." }
} , & fmt_text , & align_text } ;

Text b18 = { {
 { "You" }
 ,{ "can" }
 ,{ "create" }
 ,{ "an" }
 ,{ "Integer" , & fmt_text_b }
 ,{ "using" }
 ,{ "the" }
 ,{ "generic" }
 ,{ "constructor" }
 ,{ "or" }
 ,{ "using" }
 ,{ "special" }
 ,{ "constructors." }
 ,{ "The" }
 ,{ "generic" }
 ,{ "constructor" }
 ,{ "uses" }
 ,{ "the" }
 ,{ "provided" }
 ,{ "builder" , & fmt_text_a , & ..#page_Arrays#link_Builder }
 ,{ "to" }
 ,{ "fill" }
 ,{ "the" }
 ,{ "integer" }
 ,{ "body" }
 ,{ "and" }
 ,{ "then" }
 ,{ "performs" }
 ,{ "the" }
 ,{ "normalization." }
 ,{ "You" }
 ,{ "can" }
 ,{ "also" }
 ,{ "create" }
 ,{ "an" }
 ,{ "Integer" , & fmt_text_b }
 ,{ "from" }
 ,{ "a" }
 ,{ "range" }
 ,{ "of" }
 ,{ "units." }
} , & fmt_text , & align_text } ;

Text b19 = { {
 { "The" }
 ,{ "default" }
 ,{ "constructor" }
 ,{ "creates" }
 ,{ "the" }
 ,{ "null" }
 ,{ "value." }
 ,{ "It" }
 ,{ "doesn't" }
 ,{ "throw." }
} , & fmt_text , & align_text } ;

Text b20 = { {
 { "You" }
 ,{ "can" }
 ,{ "create" }
 ,{ "an" }
 ,{ "Integer" , & fmt_text_b }
 ,{ "from" }
 ,{ "a" }
 ,{ "string" }
 ,{ "(the" }
 ,{ "usual" }
 ,{ "decimal" }
 ,{ "representation" }
 ,{ "is" }
 ,{ "assumed)" }
 ,{ "or" }
 ,{ "from" }
 ,{ "any" }
 ,{ "\"short\"" }
 ,{ "integer," }
 ,{ "signed" }
 ,{ "or" }
 ,{ "unsigned." }
 ,{ "These" }
 ,{ "constructors" }
 ,{ "are" }
 ,{ "implicit," }
 ,{ "so" }
 ,{ "you" }
 ,{ "can" }
 ,{ "use" }
 ,{ "them" }
 ,{ "to" }
 ,{ "silently" }
 ,{ "cast" }
 ,{ "operation" }
 ,{ "arguments." }
} , & fmt_text , & align_text } ;

Text b21 = { {
 { "sign()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "sign" }
 ,{ "of" }
 ,{ "the" }
 ,{ "number" }
 ,{ "as" }
 ,{ "the" }
 ,{ "CmpResult" , & fmt_text_a , & ..#page_Cmp#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b22 = { {
 { "operator" , & fmt_text_b }
 ,{ "!" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "number" }
 ,{ "is" }
 ,{ "zero." }
} , & fmt_text , & align_text } ;

Text b23 = { {
 { "bitsOf()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "bits" }
 ,{ "of" }
 ,{ "the" }
 ,{ "number." }
 ,{ "The" }
 ,{ "value" }
 ,{ "is" }
 ,{ "returned" }
 ,{ "as" }
 ,{ "a" }
 ,{ "structure" }
 ,{ "with" }
 ,{ "two" }
 ,{ "fields." }
 ,{ "The" }
 ,{ "fields" }
 ,{ "units" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "full" }
 ,{ "unit" }
 ,{ "bits." }
 ,{ "The" }
 ,{ "field" }
 ,{ "msbits" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "bits" }
 ,{ "of" }
 ,{ "the" }
 ,{ "MSU" , & fmt_text_b }
 ,{ "," }
 ,{ "the" }
 ,{ "total" }
 ,{ "bit" }
 ,{ "count" }
 ,{ "therefore" }
 ,{ "is" }
 ,{ "units*UnitBits" , & fmt_text_b }
 ,{ "+" , & fmt_text_b }
 ,{ "msbits" , & fmt_text_b }
 ,{ "." }
 ,{ "You" }
 ,{ "can" }
 ,{ "convert" }
 ,{ "this" }
 ,{ "result" }
 ,{ "into" }
 ,{ "a" }
 ,{ "usual" }
 ,{ "unsigned" }
 ,{ "value" }
 ,{ "using" }
 ,{ "the" }
 ,{ "method" }
 ,{ "total()" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "total()" , & fmt_text_b }
 ,{ "without" }
 ,{ "arguments" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "unsigned" , & fmt_text_b }
 ,{ "value." }
 ,{ "The" }
 ,{ "total()" , & fmt_text_b }
 ,{ "with" }
 ,{ "argument" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "value" }
 ,{ "of" }
 ,{ "a" }
 ,{ "desired" }
 ,{ "type" }
 ,{ "in" }
 ,{ "the" }
 ,{ "given" }
 ,{ "argument." }
 ,{ "An" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown" }
 ,{ "in" }
 ,{ "case" }
 ,{ "of" }
 ,{ "overflow." }
 ,{ "For" }
 ,{ "negative" }
 ,{ "numbers" }
 ,{ "the" }
 ,{ "leading" }
 ,{ "1" }
 ,{ "is" }
 ,{ "not" }
 ,{ "counted." }
 ,{ "I.e." }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "N" , & fmt_text_b }
 ,{ "is" }
 ,{ "non-negative," }
 ,{ "then" }
 ,{ "NBits" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "minimum" }
 ,{ "such" }
 ,{ "that" }
 ,{ "N<2" , & fmt_text_b }
 ,{ "NBits" , & fmt_text_b }
 ,{ "." }
 ,{ "But" }
 ,{ "if" }
 ,{ "the" }
 ,{ "N" , & fmt_text_b }
 ,{ "is" }
 ,{ "negative," }
 ,{ "then" }
 ,{ "NBits" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "minimum" }
 ,{ "such" }
 ,{ "that" }
 ,{ "N>=-2" , & fmt_text_b }
 ,{ "NBits" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b24 = { {
 { "sq()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "square" }
 ,{ "of" }
 ,{ "the" }
 ,{ "number." }
} , & fmt_text , & align_text } ;

Text b25 = { {
 { "pow()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "power" }
 ,{ "of" }
 ,{ "the" }
 ,{ "number." }
} , & fmt_text , & align_text } ;

Text b26 = { {
 { "modify()" , & fmt_text_b }
 ,{ "\"unshares\"" }
 ,{ "the" }
 ,{ "body." }
 ,{ "After" }
 ,{ "this" }
 ,{ "method" }
 ,{ "the" }
 ,{ "number" }
 ,{ "will" }
 ,{ "have" }
 ,{ "the" }
 ,{ "separate" }
 ,{ "body." }
} , & fmt_text , & align_text } ;

Text b27 = { {
 { "cloneTo()" , & fmt_text_b }
 ,{ "makes" }
 ,{ "clone" }
 ,{ "of" }
 ,{ "the" }
 ,{ "number" }
 ,{ "at" }
 ,{ "the" }
 ,{ "given" }
 ,{ "argument." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "will" }
 ,{ "have" }
 ,{ "the" }
 ,{ "separate" }
 ,{ "body." }
 ,{ "This" }
 ,{ "method" }
 ,{ "is" }
 ,{ "useful" }
 ,{ "in" }
 ,{ "multi-task" }
 ,{ "situations." }
} , & fmt_text , & align_text } ;

Text b28 = { {
 { "set_null()" , & fmt_text_b }
 ,{ "sets" }
 ,{ "the" }
 ,{ "number" }
 ,{ "to" }
 ,{ "zero" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "reference" }
 ,{ "to" }
 ,{ "self." }
} , & fmt_text , & align_text } ;

Text b29 = { {
 { "getBody()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "range" }
 ,{ "over" }
 ,{ "the" }
 ,{ "number" }
 ,{ "body." }
} , & fmt_text , & align_text } ;

Text b30 = { {
 { "getBodyReverse()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "reverse" }
 ,{ "range" }
 ,{ "over" }
 ,{ "the" }
 ,{ "number" }
 ,{ "body." }
} , & fmt_text , & align_text } ;

Text b31 = { {
 { "isOdd()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "number" }
 ,{ "is" }
 ,{ "odd." }
} , & fmt_text , & align_text } ;

Text b32 = { {
 { "isEven()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "true" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "the" }
 ,{ "number" }
 ,{ "is" }
 ,{ "even." }
} , & fmt_text , & align_text } ;

Text b33 = { {
 { "cast()" , & fmt_text_b }
 ,{ "does" }
 ,{ "the" }
 ,{ "cast" }
 ,{ "to" }
 ,{ "the" }
 ,{ "given" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type." }
 ,{ "The" }
 ,{ "reduction" }
 ,{ "by" }
 ,{ "module" }
 ,{ "is" }
 ,{ "performed" }
 ,{ "to" }
 ,{ "get" }
 ,{ "the" }
 ,{ "value." }
 ,{ "On" }
 ,{ "bit" }
 ,{ "patterns:" }
 ,{ "extra" }
 ,{ "bits" }
 ,{ "are" }
 ,{ "skipped." }
} , & fmt_text , & align_text } ;

Text b34 = { {
 { "objCmp()" , & fmt_text_b }
 ,{ "performs" }
 ,{ "the" , & fmt_text_a , & ..#page_Cmp#link }
 ,{ "3-way" , & fmt_text_a , & ..#page_Cmp#link }
 ,{ "comparision" , & fmt_text_a , & ..#page_Cmp#link }
 ,{ "with" }
 ,{ "the" }
 ,{ "argument." }
} , & fmt_text , & align_text } ;

Text b35 = { {
 { "This" }
 ,{ "set" }
 ,{ "of" }
 ,{ "static" }
 ,{ "functions" }
 ,{ "makes" }
 ,{ "the" }
 ,{ "result" }
 ,{ "of" }
 ,{ "operation" }
 ,{ "on" }
 ,{ "numbers." }
 ,{ "The" }
 ,{ "argument(s)" }
 ,{ "is" }
 ,{ "given" }
 ,{ "not" }
 ,{ "as" }
 ,{ "an" }
 ,{ "Integer" , & fmt_text_b }
 ,{ "value," }
 ,{ "but" }
 ,{ "as" }
 ,{ "the" }
 ,{ "range" }
 ,{ "over" }
 ,{ "a" }
 ,{ "number" }
 ,{ "body." }
} , & fmt_text , & align_text } ;

Text b36 = { {
 { "Neg()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "-a" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b37 = { {
 { "Add()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "a+b" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b38 = { {
 { "Sub()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "a-b" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b39 = { {
 { "Mul()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "a*b" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b40 = { {
 { "Sq()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "a" , & fmt_text_b }
 ,{ "2" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b41 = { {
 { "Div()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "a/b" , & fmt_text_b }
 ,{ "." }
 ,{ "More" }
 ,{ "precisely," }
 ,{ "the" }
 ,{ "result" }
 ,{ "is" }
 ,{ "[a/b]" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b42 = { {
 { "Mod()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "a%b" , & fmt_text_b }
 ,{ "." }
 ,{ "Both" }
 ,{ "division" }
 ,{ "operations" }
 ,{ "throw" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "if" }
 ,{ "the" }
 ,{ "divisor" }
 ,{ "is" }
 ,{ "zero." }
 ,{ "The" }
 ,{ "following" }
 ,{ "is" }
 ,{ "true:" }
 ,{ "a" , & fmt_text_b }
 ,{ "==" , & fmt_text_b }
 ,{ "(a/b)*b" , & fmt_text_b }
 ,{ "+" , & fmt_text_b }
 ,{ "(a%b)" , & fmt_text_b }
 ,{ "." }
 ,{ "If" }
 ,{ "the" }
 ,{ "b" , & fmt_text_b }
 ,{ "is" }
 ,{ "positive," }
 ,{ "the" }
 ,{ "remainder" }
 ,{ "is" }
 ,{ "non-negative." }
 ,{ "Otherwise" }
 ,{ "it" }
 ,{ "is" }
 ,{ "non-positive." }
} , & fmt_text , & align_text } ;

Text b43 = { {
 { "LShift()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "a<<shift" , & fmt_text_b }
 ,{ "." }
 ,{ "In" }
 ,{ "other" }
 ,{ "words," }
 ,{ "it" }
 ,{ "calculates" }
 ,{ "a*2" , & fmt_text_b }
 ,{ "shift" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b44 = { {
 { "RShift()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "the" }
 ,{ "arithmetic" }
 ,{ "a>>shift" , & fmt_text_b }
 ,{ "," }
 ,{ "i.e." }
 ,{ "the" }
 ,{ "leading" }
 ,{ "bit" }
 ,{ "is" }
 ,{ "preserved." }
 ,{ "In" }
 ,{ "other" }
 ,{ "words," }
 ,{ "it" }
 ,{ "calculates" }
 ,{ "a/2" , & fmt_text_b }
 ,{ "shift" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b45 = { {
 { "DivMod" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "Class-function" , & fmt_text_b }
 ,{ "," }
 ,{ "it" }
 ,{ "calculates" }
 ,{ "the" }
 ,{ "quotient" }
 ,{ "(in" }
 ,{ "the" }
 ,{ "field" }
 ,{ "div" , & fmt_text_b }
 ,{ ")" }
 ,{ "and" }
 ,{ "the" }
 ,{ "remainder" }
 ,{ "(in" }
 ,{ "the" }
 ,{ "field" }
 ,{ "mod" , & fmt_text_b }
 ,{ ")" }
 ,{ "simultaneously." }
} , & fmt_text , & align_text } ;

Text b46 = { {
 { "This" }
 ,{ "set" }
 ,{ "of" }
 ,{ "methods" }
 ,{ "and" }
 ,{ "operators" }
 ,{ "perform" }
 ,{ "self-modifying" }
 ,{ "operations." }
 ,{ "They" }
 ,{ "return" }
 ,{ "the" }
 ,{ "reference" }
 ,{ "to" }
 ,{ "self." }
} , & fmt_text , & align_text } ;

Text b47 = { {
 { "neg()" , & fmt_text_b }
 ,{ "negates" }
 ,{ "the" }
 ,{ "number:" }
 ,{ "obj" , & fmt_text_b }
 ,{ "=" , & fmt_text_b }
 ,{ "-" , & fmt_text_b }
 ,{ "obj" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b48 = { {
 { "revsub()" , & fmt_text_b }
 ,{ "does" }
 ,{ "the" }
 ,{ "\"reversed" }
 ,{ "subtraction\"," }
 ,{ "i.e." }
 ,{ "obj" , & fmt_text_b }
 ,{ "=" , & fmt_text_b }
 ,{ "b" , & fmt_text_b }
 ,{ "-" , & fmt_text_b }
 ,{ "obj" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b49 = { {
 { "operator" , & fmt_text_b }
 ,{ "X=" , & fmt_text_b }
 ,{ "does" }
 ,{ "the" }
 ,{ "usual" }
 ,{ "obj" , & fmt_text_b }
 ,{ "=" , & fmt_text_b }
 ,{ "obj" , & fmt_text_b }
 ,{ "X" , & fmt_text_b }
 ,{ "b" , & fmt_text_b }
 ,{ "operation." }
} , & fmt_text , & align_text } ;

Text b50 = { {
 { "The" }
 ,{ "unary" }
 ,{ "operator" , & fmt_text_b }
 ,{ "-" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "negated" }
 ,{ "number:" }
 ,{ "-obj" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b51 = { {
 { "The" }
 ,{ "family" }
 ,{ "of" }
 ,{ "binary" }
 ,{ "operators:" }
 ,{ "+," , & fmt_text_b }
 ,{ "-," , & fmt_text_b }
 ,{ "*," , & fmt_text_b }
 ,{ "/," , & fmt_text_b }
 ,{ "%" , & fmt_text_b }
 ,{ "," }
 ,{ "perform" }
 ,{ "the" }
 ,{ "usual" }
 ,{ "integer" }
 ,{ "arithmetic" }
 ,{ "operations." }
} , & fmt_text , & align_text } ;

Text b52 = { {
 { "The" }
 ,{ "family" }
 ,{ "of" }
 ,{ "binary" }
 ,{ "comparison" }
 ,{ "operators:" }
 ,{ "==," , & fmt_text_b }
 ,{ "!=," , & fmt_text_b }
 ,{ "<," , & fmt_text_b }
 ,{ ">," , & fmt_text_b }
 ,{ "<=," , & fmt_text_b }
 ,{ ">=" , & fmt_text_b }
 ,{ "," }
 ,{ "perform" }
 ,{ "the" }
 ,{ "usual" }
 ,{ "integer" }
 ,{ "comparison" }
 ,{ "operations." }
} , & fmt_text , & align_text } ;

Text b53 = { {
 { "operator" , & fmt_text_b }
 ,{ "<<" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "obj" , & fmt_text_b }
 ,{ "<<" , & fmt_text_b }
 ,{ "shift" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b54 = { {
 { "operator" , & fmt_text_b }
 ,{ ">>" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "obj" , & fmt_text_b }
 ,{ ">>" , & fmt_text_b }
 ,{ "shift" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b55 = { {
 { "divmod()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "the" }
 ,{ "quotient" }
 ,{ "and" }
 ,{ "the" }
 ,{ "remainder" }
 ,{ "using" }
 ,{ "the" }
 ,{ "DivMod" , & fmt_text_b }
 ,{ "structure." }
} , & fmt_text , & align_text } ;

Text b56 = { {
 { "This" }
 ,{ "set" }
 ,{ "of" }
 ,{ "operators" }
 ,{ "and" }
 ,{ "methods" }
 ,{ "handles" }
 ,{ "the" }
 ,{ "mixed-type" }
 ,{ "cases," }
 ,{ "when" }
 ,{ "one" }
 ,{ "of" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "a" }
 ,{ "simple" }
 ,{ "signed" }
 ,{ "or" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type." }
 ,{ "They" }
 ,{ "are" }
 ,{ "introduced" }
 ,{ "for" }
 ,{ "efficiency" }
 ,{ "reason." }
} , & fmt_text , & align_text } ;

Text b57 = { {
 { "cmp()" , & fmt_text_b }
 ,{ "performs" }
 ,{ "the" }
 ,{ "comparison" }
 ,{ "with" }
 ,{ "one" }
 ,{ "of" }
 ,{ "simple" }
 ,{ "signed" }
 ,{ "or" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b58 = { {
 { "Integer" , & fmt_text_b }
 ,{ "is" }
 ,{ "printable," }
 ,{ "swappable" }
 ,{ "and" }
 ,{ "movable" }
 ,{ "type." }
 ,{ "Integer" , & fmt_text_b }
 ,{ "print" }
 ,{ "options" }
 ,{ "are:" }
 ,{ "the" }
 ,{ "output" }
 ,{ "width" }
 ,{ "and" }
 ,{ "the" }
 ,{ "show-sign" }
 ,{ "flag." }
 ,{ "The" }
 ,{ "output" }
 ,{ "is" }
 ,{ "always" }
 ,{ "decimal." }
} , & fmt_text , & align_text } ;

Text b59 = { {
 { "RandomInteger" }
} , & fmt_h3 , & align_h3 } ;

Text b60 = { {
 { "RandomInteger" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "random" }
 ,{ "Integer" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b61 = { {
 { "Constructor" }
 ,{ "takes" }
 ,{ "two" }
 ,{ "arguments." }
 ,{ "The" }
 ,{ "first" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "the" }
 ,{ "body" }
 ,{ "length" }
 ,{ "in" }
 ,{ "units." }
 ,{ "The" }
 ,{ "second" }
 ,{ "is" }
 ,{ "some" }
 ,{ "Random" , & fmt_text_a , & ..#page_Random#link }
 ,{ "object." }
 ,{ "An" }
 ,{ "Integer" , & fmt_text_b }
 ,{ "is" }
 ,{ "created" }
 ,{ "with" }
 ,{ "the" }
 ,{ "given" }
 ,{ "body" }
 ,{ "length" }
 ,{ "and" }
 ,{ "randomly" }
 ,{ "filled" }
 ,{ "body" }
 ,{ "units." }
 ,{ "So" }
 ,{ "the" }
 ,{ "value" }
 ,{ "is" }
 ,{ "uniformly" }
 ,{ "distributed" }
 ,{ "in" }
 ,{ "the" }
 ,{ "range" }
 ,{ "[-B" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ "/2,B" , & fmt_text_b }
 ,{ "n" , & fmt_text_b }
 ,{ "/2)" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b62 = { {
 { "GCDiv" }
 ,{ "and" }
 ,{ "QSym" }
} , & fmt_h3 , & align_h3 } ;

Text b63 = { {
 { "GCDiv()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "the" }
 ,{ "GCD" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "arguments." }
 ,{ "The" }
 ,{ "result" }
 ,{ "is" }
 ,{ "non-negative." }
} , & fmt_text , & align_text } ;

Text b64 = { {
 { "QSym()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "the" }
 ,{ "quadratic" }
 ,{ "symbol" }
 ,{ "(aka" }
 ,{ "Jacobi" }
 ,{ "symbol)" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "arguments." }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "coprime" }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "odd," }
 ,{ "otherwise" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "is" }
 ,{ "thrown." }
} , & fmt_text , & align_text } ;

Link link_Algo = { & page , { 65 } } ;

Text b65 = { {
 { "Algo" }
} , & fmt_h3 , & align_h3 } ;

Text b66 = { {
 { "The" }
 ,{ "algorithm" }
 ,{ "package" }
 ,{ "Algo" , & fmt_text_b }
 ,{ "must" }
 ,{ "comply" }
 ,{ "with" }
 ,{ "the" }
 ,{ "following" }
 ,{ "pattern." }
 ,{ "Functions," }
 ,{ "operating" }
 ,{ "on" }
 ,{ "long" }
 ,{ "numbers" }
 ,{ "expects" }
 ,{ "the" }
 ,{ "arguments" }
 ,{ "in" }
 ,{ "the" }
 ,{ "form" }
 ,{ "(const" , & fmt_text_b }
 ,{ "Unit" , & fmt_text_b }
 ,{ "*a,ulen" , & fmt_text_b }
 ,{ "na)" , & fmt_text_b }
 ,{ "," }
 ,{ "where" }
 ,{ "a" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "number" }
 ,{ "body" }
 ,{ "and" }
 ,{ "na" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "body" }
 ,{ "length." }
 ,{ "An" }
 ,{ "argument" }
 ,{ "can" }
 ,{ "be" }
 ,{ "regarded" }
 ,{ "as" }
 ,{ "a" }
 ,{ "signed" }
 ,{ "number" }
 ,{ "or" }
 ,{ "as" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "number." }
 ,{ "In" }
 ,{ "the" }
 ,{ "last" }
 ,{ "case" }
 ,{ "the" }
 ,{ "function" }
 ,{ "name" }
 ,{ "starts" }
 ,{ "from" }
 ,{ "the" }
 ,{ "U" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b67 = { {
 { "Unit" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "unit" }
 ,{ "type." }
 ,{ "It" }
 ,{ "must" }
 ,{ "be" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Text b68 = { {
 { "UnitBits" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "bits" }
 ,{ "of" }
 ,{ "Unit" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b69 = { {
 { "MaxUnit" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "maximum" }
 ,{ "unit," }
 ,{ "all" }
 ,{ "bits" }
 ,{ "are" }
 ,{ "set." }
} , & fmt_text , & align_text } ;

Text b70 = { {
 { "MSBit" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "most" }
 ,{ "significant" }
 ,{ "bit." }
} , & fmt_text , & align_text } ;

Text b71 = { {
 { "SignExt()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "sign" }
 ,{ "extension" }
 ,{ "unit" }
 ,{ "for" }
 ,{ "the" }
 ,{ "given" }
 ,{ "argument." }
 ,{ "I.e." }
 ,{ "it" }
 ,{ "is" }
 ,{ "the" }
 ,{ "most" }
 ,{ "significant" }
 ,{ "bit" }
 ,{ "of" }
 ,{ "the" }
 ,{ "argument," }
 ,{ "propagated" }
 ,{ "to" }
 ,{ "the" }
 ,{ "unit." }
} , & fmt_text , & align_text } ;

Text b72 = { {
 { "CountZeroMSB()" , & fmt_text_b }
 ,{ "counts" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "zero" }
 ,{ "most" }
 ,{ "significant" }
 ,{ "bits" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "unit." }
} , & fmt_text , & align_text } ;

Text b73 = { {
 { "DoubleUDiv()" , & fmt_text_b }
 ,{ "performs" }
 ,{ "the" }
 ,{ "long" }
 ,{ "unsigned" }
 ,{ "division." }
 ,{ "It" }
 ,{ "divides" }
 ,{ "the" }
 ,{ "double-size" }
 ,{ "number" }
 ,{ "with" }
 ,{ "the" }
 ,{ "high" }
 ,{ "part" }
 ,{ "hi" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "low" }
 ,{ "part" }
 ,{ "lo" , & fmt_text_b }
 ,{ "by" }
 ,{ "the" }
 ,{ "divisor" }
 ,{ "den" , & fmt_text_b }
 ,{ "." }
 ,{ "It" }
 ,{ "is" }
 ,{ "assumed," }
 ,{ "that" }
 ,{ "hi" , & fmt_text_b }
 ,{ "<" , & fmt_text_b }
 ,{ "den" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "result" }
 ,{ "is" }
 ,{ "returned" }
 ,{ "(it" }
 ,{ "is" }
 ,{ "representable" }
 ,{ "by" }
 ,{ "the" }
 ,{ "unit)." }
} , & fmt_text , & align_text } ;

Text b74 = { {
 { "USign()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "sign" }
 ,{ "of" }
 ,{ "the" }
 ,{ "argument." }
 ,{ "It" }
 ,{ "always" }
 ,{ ">=0." }
} , & fmt_text , & align_text } ;

Text b75 = { {
 { "Sign()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "sign" }
 ,{ "of" }
 ,{ "the" }
 ,{ "argument." }
} , & fmt_text , & align_text } ;

Text b76 = { {
 { "UCmp()" , & fmt_text_b }
 ,{ "compares" }
 ,{ "arguments" }
 ,{ "of" }
 ,{ "the" }
 ,{ "same" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b77 = { {
 { "UCmp()" , & fmt_text_b }
 ,{ "compares" }
 ,{ "arguments." }
} , & fmt_text , & align_text } ;

Text b78 = { {
 { "Cmp()" , & fmt_text_b }
 ,{ "compares" }
 ,{ "arguments." }
} , & fmt_text , & align_text } ;

Text b79 = { {
 { "UNormalize()" , & fmt_text_b }
 ,{ "does" }
 ,{ "normalization" }
 ,{ "of" }
 ,{ "the" }
 ,{ "argument." }
 ,{ "It" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "normalized" }
 ,{ "length." }
 ,{ "It" }
 ,{ "drop" }
 ,{ "the" }
 ,{ "most" }
 ,{ "significant" }
 ,{ "units," }
 ,{ "equals" }
 ,{ "zero." }
} , & fmt_text , & align_text } ;

Text b80 = { {
 { "Normalize()" , & fmt_text_b }
 ,{ "does" }
 ,{ "normalization" }
 ,{ "of" }
 ,{ "the" }
 ,{ "argument." }
 ,{ "It" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "normalized" }
 ,{ "length." }
 ,{ "It" }
 ,{ "drop" }
 ,{ "the" }
 ,{ "most" }
 ,{ "significant" }
 ,{ "units," }
 ,{ "equals" }
 ,{ "propagated" }
 ,{ "MSB" , & fmt_text_b }
 ,{ "of" }
 ,{ "the" }
 ,{ "previous" }
 ,{ "unit." }
} , & fmt_text , & align_text } ;

Text b81 = { {
 { "The" }
 ,{ "bit" }
 ,{ "C" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "carry" }
 ,{ "from" }
 ,{ "or" }
 ,{ "a" }
 ,{ "borrow" }
 ,{ "to" }
 ,{ "the" }
 ,{ "MSU" , & fmt_text_b }
 ,{ "when" }
 ,{ "doing" }
 ,{ "unsigned" }
 ,{ "operations." }
} , & fmt_text , & align_text } ;

Text b82 = { {
 { "UNeg()" , & fmt_text_b }
 ,{ "negates" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "in-place." }
 ,{ "The" }
 ,{ "bit" }
 ,{ "C" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b83 = { {
 { "Neg()" , & fmt_text_b }
 ,{ "negates" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "in-place." }
 ,{ "The" }
 ,{ "result" }
 ,{ "representation" }
 ,{ "requires" }
 ,{ "one" }
 ,{ "additional" }
 ,{ "unit," }
 ,{ "this" }
 ,{ "unit" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "I.e." }
 ,{ "the" }
 ,{ "result" }
 ,{ "length" }
 ,{ "is" }
 ,{ "na+1" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "MSU" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "stored" }
 ,{ "in" }
 ,{ "the" }
 ,{ "original" }
 ,{ "body," }
 ,{ "but" }
 ,{ "returned" }
 ,{ "by" }
 ,{ "the" }
 ,{ "function." }
} , & fmt_text , & align_text } ;

Text b84 = { {
 { "UAddUnit()" , & fmt_text_b }
 ,{ "adds" }
 ,{ "the" }
 ,{ "unit" }
 ,{ "b" , & fmt_text_b }
 ,{ "to" }
 ,{ "the" }
 ,{ "a" , & fmt_text_b }
 ,{ "in-place." }
 ,{ "The" }
 ,{ "bit" }
 ,{ "C" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
 ,{ "If" }
 ,{ "na==0" , & fmt_text_b }
 ,{ "," }
 ,{ "b" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b85 = { {
 { "USubUnit()" , & fmt_text_b }
 ,{ "subtracts" }
 ,{ "the" }
 ,{ "unit" }
 ,{ "b" , & fmt_text_b }
 ,{ "from" }
 ,{ "the" }
 ,{ "a" , & fmt_text_b }
 ,{ "in-place." }
 ,{ "The" }
 ,{ "bit" }
 ,{ "C" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
 ,{ "If" }
 ,{ "na==0" , & fmt_text_b }
 ,{ "," }
 ,{ "b" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b86 = { {
 { "UAdd()" , & fmt_text_b }
 ,{ "adds" }
 ,{ "a" , & fmt_text_b }
 ,{ "to" }
 ,{ "b" , & fmt_text_b }
 ,{ "in-place." }
 ,{ "The" }
 ,{ "bit" }
 ,{ "C" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "have" }
 ,{ "the" }
 ,{ "same" }
 ,{ "length" }
 ,{ "nab" , & fmt_text_b }
 ,{ "and" }
 ,{ "do" }
 ,{ "not" }
 ,{ "overlap." }
} , & fmt_text , & align_text } ;

Text b87 = { {
 { "Add()" , & fmt_text_b }
 ,{ "adds" }
 ,{ "a" , & fmt_text_b }
 ,{ "to" }
 ,{ "b" , & fmt_text_b }
 ,{ "in-place." }
 ,{ "The" }
 ,{ "length" }
 ,{ "of" }
 ,{ "b" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "greater" }
 ,{ "or" }
 ,{ "equal" }
 ,{ "than" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "a" , & fmt_text_b }
 ,{ "," }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "do" }
 ,{ "not" }
 ,{ "overlap." }
 ,{ "The" }
 ,{ "result" }
 ,{ "representation" }
 ,{ "requires" }
 ,{ "one" }
 ,{ "additional" }
 ,{ "unit," }
 ,{ "this" }
 ,{ "unit" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "I.e." }
 ,{ "the" }
 ,{ "result" }
 ,{ "length" }
 ,{ "is" }
 ,{ "nb+1" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "MSU" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "stored" }
 ,{ "in" }
 ,{ "the" }
 ,{ "b" , & fmt_text_b }
 ,{ "body," }
 ,{ "but" }
 ,{ "returned" }
 ,{ "by" }
 ,{ "the" }
 ,{ "function." }
} , & fmt_text , & align_text } ;

Text b88 = { {
 { "USub()" , & fmt_text_b }
 ,{ "subtracts" }
 ,{ "a" , & fmt_text_b }
 ,{ "from" }
 ,{ "b" , & fmt_text_b }
 ,{ "in-place." }
 ,{ "The" }
 ,{ "bit" }
 ,{ "C" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "have" }
 ,{ "the" }
 ,{ "same" }
 ,{ "length" }
 ,{ "nab" , & fmt_text_b }
 ,{ "and" }
 ,{ "does" }
 ,{ "not" }
 ,{ "overlap." }
} , & fmt_text , & align_text } ;

Text b89 = { {
 { "Sub()" , & fmt_text_b }
 ,{ "subtracts" }
 ,{ "a" , & fmt_text_b }
 ,{ "from" }
 ,{ "b" , & fmt_text_b }
 ,{ "in-place." }
 ,{ "The" }
 ,{ "length" }
 ,{ "of" }
 ,{ "b" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "greater" }
 ,{ "or" }
 ,{ "equal" }
 ,{ "than" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "a" , & fmt_text_b }
 ,{ "," }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "do" }
 ,{ "not" }
 ,{ "overlap." }
 ,{ "The" }
 ,{ "result" }
 ,{ "representation" }
 ,{ "requires" }
 ,{ "one" }
 ,{ "additional" }
 ,{ "unit," }
 ,{ "this" }
 ,{ "unit" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "I.e." }
 ,{ "the" }
 ,{ "result" }
 ,{ "length" }
 ,{ "is" }
 ,{ "nb+1" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "MSU" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "stored" }
 ,{ "in" }
 ,{ "the" }
 ,{ "b" , & fmt_text_b }
 ,{ "body," }
 ,{ "but" }
 ,{ "returned" }
 ,{ "by" }
 ,{ "the" }
 ,{ "function." }
} , & fmt_text , & align_text } ;

Text b90 = { {
 { "RevSub()" , & fmt_text_b }
 ,{ "subtracts" }
 ,{ "b" , & fmt_text_b }
 ,{ "from" }
 ,{ "a" , & fmt_text_b }
 ,{ "in-place" }
 ,{ "(reversed" }
 ,{ "subtraction)." }
 ,{ "The" }
 ,{ "length" }
 ,{ "of" }
 ,{ "b" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "greater" }
 ,{ "or" }
 ,{ "equal" }
 ,{ "than" }
 ,{ "the" }
 ,{ "length" }
 ,{ "of" }
 ,{ "a" , & fmt_text_b }
 ,{ "," }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "do" }
 ,{ "not" }
 ,{ "overlap." }
 ,{ "The" }
 ,{ "result" }
 ,{ "representation" }
 ,{ "requires" }
 ,{ "one" }
 ,{ "additional" }
 ,{ "unit," }
 ,{ "this" }
 ,{ "unit" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "I.e." }
 ,{ "the" }
 ,{ "result" }
 ,{ "length" }
 ,{ "is" }
 ,{ "nb+1" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "MSU" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "stored" }
 ,{ "in" }
 ,{ "the" }
 ,{ "b" , & fmt_text_b }
 ,{ "body," }
 ,{ "but" }
 ,{ "returned" }
 ,{ "by" }
 ,{ "the" }
 ,{ "function." }
} , & fmt_text , & align_text } ;

Text b91 = { {
 { "In" }
 ,{ "the" }
 ,{ "following" }
 ,{ "shift" }
 ,{ "operations" }
 ,{ "the" }
 ,{ "shift" }
 ,{ "length" }
 ,{ "shift" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "greater" }
 ,{ "0" }
 ,{ "and" }
 ,{ "less" }
 ,{ "than" }
 ,{ "UnitBits" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b92 = { {
 { "ULShift()" , & fmt_text_b }
 ,{ "shifts" }
 ,{ "left" }
 ,{ "in-place" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "MSU" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "result" }
 ,{ "representation" }
 ,{ "requires" }
 ,{ "one" }
 ,{ "additional" }
 ,{ "unit," }
 ,{ "this" }
 ,{ "unit" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "I.e." }
 ,{ "the" }
 ,{ "result" }
 ,{ "length" }
 ,{ "is" }
 ,{ "na+1" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "MSU" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "stored" }
 ,{ "in" }
 ,{ "the" }
 ,{ "a" , & fmt_text_b }
 ,{ "body," }
 ,{ "but" }
 ,{ "returned" }
 ,{ "by" }
 ,{ "the" }
 ,{ "function." }
} , & fmt_text , & align_text } ;

Text b93 = { {
 { "LShift()" , & fmt_text_b }
 ,{ "shifts" }
 ,{ "left" }
 ,{ "out-of-place" }
 ,{ "and" }
 ,{ "returns" }
 ,{ "the" }
 ,{ "MSU" , & fmt_text_b }
 ,{ "." }
 ,{ "a" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "is" }
 ,{ "to" }
 ,{ "store" }
 ,{ "the" }
 ,{ "result." }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "do" }
 ,{ "not" }
 ,{ "overlap." }
 ,{ "The" }
 ,{ "result" }
 ,{ "representation" }
 ,{ "requires" }
 ,{ "one" }
 ,{ "additional" }
 ,{ "unit," }
 ,{ "this" }
 ,{ "unit" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "I.e." }
 ,{ "the" }
 ,{ "result" }
 ,{ "length" }
 ,{ "is" }
 ,{ "nab+1" , & fmt_text_b }
 ,{ "and" }
 ,{ "the" }
 ,{ "resulting" }
 ,{ "MSU" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "stored" }
 ,{ "in" }
 ,{ "the" }
 ,{ "b" , & fmt_text_b }
 ,{ "body," }
 ,{ "but" }
 ,{ "returned" }
 ,{ "by" }
 ,{ "the" }
 ,{ "function." }
} , & fmt_text , & align_text } ;

Text b94 = { {
 { "ShiftUp()" , & fmt_text_b }
 ,{ "combines" }
 ,{ "the" }
 ,{ "left" }
 ,{ "shift" }
 ,{ "and" }
 ,{ "the" }
 ,{ "move" }
 ,{ "up." }
 ,{ "It" }
 ,{ "shifts" }
 ,{ "the" }
 ,{ "na" , & fmt_text_b }
 ,{ "units" }
 ,{ "starting" }
 ,{ "from" }
 ,{ "the" }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "moves" }
 ,{ "the" }
 ,{ "result" }
 ,{ "up" }
 ,{ "by" }
 ,{ "the" }
 ,{ "delta" , & fmt_text_b }
 ,{ "units." }
 ,{ "The" }
 ,{ "MSU" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "placed" }
 ,{ "in" }
 ,{ "the" }
 ,{ "buffer" }
 ,{ "but" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b95 = { {
 { "RShift()" , & fmt_text_b }
 ,{ "shifts" }
 ,{ "right" }
 ,{ "out-of-place." }
 ,{ "a" , & fmt_text_b }
 ,{ "is" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "is" }
 ,{ "to" }
 ,{ "store" }
 ,{ "the" }
 ,{ "result." }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "do" }
 ,{ "not" }
 ,{ "overlap." }
} , & fmt_text , & align_text } ;

Text b96 = { {
 { "ShiftDown()" , & fmt_text_b }
 ,{ "combines" }
 ,{ "the" }
 ,{ "right" }
 ,{ "shift" }
 ,{ "and" }
 ,{ "the" }
 ,{ "move" }
 ,{ "down." }
 ,{ "It" }
 ,{ "shifts" }
 ,{ "the" }
 ,{ "na" , & fmt_text_b }
 ,{ "units" }
 ,{ "starting" }
 ,{ "from" }
 ,{ "the" }
 ,{ "a+delta" , & fmt_text_b }
 ,{ "and" }
 ,{ "moves" }
 ,{ "the" }
 ,{ "result" }
 ,{ "down" }
 ,{ "by" }
 ,{ "the" }
 ,{ "delta" , & fmt_text_b }
 ,{ "units." }
} , & fmt_text , & align_text } ;

Text b97 = { {
 { "UMul()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "the" }
 ,{ "product" }
 ,{ "of" }
 ,{ "the" }
 ,{ "arguments" }
 ,{ "and" }
 ,{ "places" }
 ,{ "the" }
 ,{ "result" }
 ,{ "into" }
 ,{ "the" }
 ,{ "c" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "c" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "na+nb" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "input" }
 ,{ "and" }
 ,{ "output" }
 ,{ "bodies" }
 ,{ "do" }
 ,{ "not" }
 ,{ "overlap." }
} , & fmt_text , & align_text } ;

Text b98 = { {
 { "UMulLo()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "the" }
 ,{ "product" }
 ,{ "of" }
 ,{ "the" }
 ,{ "arguments" }
 ,{ "and" }
 ,{ "places" }
 ,{ "the" }
 ,{ "lower" }
 ,{ "part" }
 ,{ "of" }
 ,{ "the" }
 ,{ "result" }
 ,{ "into" }
 ,{ "the" }
 ,{ "c" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "c" , & fmt_text_b }
 ,{ "must" }
 ,{ "not" }
 ,{ "exceed" }
 ,{ "na+nb" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "input" }
 ,{ "and" }
 ,{ "output" }
 ,{ "bodies" }
 ,{ "do" }
 ,{ "not" }
 ,{ "overlap." }
} , & fmt_text , & align_text } ;

Text b99 = { {
 { "Mul()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "the" }
 ,{ "product" }
 ,{ "of" }
 ,{ "the" }
 ,{ "arguments" }
 ,{ "and" }
 ,{ "places" }
 ,{ "the" }
 ,{ "result" }
 ,{ "into" }
 ,{ "the" }
 ,{ "c" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "c" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "na+nb" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "input" }
 ,{ "and" }
 ,{ "output" }
 ,{ "bodies" }
 ,{ "do" }
 ,{ "not" }
 ,{ "overlap." }
} , & fmt_text , & align_text } ;

Text b100 = { {
 { "Sq()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "the" }
 ,{ "square" }
 ,{ "of" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "places" }
 ,{ "the" }
 ,{ "result" }
 ,{ "into" }
 ,{ "the" }
 ,{ "c" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "c" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "2*na" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "input" }
 ,{ "and" }
 ,{ "output" }
 ,{ "bodies" }
 ,{ "do" }
 ,{ "not" }
 ,{ "overlap." }
} , & fmt_text , & align_text } ;

Text b101 = { {
 { "Null()" , & fmt_text_b }
 ,{ "nullifies" }
 ,{ "the" }
 ,{ "result." }
} , & fmt_text , & align_text } ;

Text b102 = { {
 { "Copy()" , & fmt_text_b }
 ,{ "copies" }
 ,{ "data" }
 ,{ "from" }
 ,{ "one" }
 ,{ "range" }
 ,{ "to" }
 ,{ "another" }
 ,{ "disjoint" }
 ,{ "range." }
} , & fmt_text , & align_text } ;

Text b103 = { {
 { "MoveUp()" , & fmt_text_b }
 ,{ "moves" }
 ,{ "up" }
 ,{ "the" }
 ,{ "body" }
 ,{ "inside" }
 ,{ "the" }
 ,{ "larger" }
 ,{ "buffer" }
 ,{ "by" }
 ,{ "the" }
 ,{ "delta" , & fmt_text_b }
 ,{ "units." }
 ,{ "I.e." }
 ,{ "a[i+delta]" , & fmt_text_b }
 ,{ "=" , & fmt_text_b }
 ,{ "a[i]" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b104 = { {
 { "MoveDown()" , & fmt_text_b }
 ,{ "moves" }
 ,{ "down" }
 ,{ "the" }
 ,{ "body" }
 ,{ "inside" }
 ,{ "the" }
 ,{ "larger" }
 ,{ "buffer" }
 ,{ "by" }
 ,{ "the" }
 ,{ "delta" , & fmt_text_b }
 ,{ "units." }
 ,{ "I.e." }
 ,{ "a[i]" , & fmt_text_b }
 ,{ "=" , & fmt_text_b }
 ,{ "a[i+delta]" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b105 = { {
 { "The" }
 ,{ "following" }
 ,{ "content" }
 ,{ "is" }
 ,{ "not" }
 ,{ "required" }
 ,{ "by" }
 ,{ "the" }
 ,{ "Integer" , & fmt_text_b }
 ,{ "," }
 ,{ "but" }
 ,{ "should" }
 ,{ "also" }
 ,{ "be" }
 ,{ "included" }
 ,{ "in" }
 ,{ "a" }
 ,{ "proper" }
 ,{ "implementation." }
} , & fmt_text , & align_text } ;

Text b106 = { {
 { "SignExt()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "sign" }
 ,{ "extension" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "unit." }
 ,{ "I.e." }
 ,{ "it" }
 ,{ "propagates" }
 ,{ "the" }
 ,{ "sign" }
 ,{ "bit" }
 ,{ "of" }
 ,{ "the" }
 ,{ "a" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b107 = { {
 { "SignCmp()" , & fmt_text_b }
 ,{ "performs" }
 ,{ "the" }
 ,{ "signed" }
 ,{ "comparison" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "units." }
} , & fmt_text , & align_text } ;

Text b108 = { {
 { "CountZeroLSB()" , & fmt_text_b }
 ,{ "counts" }
 ,{ "the" }
 ,{ "number" }
 ,{ "of" }
 ,{ "zero" }
 ,{ "least" }
 ,{ "significant" }
 ,{ "bits" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "unit." }
} , & fmt_text , & align_text } ;

Text b109 = { {
 { "Cmp()" , & fmt_text_b }
 ,{ "compares" }
 ,{ "arguments" }
 ,{ "of" }
 ,{ "the" }
 ,{ "same" }
 ,{ "length." }
} , & fmt_text , & align_text } ;

Text b110 = { {
 { "AddUnit()" , & fmt_text_b }
 ,{ "adds" }
 ,{ "the" }
 ,{ "unit" }
 ,{ "b" , & fmt_text_b }
 ,{ "(regarded" }
 ,{ "as" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "number)" }
 ,{ "to" }
 ,{ "a" , & fmt_text_b }
 ,{ "in-place." }
 ,{ "The" }
 ,{ "result" }
 ,{ "representation" }
 ,{ "requires" }
 ,{ "one" }
 ,{ "additional" }
 ,{ "unit," }
 ,{ "this" }
 ,{ "unit" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "If" }
 ,{ "na==0" , & fmt_text_b }
 ,{ "," }
 ,{ "b" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b111 = { {
 { "SubUnit()" , & fmt_text_b }
 ,{ "subtracts" }
 ,{ "the" }
 ,{ "unit" }
 ,{ "b" , & fmt_text_b }
 ,{ "(regarded" }
 ,{ "as" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "number)" }
 ,{ "from" }
 ,{ "a" , & fmt_text_b }
 ,{ "in-place." }
 ,{ "The" }
 ,{ "result" }
 ,{ "representation" }
 ,{ "requires" }
 ,{ "one" }
 ,{ "additional" }
 ,{ "unit," }
 ,{ "this" }
 ,{ "unit" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "If" }
 ,{ "na==0" , & fmt_text_b }
 ,{ "," }
 ,{ "-b" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b112 = { {
 { "UNegAddUnit()" , & fmt_text_b }
 ,{ "subtracts" }
 ,{ "a" , & fmt_text_b }
 ,{ "from" }
 ,{ "b" , & fmt_text_b }
 ,{ "(regarded" }
 ,{ "as" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "number)" }
 ,{ "in-place" }
 ,{ "(reversed" }
 ,{ "subtraction)." }
 ,{ "The" }
 ,{ "bit" }
 ,{ "C" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
 ,{ "If" }
 ,{ "na==0" , & fmt_text_b }
 ,{ "," }
 ,{ "-b" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b113 = { {
 { "NegAddUnit()" , & fmt_text_b }
 ,{ "subtracts" }
 ,{ "a" , & fmt_text_b }
 ,{ "from" }
 ,{ "b" , & fmt_text_b }
 ,{ "(regarded" }
 ,{ "as" }
 ,{ "an" }
 ,{ "unsigned" }
 ,{ "number)" }
 ,{ "in-place" }
 ,{ "(reversed" }
 ,{ "subtraction)." }
 ,{ "The" }
 ,{ "result" }
 ,{ "representation" }
 ,{ "requires" }
 ,{ "one" }
 ,{ "additional" }
 ,{ "unit," }
 ,{ "this" }
 ,{ "unit" }
 ,{ "is" }
 ,{ "returned." }
 ,{ "If" }
 ,{ "na==0" , & fmt_text_b }
 ,{ "," }
 ,{ "b" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b114 = { {
 { "URevSub()" , & fmt_text_b }
 ,{ "subtracts" }
 ,{ "b" , & fmt_text_b }
 ,{ "from" }
 ,{ "a" , & fmt_text_b }
 ,{ "in-place" }
 ,{ "(reversed" }
 ,{ "subtraction)." }
 ,{ "The" }
 ,{ "bit" }
 ,{ "C" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "have" }
 ,{ "the" }
 ,{ "same" }
 ,{ "length" }
 ,{ "nab" , & fmt_text_b }
 ,{ "and" }
 ,{ "does" }
 ,{ "not" }
 ,{ "overlap." }
} , & fmt_text , & align_text } ;

Text b115 = { {
 { "UShiftUp()" , & fmt_text_b }
 ,{ "combines" }
 ,{ "the" }
 ,{ "left" }
 ,{ "shift" }
 ,{ "and" }
 ,{ "the" }
 ,{ "move" }
 ,{ "up." }
 ,{ "It" }
 ,{ "shifts" }
 ,{ "the" }
 ,{ "na" , & fmt_text_b }
 ,{ "units" }
 ,{ "starting" }
 ,{ "from" }
 ,{ "the" }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "moves" }
 ,{ "the" }
 ,{ "result" }
 ,{ "up" }
 ,{ "by" }
 ,{ "the" }
 ,{ "delta" , & fmt_text_b }
 ,{ "units." }
 ,{ "The" }
 ,{ "MSU" , & fmt_text_b }
 ,{ "is" }
 ,{ "not" }
 ,{ "placed" }
 ,{ "in" }
 ,{ "the" }
 ,{ "buffer" }
 ,{ "but" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b116 = { {
 { "URShift()" , & fmt_text_b }
 ,{ "shifts" }
 ,{ "right" }
 ,{ "in-place." }
} , & fmt_text , & align_text } ;

Text b117 = { {
 { "UShiftDown()" , & fmt_text_b }
 ,{ "combines" }
 ,{ "the" }
 ,{ "right" }
 ,{ "shift" }
 ,{ "and" }
 ,{ "the" }
 ,{ "move" }
 ,{ "down." }
 ,{ "It" }
 ,{ "shifts" }
 ,{ "the" }
 ,{ "na" , & fmt_text_b }
 ,{ "units" }
 ,{ "starting" }
 ,{ "from" }
 ,{ "the" }
 ,{ "a+delta" , & fmt_text_b }
 ,{ "and" }
 ,{ "moves" }
 ,{ "the" }
 ,{ "result" }
 ,{ "down" }
 ,{ "by" }
 ,{ "the" }
 ,{ "delta" , & fmt_text_b }
 ,{ "units." }
} , & fmt_text , & align_text } ;

Text b118 = { {
 { "UMac()" , & fmt_text_b }
 ,{ "performs" }
 ,{ "the" }
 ,{ "\"multiplication" }
 ,{ "and" }
 ,{ "addition\"" }
 ,{ "operation." }
 ,{ "I.e." }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "b" , & fmt_text_b }
 ,{ "are" }
 ,{ "multiplied" }
 ,{ "and" }
 ,{ "added" }
 ,{ "to" }
 ,{ "c" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "c" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "na+nb" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "input" }
 ,{ "and" }
 ,{ "output" }
 ,{ "bodies" }
 ,{ "do" }
 ,{ "not" }
 ,{ "overlap." }
 ,{ "The" }
 ,{ "bit" }
 ,{ "C" , & fmt_text_b }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b119 = { {
 { "USq()" , & fmt_text_b }
 ,{ "calculates" }
 ,{ "the" }
 ,{ "square" }
 ,{ "of" }
 ,{ "the" }
 ,{ "argument" }
 ,{ "a" , & fmt_text_b }
 ,{ "and" }
 ,{ "places" }
 ,{ "the" }
 ,{ "result" }
 ,{ "into" }
 ,{ "the" }
 ,{ "c" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "length" }
 ,{ "of" }
 ,{ "the" }
 ,{ "c" , & fmt_text_b }
 ,{ "must" }
 ,{ "be" }
 ,{ "2*na" , & fmt_text_b }
 ,{ "." }
 ,{ "The" }
 ,{ "input" }
 ,{ "and" }
 ,{ "output" }
 ,{ "bodies" }
 ,{ "do" }
 ,{ "not" }
 ,{ "overlap." }
} , & fmt_text , & align_text } ;

Text b120 = { {
 { "There" }
 ,{ "is" }
 ,{ "a" }
 ,{ "default" , & fmt_text_a , & ..#page_IntegerSlowAlgo#link }
 ,{ "slow" , & fmt_text_a , & ..#page_IntegerSlowAlgo#link }
 ,{ "implementaton" , & fmt_text_a , & ..#page_IntegerSlowAlgo#link }
 ,{ "of" }
 ,{ "this" }
 ,{ "algorithm" }
 ,{ "package" }
 ,{ "for" }
 ,{ "all" }
 ,{ "unsigned" }
 ,{ "integral" }
 ,{ "units." }
 ,{ "This" }
 ,{ "implementation" }
 ,{ "is" }
 ,{ "slow," }
 ,{ "for" }
 ,{ "example," }
 ,{ "it" }
 ,{ "has" }
 ,{ "quadratic" }
 ,{ "complexity" }
 ,{ "of" }
 ,{ "the" }
 ,{ "multiplication" }
 ,{ "operations." }
 ,{ "But" }
 ,{ "it" }
 ,{ "is" }
 ,{ "generic," }
 ,{ "it" }
 ,{ "does" }
 ,{ "not" }
 ,{ "require" }
 ,{ "any" }
 ,{ "CPU-specific" }
 ,{ "assembler" }
 ,{ "code." }
 ,{ "This" }
 ,{ "package" }
 ,{ "can" }
 ,{ "be" }
 ,{ "used" }
 ,{ "as" }
 ,{ "an" }
 ,{ "algorithmic" }
 ,{ "reference" }
 ,{ "and" }
 ,{ "for" }
 ,{ "the" }
 ,{ "comparative" }
 ,{ "testing." }
} , & fmt_text , & align_text } ;

Text b121 = { {
 { "Any" }
 ,{ "target" }
 ,{ "must" }
 ,{ "provide" }
 ,{ "the" }
 ,{ "fast" , & fmt_text_a , & ..#page_IntegerFastAlgo#link }
 ,{ "implementation" , & fmt_text_a , & ..#page_IntegerFastAlgo#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> Integer" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b3 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b4 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b5 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b6 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b7 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
 ,{ & b15 , null , inner_text , outer_text , back_text }
 ,{ & b16 , null , inner_text , outer_text , back_text }
 ,{ & b17 , null , inner_text , outer_text , back_text }
 ,{ & b18 , null , inner_text , outer_text , back_text }
 ,{ & b19 , null , inner_text , outer_text , back_text }
 ,{ & b20 , null , inner_text , outer_text , back_text }
 ,{ & b21 , null , inner_text , outer_text , back_text }
 ,{ & b22 , null , inner_text , outer_text , back_text }
 ,{ & b23 , null , inner_text , outer_text , back_text }
 ,{ & b24 , null , inner_text , outer_text , back_text }
 ,{ & b25 , null , inner_text , outer_text , back_text }
 ,{ & b26 , null , inner_text , outer_text , back_text }
 ,{ & b27 , null , inner_text , outer_text , back_text }
 ,{ & b28 , null , inner_text , outer_text , back_text }
 ,{ & b29 , null , inner_text , outer_text , back_text }
 ,{ & b30 , null , inner_text , outer_text , back_text }
 ,{ & b31 , null , inner_text , outer_text , back_text }
 ,{ & b32 , null , inner_text , outer_text , back_text }
 ,{ & b33 , null , inner_text , outer_text , back_text }
 ,{ & b34 , null , inner_text , outer_text , back_text }
 ,{ & b35 , null , inner_text , outer_text , back_text }
 ,{ & b36 , null , inner_text , outer_text , back_text }
 ,{ & b37 , null , inner_text , outer_text , back_text }
 ,{ & b38 , null , inner_text , outer_text , back_text }
 ,{ & b39 , null , inner_text , outer_text , back_text }
 ,{ & b40 , null , inner_text , outer_text , back_text }
 ,{ & b41 , null , inner_text , outer_text , back_text }
 ,{ & b42 , null , inner_text , outer_text , back_text }
 ,{ & b43 , null , inner_text , outer_text , back_text }
 ,{ & b44 , null , inner_text , outer_text , back_text }
 ,{ & b45 , null , inner_text , outer_text , back_text }
 ,{ & b46 , null , inner_text , outer_text , back_text }
 ,{ & b47 , null , inner_text , outer_text , back_text }
 ,{ & b48 , null , inner_text , outer_text , back_text }
 ,{ & b49 , null , inner_text , outer_text , back_text }
 ,{ & b50 , null , inner_text , outer_text , back_text }
 ,{ & b51 , null , inner_text , outer_text , back_text }
 ,{ & b52 , null , inner_text , outer_text , back_text }
 ,{ & b53 , null , inner_text , outer_text , back_text }
 ,{ & b54 , null , inner_text , outer_text , back_text }
 ,{ & b55 , null , inner_text , outer_text , back_text }
 ,{ & b56 , null , inner_text , outer_text , back_text }
 ,{ & b57 , null , inner_text , outer_text , back_text }
 ,{ & b58 , null , inner_text , outer_text , back_text }
 ,{ & b59 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b60 , null , inner_text , outer_text , back_text }
 ,{ & b61 , null , inner_text , outer_text , back_text }
 ,{ & b62 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b63 , null , inner_text , outer_text , back_text }
 ,{ & b64 , null , inner_text , outer_text , back_text }
 ,{ & b65 , null , inner_h3 , outer_h3 , back_h3 }
 ,{ & b66 , null , inner_text , outer_text , back_text }
 ,{ & b67 , null , inner_text , outer_text , back_text }
 ,{ & b68 , null , inner_text , outer_text , back_text }
 ,{ & b69 , null , inner_text , outer_text , back_text }
 ,{ & b70 , null , inner_text , outer_text , back_text }
 ,{ & b71 , null , inner_text , outer_text , back_text }
 ,{ & b72 , null , inner_text , outer_text , back_text }
 ,{ & b73 , null , inner_text , outer_text , back_text }
 ,{ & b74 , null , inner_text , outer_text , back_text }
 ,{ & b75 , null , inner_text , outer_text , back_text }
 ,{ & b76 , null , inner_text , outer_text , back_text }
 ,{ & b77 , null , inner_text , outer_text , back_text }
 ,{ & b78 , null , inner_text , outer_text , back_text }
 ,{ & b79 , null , inner_text , outer_text , back_text }
 ,{ & b80 , null , inner_text , outer_text , back_text }
 ,{ & b81 , null , inner_text , outer_text , back_text }
 ,{ & b82 , null , inner_text , outer_text , back_text }
 ,{ & b83 , null , inner_text , outer_text , back_text }
 ,{ & b84 , null , inner_text , outer_text , back_text }
 ,{ & b85 , null , inner_text , outer_text , back_text }
 ,{ & b86 , null , inner_text , outer_text , back_text }
 ,{ & b87 , null , inner_text , outer_text , back_text }
 ,{ & b88 , null , inner_text , outer_text , back_text }
 ,{ & b89 , null , inner_text , outer_text , back_text }
 ,{ & b90 , null , inner_text , outer_text , back_text }
 ,{ & b91 , null , inner_text , outer_text , back_text }
 ,{ & b92 , null , inner_text , outer_text , back_text }
 ,{ & b93 , null , inner_text , outer_text , back_text }
 ,{ & b94 , null , inner_text , outer_text , back_text }
 ,{ & b95 , null , inner_text , outer_text , back_text }
 ,{ & b96 , null , inner_text , outer_text , back_text }
 ,{ & b97 , null , inner_text , outer_text , back_text }
 ,{ & b98 , null , inner_text , outer_text , back_text }
 ,{ & b99 , null , inner_text , outer_text , back_text }
 ,{ & b100 , null , inner_text , outer_text , back_text }
 ,{ & b101 , null , inner_text , outer_text , back_text }
 ,{ & b102 , null , inner_text , outer_text , back_text }
 ,{ & b103 , null , inner_text , outer_text , back_text }
 ,{ & b104 , null , inner_text , outer_text , back_text }
 ,{ & b105 , null , inner_text , outer_text , back_text }
 ,{ & b106 , null , inner_text , outer_text , back_text }
 ,{ & b107 , null , inner_text , outer_text , back_text }
 ,{ & b108 , null , inner_text , outer_text , back_text }
 ,{ & b109 , null , inner_text , outer_text , back_text }
 ,{ & b110 , null , inner_text , outer_text , back_text }
 ,{ & b111 , null , inner_text , outer_text , back_text }
 ,{ & b112 , null , inner_text , outer_text , back_text }
 ,{ & b113 , null , inner_text , outer_text , back_text }
 ,{ & b114 , null , inner_text , outer_text , back_text }
 ,{ & b115 , null , inner_text , outer_text , back_text }
 ,{ & b116 , null , inner_text , outer_text , back_text }
 ,{ & b117 , null , inner_text , outer_text , back_text }
 ,{ & b118 , null , inner_text , outer_text , back_text }
 ,{ & b119 , null , inner_text , outer_text , back_text }
 ,{ & b120 , null , inner_text , outer_text , back_text }
 ,{ & b121 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_InstanceLock#page , & page_IntegerFastAlgo#page };

Link link = { &page } ;

}

scope page_IntegerFastAlgo {

Text b0 = { {
 { "IntegerFastAlgo" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/math/IntegerFastAlgo.h" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "CCore" , & fmt_text_b }
 ,{ "provides" }
 ,{ "a" }
 ,{ "stub" }
 ,{ "implementation" }
 ,{ "of" }
 ,{ "the" }
 ,{ "integer" , & fmt_text_a , & ..#page_Integer#link_Algo }
 ,{ "fast" , & fmt_text_a , & ..#page_Integer#link_Algo }
 ,{ "algorithm" , & fmt_text_a , & ..#page_Integer#link_Algo }
 ,{ "package" , & fmt_text_a , & ..#page_Integer#link_Algo }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "But" }
 ,{ "any" }
 ,{ "target" }
 ,{ "should" }
 ,{ "supply" }
 ,{ "a" }
 ,{ "proper" }
 ,{ "implementation," }
 ,{ "specific" }
 ,{ "to" }
 ,{ "the" }
 ,{ "target" }
 ,{ "CPU." }
 ,{ "You" }
 ,{ "may" }
 ,{ "implement" }
 ,{ "such" }
 ,{ "package" }
 ,{ "using" }
 ,{ "the" }
 ,{ "GMP" , & fmt_text_a }
 ,{ "library" , & fmt_text_a }
 ,{ "." }
 ,{ "You" }
 ,{ "can" }
 ,{ "find" }
 ,{ "an" }
 ,{ "example" }
 ,{ "of" }
 ,{ "it" }
 ,{ "in" }
 ,{ "the" }
 ,{ "target" }
 ,{ "WIN32" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> IntegerFastAlgo" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_Integer#page , & page_IntegerOctetBuilder#page };

Link link = { &page } ;

}

scope page_IntegerOctetBuilder {

Text b0 = { {
 { "IntegerOctetBuilder" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/math/IntegerOctetBuilder.h" , & fmt_text_Files_b }
 ,{ "CCore/src/math/IntegerOctetBuilder.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "A" }
 ,{ "collection" }
 ,{ "of" }
 ,{ "tools" }
 ,{ "to" }
 ,{ "work" }
 ,{ "with" }
 ,{ "integer" }
 ,{ "octet" }
 ,{ "representations." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "PrintIntegerOctets" }
} , & fmt_h4 , & align_h4 } ;

Text b4 = { {
 { "PrintIntegerOctets<Integer>" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "printable" }
 ,{ "object" }
 ,{ "to" }
 ,{ "print" }
 ,{ "an" }
 ,{ "octet" }
 ,{ "representation" }
 ,{ "of" }
 ,{ "the" }
 ,{ "given" }
 ,{ "Integer" , & fmt_text_a , & ..#page_Integer#link }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "Below" }
 ,{ "is" }
 ,{ "an" }
 ,{ "example" }
 ,{ "of" }
 ,{ "the" }
 ,{ "print" }
 ,{ "output." }
 ,{ "It" }
 ,{ "starts" }
 ,{ "from" }
 ,{ "the" }
 ,{ "\"\\n" , & fmt_text_b }
 ,{ "{\\n\"" , & fmt_text_b }
 ,{ "and" }
 ,{ "ends" }
 ,{ "with" }
 ,{ "\"\\n" , & fmt_text_b }
 ,{ "}\"" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "OctetInteger" }
} , & fmt_h4 , & align_h4 } ;

Text b7 = { {
 { "Builds" }
 ,{ "an" }
 ,{ "Integer" }
 ,{ "from" }
 ,{ "the" }
 ,{ "octet" }
 ,{ "representation." }
 ,{ "The" }
 ,{ "constructor" }
 ,{ "argument" }
 ,{ "is" }
 ,{ "an" }
 ,{ "octet" }
 ,{ "range," }
 ,{ "this" }
 ,{ "range" }
 ,{ "is" }
 ,{ "the" }
 ,{ "unsigned" }
 ,{ "lendian" }
 ,{ "representation" }
 ,{ "of" }
 ,{ "some" }
 ,{ "integer." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> IntegerOctetBuilder" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_h4 , outer_h4 , back_h4 }
 ,{ & b7 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_IntegerFastAlgo#page , & page_IntegerSlowAlgo#page };

Link link = { &page } ;

}

scope page_IntegerSlowAlgo {

Text b0 = { {
 { "IntegerSlowAlgo" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/math/IntegerSlowAlgo.h" , & fmt_text_Files_b }
 ,{ "CCore/src/math/IntegerSlowAlgo.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "IntegerSlowAlgo" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "reference" }
 ,{ "implementation" }
 ,{ "of" }
 ,{ "the" }
 ,{ "proper" }
 ,{ "integer" , & fmt_text_a , & ..#page_Integer#link_Algo }
 ,{ "algorithm" , & fmt_text_a , & ..#page_Integer#link_Algo }
 ,{ "package" , & fmt_text_a , & ..#page_Integer#link_Algo }
 ,{ "." }
 ,{ "You" }
 ,{ "can" }
 ,{ "use" }
 ,{ "this" }
 ,{ "package" }
 ,{ "for" }
 ,{ "algorithm" }
 ,{ "definitions" }
 ,{ "and" }
 ,{ "for" }
 ,{ "comparative" }
 ,{ "testing." }
 ,{ "IntegerSlowAlgo" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "template," }
 ,{ "its" }
 ,{ "template" }
 ,{ "parameter" }
 ,{ "is" }
 ,{ "the" }
 ,{ "unit" }
 ,{ "type." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> IntegerSlowAlgo" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_IntegerOctetBuilder#page , & page_InterfaceHost#page };

Link link = { &page } ;

}

scope page_InterfaceHost {

Text b0 = { {
 { "InterfaceHost" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/InterfaceHost.h" , & fmt_text_Files_b }
 ,{ "CCore/src/InterfaceHost.cpp" , & fmt_text_Files_b }
} , & fmt_text_Files , & align_text_Files } ;

Text b2 = { {
 { "In" }
 ,{ "C++" }
 ,{ "by" }
 ,{ "tradition" }
 ,{ "we" }
 ,{ "implement" }
 ,{ "interfaces" }
 ,{ "using" }
 ,{ "abstract" }
 ,{ "classes." }
} , & fmt_text , & align_text } ;

Text b3 = { {
 { "Then" }
 ,{ "we" }
 ,{ "implement" }
 ,{ "this" }
 ,{ "interface" }
 ,{ "in" }
 ,{ "some" }
 ,{ "derived" }
 ,{ "class." }
} , & fmt_text , & align_text } ;

Text b4 = { {
 { "Once" }
 ,{ "we" }
 ,{ "have" }
 ,{ "a" }
 ,{ "base" }
 ,{ "object" }
 ,{ "pointer" }
 ,{ "we" }
 ,{ "can" }
 ,{ "retrieve" }
 ,{ "the" }
 ,{ "interface" }
 ,{ "using" }
 ,{ "the" }
 ,{ "dynamic_cast" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b5 = { {
 { "This" }
 ,{ "approach" }
 ,{ "is" }
 ,{ "simple," }
 ,{ "but" }
 ,{ "have" }
 ,{ "one" }
 ,{ "big" }
 ,{ "disadvantage." }
 ,{ "You" }
 ,{ "have" }
 ,{ "to" }
 ,{ "implement" }
 ,{ "interface" }
 ,{ "in" }
 ,{ "the" }
 ,{ "object." }
 ,{ "You" }
 ,{ "cannot" }
 ,{ "borrow" }
 ,{ "the" }
 ,{ "interface" }
 ,{ "from" }
 ,{ "another" }
 ,{ "object." }
} , & fmt_text , & align_text } ;

Text b6 = { {
 { "InterfaceHost" , & fmt_text_b }
 ,{ "is" }
 ,{ "a" }
 ,{ "tool" }
 ,{ "to" }
 ,{ "solve" }
 ,{ "this" }
 ,{ "problem." }
} , & fmt_text , & align_text } ;

Text b7 = { {
 { "It" }
 ,{ "is" }
 ,{ "a" }
 ,{ "class" }
 ,{ "with" }
 ,{ "one" }
 ,{ "virtual" }
 ,{ "method" }
 ,{ "requestInterface()" , & fmt_text_b }
 ,{ "and" }
 ,{ "two" }
 ,{ "helper" }
 ,{ "methods" }
 ,{ "pickInterface()" , & fmt_text_b }
 ,{ "and" }
 ,{ "takeInterface()" , & fmt_text_b }
 ,{ "." }
} , & fmt_text , & align_text } ;

Text b8 = { {
 { "The" }
 ,{ "method" }
 ,{ "requestInterface()" , & fmt_text_b }
 ,{ "has" }
 ,{ "default" }
 ,{ "implementation," }
 ,{ "this" }
 ,{ "variant" }
 ,{ "takes" }
 ,{ "the" }
 ,{ "required" }
 ,{ "interface" }
 ,{ "from" }
 ,{ "the" }
 ,{ "host" }
 ,{ "class." }
 ,{ "But" }
 ,{ "you" }
 ,{ "can" }
 ,{ "override" }
 ,{ "this" }
 ,{ "behavior" }
 ,{ "in" }
 ,{ "a" }
 ,{ "derived" }
 ,{ "class" }
 ,{ "to" }
 ,{ "take" }
 ,{ "interfaces" }
 ,{ "from" }
 ,{ "another" }
 ,{ "sources:" }
} , & fmt_text , & align_text } ;

Text b9 = { {
 { "You" }
 ,{ "may" }
 ,{ "do" }
 ,{ "nothing" }
 ,{ "to" }
 ,{ "reject" }
 ,{ "some" }
 ,{ "interface" }
 ,{ "request." }
} , & fmt_text , & align_text } ;

Text b10 = { {
 { "The" }
 ,{ "\"caster\"" }
 ,{ "interface" }
 ,{ "InterfaceCaster" , & fmt_text_b }
 ,{ "has" }
 ,{ "two" }
 ,{ "methods." }
} , & fmt_text , & align_text } ;

Text b11 = { {
 { "cast()" , & fmt_text_b }
 ,{ "performs" }
 ,{ "the" }
 ,{ "dynamic_cast" , & fmt_text_b }
 ,{ "from" }
 ,{ "the" }
 ,{ "given" }
 ,{ "pointer" }
 ,{ "to" }
 ,{ "the" }
 ,{ "requested" }
 ,{ "interface." }
} , & fmt_text , & align_text } ;

Text b12 = { {
 { "getTypeNumber()" , & fmt_text_b }
 ,{ "returns" }
 ,{ "the" }
 ,{ "type" , & fmt_text_a , & ..#page_TypeNumber#link }
 ,{ "number" , & fmt_text_a , & ..#page_TypeNumber#link }
 ,{ "of" }
 ,{ "the" }
 ,{ "requested" }
 ,{ "interface." }
 ,{ "You" }
 ,{ "can" }
 ,{ "use" }
 ,{ "one" }
 ,{ "to" }
 ,{ "dispatch" }
 ,{ "the" }
 ,{ "cast" }
 ,{ "operation" }
 ,{ "between" }
 ,{ "multiple" }
 ,{ "sources." }
 ,{ "You" }
 ,{ "must" }
 ,{ "assign" }
 ,{ "a" }
 ,{ "Unid" , & fmt_text_a , & ..#page_Unid#link }
 ,{ "to" }
 ,{ "the" }
 ,{ "interface" }
 ,{ "class." }
} , & fmt_text , & align_text } ;

Text b13 = { {
 { "T" , & fmt_text_b }
 ,{ "*" , & fmt_text_b }
 ,{ "pickInterface<T>()" , & fmt_text_b }
 ,{ "requests" }
 ,{ "the" }
 ,{ "specific" }
 ,{ "interface," }
 ,{ "given" }
 ,{ "by" }
 ,{ "the" }
 ,{ "template" }
 ,{ "parameter." }
 ,{ "If" }
 ,{ "the" }
 ,{ "interface" }
 ,{ "is" }
 ,{ "not" }
 ,{ "supported" }
 ,{ "null" }
 ,{ "is" }
 ,{ "returned." }
} , & fmt_text , & align_text } ;

Text b14 = { {
 { "T" , & fmt_text_b }
 ,{ "*" , & fmt_text_b }
 ,{ "takeInterface<T>(StrLen" , & fmt_text_b }
 ,{ "from)" , & fmt_text_b }
 ,{ "does" }
 ,{ "the" }
 ,{ "same," }
 ,{ "but" }
 ,{ "throw" }
 ,{ "an" }
 ,{ "exception" }
 ,{ "if" }
 ,{ "the" }
 ,{ "interface" }
 ,{ "is" }
 ,{ "not" }
 ,{ "supported." }
 ,{ "The" }
 ,{ "argument" }
 ,{ "from" , & fmt_text_b }
 ,{ "is" }
 ,{ "used" }
 ,{ "to" }
 ,{ "report" }
 ,{ "the" }
 ,{ "requester." }
 ,{ "To" }
 ,{ "throw" }
 ,{ "the" }
 ,{ "exception" }
 ,{ "the" }
 ,{ "function" }
 ,{ "GuardNoInterface()" , & fmt_text_b }
 ,{ "is" }
 ,{ "used," }
 ,{ "the" }
 ,{ "argument" }
 ,{ "name" , & fmt_text_b }
 ,{ "is" }
 ,{ "created" }
 ,{ "using" }
 ,{ "the" }
 ,{ "class" }
 ,{ "GetInterfaceName<T>" , & fmt_text_b }
 ,{ "." }
 ,{ "This" }
 ,{ "class" }
 ,{ "takes" }
 ,{ "the" }
 ,{ "inner" }
 ,{ "constant" }
 ,{ "T::InterfaceName" , & fmt_text_b }
 ,{ "or" }
 ,{ "the" }
 ,{ "name" }
 ,{ "\"<Unknown" , & fmt_text_b }
 ,{ "interface>\"" , & fmt_text_b }
 ,{ "," }
 ,{ "if" }
 ,{ "such" }
 ,{ "constant" }
 ,{ "does" }
 ,{ "not" }
 ,{ "exist." }
} , & fmt_text , & align_text } ;

Page page = { "CCore -> InterfaceHost" ,
{
 { & b0 , null , inner_h2 , outer_h2 , back_h2 }
 ,{ & b1 , null , inner_text_Files , outer_text_Files , back_text_Files }
 ,{ & b2 , null , inner_text , outer_text , back_text }
 ,{ & b3 , null , inner_text , outer_text , back_text }
 ,{ & b4 , null , inner_text , outer_text , back_text }
 ,{ & b5 , null , inner_text , outer_text , back_text }
 ,{ & b6 , null , inner_text , outer_text , back_text }
 ,{ & b7 , null , inner_text , outer_text , back_text }
 ,{ & b8 , null , inner_text , outer_text , back_text }
 ,{ & b9 , null , inner_text , outer_text , back_text }
 ,{ & b10 , null , inner_text , outer_text , back_text }
 ,{ & b11 , null , inner_text , outer_text , back_text }
 ,{ & b12 , null , inner_text , outer_text , back_text }
 ,{ & b13 , null , inner_text , outer_text , back_text }
 ,{ & b14 , null , inner_text , outer_text , back_text }
} , NoColor , NoColor , & content , & page_IntegerSlowAlgo#page , & page_IntervalTree#page };

Link link = { &page } ;

}

scope page_IntervalTree {

Text b0 = { {
 { "IntervalTree" }
} , & fmt_h2 , & align_h2 } ;

Text b1 = { {
 { "Files" }
 ,{ "CCore/inc/IntervalTree.h" , & fmt_text_Files_b }
 ,{ "CCore/src/IntervalTree.cpp" , & fmt_text_Files_b }

Text b2 = { {
 ,{ "solves" }