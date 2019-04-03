text OBJ_PATH = ".vmobj" ;

text CC = "D:/cygwin"+"/opt/gcc-8.3.0/bin/g++-8.3.0" ;

text AS = "as" ;

text LD = "D:/cygwin"+"/opt/gcc-8.3.0/bin/g++-8.3.0" ;

text AR = "ar" ;

text TARGET = "../.."+"/Target/"+"WIN32utf8"+"/CCore.a" ;

Target cpp1 = { "AES.cpp" , "../../Applied/CCore/src/./crypton/AES.cpp" } ;
Target ocpp1 = { "AES.o" , OBJ_PATH+"/AES.o" } ;
Rule rcpp1 = { {&cpp1} , {&ocpp1} , {&execpp1} } ;
Exe execpp1 = { "CC AES.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./crypton/AES.cpp"
 ,"-o"
 ,OBJ_PATH+"/AES.o"
} } ;

Target cpp2 = { "APRTest.cpp" , "../../Applied/CCore/src/./math/APRTest.cpp" } ;
Target ocpp2 = { "APRTest.o" , OBJ_PATH+"/APRTest.o" } ;
Rule rcpp2 = { {&cpp2} , {&ocpp2} , {&execpp2} } ;
Exe execpp2 = { "CC APRTest.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./math/APRTest.cpp"
 ,"-o"
 ,OBJ_PATH+"/APRTest.o"
} } ;

Target cpp3 = { "APRTestData.gen.cpp" , "../../Applied/CCore/src/./math/APRTestData.gen.cpp" } ;
Target ocpp3 = { "APRTestData.gen.o" , OBJ_PATH+"/APRTestData.gen.o" } ;
Rule rcpp3 = { {&cpp3} , {&ocpp3} , {&execpp3} } ;
Exe execpp3 = { "CC APRTestData.gen.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./math/APRTestData.gen.cpp"
 ,"-o"
 ,OBJ_PATH+"/APRTestData.gen.o"
} } ;

Target cpp4 = { "Abort.cpp" , "../../HCore/CCore/src/Abort.cpp" } ;
Target ocpp4 = { "Abort.o" , OBJ_PATH+"/Abort.o" } ;
Rule rcpp4 = { {&cpp4} , {&ocpp4} , {&execpp4} } ;
Exe execpp4 = { "CC Abort.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/Abort.cpp"
 ,"-o"
 ,OBJ_PATH+"/Abort.o"
} } ;

Target cpp5 = { "AbortMsgFunc.cpp" , "../../Simple/CCore/src/AbortMsgFunc.cpp" } ;
Target ocpp5 = { "AbortMsgFunc.o" , OBJ_PATH+"/AbortMsgFunc.o" } ;
Rule rcpp5 = { {&cpp5} , {&ocpp5} , {&execpp5} } ;
Exe execpp5 = { "CC AbortMsgFunc.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/AbortMsgFunc.cpp"
 ,"-o"
 ,OBJ_PATH+"/AbortMsgFunc.o"
} } ;

Target cpp6 = { "Activator.cpp" , "../../Desktop/Tools/CCore/src/./video/Activator.cpp" } ;
Target ocpp6 = { "Activator.o" , OBJ_PATH+"/Activator.o" } ;
Rule rcpp6 = { {&cpp6} , {&ocpp6} , {&execpp6} } ;
Exe execpp6 = { "CC Activator.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Tools/CCore/src/./video/Activator.cpp"
 ,"-o"
 ,OBJ_PATH+"/Activator.o"
} } ;

Target cpp7 = { "AntiSem.cpp" , "../../HCore/CCore/src/./task/AntiSem.cpp" } ;
Target ocpp7 = { "AntiSem.o" , OBJ_PATH+"/AntiSem.o" } ;
Rule rcpp7 = { {&cpp7} , {&ocpp7} , {&execpp7} } ;
Exe execpp7 = { "CC AntiSem.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./task/AntiSem.cpp"
 ,"-o"
 ,OBJ_PATH+"/AntiSem.o"
} } ;

Target cpp8 = { "AnyPtr.cpp" , "../../Simple/CCore/src/AnyPtr.cpp" } ;
Target ocpp8 = { "AnyPtr.o" , OBJ_PATH+"/AnyPtr.o" } ;
Rule rcpp8 = { {&cpp8} , {&ocpp8} , {&execpp8} } ;
Exe execpp8 = { "CC AnyPtr.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/AnyPtr.cpp"
 ,"-o"
 ,OBJ_PATH+"/AnyPtr.o"
} } ;

Target cpp9 = { "AppMain.cpp" , "../../Desktop/App/CCore/src/./video/AppMain.cpp" } ;
Target ocpp9 = { "AppMain.o" , OBJ_PATH+"/AppMain.o" } ;
Rule rcpp9 = { {&cpp9} , {&ocpp9} , {&execpp9} } ;
Exe execpp9 = { "CC AppMain.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/App/CCore/src/./video/AppMain.cpp"
 ,"-o"
 ,OBJ_PATH+"/AppMain.o"
} } ;

Target cpp10 = { "AppOpt.cpp" , "../../Desktop/App/CCore/src/./video/AppOpt.cpp" } ;
Target ocpp10 = { "AppOpt.o" , OBJ_PATH+"/AppOpt.o" } ;
Rule rcpp10 = { {&cpp10} , {&ocpp10} , {&execpp10} } ;
Exe execpp10 = { "CC AppOpt.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/App/CCore/src/./video/AppOpt.cpp"
 ,"-o"
 ,OBJ_PATH+"/AppOpt.o"
} } ;

Target cpp11 = { "ApplicationBase.cpp" , "../../Desktop/App/CCore/src/./video/ApplicationBase.cpp" } ;
Target ocpp11 = { "ApplicationBase.o" , OBJ_PATH+"/ApplicationBase.o" } ;
Rule rcpp11 = { {&cpp11} , {&ocpp11} , {&execpp11} } ;
Exe execpp11 = { "CC ApplicationBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/App/CCore/src/./video/ApplicationBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/ApplicationBase.o"
} } ;

Target cpp12 = { "ApplyToList.cpp" , "../../Fundamental/CCore/src/./algon/ApplyToList.cpp" } ;
Target ocpp12 = { "ApplyToList.o" , OBJ_PATH+"/ApplyToList.o" } ;
Rule rcpp12 = { {&cpp12} , {&ocpp12} , {&execpp12} } ;
Exe execpp12 = { "CC ApplyToList.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./algon/ApplyToList.cpp"
 ,"-o"
 ,OBJ_PATH+"/ApplyToList.o"
} } ;

Target cpp13 = { "ApplyToRange.cpp" , "../../Fundamental/CCore/src/./algon/ApplyToRange.cpp" } ;
Target ocpp13 = { "ApplyToRange.o" , OBJ_PATH+"/ApplyToRange.o" } ;
Rule rcpp13 = { {&cpp13} , {&ocpp13} , {&execpp13} } ;
Exe execpp13 = { "CC ApplyToRange.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./algon/ApplyToRange.cpp"
 ,"-o"
 ,OBJ_PATH+"/ApplyToRange.o"
} } ;

Target cpp14 = { "Array.cpp" , "../../Fundamental/CCore/src/Array.cpp" } ;
Target ocpp14 = { "Array.o" , OBJ_PATH+"/Array.o" } ;
Rule rcpp14 = { {&cpp14} , {&ocpp14} , {&execpp14} } ;
Exe execpp14 = { "CC Array.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/Array.cpp"
 ,"-o"
 ,OBJ_PATH+"/Array.o"
} } ;

Target cpp15 = { "ArrayAlgo.cpp" , "../../Fundamental/CCore/src/./array/ArrayAlgo.cpp" } ;
Target ocpp15 = { "ArrayAlgo.o" , OBJ_PATH+"/ArrayAlgo.o" } ;
Rule rcpp15 = { {&cpp15} , {&ocpp15} , {&execpp15} } ;
Exe execpp15 = { "CC ArrayAlgo.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./array/ArrayAlgo.cpp"
 ,"-o"
 ,OBJ_PATH+"/ArrayAlgo.o"
} } ;

Target cpp16 = { "ArrayBase.cpp" , "../../Fundamental/CCore/src/./array/ArrayBase.cpp" } ;
Target ocpp16 = { "ArrayBase.o" , OBJ_PATH+"/ArrayBase.o" } ;
Rule rcpp16 = { {&cpp16} , {&ocpp16} , {&execpp16} } ;
Exe execpp16 = { "CC ArrayBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./array/ArrayBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/ArrayBase.o"
} } ;

Target cpp17 = { "ArrayInsDel.cpp" , "../../Fundamental/CCore/src/./array/ArrayInsDel.cpp" } ;
Target ocpp17 = { "ArrayInsDel.o" , OBJ_PATH+"/ArrayInsDel.o" } ;
Rule rcpp17 = { {&cpp17} , {&ocpp17} , {&execpp17} } ;
Exe execpp17 = { "CC ArrayInsDel.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./array/ArrayInsDel.cpp"
 ,"-o"
 ,OBJ_PATH+"/ArrayInsDel.o"
} } ;

Target cpp18 = { "AsyncBinaryFile.cpp" , "../../Applied/CCore/src/AsyncBinaryFile.cpp" } ;
Target ocpp18 = { "AsyncBinaryFile.o" , OBJ_PATH+"/AsyncBinaryFile.o" } ;
Rule rcpp18 = { {&cpp18} , {&ocpp18} , {&execpp18} } ;
Exe execpp18 = { "CC AsyncBinaryFile.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/AsyncBinaryFile.cpp"
 ,"-o"
 ,OBJ_PATH+"/AsyncBinaryFile.o"
} } ;

Target cpp19 = { "AsyncFile.cpp" , "../../Applied/CCore/src/AsyncFile.cpp" } ;
Target ocpp19 = { "AsyncFile.o" , OBJ_PATH+"/AsyncFile.o" } ;
Rule rcpp19 = { {&cpp19} , {&ocpp19} , {&execpp19} } ;
Exe execpp19 = { "CC AsyncFile.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/AsyncFile.cpp"
 ,"-o"
 ,OBJ_PATH+"/AsyncFile.o"
} } ;

Target cpp20 = { "AsyncFileDevice.cpp" , "../../HCore/CCore/src/AsyncFileDevice.cpp" } ;
Target ocpp20 = { "AsyncFileDevice.o" , OBJ_PATH+"/AsyncFileDevice.o" } ;
Rule rcpp20 = { {&cpp20} , {&ocpp20} , {&execpp20} } ;
Exe execpp20 = { "CC AsyncFileDevice.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/AsyncFileDevice.cpp"
 ,"-o"
 ,OBJ_PATH+"/AsyncFileDevice.o"
} } ;

Target cpp21 = { "AsyncFileToMem.cpp" , "../../Applied/CCore/src/AsyncFileToMem.cpp" } ;
Target ocpp21 = { "AsyncFileToMem.o" , OBJ_PATH+"/AsyncFileToMem.o" } ;
Rule rcpp21 = { {&cpp21} , {&ocpp21} , {&execpp21} } ;
Exe execpp21 = { "CC AsyncFileToMem.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/AsyncFileToMem.cpp"
 ,"-o"
 ,OBJ_PATH+"/AsyncFileToMem.o"
} } ;

Target cpp22 = { "AsyncUDPDevice.cpp" , "../../HCore/CCore/src/./net/AsyncUDPDevice.cpp" } ;
Target ocpp22 = { "AsyncUDPDevice.o" , OBJ_PATH+"/AsyncUDPDevice.o" } ;
Rule rcpp22 = { {&cpp22} , {&ocpp22} , {&execpp22} } ;
Exe execpp22 = { "CC AsyncUDPDevice.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./net/AsyncUDPDevice.cpp"
 ,"-o"
 ,OBJ_PATH+"/AsyncUDPDevice.o"
} } ;

Target cpp23 = { "Atomic.cpp" , "../../Applied/CCore/src/./task/Atomic.cpp" } ;
Target ocpp23 = { "Atomic.o" , OBJ_PATH+"/Atomic.o" } ;
Rule rcpp23 = { {&cpp23} , {&ocpp23} , {&execpp23} } ;
Exe execpp23 = { "CC Atomic.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./task/Atomic.cpp"
 ,"-o"
 ,OBJ_PATH+"/Atomic.o"
} } ;

Target cpp24 = { "AtomicRefArray.cpp" , "../../Fundamental/CCore/src/./array/AtomicRefArray.cpp" } ;
Target ocpp24 = { "AtomicRefArray.o" , OBJ_PATH+"/AtomicRefArray.o" } ;
Rule rcpp24 = { {&cpp24} , {&ocpp24} , {&execpp24} } ;
Exe execpp24 = { "CC AtomicRefArray.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./array/AtomicRefArray.cpp"
 ,"-o"
 ,OBJ_PATH+"/AtomicRefArray.o"
} } ;

Target cpp25 = { "AttachmentHost.cpp" , "../../Fundamental/CCore/src/AttachmentHost.cpp" } ;
Target ocpp25 = { "AttachmentHost.o" , OBJ_PATH+"/AttachmentHost.o" } ;
Rule rcpp25 = { {&cpp25} , {&ocpp25} , {&execpp25} } ;
Exe execpp25 = { "CC AttachmentHost.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/AttachmentHost.cpp"
 ,"-o"
 ,OBJ_PATH+"/AttachmentHost.o"
} } ;

Target cpp26 = { "AutoCast.cpp" , "../../Simple/CCore/src/./gadget/AutoCast.cpp" } ;
Target ocpp26 = { "AutoCast.o" , OBJ_PATH+"/AutoCast.o" } ;
Rule rcpp26 = { {&cpp26} , {&ocpp26} , {&execpp26} } ;
Exe execpp26 = { "CC AutoCast.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/AutoCast.cpp"
 ,"-o"
 ,OBJ_PATH+"/AutoCast.o"
} } ;

Target cpp27 = { "AutoGlobal.cpp" , "../../Fundamental/CCore/src/AutoGlobal.cpp" } ;
Target ocpp27 = { "AutoGlobal.o" , OBJ_PATH+"/AutoGlobal.o" } ;
Rule rcpp27 = { {&cpp27} , {&ocpp27} , {&execpp27} } ;
Exe execpp27 = { "CC AutoGlobal.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/AutoGlobal.cpp"
 ,"-o"
 ,OBJ_PATH+"/AutoGlobal.o"
} } ;

Target cpp28 = { "BaseRangeAlgo.cpp" , "../../Fundamental/CCore/src/./algon/BaseRangeAlgo.cpp" } ;
Target ocpp28 = { "BaseRangeAlgo.o" , OBJ_PATH+"/BaseRangeAlgo.o" } ;
Rule rcpp28 = { {&cpp28} , {&ocpp28} , {&execpp28} } ;
Exe execpp28 = { "CC BaseRangeAlgo.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./algon/BaseRangeAlgo.cpp"
 ,"-o"
 ,OBJ_PATH+"/BaseRangeAlgo.o"
} } ;

Target cpp29 = { "BestSearch.cpp" , "../../Fundamental/CCore/src/./algon/BestSearch.cpp" } ;
Target ocpp29 = { "BestSearch.o" , OBJ_PATH+"/BestSearch.o" } ;
Rule rcpp29 = { {&cpp29} , {&ocpp29} , {&execpp29} } ;
Exe execpp29 = { "CC BestSearch.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./algon/BestSearch.cpp"
 ,"-o"
 ,OBJ_PATH+"/BestSearch.o"
} } ;

Target cpp30 = { "BinFileToRead.cpp" , "../../Fundamental/CCore/src/BinFileToRead.cpp" } ;
Target ocpp30 = { "BinFileToRead.o" , OBJ_PATH+"/BinFileToRead.o" } ;
Rule rcpp30 = { {&cpp30} , {&ocpp30} , {&execpp30} } ;
Exe execpp30 = { "CC BinFileToRead.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/BinFileToRead.cpp"
 ,"-o"
 ,OBJ_PATH+"/BinFileToRead.o"
} } ;

Target cpp31 = { "BinaryFile.cpp" , "../../HCore/CCore/src/BinaryFile.cpp" } ;
Target ocpp31 = { "BinaryFile.o" , OBJ_PATH+"/BinaryFile.o" } ;
Rule rcpp31 = { {&cpp31} , {&ocpp31} , {&execpp31} } ;
Exe execpp31 = { "CC BinaryFile.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/BinaryFile.cpp"
 ,"-o"
 ,OBJ_PATH+"/BinaryFile.o"
} } ;

Target cpp32 = { "BinarySearch.cpp" , "../../Fundamental/CCore/src/./algon/BinarySearch.cpp" } ;
Target ocpp32 = { "BinarySearch.o" , OBJ_PATH+"/BinarySearch.o" } ;
Rule rcpp32 = { {&cpp32} , {&ocpp32} , {&execpp32} } ;
Exe execpp32 = { "CC BinarySearch.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./algon/BinarySearch.cpp"
 ,"-o"
 ,OBJ_PATH+"/BinarySearch.o"
} } ;

Target cpp33 = { "BindBagProxy.cpp" , "../../Desktop/Lib/CCore/src/./video/BindBagProxy.cpp" } ;
Target ocpp33 = { "BindBagProxy.o" , OBJ_PATH+"/BindBagProxy.o" } ;
Rule rcpp33 = { {&cpp33} , {&ocpp33} , {&execpp33} } ;
Exe execpp33 = { "CC BindBagProxy.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/BindBagProxy.cpp"
 ,"-o"
 ,OBJ_PATH+"/BindBagProxy.o"
} } ;

Target cpp34 = { "Bitmap.cpp" , "../../Desktop/Tools/CCore/src/./video/Bitmap.cpp" } ;
Target ocpp34 = { "Bitmap.o" , OBJ_PATH+"/Bitmap.o" } ;
Rule rcpp34 = { {&cpp34} , {&ocpp34} , {&execpp34} } ;
Exe execpp34 = { "CC Bitmap.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Tools/CCore/src/./video/Bitmap.cpp"
 ,"-o"
 ,OBJ_PATH+"/Bitmap.o"
} } ;

Target cpp35 = { "BlockCipher.cpp" , "../../Applied/CCore/src/./crypton/BlockCipher.cpp" } ;
Target ocpp35 = { "BlockCipher.o" , OBJ_PATH+"/BlockCipher.o" } ;
Rule rcpp35 = { {&cpp35} , {&ocpp35} , {&execpp35} } ;
Exe execpp35 = { "CC BlockCipher.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./crypton/BlockCipher.cpp"
 ,"-o"
 ,OBJ_PATH+"/BlockCipher.o"
} } ;

Target cpp36 = { "BlockFifo.cpp" , "../../Simple/CCore/src/BlockFifo.cpp" } ;
Target ocpp36 = { "BlockFifo.o" , OBJ_PATH+"/BlockFifo.o" } ;
Rule rcpp36 = { {&cpp36} , {&ocpp36} , {&execpp36} } ;
Exe execpp36 = { "CC BlockFifo.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/BlockFifo.cpp"
 ,"-o"
 ,OBJ_PATH+"/BlockFifo.o"
} } ;

Target cpp37 = { "Book.cpp" , "../../Desktop/Lib/CCore/src/./video/book/Book.cpp" } ;
Target ocpp37 = { "Book.o" , OBJ_PATH+"/Book.o" } ;
Rule rcpp37 = { {&cpp37} , {&ocpp37} , {&execpp37} } ;
Exe execpp37 = { "CC Book.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/book/Book.cpp"
 ,"-o"
 ,OBJ_PATH+"/Book.o"
} } ;

Target cpp38 = { "BookAppMain.cpp" , "../../Desktop/App/CCore/src/./video/BookAppMain.cpp" } ;
Target ocpp38 = { "BookAppMain.o" , OBJ_PATH+"/BookAppMain.o" } ;
Rule rcpp38 = { {&cpp38} , {&ocpp38} , {&execpp38} } ;
Exe execpp38 = { "CC BookAppMain.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/App/CCore/src/./video/BookAppMain.cpp"
 ,"-o"
 ,OBJ_PATH+"/BookAppMain.o"
} } ;

Target cpp39 = { "BookClient.cpp" , "../../Desktop/Lib/CCore/src/./video/book/BookClient.cpp" } ;
Target ocpp39 = { "BookClient.o" , OBJ_PATH+"/BookClient.o" } ;
Rule rcpp39 = { {&cpp39} , {&ocpp39} , {&execpp39} } ;
Exe execpp39 = { "CC BookClient.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/book/BookClient.cpp"
 ,"-o"
 ,OBJ_PATH+"/BookClient.o"
} } ;

Target cpp40 = { "BookFrame.cpp" , "../../Desktop/Lib/CCore/src/./video/BookFrame.cpp" } ;
Target ocpp40 = { "BookFrame.o" , OBJ_PATH+"/BookFrame.o" } ;
Rule rcpp40 = { {&cpp40} , {&ocpp40} , {&execpp40} } ;
Exe execpp40 = { "CC BookFrame.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/BookFrame.cpp"
 ,"-o"
 ,OBJ_PATH+"/BookFrame.o"
} } ;

Target cpp41 = { "BookWindow.cpp" , "../../Desktop/Lib/CCore/src/./video/book/BookWindow.cpp" } ;
Target ocpp41 = { "BookWindow.o" , OBJ_PATH+"/BookWindow.o" } ;
Rule rcpp41 = { {&cpp41} , {&ocpp41} , {&execpp41} } ;
Exe execpp41 = { "CC BookWindow.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/book/BookWindow.cpp"
 ,"-o"
 ,OBJ_PATH+"/BookWindow.o"
} } ;

Target cpp42 = { "Bridge.cpp" , "../../Applied/CCore/src/./net/Bridge.cpp" } ;
Target ocpp42 = { "Bridge.o" , OBJ_PATH+"/Bridge.o" } ;
Rule rcpp42 = { {&cpp42} , {&ocpp42} , {&execpp42} } ;
Exe execpp42 = { "CC Bridge.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/Bridge.cpp"
 ,"-o"
 ,OBJ_PATH+"/Bridge.o"
} } ;

Target cpp43 = { "ButtonId.cpp" , "../../Desktop/Tools/CCore/src/./video/ButtonId.cpp" } ;
Target ocpp43 = { "ButtonId.o" , OBJ_PATH+"/ButtonId.o" } ;
Rule rcpp43 = { {&cpp43} , {&ocpp43} , {&execpp43} } ;
Exe execpp43 = { "CC ButtonId.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Tools/CCore/src/./video/ButtonId.cpp"
 ,"-o"
 ,OBJ_PATH+"/ButtonId.o"
} } ;

Target cpp44 = { "CancelPacketList.cpp" , "../../Applied/CCore/src/CancelPacketList.cpp" } ;
Target ocpp44 = { "CancelPacketList.o" , OBJ_PATH+"/CancelPacketList.o" } ;
Rule rcpp44 = { {&cpp44} , {&ocpp44} , {&execpp44} } ;
Exe execpp44 = { "CC CancelPacketList.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/CancelPacketList.cpp"
 ,"-o"
 ,OBJ_PATH+"/CancelPacketList.o"
} } ;

Target cpp45 = { "CapString.cpp" , "../../Simple/CCore/src/CapString.cpp" } ;
Target ocpp45 = { "CapString.o" , OBJ_PATH+"/CapString.o" } ;
Rule rcpp45 = { {&cpp45} , {&ocpp45} , {&execpp45} } ;
Exe execpp45 = { "CC CapString.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/CapString.cpp"
 ,"-o"
 ,OBJ_PATH+"/CapString.o"
} } ;

Target cpp46 = { "CharProp.cpp" , "../../Fundamental/CCore/src/CharProp.cpp" } ;
Target ocpp46 = { "CharProp.o" , OBJ_PATH+"/CharProp.o" } ;
Rule rcpp46 = { {&cpp46} , {&ocpp46} , {&execpp46} } ;
Exe execpp46 = { "CC CharProp.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/CharProp.cpp"
 ,"-o"
 ,OBJ_PATH+"/CharProp.o"
} } ;

Target cpp47 = { "CharUtils.cpp" , "../../Fundamental/CCore/src/CharUtils.cpp" } ;
Target ocpp47 = { "CharUtils.o" , OBJ_PATH+"/CharUtils.o" } ;
Rule rcpp47 = { {&cpp47} , {&ocpp47} , {&execpp47} } ;
Exe execpp47 = { "CC CharUtils.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/CharUtils.cpp"
 ,"-o"
 ,OBJ_PATH+"/CharUtils.o"
} } ;

Target cpp48 = { "CheckPlatformBase.cpp" , "../../Simple/CCore/src/./base/CheckPlatformBase.cpp" } ;
Target ocpp48 = { "CheckPlatformBase.o" , OBJ_PATH+"/CheckPlatformBase.o" } ;
Rule rcpp48 = { {&cpp48} , {&ocpp48} , {&execpp48} } ;
Exe execpp48 = { "CC CheckPlatformBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./base/CheckPlatformBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/CheckPlatformBase.o"
} } ;

Target cpp49 = { "CheckedData.cpp" , "../../Applied/CCore/src/./net/CheckedData.cpp" } ;
Target ocpp49 = { "CheckedData.o" , OBJ_PATH+"/CheckedData.o" } ;
Rule rcpp49 = { {&cpp49} , {&ocpp49} , {&execpp49} } ;
Exe execpp49 = { "CC CheckedData.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/CheckedData.cpp"
 ,"-o"
 ,OBJ_PATH+"/CheckedData.o"
} } ;

Target cpp50 = { "Classification.cpp" , "../../Simple/CCore/src/./gadget/Classification.cpp" } ;
Target ocpp50 = { "Classification.o" , OBJ_PATH+"/Classification.o" } ;
Rule rcpp50 = { {&cpp50} , {&ocpp50} , {&execpp50} } ;
Exe execpp50 = { "CC Classification.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/Classification.cpp"
 ,"-o"
 ,OBJ_PATH+"/Classification.o"
} } ;

Target cpp51 = { "CmdInput.cpp" , "../../Applied/CCore/src/CmdInput.cpp" } ;
Target ocpp51 = { "CmdInput.o" , OBJ_PATH+"/CmdInput.o" } ;
Rule rcpp51 = { {&cpp51} , {&ocpp51} , {&execpp51} } ;
Exe execpp51 = { "CC CmdInput.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/CmdInput.cpp"
 ,"-o"
 ,OBJ_PATH+"/CmdInput.o"
} } ;

Target cpp52 = { "Cmp.cpp" , "../../Simple/CCore/src/Cmp.cpp" } ;
Target ocpp52 = { "Cmp.o" , OBJ_PATH+"/Cmp.o" } ;
Rule rcpp52 = { {&cpp52} , {&ocpp52} , {&execpp52} } ;
Exe execpp52 = { "CC Cmp.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/Cmp.cpp"
 ,"-o"
 ,OBJ_PATH+"/Cmp.o"
} } ;

Target cpp53 = { "Collector.cpp" , "../../Fundamental/CCore/src/./array/Collector.cpp" } ;
Target ocpp53 = { "Collector.o" , OBJ_PATH+"/Collector.o" } ;
Rule rcpp53 = { {&cpp53} , {&ocpp53} , {&execpp53} } ;
Exe execpp53 = { "CC Collector.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./array/Collector.cpp"
 ,"-o"
 ,OBJ_PATH+"/Collector.o"
} } ;

Target cpp54 = { "Color.cpp" , "../../Applied/CCore/src/./video/Color.cpp" } ;
Target ocpp54 = { "Color.o" , OBJ_PATH+"/Color.o" } ;
Rule rcpp54 = { {&cpp54} , {&ocpp54} , {&execpp54} } ;
Exe execpp54 = { "CC Color.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./video/Color.cpp"
 ,"-o"
 ,OBJ_PATH+"/Color.o"
} } ;

Target cpp55 = { "ColorEdit.cpp" , "../../Desktop/Lib/CCore/src/./video/pref/ColorEdit.cpp" } ;
Target ocpp55 = { "ColorEdit.o" , OBJ_PATH+"/ColorEdit.o" } ;
Rule rcpp55 = { {&cpp55} , {&ocpp55} , {&execpp55} } ;
Exe execpp55 = { "CC ColorEdit.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/pref/ColorEdit.cpp"
 ,"-o"
 ,OBJ_PATH+"/ColorEdit.o"
} } ;

Target cpp56 = { "ColorField.cpp" , "../../Desktop/Draw/CCore/src/./video/ColorField.cpp" } ;
Target ocpp56 = { "ColorField.o" , OBJ_PATH+"/ColorField.o" } ;
Rule rcpp56 = { {&cpp56} , {&ocpp56} , {&execpp56} } ;
Exe execpp56 = { "CC ColorField.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Draw/CCore/src/./video/ColorField.cpp"
 ,"-o"
 ,OBJ_PATH+"/ColorField.o"
} } ;

Target cpp57 = { "ColorListWindow.cpp" , "../../Desktop/Lib/CCore/src/./video/pref/ColorListWindow.cpp" } ;
Target ocpp57 = { "ColorListWindow.o" , OBJ_PATH+"/ColorListWindow.o" } ;
Rule rcpp57 = { {&cpp57} , {&ocpp57} , {&execpp57} } ;
Exe execpp57 = { "CC ColorListWindow.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/pref/ColorListWindow.cpp"
 ,"-o"
 ,OBJ_PATH+"/ColorListWindow.o"
} } ;

Target cpp58 = { "CommonIntAlgo.cpp" , "../../Fundamental/CCore/src/./algon/CommonIntAlgo.cpp" } ;
Target ocpp58 = { "CommonIntAlgo.o" , OBJ_PATH+"/CommonIntAlgo.o" } ;
Rule rcpp58 = { {&cpp58} , {&ocpp58} , {&execpp58} } ;
Exe execpp58 = { "CC CommonIntAlgo.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./algon/CommonIntAlgo.cpp"
 ,"-o"
 ,OBJ_PATH+"/CommonIntAlgo.o"
} } ;

Target cpp59 = { "CompactList.cpp" , "../../Fundamental/CCore/src/CompactList.cpp" } ;
Target ocpp59 = { "CompactList.o" , OBJ_PATH+"/CompactList.o" } ;
Rule rcpp59 = { {&cpp59} , {&ocpp59} , {&execpp59} } ;
Exe execpp59 = { "CC CompactList.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/CompactList.cpp"
 ,"-o"
 ,OBJ_PATH+"/CompactList.o"
} } ;

Target cpp60 = { "CompactMap.cpp" , "../../Fundamental/CCore/src/CompactMap.cpp" } ;
Target ocpp60 = { "CompactMap.o" , OBJ_PATH+"/CompactMap.o" } ;
Rule rcpp60 = { {&cpp60} , {&ocpp60} , {&execpp60} } ;
Exe execpp60 = { "CC CompactMap.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/CompactMap.cpp"
 ,"-o"
 ,OBJ_PATH+"/CompactMap.o"
} } ;

Target cpp61 = { "CompactNodeAllocator.cpp" , "../../Fundamental/CCore/src/CompactNodeAllocator.cpp" } ;
Target ocpp61 = { "CompactNodeAllocator.o" , OBJ_PATH+"/CompactNodeAllocator.o" } ;
Rule rcpp61 = { {&cpp61} , {&ocpp61} , {&execpp61} } ;
Exe execpp61 = { "CC CompactNodeAllocator.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/CompactNodeAllocator.cpp"
 ,"-o"
 ,OBJ_PATH+"/CompactNodeAllocator.o"
} } ;

Target cpp62 = { "ConfigBinder.cpp" , "../../Desktop/Lib/CCore/src/./video/ConfigBinder.cpp" } ;
Target ocpp62 = { "ConfigBinder.o" , OBJ_PATH+"/ConfigBinder.o" } ;
Rule rcpp62 = { {&cpp62} , {&ocpp62} , {&execpp62} } ;
Exe execpp62 = { "CC ConfigBinder.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/ConfigBinder.cpp"
 ,"-o"
 ,OBJ_PATH+"/ConfigBinder.o"
} } ;

Target cpp63 = { "ConfigEditor.cpp" , "../../Desktop/Lib/CCore/src/./video/ConfigEditor.cpp" } ;
Target ocpp63 = { "ConfigEditor.o" , OBJ_PATH+"/ConfigEditor.o" } ;
Rule rcpp63 = { {&cpp63} , {&ocpp63} , {&execpp63} } ;
Exe execpp63 = { "CC ConfigEditor.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/ConfigEditor.cpp"
 ,"-o"
 ,OBJ_PATH+"/ConfigEditor.o"
} } ;

Target cpp64 = { "ConfigStore.cpp" , "../../Desktop/Lib/CCore/src/./video/ConfigStore.cpp" } ;
Target ocpp64 = { "ConfigStore.o" , OBJ_PATH+"/ConfigStore.o" } ;
Rule rcpp64 = { {&cpp64} , {&ocpp64} , {&execpp64} } ;
Exe execpp64 = { "CC ConfigStore.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/ConfigStore.cpp"
 ,"-o"
 ,OBJ_PATH+"/ConfigStore.o"
} } ;

Target cpp65 = { "ContainerList.cpp" , "../../Fundamental/CCore/src/ContainerList.cpp" } ;
Target ocpp65 = { "ContainerList.o" , OBJ_PATH+"/ContainerList.o" } ;
Rule rcpp65 = { {&cpp65} , {&ocpp65} , {&execpp65} } ;
Exe execpp65 = { "CC ContainerList.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/ContainerList.cpp"
 ,"-o"
 ,OBJ_PATH+"/ContainerList.o"
} } ;

Target cpp66 = { "CoordEdit.cpp" , "../../Desktop/Lib/CCore/src/./video/pref/CoordEdit.cpp" } ;
Target ocpp66 = { "CoordEdit.o" , OBJ_PATH+"/CoordEdit.o" } ;
Rule rcpp66 = { {&cpp66} , {&ocpp66} , {&execpp66} } ;
Exe execpp66 = { "CC CoordEdit.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/pref/CoordEdit.cpp"
 ,"-o"
 ,OBJ_PATH+"/CoordEdit.o"
} } ;

Target cpp67 = { "Counters.cpp" , "../../Simple/CCore/src/Counters.cpp" } ;
Target ocpp67 = { "Counters.o" , OBJ_PATH+"/Counters.o" } ;
Rule rcpp67 = { {&cpp67} , {&ocpp67} , {&execpp67} } ;
Exe execpp67 = { "CC Counters.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/Counters.cpp"
 ,"-o"
 ,OBJ_PATH+"/Counters.o"
} } ;

Target cpp68 = { "Crc.cpp" , "../../Simple/CCore/src/Crc.cpp" } ;
Target ocpp68 = { "Crc.o" , OBJ_PATH+"/Crc.o" } ;
Rule rcpp68 = { {&cpp68} , {&ocpp68} , {&execpp68} } ;
Exe execpp68 = { "CC Crc.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/Crc.cpp"
 ,"-o"
 ,OBJ_PATH+"/Crc.o"
} } ;

Target cpp69 = { "CreateAt.cpp" , "../../Simple/CCore/src/./gadget/CreateAt.cpp" } ;
Target ocpp69 = { "CreateAt.o" , OBJ_PATH+"/CreateAt.o" } ;
Rule rcpp69 = { {&cpp69} , {&ocpp69} , {&execpp69} } ;
Exe execpp69 = { "CC CreateAt.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/CreateAt.cpp"
 ,"-o"
 ,OBJ_PATH+"/CreateAt.o"
} } ;

Target cpp70 = { "Creator.cpp" , "../../Fundamental/CCore/src/./array/Creator.cpp" } ;
Target ocpp70 = { "Creator.o" , OBJ_PATH+"/Creator.o" } ;
Rule rcpp70 = { {&cpp70} , {&ocpp70} , {&execpp70} } ;
Exe execpp70 = { "CC Creator.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./array/Creator.cpp"
 ,"-o"
 ,OBJ_PATH+"/Creator.o"
} } ;

Target cpp71 = { "CurveDriver.cpp" , "../../Desktop/Draw/CCore/src/./video/CurveDriver.cpp" } ;
Target ocpp71 = { "CurveDriver.o" , OBJ_PATH+"/CurveDriver.o" } ;
Rule rcpp71 = { {&cpp71} , {&ocpp71} , {&execpp71} } ;
Exe execpp71 = { "CC CurveDriver.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Draw/CCore/src/./video/CurveDriver.cpp"
 ,"-o"
 ,OBJ_PATH+"/CurveDriver.o"
} } ;

Target cpp72 = { "DDLChar.cpp" , "../../Applied/CCore/src/./ddl/DDLChar.cpp" } ;
Target ocpp72 = { "DDLChar.o" , OBJ_PATH+"/DDLChar.o" } ;
Rule rcpp72 = { {&cpp72} , {&ocpp72} , {&execpp72} } ;
Exe execpp72 = { "CC DDLChar.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLChar.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLChar.o"
} } ;

Target cpp73 = { "DDLEngine.cpp" , "../../Applied/CCore/src/./ddl/DDLEngine.cpp" } ;
Target ocpp73 = { "DDLEngine.o" , OBJ_PATH+"/DDLEngine.o" } ;
Rule rcpp73 = { {&cpp73} , {&ocpp73} , {&execpp73} } ;
Exe execpp73 = { "CC DDLEngine.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLEngine.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLEngine.o"
} } ;

Target cpp74 = { "DDLErrorMsg.cpp" , "../../Applied/CCore/src/./ddl/DDLErrorMsg.cpp" } ;
Target ocpp74 = { "DDLErrorMsg.o" , OBJ_PATH+"/DDLErrorMsg.o" } ;
Rule rcpp74 = { {&cpp74} , {&ocpp74} , {&execpp74} } ;
Exe execpp74 = { "CC DDLErrorMsg.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLErrorMsg.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLErrorMsg.o"
} } ;

Target cpp75 = { "DDLEval.cpp" , "../../Applied/CCore/src/./ddl/DDLEval.cpp" } ;
Target ocpp75 = { "DDLEval.o" , OBJ_PATH+"/DDLEval.o" } ;
Rule rcpp75 = { {&cpp75} , {&ocpp75} , {&execpp75} } ;
Exe execpp75 = { "CC DDLEval.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLEval.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLEval.o"
} } ;

Target cpp76 = { "DDLMap.cpp" , "../../Applied/CCore/src/./ddl/DDLMap.cpp" } ;
Target ocpp76 = { "DDLMap.o" , OBJ_PATH+"/DDLMap.o" } ;
Rule rcpp76 = { {&cpp76} , {&ocpp76} , {&execpp76} } ;
Exe execpp76 = { "CC DDLMap.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLMap.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLMap.o"
} } ;

Target cpp77 = { "DDLMapBase.cpp" , "../../Applied/CCore/src/./ddl/DDLMapBase.cpp" } ;
Target ocpp77 = { "DDLMapBase.o" , OBJ_PATH+"/DDLMapBase.o" } ;
Rule rcpp77 = { {&cpp77} , {&ocpp77} , {&execpp77} } ;
Exe execpp77 = { "CC DDLMapBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLMapBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLMapBase.o"
} } ;

Target cpp78 = { "DDLMapTools.cpp" , "../../Applied/CCore/src/./ddl/DDLMapTools.cpp" } ;
Target ocpp78 = { "DDLMapTools.o" , OBJ_PATH+"/DDLMapTools.o" } ;
Rule rcpp78 = { {&cpp78} , {&ocpp78} , {&execpp78} } ;
Exe execpp78 = { "CC DDLMapTools.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLMapTools.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLMapTools.o"
} } ;

Target cpp79 = { "DDLMapTypes.cpp" , "../../Applied/CCore/src/./ddl/DDLMapTypes.cpp" } ;
Target ocpp79 = { "DDLMapTypes.o" , OBJ_PATH+"/DDLMapTypes.o" } ;
Rule rcpp79 = { {&cpp79} , {&ocpp79} , {&execpp79} } ;
Exe execpp79 = { "CC DDLMapTypes.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLMapTypes.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLMapTypes.o"
} } ;

Target cpp80 = { "DDLParser.cpp" , "../../Applied/CCore/src/./ddl/DDLParser.cpp" } ;
Target ocpp80 = { "DDLParser.o" , OBJ_PATH+"/DDLParser.o" } ;
Rule rcpp80 = { {&cpp80} , {&ocpp80} , {&execpp80} } ;
Exe execpp80 = { "CC DDLParser.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLParser.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLParser.o"
} } ;

Target cpp81 = { "DDLParserElements.cpp" , "../../Applied/CCore/src/./ddl/DDLParserElements.cpp" } ;
Target ocpp81 = { "DDLParserElements.o" , OBJ_PATH+"/DDLParserElements.o" } ;
Rule rcpp81 = { {&cpp81} , {&ocpp81} , {&execpp81} } ;
Exe execpp81 = { "CC DDLParserElements.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLParserElements.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLParserElements.o"
} } ;

Target cpp82 = { "DDLParserRules.cpp" , "../../Applied/CCore/src/./ddl/DDLParserRules.cpp" } ;
Target ocpp82 = { "DDLParserRules.o" , OBJ_PATH+"/DDLParserRules.o" } ;
Rule rcpp82 = { {&cpp82} , {&ocpp82} , {&execpp82} } ;
Exe execpp82 = { "CC DDLParserRules.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLParserRules.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLParserRules.o"
} } ;

Target cpp83 = { "DDLParserTable.cpp" , "../../Applied/CCore/src/./ddl/DDLParserTable.cpp" } ;
Target ocpp83 = { "DDLParserTable.o" , OBJ_PATH+"/DDLParserTable.o" } ;
Rule rcpp83 = { {&cpp83} , {&ocpp83} , {&execpp83} } ;
Exe execpp83 = { "CC DDLParserTable.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLParserTable.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLParserTable.o"
} } ;

Target cpp84 = { "DDLPlatformTypes.cpp" , "../../Applied/CCore/src/./ddl/DDLPlatformTypes.cpp" } ;
Target ocpp84 = { "DDLPlatformTypes.o" , OBJ_PATH+"/DDLPlatformTypes.o" } ;
Rule rcpp84 = { {&cpp84} , {&ocpp84} , {&execpp84} } ;
Exe execpp84 = { "CC DDLPlatformTypes.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLPlatformTypes.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLPlatformTypes.o"
} } ;

Target cpp85 = { "DDLSemantic.cpp" , "../../Applied/CCore/src/./ddl/DDLSemantic.cpp" } ;
Target ocpp85 = { "DDLSemantic.o" , OBJ_PATH+"/DDLSemantic.o" } ;
Rule rcpp85 = { {&cpp85} , {&ocpp85} , {&execpp85} } ;
Exe execpp85 = { "CC DDLSemantic.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLSemantic.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLSemantic.o"
} } ;

Target cpp86 = { "DDLToken.cpp" , "../../Applied/CCore/src/./ddl/DDLToken.cpp" } ;
Target ocpp86 = { "DDLToken.o" , OBJ_PATH+"/DDLToken.o" } ;
Rule rcpp86 = { {&cpp86} , {&ocpp86} , {&execpp86} } ;
Exe execpp86 = { "CC DDLToken.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLToken.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLToken.o"
} } ;

Target cpp87 = { "DDLTools.cpp" , "../../Applied/CCore/src/./ddl/DDLTools.cpp" } ;
Target ocpp87 = { "DDLTools.o" , OBJ_PATH+"/DDLTools.o" } ;
Rule rcpp87 = { {&cpp87} , {&ocpp87} , {&execpp87} } ;
Exe execpp87 = { "CC DDLTools.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLTools.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLTools.o"
} } ;

Target cpp88 = { "DDLTypeDesc.cpp" , "../../Applied/CCore/src/./ddl/DDLTypeDesc.cpp" } ;
Target ocpp88 = { "DDLTypeDesc.o" , OBJ_PATH+"/DDLTypeDesc.o" } ;
Rule rcpp88 = { {&cpp88} , {&ocpp88} , {&execpp88} } ;
Exe execpp88 = { "CC DDLTypeDesc.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLTypeDesc.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLTypeDesc.o"
} } ;

Target cpp89 = { "DDLTypeSet.cpp" , "../../Applied/CCore/src/./ddl/DDLTypeSet.cpp" } ;
Target ocpp89 = { "DDLTypeSet.o" , OBJ_PATH+"/DDLTypeSet.o" } ;
Rule rcpp89 = { {&cpp89} , {&ocpp89} , {&execpp89} } ;
Exe execpp89 = { "CC DDLTypeSet.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLTypeSet.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLTypeSet.o"
} } ;

Target cpp90 = { "DDLTypedMap.cpp" , "../../Applied/CCore/src/./ddl/DDLTypedMap.cpp" } ;
Target ocpp90 = { "DDLTypedMap.o" , OBJ_PATH+"/DDLTypedMap.o" } ;
Rule rcpp90 = { {&cpp90} , {&ocpp90} , {&execpp90} } ;
Exe execpp90 = { "CC DDLTypedMap.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLTypedMap.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLTypedMap.o"
} } ;

Target cpp91 = { "DDLTypes.cpp" , "../../Applied/CCore/src/./ddl/DDLTypes.cpp" } ;
Target ocpp91 = { "DDLTypes.o" , OBJ_PATH+"/DDLTypes.o" } ;
Rule rcpp91 = { {&cpp91} , {&ocpp91} , {&execpp91} } ;
Exe execpp91 = { "CC DDLTypes.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLTypes.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLTypes.o"
} } ;

Target cpp92 = { "DDLValue.cpp" , "../../Applied/CCore/src/./ddl/DDLValue.cpp" } ;
Target ocpp92 = { "DDLValue.o" , OBJ_PATH+"/DDLValue.o" } ;
Rule rcpp92 = { {&cpp92} , {&ocpp92} , {&execpp92} } ;
Exe execpp92 = { "CC DDLValue.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./ddl/DDLValue.cpp"
 ,"-o"
 ,OBJ_PATH+"/DDLValue.o"
} } ;

Target cpp93 = { "DHExp.cpp" , "../../Applied/CCore/src/./crypton/DHExp.cpp" } ;
Target ocpp93 = { "DHExp.o" , OBJ_PATH+"/DHExp.o" } ;
Rule rcpp93 = { {&cpp93} , {&ocpp93} , {&execpp93} } ;
Exe execpp93 = { "CC DHExp.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./crypton/DHExp.cpp"
 ,"-o"
 ,OBJ_PATH+"/DHExp.o"
} } ;

Target cpp94 = { "DecodeFile.cpp" , "../../HCore/CCore/src/DecodeFile.cpp" } ;
Target ocpp94 = { "DecodeFile.o" , OBJ_PATH+"/DecodeFile.o" } ;
Rule rcpp94 = { {&cpp94} , {&ocpp94} , {&execpp94} } ;
Exe execpp94 = { "CC DecodeFile.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/DecodeFile.cpp"
 ,"-o"
 ,OBJ_PATH+"/DecodeFile.o"
} } ;

Target cpp95 = { "DefaultTimeout.cpp" , "../../Simple/CCore/src/./gadget/DefaultTimeout.cpp" } ;
Target ocpp95 = { "DefaultTimeout.o" , OBJ_PATH+"/DefaultTimeout.o" } ;
Rule rcpp95 = { {&cpp95} , {&ocpp95} , {&execpp95} } ;
Exe execpp95 = { "CC DefaultTimeout.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/DefaultTimeout.cpp"
 ,"-o"
 ,OBJ_PATH+"/DefaultTimeout.o"
} } ;

Target cpp96 = { "DeferCall.cpp" , "../../Fundamental/CCore/src/DeferCall.cpp" } ;
Target ocpp96 = { "DeferCall.o" , OBJ_PATH+"/DeferCall.o" } ;
Rule rcpp96 = { {&cpp96} , {&ocpp96} , {&execpp96} } ;
Exe execpp96 = { "CC DeferCall.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/DeferCall.cpp"
 ,"-o"
 ,OBJ_PATH+"/DeferCall.o"
} } ;

Target cpp97 = { "Deflate.cpp" , "../../Applied/CCore/src/Deflate.cpp" } ;
Target ocpp97 = { "Deflate.o" , OBJ_PATH+"/Deflate.o" } ;
Rule rcpp97 = { {&cpp97} , {&ocpp97} , {&execpp97} } ;
Exe execpp97 = { "CC Deflate.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/Deflate.cpp"
 ,"-o"
 ,OBJ_PATH+"/Deflate.o"
} } ;

Target cpp98 = { "Desktop.cpp" , "../../Target/WIN32utf8/CCore/src/./video/Desktop.cpp" } ;
Target ocpp98 = { "Desktop.o" , OBJ_PATH+"/Desktop.o" } ;
Rule rcpp98 = { {&cpp98} , {&ocpp98} , {&execpp98} } ;
Exe execpp98 = { "CC Desktop.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./video/Desktop.cpp"
 ,"-o"
 ,OBJ_PATH+"/Desktop.o"
} } ;

Target cpp99 = { "DesktopKey.cpp" , "../../Desktop/Tools/CCore/src/./video/DesktopKey.cpp" } ;
Target ocpp99 = { "DesktopKey.o" , OBJ_PATH+"/DesktopKey.o" } ;
Rule rcpp99 = { {&cpp99} , {&ocpp99} , {&execpp99} } ;
Exe execpp99 = { "CC DesktopKey.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Tools/CCore/src/./video/DesktopKey.cpp"
 ,"-o"
 ,OBJ_PATH+"/DesktopKey.o"
} } ;

Target cpp100 = { "DestroyGuard.cpp" , "../../Simple/CCore/src/DestroyGuard.cpp" } ;
Target ocpp100 = { "DestroyGuard.o" , OBJ_PATH+"/DestroyGuard.o" } ;
Rule rcpp100 = { {&cpp100} , {&ocpp100} , {&execpp100} } ;
Exe execpp100 = { "CC DestroyGuard.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/DestroyGuard.cpp"
 ,"-o"
 ,OBJ_PATH+"/DestroyGuard.o"
} } ;

Target cpp101 = { "DetectProxy.cpp" , "../../Fundamental/CCore/src/DetectProxy.cpp" } ;
Target ocpp101 = { "DetectProxy.o" , OBJ_PATH+"/DetectProxy.o" } ;
Rule rcpp101 = { {&cpp101} , {&ocpp101} , {&execpp101} } ;
Exe execpp101 = { "CC DetectProxy.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/DetectProxy.cpp"
 ,"-o"
 ,OBJ_PATH+"/DetectProxy.o"
} } ;

Target cpp102 = { "DirFrame.cpp" , "../../Desktop/Lib/CCore/src/./video/DirFrame.cpp" } ;
Target ocpp102 = { "DirFrame.o" , OBJ_PATH+"/DirFrame.o" } ;
Rule rcpp102 = { {&cpp102} , {&ocpp102} , {&execpp102} } ;
Exe execpp102 = { "CC DirFrame.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/DirFrame.cpp"
 ,"-o"
 ,OBJ_PATH+"/DirFrame.o"
} } ;

Target cpp103 = { "DirTreeRun.cpp" , "../../HCore/CCore/src/DirTreeRun.cpp" } ;
Target ocpp103 = { "DirTreeRun.o" , OBJ_PATH+"/DirTreeRun.o" } ;
Rule rcpp103 = { {&cpp103} , {&ocpp103} , {&execpp103} } ;
Exe execpp103 = { "CC DirTreeRun.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/DirTreeRun.cpp"
 ,"-o"
 ,OBJ_PATH+"/DirTreeRun.o"
} } ;

Target cpp104 = { "DrawBook.cpp" , "../../Desktop/Lib/CCore/src/./video/book/DrawBook.cpp" } ;
Target ocpp104 = { "DrawBook.o" , OBJ_PATH+"/DrawBook.o" } ;
Rule rcpp104 = { {&cpp104} , {&ocpp104} , {&execpp104} } ;
Exe execpp104 = { "CC DrawBook.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/book/DrawBook.cpp"
 ,"-o"
 ,OBJ_PATH+"/DrawBook.o"
} } ;

Target cpp105 = { "DrawBookTools.cpp" , "../../Desktop/Lib/CCore/src/./video/book/DrawBookTools.cpp" } ;
Target ocpp105 = { "DrawBookTools.o" , OBJ_PATH+"/DrawBookTools.o" } ;
Rule rcpp105 = { {&cpp105} , {&ocpp105} , {&execpp105} } ;
Exe execpp105 = { "CC DrawBookTools.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/book/DrawBookTools.cpp"
 ,"-o"
 ,OBJ_PATH+"/DrawBookTools.o"
} } ;

Target cpp106 = { "DrawBuf.cpp" , "../../Desktop/Core/CCore/src/./video/DrawBuf.cpp" } ;
Target ocpp106 = { "DrawBuf.o" , OBJ_PATH+"/DrawBuf.o" } ;
Rule rcpp106 = { {&cpp106} , {&ocpp106} , {&execpp106} } ;
Exe execpp106 = { "CC DrawBuf.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Core/CCore/src/./video/DrawBuf.cpp"
 ,"-o"
 ,OBJ_PATH+"/DrawBuf.o"
} } ;

Target cpp107 = { "DrawTools.cpp" , "../../Desktop/Draw/CCore/src/./video/DrawTools.cpp" } ;
Target ocpp107 = { "DrawTools.o" , OBJ_PATH+"/DrawTools.o" } ;
Rule rcpp107 = { {&cpp107} , {&ocpp107} , {&execpp107} } ;
Exe execpp107 = { "CC DrawTools.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Draw/CCore/src/./video/DrawTools.cpp"
 ,"-o"
 ,OBJ_PATH+"/DrawTools.o"
} } ;

Target cpp108 = { "DynArray.cpp" , "../../Fundamental/CCore/src/./array/DynArray.cpp" } ;
Target ocpp108 = { "DynArray.o" , OBJ_PATH+"/DynArray.o" } ;
Rule rcpp108 = { {&cpp108} , {&ocpp108} , {&execpp108} } ;
Exe execpp108 = { "CC DynArray.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./array/DynArray.cpp"
 ,"-o"
 ,OBJ_PATH+"/DynArray.o"
} } ;

Target cpp109 = { "DynObject.cpp" , "../../Simple/CCore/src/DynObject.cpp" } ;
Target ocpp109 = { "DynObject.o" , OBJ_PATH+"/DynObject.o" } ;
Rule rcpp109 = { {&cpp109} , {&ocpp109} , {&execpp109} } ;
Exe execpp109 = { "CC DynObject.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/DynObject.cpp"
 ,"-o"
 ,OBJ_PATH+"/DynObject.o"
} } ;

Target cpp110 = { "EDID.cpp" , "../../Applied/CCore/src/./video/EDID.cpp" } ;
Target ocpp110 = { "EDID.o" , OBJ_PATH+"/EDID.o" } ;
Rule rcpp110 = { {&cpp110} , {&ocpp110} , {&execpp110} } ;
Exe execpp110 = { "CC EDID.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./video/EDID.cpp"
 ,"-o"
 ,OBJ_PATH+"/EDID.o"
} } ;

Target cpp111 = { "EchoDevice.cpp" , "../../Applied/CCore/src/./net/EchoDevice.cpp" } ;
Target ocpp111 = { "EchoDevice.o" , OBJ_PATH+"/EchoDevice.o" } ;
Rule rcpp111 = { {&cpp111} , {&ocpp111} , {&execpp111} } ;
Exe execpp111 = { "CC EchoDevice.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/EchoDevice.cpp"
 ,"-o"
 ,OBJ_PATH+"/EchoDevice.o"
} } ;

Target cpp112 = { "ElementPool.cpp" , "../../Fundamental/CCore/src/ElementPool.cpp" } ;
Target ocpp112 = { "ElementPool.o" , OBJ_PATH+"/ElementPool.o" } ;
Rule rcpp112 = { {&cpp112} , {&ocpp112} , {&execpp112} } ;
Exe execpp112 = { "CC ElementPool.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/ElementPool.cpp"
 ,"-o"
 ,OBJ_PATH+"/ElementPool.o"
} } ;

Target cpp113 = { "Elf.cpp" , "../../Applied/CCore/src/Elf.cpp" } ;
Target ocpp113 = { "Elf.o" , OBJ_PATH+"/Elf.o" } ;
Rule rcpp113 = { {&cpp113} , {&ocpp113} , {&execpp113} } ;
Exe execpp113 = { "CC Elf.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/Elf.cpp"
 ,"-o"
 ,OBJ_PATH+"/Elf.o"
} } ;

Target cpp114 = { "ErrorText.cpp" , "../../Simple/CCore/src/ErrorText.cpp" } ;
Target ocpp114 = { "ErrorText.o" , OBJ_PATH+"/ErrorText.o" } ;
Rule rcpp114 = { {&cpp114} , {&ocpp114} , {&execpp114} } ;
Exe execpp114 = { "CC ErrorText.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/ErrorText.cpp"
 ,"-o"
 ,OBJ_PATH+"/ErrorText.o"
} } ;

Target cpp115 = { "EthDevice.cpp" , "../../Applied/CCore/src/./net/EthDevice.cpp" } ;
Target ocpp115 = { "EthDevice.o" , OBJ_PATH+"/EthDevice.o" } ;
Rule rcpp115 = { {&cpp115} , {&ocpp115} , {&execpp115} } ;
Exe execpp115 = { "CC EthDevice.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/EthDevice.cpp"
 ,"-o"
 ,OBJ_PATH+"/EthDevice.o"
} } ;

Target cpp116 = { "EuclidRotate.cpp" , "../../Fundamental/CCore/src/./algon/EuclidRotate.cpp" } ;
Target ocpp116 = { "EuclidRotate.o" , OBJ_PATH+"/EuclidRotate.o" } ;
Rule rcpp116 = { {&cpp116} , {&ocpp116} , {&execpp116} } ;
Exe execpp116 = { "CC EuclidRotate.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./algon/EuclidRotate.cpp"
 ,"-o"
 ,OBJ_PATH+"/EuclidRotate.o"
} } ;

Target cpp117 = { "Event.cpp" , "../../HCore/CCore/src/./task/Event.cpp" } ;
Target ocpp117 = { "Event.o" , OBJ_PATH+"/Event.o" } ;
Rule rcpp117 = { {&cpp117} , {&ocpp117} , {&execpp117} } ;
Exe execpp117 = { "CC Event.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./task/Event.cpp"
 ,"-o"
 ,OBJ_PATH+"/Event.o"
} } ;

Target cpp118 = { "EventRecorder.cpp" , "../../Applied/CCore/src/EventRecorder.cpp" } ;
Target ocpp118 = { "EventRecorder.o" , OBJ_PATH+"/EventRecorder.o" } ;
Rule rcpp118 = { {&cpp118} , {&ocpp118} , {&execpp118} } ;
Exe execpp118 = { "CC EventRecorder.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/EventRecorder.cpp"
 ,"-o"
 ,OBJ_PATH+"/EventRecorder.o"
} } ;

Target cpp119 = { "Exception.cpp" , "../../Fundamental/CCore/src/Exception.cpp" } ;
Target ocpp119 = { "Exception.o" , OBJ_PATH+"/Exception.o" } ;
Rule rcpp119 = { {&cpp119} , {&ocpp119} , {&execpp119} } ;
Exe execpp119 = { "CC Exception.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/Exception.cpp"
 ,"-o"
 ,OBJ_PATH+"/Exception.o"
} } ;

Target cpp120 = { "ExceptionFrame.cpp" , "../../Desktop/Lib/CCore/src/./video/ExceptionFrame.cpp" } ;
Target ocpp120 = { "ExceptionFrame.o" , OBJ_PATH+"/ExceptionFrame.o" } ;
Rule rcpp120 = { {&cpp120} , {&ocpp120} , {&execpp120} } ;
Exe execpp120 = { "CC ExceptionFrame.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/ExceptionFrame.cpp"
 ,"-o"
 ,OBJ_PATH+"/ExceptionFrame.o"
} } ;

Target cpp121 = { "ExceptionType.cpp" , "../../Simple/CCore/src/./gadget/ExceptionType.cpp" } ;
Target ocpp121 = { "ExceptionType.o" , OBJ_PATH+"/ExceptionType.o" } ;
Rule rcpp121 = { {&cpp121} , {&ocpp121} , {&execpp121} } ;
Exe execpp121 = { "CC ExceptionType.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/ExceptionType.cpp"
 ,"-o"
 ,OBJ_PATH+"/ExceptionType.o"
} } ;

Target cpp122 = { "FFTMul.cpp" , "../../Applied/CCore/src/./math/FFTMul.cpp" } ;
Target ocpp122 = { "FFTMul.o" , OBJ_PATH+"/FFTMul.o" } ;
Rule rcpp122 = { {&cpp122} , {&ocpp122} , {&execpp122} } ;
Exe execpp122 = { "CC FFTMul.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./math/FFTMul.cpp"
 ,"-o"
 ,OBJ_PATH+"/FFTMul.o"
} } ;

Target cpp123 = { "FastMutex.cpp" , "../../HCore/CCore/src/./task/FastMutex.cpp" } ;
Target ocpp123 = { "FastMutex.o" , OBJ_PATH+"/FastMutex.o" } ;
Rule rcpp123 = { {&cpp123} , {&ocpp123} , {&execpp123} } ;
Exe execpp123 = { "CC FastMutex.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./task/FastMutex.cpp"
 ,"-o"
 ,OBJ_PATH+"/FastMutex.o"
} } ;

Target cpp124 = { "FeedBuf.cpp" , "../../Simple/CCore/src/FeedBuf.cpp" } ;
Target ocpp124 = { "FeedBuf.o" , OBJ_PATH+"/FeedBuf.o" } ;
Rule rcpp124 = { {&cpp124} , {&ocpp124} , {&execpp124} } ;
Exe execpp124 = { "CC FeedBuf.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/FeedBuf.cpp"
 ,"-o"
 ,OBJ_PATH+"/FeedBuf.o"
} } ;

Target cpp125 = { "Fifo.cpp" , "../../Simple/CCore/src/Fifo.cpp" } ;
Target ocpp125 = { "Fifo.o" , OBJ_PATH+"/Fifo.o" } ;
Rule rcpp125 = { {&cpp125} , {&ocpp125} , {&execpp125} } ;
Exe execpp125 = { "CC Fifo.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/Fifo.cpp"
 ,"-o"
 ,OBJ_PATH+"/Fifo.o"
} } ;

Target cpp126 = { "FigureLib.cpp" , "../../Desktop/Lib/CCore/src/./video/FigureLib.cpp" } ;
Target ocpp126 = { "FigureLib.o" , OBJ_PATH+"/FigureLib.o" } ;
Rule rcpp126 = { {&cpp126} , {&ocpp126} , {&execpp126} } ;
Exe execpp126 = { "CC FigureLib.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/FigureLib.cpp"
 ,"-o"
 ,OBJ_PATH+"/FigureLib.o"
} } ;

Target cpp127 = { "FileBoss.cpp" , "../../Desktop/Tools/CCore/src/./video/FileBoss.cpp" } ;
Target ocpp127 = { "FileBoss.o" , OBJ_PATH+"/FileBoss.o" } ;
Rule rcpp127 = { {&cpp127} , {&ocpp127} , {&execpp127} } ;
Exe execpp127 = { "CC FileBoss.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Tools/CCore/src/./video/FileBoss.cpp"
 ,"-o"
 ,OBJ_PATH+"/FileBoss.o"
} } ;

Target cpp128 = { "FileFrame.cpp" , "../../Desktop/Lib/CCore/src/./video/FileFrame.cpp" } ;
Target ocpp128 = { "FileFrame.o" , OBJ_PATH+"/FileFrame.o" } ;
Rule rcpp128 = { {&cpp128} , {&ocpp128} , {&execpp128} } ;
Exe execpp128 = { "CC FileFrame.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/FileFrame.cpp"
 ,"-o"
 ,OBJ_PATH+"/FileFrame.o"
} } ;

Target cpp129 = { "FileName.cpp" , "../../Applied/CCore/src/FileName.cpp" } ;
Target ocpp129 = { "FileName.o" , OBJ_PATH+"/FileName.o" } ;
Rule rcpp129 = { {&cpp129} , {&ocpp129} , {&execpp129} } ;
Exe execpp129 = { "CC FileName.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/FileName.cpp"
 ,"-o"
 ,OBJ_PATH+"/FileName.o"
} } ;

Target cpp130 = { "FileNameCmp.cpp" , "../../Desktop/Tools/CCore/src/./video/FileNameCmp.cpp" } ;
Target ocpp130 = { "FileNameCmp.o" , OBJ_PATH+"/FileNameCmp.o" } ;
Rule rcpp130 = { {&cpp130} , {&ocpp130} , {&execpp130} } ;
Exe execpp130 = { "CC FileNameCmp.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Tools/CCore/src/./video/FileNameCmp.cpp"
 ,"-o"
 ,OBJ_PATH+"/FileNameCmp.o"
} } ;

Target cpp131 = { "FileNameMatch.cpp" , "../../Applied/CCore/src/FileNameMatch.cpp" } ;
Target ocpp131 = { "FileNameMatch.o" , OBJ_PATH+"/FileNameMatch.o" } ;
Rule rcpp131 = { {&cpp131} , {&ocpp131} , {&execpp131} } ;
Exe execpp131 = { "CC FileNameMatch.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/FileNameMatch.cpp"
 ,"-o"
 ,OBJ_PATH+"/FileNameMatch.o"
} } ;

Target cpp132 = { "FileSystem.cpp" , "../../HCore/CCore/src/FileSystem.cpp" } ;
Target ocpp132 = { "FileSystem.o" , OBJ_PATH+"/FileSystem.o" } ;
Rule rcpp132 = { {&cpp132} , {&ocpp132} , {&execpp132} } ;
Exe execpp132 = { "CC FileSystem.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/FileSystem.cpp"
 ,"-o"
 ,OBJ_PATH+"/FileSystem.o"
} } ;

Target cpp133 = { "FileToMem.cpp" , "../../HCore/CCore/src/FileToMem.cpp" } ;
Target ocpp133 = { "FileToMem.o" , OBJ_PATH+"/FileToMem.o" } ;
Rule rcpp133 = { {&cpp133} , {&ocpp133} , {&execpp133} } ;
Exe execpp133 = { "CC FileToMem.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/FileToMem.cpp"
 ,"-o"
 ,OBJ_PATH+"/FileToMem.o"
} } ;

Target cpp134 = { "FileToRead.cpp" , "../../HCore/CCore/src/FileToRead.cpp" } ;
Target ocpp134 = { "FileToRead.o" , OBJ_PATH+"/FileToRead.o" } ;
Rule rcpp134 = { {&cpp134} , {&ocpp134} , {&execpp134} } ;
Exe execpp134 = { "CC FileToRead.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/FileToRead.cpp"
 ,"-o"
 ,OBJ_PATH+"/FileToRead.o"
} } ;

Target cpp135 = { "Font.cpp" , "../../Desktop/Font/CCore/src/./video/Font.cpp" } ;
Target ocpp135 = { "Font.o" , OBJ_PATH+"/Font.o" } ;
Rule rcpp135 = { {&cpp135} , {&ocpp135} , {&execpp135} } ;
Exe execpp135 = { "CC Font.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Font/CCore/src/./video/Font.cpp"
 ,"-o"
 ,OBJ_PATH+"/Font.o"
} } ;

Target cpp136 = { "FontDatabase.cpp" , "../../Desktop/Tools/CCore/src/./video/FontDatabase.cpp" } ;
Target ocpp136 = { "FontDatabase.o" , OBJ_PATH+"/FontDatabase.o" } ;
Rule rcpp136 = { {&cpp136} , {&ocpp136} , {&execpp136} } ;
Exe execpp136 = { "CC FontDatabase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Tools/CCore/src/./video/FontDatabase.cpp"
 ,"-o"
 ,OBJ_PATH+"/FontDatabase.o"
} } ;

Target cpp137 = { "FontEdit.cpp" , "../../Desktop/Lib/CCore/src/./video/pref/FontEdit.cpp" } ;
Target ocpp137 = { "FontEdit.o" , OBJ_PATH+"/FontEdit.o" } ;
Rule rcpp137 = { {&cpp137} , {&ocpp137} , {&execpp137} } ;
Exe execpp137 = { "CC FontEdit.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/pref/FontEdit.cpp"
 ,"-o"
 ,OBJ_PATH+"/FontEdit.o"
} } ;

Target cpp138 = { "FontLookup.cpp" , "../../Desktop/Tools/CCore/src/./video/FontLookup.cpp" } ;
Target ocpp138 = { "FontLookup.o" , OBJ_PATH+"/FontLookup.o" } ;
Rule rcpp138 = { {&cpp138} , {&ocpp138} , {&execpp138} } ;
Exe execpp138 = { "CC FontLookup.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Tools/CCore/src/./video/FontLookup.cpp"
 ,"-o"
 ,OBJ_PATH+"/FontLookup.o"
} } ;

Target cpp139 = { "FontParam.cpp" , "../../Desktop/Tools/CCore/src/./video/FontParam.cpp" } ;
Target ocpp139 = { "FontParam.o" , OBJ_PATH+"/FontParam.o" } ;
Rule rcpp139 = { {&cpp139} , {&ocpp139} , {&execpp139} } ;
Exe execpp139 = { "CC FontParam.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Tools/CCore/src/./video/FontParam.cpp"
 ,"-o"
 ,OBJ_PATH+"/FontParam.o"
} } ;

Target cpp140 = { "FontReplace.cpp" , "../../Desktop/Lib/CCore/src/./video/FontReplace.cpp" } ;
Target ocpp140 = { "FontReplace.o" , OBJ_PATH+"/FontReplace.o" } ;
Rule rcpp140 = { {&cpp140} , {&ocpp140} , {&execpp140} } ;
Exe execpp140 = { "CC FontReplace.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/FontReplace.cpp"
 ,"-o"
 ,OBJ_PATH+"/FontReplace.o"
} } ;

Target cpp141 = { "ForLoop.cpp" , "../../Simple/CCore/src/ForLoop.cpp" } ;
Target ocpp141 = { "ForLoop.o" , OBJ_PATH+"/ForLoop.o" } ;
Rule rcpp141 = { {&cpp141} , {&ocpp141} , {&execpp141} } ;
Exe execpp141 = { "CC ForLoop.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/ForLoop.cpp"
 ,"-o"
 ,OBJ_PATH+"/ForLoop.o"
} } ;

Target cpp142 = { "Forget.cpp" , "../../Applied/CCore/src/./crypton/Forget.cpp" } ;
Target ocpp142 = { "Forget.o" , OBJ_PATH+"/Forget.o" } ;
Rule rcpp142 = { {&cpp142} , {&ocpp142} , {&execpp142} } ;
Exe execpp142 = { "CC Forget.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./crypton/Forget.cpp"
 ,"-o"
 ,OBJ_PATH+"/Forget.o"
} } ;

Target cpp143 = { "FrameBase.cpp" , "../../Desktop/Lib/CCore/src/./video/FrameBase.cpp" } ;
Target ocpp143 = { "FrameBase.o" , OBJ_PATH+"/FrameBase.o" } ;
Rule rcpp143 = { {&cpp143} , {&ocpp143} , {&execpp143} } ;
Exe execpp143 = { "CC FrameBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/FrameBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/FrameBase.o"
} } ;

Target cpp144 = { "FrameBuf.cpp" , "../../Applied/CCore/src/./video/FrameBuf.cpp" } ;
Target ocpp144 = { "FrameBuf.o" , OBJ_PATH+"/FrameBuf.o" } ;
Rule rcpp144 = { {&cpp144} , {&ocpp144} , {&execpp144} } ;
Exe execpp144 = { "CC FrameBuf.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./video/FrameBuf.cpp"
 ,"-o"
 ,OBJ_PATH+"/FrameBuf.o"
} } ;

Target cpp145 = { "FrameOf.cpp" , "../../Desktop/Lib/CCore/src/./video/FrameOf.cpp" } ;
Target ocpp145 = { "FrameOf.o" , OBJ_PATH+"/FrameOf.o" } ;
Rule rcpp145 = { {&cpp145} , {&ocpp145} , {&execpp145} } ;
Exe execpp145 = { "CC FrameOf.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/FrameOf.cpp"
 ,"-o"
 ,OBJ_PATH+"/FrameOf.o"
} } ;

Target cpp146 = { "FrameWindow.cpp" , "../../Desktop/Core/CCore/src/./video/FrameWindow.cpp" } ;
Target ocpp146 = { "FrameWindow.o" , OBJ_PATH+"/FrameWindow.o" } ;
Rule rcpp146 = { {&cpp146} , {&ocpp146} , {&execpp146} } ;
Exe execpp146 = { "CC FrameWindow.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Core/CCore/src/./video/FrameWindow.cpp"
 ,"-o"
 ,OBJ_PATH+"/FrameWindow.o"
} } ;

Target cpp147 = { "FreeType.cpp" , "../../Desktop/Font/CCore/src/./video/FreeType.cpp" } ;
Target ocpp147 = { "FreeType.o" , OBJ_PATH+"/FreeType.o" } ;
Rule rcpp147 = { {&cpp147} , {&ocpp147} , {&execpp147} } ;
Exe execpp147 = { "CC FreeType.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Font/CCore/src/./video/FreeType.cpp"
 ,"-o"
 ,OBJ_PATH+"/FreeType.o"
} } ;

Target cpp148 = { "FreeTypeFont.cpp" , "../../Desktop/Font/CCore/src/./video/FreeTypeFont.cpp" } ;
Target ocpp148 = { "FreeTypeFont.o" , OBJ_PATH+"/FreeTypeFont.o" } ;
Rule rcpp148 = { {&cpp148} , {&ocpp148} , {&execpp148} } ;
Exe execpp148 = { "CC FreeTypeFont.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Font/CCore/src/./video/FreeTypeFont.cpp"
 ,"-o"
 ,OBJ_PATH+"/FreeTypeFont.o"
} } ;

Target cpp149 = { "FuncTask.cpp" , "../../Applied/CCore/src/./task/FuncTask.cpp" } ;
Target ocpp149 = { "FuncTask.o" , OBJ_PATH+"/FuncTask.o" } ;
Rule rcpp149 = { {&cpp149} , {&ocpp149} , {&execpp149} } ;
Exe execpp149 = { "CC FuncTask.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./task/FuncTask.cpp"
 ,"-o"
 ,OBJ_PATH+"/FuncTask.o"
} } ;

Target cpp150 = { "Function.cpp" , "../../Simple/CCore/src/./gadget/Function.cpp" } ;
Target ocpp150 = { "Function.o" , OBJ_PATH+"/Function.o" } ;
Rule rcpp150 = { {&cpp150} , {&ocpp150} , {&execpp150} } ;
Exe execpp150 = { "CC Function.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/Function.cpp"
 ,"-o"
 ,OBJ_PATH+"/Function.o"
} } ;

Target cpp151 = { "FunctorType.cpp" , "../../Simple/CCore/src/FunctorType.cpp" } ;
Target ocpp151 = { "FunctorType.o" , OBJ_PATH+"/FunctorType.o" } ;
Rule rcpp151 = { {&cpp151} , {&ocpp151} , {&execpp151} } ;
Exe execpp151 = { "CC FunctorType.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/FunctorType.cpp"
 ,"-o"
 ,OBJ_PATH+"/FunctorType.o"
} } ;

Target cpp152 = { "GCDConst.cpp" , "../../Fundamental/CCore/src/./algon/GCDConst.cpp" } ;
Target ocpp152 = { "GCDConst.o" , OBJ_PATH+"/GCDConst.o" } ;
Rule rcpp152 = { {&cpp152} , {&ocpp152} , {&execpp152} } ;
Exe execpp152 = { "CC GCDConst.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./algon/GCDConst.cpp"
 ,"-o"
 ,OBJ_PATH+"/GCDConst.o"
} } ;

Target cpp153 = { "Gadget.cpp" , "../../Simple/CCore/src/Gadget.cpp" } ;
Target ocpp153 = { "Gadget.o" , OBJ_PATH+"/Gadget.o" } ;
Rule rcpp153 = { {&cpp153} , {&ocpp153} , {&execpp153} } ;
Exe execpp153 = { "CC Gadget.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/Gadget.cpp"
 ,"-o"
 ,OBJ_PATH+"/Gadget.o"
} } ;

Target cpp154 = { "Gamma.cpp" , "../../Applied/CCore/src/./video/Gamma.cpp" } ;
Target ocpp154 = { "Gamma.o" , OBJ_PATH+"/Gamma.o" } ;
Rule rcpp154 = { {&cpp154} , {&ocpp154} , {&execpp154} } ;
Exe execpp154 = { "CC Gamma.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./video/Gamma.cpp"
 ,"-o"
 ,OBJ_PATH+"/Gamma.o"
} } ;

Target cpp155 = { "GammaTable.cpp" , "../../Desktop/Draw/CCore/src/./video/GammaTable.cpp" } ;
Target ocpp155 = { "GammaTable.o" , OBJ_PATH+"/GammaTable.o" } ;
Rule rcpp155 = { {&cpp155} , {&ocpp155} , {&execpp155} } ;
Exe execpp155 = { "CC GammaTable.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Draw/CCore/src/./video/GammaTable.cpp"
 ,"-o"
 ,OBJ_PATH+"/GammaTable.o"
} } ;

Target cpp156 = { "GenFile.cpp" , "../../Fundamental/CCore/src/GenFile.cpp" } ;
Target ocpp156 = { "GenFile.o" , OBJ_PATH+"/GenFile.o" } ;
Rule rcpp156 = { {&cpp156} , {&ocpp156} , {&execpp156} } ;
Exe execpp156 = { "CC GenFile.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/GenFile.cpp"
 ,"-o"
 ,OBJ_PATH+"/GenFile.o"
} } ;

Target cpp157 = { "HFSBase.cpp" , "../../Applied/CCore/src/./net/HFSBase.cpp" } ;
Target ocpp157 = { "HFSBase.o" , OBJ_PATH+"/HFSBase.o" } ;
Rule rcpp157 = { {&cpp157} , {&ocpp157} , {&execpp157} } ;
Exe execpp157 = { "CC HFSBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/HFSBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/HFSBase.o"
} } ;

Target cpp158 = { "HFSClientDevice.cpp" , "../../Applied/CCore/src/./net/HFSClientDevice.cpp" } ;
Target ocpp158 = { "HFSClientDevice.o" , OBJ_PATH+"/HFSClientDevice.o" } ;
Rule rcpp158 = { {&cpp158} , {&ocpp158} , {&execpp158} } ;
Exe execpp158 = { "CC HFSClientDevice.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/HFSClientDevice.cpp"
 ,"-o"
 ,OBJ_PATH+"/HFSClientDevice.o"
} } ;

Target cpp159 = { "HFSFileSystemDevice.cpp" , "../../Applied/CCore/src/./net/HFSFileSystemDevice.cpp" } ;
Target ocpp159 = { "HFSFileSystemDevice.o" , OBJ_PATH+"/HFSFileSystemDevice.o" } ;
Rule rcpp159 = { {&cpp159} , {&ocpp159} , {&execpp159} } ;
Exe execpp159 = { "CC HFSFileSystemDevice.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/HFSFileSystemDevice.cpp"
 ,"-o"
 ,OBJ_PATH+"/HFSFileSystemDevice.o"
} } ;

Target cpp160 = { "Handle.cpp" , "../../Simple/CCore/src/./gadget/Handle.cpp" } ;
Target ocpp160 = { "Handle.o" , OBJ_PATH+"/Handle.o" } ;
Rule rcpp160 = { {&cpp160} , {&ocpp160} , {&execpp160} } ;
Exe execpp160 = { "CC Handle.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/Handle.cpp"
 ,"-o"
 ,OBJ_PATH+"/Handle.o"
} } ;

Target cpp161 = { "HashFunction.cpp" , "../../Applied/CCore/src/./crypton/HashFunction.cpp" } ;
Target ocpp161 = { "HashFunction.o" , OBJ_PATH+"/HashFunction.o" } ;
Rule rcpp161 = { {&cpp161} , {&ocpp161} , {&execpp161} } ;
Exe execpp161 = { "CC HashFunction.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./crypton/HashFunction.cpp"
 ,"-o"
 ,OBJ_PATH+"/HashFunction.o"
} } ;

Target cpp162 = { "HeapEngine.cpp" , "../../Fundamental/CCore/src/HeapEngine.cpp" } ;
Target ocpp162 = { "HeapEngine.o" , OBJ_PATH+"/HeapEngine.o" } ;
Rule rcpp162 = { {&cpp162} , {&ocpp162} , {&execpp162} } ;
Exe execpp162 = { "CC HeapEngine.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/HeapEngine.cpp"
 ,"-o"
 ,OBJ_PATH+"/HeapEngine.o"
} } ;

Target cpp163 = { "HeapSort.cpp" , "../../Fundamental/CCore/src/./sort/HeapSort.cpp" } ;
Target ocpp163 = { "HeapSort.o" , OBJ_PATH+"/HeapSort.o" } ;
Rule rcpp163 = { {&cpp163} , {&ocpp163} , {&execpp163} } ;
Exe execpp163 = { "CC HeapSort.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./sort/HeapSort.cpp"
 ,"-o"
 ,OBJ_PATH+"/HeapSort.o"
} } ;

Target cpp164 = { "HomeFile.cpp" , "../../Desktop/Tools/CCore/src/./video/HomeFile.cpp" } ;
Target ocpp164 = { "HomeFile.o" , OBJ_PATH+"/HomeFile.o" } ;
Rule rcpp164 = { {&cpp164} , {&ocpp164} , {&execpp164} } ;
Exe execpp164 = { "CC HomeFile.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Tools/CCore/src/./video/HomeFile.cpp"
 ,"-o"
 ,OBJ_PATH+"/HomeFile.o"
} } ;

Target cpp165 = { "Incremental.cpp" , "../../Desktop/Tools/CCore/src/./video/Incremental.cpp" } ;
Target ocpp165 = { "Incremental.o" , OBJ_PATH+"/Incremental.o" } ;
Rule rcpp165 = { {&cpp165} , {&ocpp165} , {&execpp165} } ;
Exe execpp165 = { "CC Incremental.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Tools/CCore/src/./video/Incremental.cpp"
 ,"-o"
 ,OBJ_PATH+"/Incremental.o"
} } ;

Target cpp166 = { "Info.cpp" , "../../Desktop/Tools/CCore/src/./video/Info.cpp" } ;
Target ocpp166 = { "Info.o" , OBJ_PATH+"/Info.o" } ;
Rule rcpp166 = { {&cpp166} , {&ocpp166} , {&execpp166} } ;
Exe execpp166 = { "CC Info.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Tools/CCore/src/./video/Info.cpp"
 ,"-o"
 ,OBJ_PATH+"/Info.o"
} } ;

Target cpp167 = { "InfoSize.cpp" , "../../Desktop/Tools/CCore/src/./video/InfoSize.cpp" } ;
Target ocpp167 = { "InfoSize.o" , OBJ_PATH+"/InfoSize.o" } ;
Rule rcpp167 = { {&cpp167} , {&ocpp167} , {&execpp167} } ;
Exe execpp167 = { "CC InfoSize.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Tools/CCore/src/./video/InfoSize.cpp"
 ,"-o"
 ,OBJ_PATH+"/InfoSize.o"
} } ;

Target cpp168 = { "Init.cpp" , "../../Simple/CCore/src/./gadget/Init.cpp" } ;
Target ocpp168 = { "Init.o" , OBJ_PATH+"/Init.o" } ;
Rule rcpp168 = { {&cpp168} , {&ocpp168} , {&execpp168} } ;
Exe execpp168 = { "CC Init.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/Init.cpp"
 ,"-o"
 ,OBJ_PATH+"/Init.o"
} } ;

Target cpp169 = { "InputUtils.cpp" , "../../Applied/CCore/src/InputUtils.cpp" } ;
Target ocpp169 = { "InputUtils.o" , OBJ_PATH+"/InputUtils.o" } ;
Rule rcpp169 = { {&cpp169} , {&ocpp169} , {&execpp169} } ;
Exe execpp169 = { "CC InputUtils.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/InputUtils.cpp"
 ,"-o"
 ,OBJ_PATH+"/InputUtils.o"
} } ;

Target cpp170 = { "InstanceLock.cpp" , "../../Simple/CCore/src/InstanceLock.cpp" } ;
Target ocpp170 = { "InstanceLock.o" , OBJ_PATH+"/InstanceLock.o" } ;
Rule rcpp170 = { {&cpp170} , {&ocpp170} , {&execpp170} } ;
Exe execpp170 = { "CC InstanceLock.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/InstanceLock.cpp"
 ,"-o"
 ,OBJ_PATH+"/InstanceLock.o"
} } ;

Target cpp171 = { "IntOp.cpp" , "../../Applied/CCore/src/./video/IntOp.cpp" } ;
Target ocpp171 = { "IntOp.o" , OBJ_PATH+"/IntOp.o" } ;
Rule rcpp171 = { {&cpp171} , {&ocpp171} , {&execpp171} } ;
Exe execpp171 = { "CC IntOp.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./video/IntOp.cpp"
 ,"-o"
 ,OBJ_PATH+"/IntOp.o"
} } ;

Target cpp172 = { "IntPrint.cpp" , "../../Fundamental/CCore/src/./printf/IntPrint.cpp" } ;
Target ocpp172 = { "IntPrint.o" , OBJ_PATH+"/IntPrint.o" } ;
Rule rcpp172 = { {&cpp172} , {&ocpp172} , {&execpp172} } ;
Exe execpp172 = { "CC IntPrint.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./printf/IntPrint.cpp"
 ,"-o"
 ,OBJ_PATH+"/IntPrint.o"
} } ;

Target cpp173 = { "IntScan.cpp" , "../../Fundamental/CCore/src/./scanf/IntScan.cpp" } ;
Target ocpp173 = { "IntScan.o" , OBJ_PATH+"/IntScan.o" } ;
Rule rcpp173 = { {&cpp173} , {&ocpp173} , {&execpp173} } ;
Exe execpp173 = { "CC IntScan.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./scanf/IntScan.cpp"
 ,"-o"
 ,OBJ_PATH+"/IntScan.o"
} } ;

Target cpp174 = { "Integer.cpp" , "../../Applied/CCore/src/./math/Integer.cpp" } ;
Target ocpp174 = { "Integer.o" , OBJ_PATH+"/Integer.o" } ;
Rule rcpp174 = { {&cpp174} , {&ocpp174} , {&execpp174} } ;
Exe execpp174 = { "CC Integer.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./math/Integer.cpp"
 ,"-o"
 ,OBJ_PATH+"/Integer.o"
} } ;

Target cpp175 = { "IntegerAlgo.cpp" , "../../Applied/CCore/src/./math/IntegerAlgo.cpp" } ;
Target ocpp175 = { "IntegerAlgo.o" , OBJ_PATH+"/IntegerAlgo.o" } ;
Rule rcpp175 = { {&cpp175} , {&ocpp175} , {&execpp175} } ;
Exe execpp175 = { "CC IntegerAlgo.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./math/IntegerAlgo.cpp"
 ,"-o"
 ,OBJ_PATH+"/IntegerAlgo.o"
} } ;

Target cpp176 = { "IntegerBuilder.cpp" , "../../Applied/CCore/src/./math/IntegerBuilder.cpp" } ;
Target ocpp176 = { "IntegerBuilder.o" , OBJ_PATH+"/IntegerBuilder.o" } ;
Rule rcpp176 = { {&cpp176} , {&ocpp176} , {&execpp176} } ;
Exe execpp176 = { "CC IntegerBuilder.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./math/IntegerBuilder.cpp"
 ,"-o"
 ,OBJ_PATH+"/IntegerBuilder.o"
} } ;

Target cpp177 = { "IntegerDivider.cpp" , "../../Applied/CCore/src/./math/IntegerDivider.cpp" } ;
Target ocpp177 = { "IntegerDivider.o" , OBJ_PATH+"/IntegerDivider.o" } ;
Rule rcpp177 = { {&cpp177} , {&ocpp177} , {&execpp177} } ;
Exe execpp177 = { "CC IntegerDivider.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./math/IntegerDivider.cpp"
 ,"-o"
 ,OBJ_PATH+"/IntegerDivider.o"
} } ;

Target cpp178 = { "IntegerFastAlgo.cpp" , "../../Target/WIN32utf8/CCore/src/./math/IntegerFastAlgo.cpp" } ;
Target ocpp178 = { "IntegerFastAlgo.o" , OBJ_PATH+"/IntegerFastAlgo.o" } ;
Rule rcpp178 = { {&cpp178} , {&ocpp178} , {&execpp178} } ;
Exe execpp178 = { "CC IntegerFastAlgo.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./math/IntegerFastAlgo.cpp"
 ,"-o"
 ,OBJ_PATH+"/IntegerFastAlgo.o"
} } ;

Target cpp179 = { "IntegerFromString.cpp" , "../../Applied/CCore/src/./math/IntegerFromString.cpp" } ;
Target ocpp179 = { "IntegerFromString.o" , OBJ_PATH+"/IntegerFromString.o" } ;
Rule rcpp179 = { {&cpp179} , {&ocpp179} , {&execpp179} } ;
Exe execpp179 = { "CC IntegerFromString.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./math/IntegerFromString.cpp"
 ,"-o"
 ,OBJ_PATH+"/IntegerFromString.o"
} } ;

Target cpp180 = { "IntegerGCD.cpp" , "../../Applied/CCore/src/./math/IntegerGCD.cpp" } ;
Target ocpp180 = { "IntegerGCD.o" , OBJ_PATH+"/IntegerGCD.o" } ;
Rule rcpp180 = { {&cpp180} , {&ocpp180} , {&execpp180} } ;
Exe execpp180 = { "CC IntegerGCD.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./math/IntegerGCD.cpp"
 ,"-o"
 ,OBJ_PATH+"/IntegerGCD.o"
} } ;

Target cpp181 = { "IntegerMulAlgo.cpp" , "../../Applied/CCore/src/./math/IntegerMulAlgo.cpp" } ;
Target ocpp181 = { "IntegerMulAlgo.o" , OBJ_PATH+"/IntegerMulAlgo.o" } ;
Rule rcpp181 = { {&cpp181} , {&ocpp181} , {&execpp181} } ;
Exe execpp181 = { "CC IntegerMulAlgo.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./math/IntegerMulAlgo.cpp"
 ,"-o"
 ,OBJ_PATH+"/IntegerMulAlgo.o"
} } ;

Target cpp182 = { "IntegerOctetBuilder.cpp" , "../../Applied/CCore/src/./math/IntegerOctetBuilder.cpp" } ;
Target ocpp182 = { "IntegerOctetBuilder.o" , OBJ_PATH+"/IntegerOctetBuilder.o" } ;
Rule rcpp182 = { {&cpp182} , {&ocpp182} , {&execpp182} } ;
Exe execpp182 = { "CC IntegerOctetBuilder.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./math/IntegerOctetBuilder.cpp"
 ,"-o"
 ,OBJ_PATH+"/IntegerOctetBuilder.o"
} } ;

Target cpp183 = { "IntegerSlowAlgo.cpp" , "../../Applied/CCore/src/./math/IntegerSlowAlgo.cpp" } ;
Target ocpp183 = { "IntegerSlowAlgo.o" , OBJ_PATH+"/IntegerSlowAlgo.o" } ;
Rule rcpp183 = { {&cpp183} , {&ocpp183} , {&execpp183} } ;
Exe execpp183 = { "CC IntegerSlowAlgo.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./math/IntegerSlowAlgo.cpp"
 ,"-o"
 ,OBJ_PATH+"/IntegerSlowAlgo.o"
} } ;

Target cpp184 = { "IntelAES.cpp" , "../../Target/WIN32utf8/CCore/src/./crypton/IntelAES.cpp" } ;
Target ocpp184 = { "IntelAES.o" , OBJ_PATH+"/IntelAES.o" } ;
Rule rcpp184 = { {&cpp184} , {&ocpp184} , {&execpp184} } ;
Exe execpp184 = { "CC IntelAES.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./crypton/IntelAES.cpp"
 ,"-o"
 ,OBJ_PATH+"/IntelAES.o"
} } ;

Target cpp185 = { "IntelCPUID.cpp" , "../../Target/WIN32utf8/CCore/src/./crypton/IntelCPUID.cpp" } ;
Target ocpp185 = { "IntelCPUID.o" , OBJ_PATH+"/IntelCPUID.o" } ;
Rule rcpp185 = { {&cpp185} , {&ocpp185} , {&execpp185} } ;
Exe execpp185 = { "CC IntelCPUID.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./crypton/IntelCPUID.cpp"
 ,"-o"
 ,OBJ_PATH+"/IntelCPUID.o"
} } ;

Target cpp186 = { "IntelRandom.cpp" , "../../Target/WIN32utf8/CCore/src/./crypton/IntelRandom.cpp" } ;
Target ocpp186 = { "IntelRandom.o" , OBJ_PATH+"/IntelRandom.o" } ;
Rule rcpp186 = { {&cpp186} , {&ocpp186} , {&execpp186} } ;
Exe execpp186 = { "CC IntelRandom.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./crypton/IntelRandom.cpp"
 ,"-o"
 ,OBJ_PATH+"/IntelRandom.o"
} } ;

Target cpp187 = { "InterfaceHost.cpp" , "../../Fundamental/CCore/src/InterfaceHost.cpp" } ;
Target ocpp187 = { "InterfaceHost.o" , OBJ_PATH+"/InterfaceHost.o" } ;
Rule rcpp187 = { {&cpp187} , {&ocpp187} , {&execpp187} } ;
Exe execpp187 = { "CC InterfaceHost.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/InterfaceHost.cpp"
 ,"-o"
 ,OBJ_PATH+"/InterfaceHost.o"
} } ;

Target cpp188 = { "InternalDesktop.cpp" , "../../Target/WIN32utf8/CCore/src/./video/InternalDesktop.cpp" } ;
Target ocpp188 = { "InternalDesktop.o" , OBJ_PATH+"/InternalDesktop.o" } ;
Rule rcpp188 = { {&cpp188} , {&ocpp188} , {&execpp188} } ;
Exe execpp188 = { "CC InternalDesktop.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./video/InternalDesktop.cpp"
 ,"-o"
 ,OBJ_PATH+"/InternalDesktop.o"
} } ;

Target cpp189 = { "InternalHost.cpp" , "../../Target/WIN32utf8/CCore/src/./video/InternalHost.cpp" } ;
Target ocpp189 = { "InternalHost.o" , OBJ_PATH+"/InternalHost.o" } ;
Rule rcpp189 = { {&cpp189} , {&ocpp189} , {&execpp189} } ;
Exe execpp189 = { "CC InternalHost.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./video/InternalHost.cpp"
 ,"-o"
 ,OBJ_PATH+"/InternalHost.o"
} } ;

Target cpp190 = { "InternalUtils.cpp" , "../../Target/WIN32utf8/CCore/src/./video/InternalUtils.cpp" } ;
Target ocpp190 = { "InternalUtils.o" , OBJ_PATH+"/InternalUtils.o" } ;
Rule rcpp190 = { {&cpp190} , {&ocpp190} , {&execpp190} } ;
Exe execpp190 = { "CC InternalUtils.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./video/InternalUtils.cpp"
 ,"-o"
 ,OBJ_PATH+"/InternalUtils.o"
} } ;

Target cpp191 = { "IntervalTree.cpp" , "../../Applied/CCore/src/IntervalTree.cpp" } ;
Target ocpp191 = { "IntervalTree.o" , OBJ_PATH+"/IntervalTree.o" } ;
Rule rcpp191 = { {&cpp191} , {&ocpp191} , {&execpp191} } ;
Exe execpp191 = { "CC IntervalTree.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/IntervalTree.cpp"
 ,"-o"
 ,OBJ_PATH+"/IntervalTree.o"
} } ;

Target cpp192 = { "Job.cpp" , "../../Fundamental/CCore/src/Job.cpp" } ;
Target ocpp192 = { "Job.o" , OBJ_PATH+"/Job.o" } ;
Rule rcpp192 = { {&cpp192} , {&ocpp192} , {&execpp192} } ;
Exe execpp192 = { "CC Job.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/Job.cpp"
 ,"-o"
 ,OBJ_PATH+"/Job.o"
} } ;

Target cpp193 = { "Keyboard.cpp" , "../../Desktop/Core/CCore/src/./video/Keyboard.cpp" } ;
Target ocpp193 = { "Keyboard.o" , OBJ_PATH+"/Keyboard.o" } ;
Rule rcpp193 = { {&cpp193} , {&ocpp193} , {&execpp193} } ;
Exe execpp193 = { "CC Keyboard.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Core/CCore/src/./video/Keyboard.cpp"
 ,"-o"
 ,OBJ_PATH+"/Keyboard.o"
} } ;

Target cpp194 = { "LangDataMap.cpp" , "../../Applied/CCore/src/./lang/LangDataMap.cpp" } ;
Target ocpp194 = { "LangDataMap.o" , OBJ_PATH+"/LangDataMap.o" } ;
Rule rcpp194 = { {&cpp194} , {&ocpp194} , {&execpp194} } ;
Exe execpp194 = { "CC LangDataMap.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./lang/LangDataMap.cpp"
 ,"-o"
 ,OBJ_PATH+"/LangDataMap.o"
} } ;

Target cpp195 = { "LaunchPath.cpp" , "../../HCore/CCore/src/LaunchPath.cpp" } ;
Target ocpp195 = { "LaunchPath.o" , OBJ_PATH+"/LaunchPath.o" } ;
Rule rcpp195 = { {&cpp195} , {&ocpp195} , {&execpp195} } ;
Exe execpp195 = { "CC LaunchPath.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/LaunchPath.cpp"
 ,"-o"
 ,OBJ_PATH+"/LaunchPath.o"
} } ;

Target cpp196 = { "Layout.cpp" , "../../Desktop/Lib/CCore/src/./video/Layout.cpp" } ;
Target ocpp196 = { "Layout.o" , OBJ_PATH+"/Layout.o" } ;
Rule rcpp196 = { {&cpp196} , {&ocpp196} , {&execpp196} } ;
Exe execpp196 = { "CC Layout.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/Layout.cpp"
 ,"-o"
 ,OBJ_PATH+"/Layout.o"
} } ;

Target cpp197 = { "LayoutCombo.cpp" , "../../Desktop/Lib/CCore/src/./video/LayoutCombo.cpp" } ;
Target ocpp197 = { "LayoutCombo.o" , OBJ_PATH+"/LayoutCombo.o" } ;
Rule rcpp197 = { {&cpp197} , {&ocpp197} , {&execpp197} } ;
Exe execpp197 = { "CC LayoutCombo.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/LayoutCombo.cpp"
 ,"-o"
 ,OBJ_PATH+"/LayoutCombo.o"
} } ;

Target cpp198 = { "Len.cpp" , "../../Simple/CCore/src/./gadget/Len.cpp" } ;
Target ocpp198 = { "Len.o" , OBJ_PATH+"/Len.o" } ;
Rule rcpp198 = { {&cpp198} , {&ocpp198} , {&execpp198} } ;
Exe execpp198 = { "CC Len.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/Len.cpp"
 ,"-o"
 ,OBJ_PATH+"/Len.o"
} } ;

Target cpp199 = { "LineInput.cpp" , "../../Applied/CCore/src/LineInput.cpp" } ;
Target ocpp199 = { "LineInput.o" , OBJ_PATH+"/LineInput.o" } ;
Rule rcpp199 = { {&cpp199} , {&ocpp199} , {&execpp199} } ;
Exe execpp199 = { "CC LineInput.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/LineInput.cpp"
 ,"-o"
 ,OBJ_PATH+"/LineInput.o"
} } ;

Target cpp200 = { "List.cpp" , "../../Fundamental/CCore/src/List.cpp" } ;
Target ocpp200 = { "List.o" , OBJ_PATH+"/List.o" } ;
Rule rcpp200 = { {&cpp200} , {&ocpp200} , {&execpp200} } ;
Exe execpp200 = { "CC List.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/List.cpp"
 ,"-o"
 ,OBJ_PATH+"/List.o"
} } ;

Target cpp201 = { "ListCursor.cpp" , "../../Fundamental/CCore/src/ListCursor.cpp" } ;
Target ocpp201 = { "ListCursor.o" , OBJ_PATH+"/ListCursor.o" } ;
Rule rcpp201 = { {&cpp201} , {&ocpp201} , {&execpp201} } ;
Exe execpp201 = { "CC ListCursor.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/ListCursor.cpp"
 ,"-o"
 ,OBJ_PATH+"/ListCursor.o"
} } ;

Target cpp202 = { "LockObject.cpp" , "../../Simple/CCore/src/./gadget/LockObject.cpp" } ;
Target ocpp202 = { "LockObject.o" , OBJ_PATH+"/LockObject.o" } ;
Rule rcpp202 = { {&cpp202} , {&ocpp202} , {&execpp202} } ;
Exe execpp202 = { "CC LockObject.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/LockObject.cpp"
 ,"-o"
 ,OBJ_PATH+"/LockObject.o"
} } ;

Target cpp203 = { "LockUse.cpp" , "../../Simple/CCore/src/./gadget/LockUse.cpp" } ;
Target ocpp203 = { "LockUse.o" , OBJ_PATH+"/LockUse.o" } ;
Rule rcpp203 = { {&cpp203} , {&ocpp203} , {&execpp203} } ;
Exe execpp203 = { "CC LockUse.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/LockUse.cpp"
 ,"-o"
 ,OBJ_PATH+"/LockUse.o"
} } ;

Target cpp204 = { "Locked.cpp" , "../../Simple/CCore/src/./gadget/Locked.cpp" } ;
Target ocpp204 = { "Locked.o" , OBJ_PATH+"/Locked.o" } ;
Rule rcpp204 = { {&cpp204} , {&ocpp204} , {&execpp204} } ;
Exe execpp204 = { "CC Locked.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/Locked.cpp"
 ,"-o"
 ,OBJ_PATH+"/Locked.o"
} } ;

Target cpp205 = { "Log.cpp" , "../../Applied/CCore/src/Log.cpp" } ;
Target ocpp205 = { "Log.o" , OBJ_PATH+"/Log.o" } ;
Rule rcpp205 = { {&cpp205} , {&ocpp205} , {&execpp205} } ;
Exe execpp205 = { "CC Log.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/Log.cpp"
 ,"-o"
 ,OBJ_PATH+"/Log.o"
} } ;

Target cpp206 = { "MCoordEdit.cpp" , "../../Desktop/Lib/CCore/src/./video/pref/MCoordEdit.cpp" } ;
Target ocpp206 = { "MCoordEdit.o" , OBJ_PATH+"/MCoordEdit.o" } ;
Rule rcpp206 = { {&cpp206} , {&ocpp206} , {&execpp206} } ;
Exe execpp206 = { "CC MCoordEdit.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/pref/MCoordEdit.cpp"
 ,"-o"
 ,OBJ_PATH+"/MCoordEdit.o"
} } ;

Target cpp207 = { "MD5.cpp" , "../../Applied/CCore/src/./crypton/MD5.cpp" } ;
Target ocpp207 = { "MD5.o" , OBJ_PATH+"/MD5.o" } ;
Rule rcpp207 = { {&cpp207} , {&ocpp207} , {&execpp207} } ;
Exe execpp207 = { "CC MD5.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./crypton/MD5.cpp"
 ,"-o"
 ,OBJ_PATH+"/MD5.o"
} } ;

Target cpp208 = { "MPoint.cpp" , "../../Desktop/Draw/CCore/src/./video/MPoint.cpp" } ;
Target ocpp208 = { "MPoint.o" , OBJ_PATH+"/MPoint.o" } ;
Rule rcpp208 = { {&cpp208} , {&ocpp208} , {&execpp208} } ;
Exe execpp208 = { "CC MPoint.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Draw/CCore/src/./video/MPoint.cpp"
 ,"-o"
 ,OBJ_PATH+"/MPoint.o"
} } ;

Target cpp209 = { "MSec.cpp" , "../../Simple/CCore/src/./gadget/MSec.cpp" } ;
Target ocpp209 = { "MSec.o" , OBJ_PATH+"/MSec.o" } ;
Rule rcpp209 = { {&cpp209} , {&ocpp209} , {&execpp209} } ;
Exe execpp209 = { "CC MSec.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/MSec.cpp"
 ,"-o"
 ,OBJ_PATH+"/MSec.o"
} } ;

Target cpp210 = { "MakeFileName.cpp" , "../../Fundamental/CCore/src/MakeFileName.cpp" } ;
Target ocpp210 = { "MakeFileName.o" , OBJ_PATH+"/MakeFileName.o" } ;
Rule rcpp210 = { {&cpp210} , {&ocpp210} , {&execpp210} } ;
Exe execpp210 = { "CC MakeFileName.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/MakeFileName.cpp"
 ,"-o"
 ,OBJ_PATH+"/MakeFileName.o"
} } ;

Target cpp211 = { "MakeString.cpp" , "../../Simple/CCore/src/MakeString.cpp" } ;
Target ocpp211 = { "MakeString.o" , OBJ_PATH+"/MakeString.o" } ;
Rule rcpp211 = { {&cpp211} , {&ocpp211} , {&execpp211} } ;
Exe execpp211 = { "CC MakeString.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/MakeString.cpp"
 ,"-o"
 ,OBJ_PATH+"/MakeString.o"
} } ;

Target cpp212 = { "MemAllocGuard.cpp" , "../../Simple/CCore/src/MemAllocGuard.cpp" } ;
Target ocpp212 = { "MemAllocGuard.o" , OBJ_PATH+"/MemAllocGuard.o" } ;
Rule rcpp212 = { {&cpp212} , {&ocpp212} , {&execpp212} } ;
Exe execpp212 = { "CC MemAllocGuard.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/MemAllocGuard.cpp"
 ,"-o"
 ,OBJ_PATH+"/MemAllocGuard.o"
} } ;

Target cpp213 = { "MemBase.cpp" , "../../HCore/CCore/src/MemBase.cpp" } ;
Target ocpp213 = { "MemBase.o" , OBJ_PATH+"/MemBase.o" } ;
Rule rcpp213 = { {&cpp213} , {&ocpp213} , {&execpp213} } ;
Exe execpp213 = { "CC MemBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/MemBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/MemBase.o"
} } ;

Target cpp214 = { "MemBase_general.cpp" , "../../Fundamental/CCore/src/MemBase_general.cpp" } ;
Target ocpp214 = { "MemBase_general.o" , OBJ_PATH+"/MemBase_general.o" } ;
Rule rcpp214 = { {&cpp214} , {&ocpp214} , {&execpp214} } ;
Exe execpp214 = { "CC MemBase_general.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/MemBase_general.cpp"
 ,"-o"
 ,OBJ_PATH+"/MemBase_general.o"
} } ;

Target cpp215 = { "MemPageHeap.cpp" , "../../HCore/CCore/src/MemPageHeap.cpp" } ;
Target ocpp215 = { "MemPageHeap.o" , OBJ_PATH+"/MemPageHeap.o" } ;
Rule rcpp215 = { {&cpp215} , {&ocpp215} , {&execpp215} } ;
Exe execpp215 = { "CC MemPageHeap.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/MemPageHeap.cpp"
 ,"-o"
 ,OBJ_PATH+"/MemPageHeap.o"
} } ;

Target cpp216 = { "MemSpaceHeap.cpp" , "../../Fundamental/CCore/src/MemSpaceHeap.cpp" } ;
Target ocpp216 = { "MemSpaceHeap.o" , OBJ_PATH+"/MemSpaceHeap.o" } ;
Rule rcpp216 = { {&cpp216} , {&ocpp216} , {&execpp216} } ;
Exe execpp216 = { "CC MemSpaceHeap.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/MemSpaceHeap.cpp"
 ,"-o"
 ,OBJ_PATH+"/MemSpaceHeap.o"
} } ;

Target cpp217 = { "MemberFold.cpp" , "../../Simple/CCore/src/MemberFold.cpp" } ;
Target ocpp217 = { "MemberFold.o" , OBJ_PATH+"/MemberFold.o" } ;
Rule rcpp217 = { {&cpp217} , {&ocpp217} , {&execpp217} } ;
Exe execpp217 = { "CC MemberFold.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/MemberFold.cpp"
 ,"-o"
 ,OBJ_PATH+"/MemberFold.o"
} } ;

Target cpp218 = { "Menu.cpp" , "../../Desktop/Lib/CCore/src/./video/Menu.cpp" } ;
Target ocpp218 = { "Menu.o" , OBJ_PATH+"/Menu.o" } ;
Rule rcpp218 = { {&cpp218} , {&ocpp218} , {&execpp218} } ;
Exe execpp218 = { "CC Menu.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/Menu.cpp"
 ,"-o"
 ,OBJ_PATH+"/Menu.o"
} } ;

Target cpp219 = { "MergeSort.cpp" , "../../Fundamental/CCore/src/./sort/MergeSort.cpp" } ;
Target ocpp219 = { "MergeSort.o" , OBJ_PATH+"/MergeSort.o" } ;
Rule rcpp219 = { {&cpp219} , {&ocpp219} , {&execpp219} } ;
Exe execpp219 = { "CC MergeSort.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./sort/MergeSort.cpp"
 ,"-o"
 ,OBJ_PATH+"/MergeSort.o"
} } ;

Target cpp220 = { "MersenneTwister.cpp" , "../../Fundamental/CCore/src/MersenneTwister.cpp" } ;
Target ocpp220 = { "MersenneTwister.o" , OBJ_PATH+"/MersenneTwister.o" } ;
Rule rcpp220 = { {&cpp220} , {&ocpp220} , {&execpp220} } ;
Exe execpp220 = { "CC MersenneTwister.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/MersenneTwister.cpp"
 ,"-o"
 ,OBJ_PATH+"/MersenneTwister.o"
} } ;

Target cpp221 = { "MessageFrame.cpp" , "../../Desktop/Lib/CCore/src/./video/MessageFrame.cpp" } ;
Target ocpp221 = { "MessageFrame.o" , OBJ_PATH+"/MessageFrame.o" } ;
Rule rcpp221 = { {&cpp221} , {&ocpp221} , {&execpp221} } ;
Exe execpp221 = { "CC MessageFrame.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/MessageFrame.cpp"
 ,"-o"
 ,OBJ_PATH+"/MessageFrame.o"
} } ;

Target cpp222 = { "Meta.cpp" , "../../Simple/CCore/src/./gadget/Meta.cpp" } ;
Target ocpp222 = { "Meta.o" , OBJ_PATH+"/Meta.o" } ;
Rule rcpp222 = { {&cpp222} , {&ocpp222} , {&execpp222} } ;
Exe execpp222 = { "CC Meta.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/Meta.cpp"
 ,"-o"
 ,OBJ_PATH+"/Meta.o"
} } ;

Target cpp223 = { "MetaList.cpp" , "../../Simple/CCore/src/./gadget/MetaList.cpp" } ;
Target ocpp223 = { "MetaList.o" , OBJ_PATH+"/MetaList.o" } ;
Rule rcpp223 = { {&cpp223} , {&ocpp223} , {&execpp223} } ;
Exe execpp223 = { "CC MetaList.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/MetaList.cpp"
 ,"-o"
 ,OBJ_PATH+"/MetaList.o"
} } ;

Target cpp224 = { "MinSizeType.cpp" , "../../Desktop/Lib/CCore/src/./video/MinSizeType.cpp" } ;
Target ocpp224 = { "MinSizeType.o" , OBJ_PATH+"/MinSizeType.o" } ;
Rule rcpp224 = { {&cpp224} , {&ocpp224} , {&execpp224} } ;
Exe execpp224 = { "CC MinSizeType.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/MinSizeType.cpp"
 ,"-o"
 ,OBJ_PATH+"/MinSizeType.o"
} } ;

Target cpp225 = { "MixColorWindow.cpp" , "../../Desktop/Lib/CCore/src/./video/pref/MixColorWindow.cpp" } ;
Target ocpp225 = { "MixColorWindow.o" , OBJ_PATH+"/MixColorWindow.o" } ;
Rule rcpp225 = { {&cpp225} , {&ocpp225} , {&execpp225} } ;
Exe execpp225 = { "CC MixColorWindow.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/pref/MixColorWindow.cpp"
 ,"-o"
 ,OBJ_PATH+"/MixColorWindow.o"
} } ;

Target cpp226 = { "ModEngine.cpp" , "../../Applied/CCore/src/./math/ModEngine.cpp" } ;
Target ocpp226 = { "ModEngine.o" , OBJ_PATH+"/ModEngine.o" } ;
Rule rcpp226 = { {&cpp226} , {&ocpp226} , {&execpp226} } ;
Exe execpp226 = { "CC ModEngine.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./math/ModEngine.cpp"
 ,"-o"
 ,OBJ_PATH+"/ModEngine.o"
} } ;

Target cpp227 = { "Mouse.cpp" , "../../Desktop/Core/CCore/src/./video/Mouse.cpp" } ;
Target ocpp227 = { "Mouse.o" , OBJ_PATH+"/Mouse.o" } ;
Rule rcpp227 = { {&cpp227} , {&ocpp227} , {&execpp227} } ;
Exe execpp227 = { "CC Mouse.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Core/CCore/src/./video/Mouse.cpp"
 ,"-o"
 ,OBJ_PATH+"/Mouse.o"
} } ;

Target cpp228 = { "Move.cpp" , "../../Simple/CCore/src/Move.cpp" } ;
Target ocpp228 = { "Move.o" , OBJ_PATH+"/Move.o" } ;
Rule rcpp228 = { {&cpp228} , {&ocpp228} , {&execpp228} } ;
Exe execpp228 = { "CC Move.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/Move.cpp"
 ,"-o"
 ,OBJ_PATH+"/Move.o"
} } ;

Target cpp229 = { "MultiEvent.cpp" , "../../HCore/CCore/src/./task/MultiEvent.cpp" } ;
Target ocpp229 = { "MultiEvent.o" , OBJ_PATH+"/MultiEvent.o" } ;
Rule rcpp229 = { {&cpp229} , {&ocpp229} , {&execpp229} } ;
Exe execpp229 = { "CC MultiEvent.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./task/MultiEvent.cpp"
 ,"-o"
 ,OBJ_PATH+"/MultiEvent.o"
} } ;

Target cpp230 = { "MultiSem.cpp" , "../../HCore/CCore/src/./task/MultiSem.cpp" } ;
Target ocpp230 = { "MultiSem.o" , OBJ_PATH+"/MultiSem.o" } ;
Rule rcpp230 = { {&cpp230} , {&ocpp230} , {&execpp230} } ;
Exe execpp230 = { "CC MultiSem.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./task/MultiSem.cpp"
 ,"-o"
 ,OBJ_PATH+"/MultiSem.o"
} } ;

Target cpp231 = { "MultiSignal.cpp" , "../../Fundamental/CCore/src/MultiSignal.cpp" } ;
Target ocpp231 = { "MultiSignal.o" , OBJ_PATH+"/MultiSignal.o" } ;
Rule rcpp231 = { {&cpp231} , {&ocpp231} , {&execpp231} } ;
Exe execpp231 = { "CC MultiSignal.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/MultiSignal.cpp"
 ,"-o"
 ,OBJ_PATH+"/MultiSignal.o"
} } ;

Target cpp232 = { "Mutex.cpp" , "../../HCore/CCore/src/./task/Mutex.cpp" } ;
Target ocpp232 = { "Mutex.o" , OBJ_PATH+"/Mutex.o" } ;
Rule rcpp232 = { {&cpp232} , {&ocpp232} , {&execpp232} } ;
Exe execpp232 = { "CC Mutex.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./task/Mutex.cpp"
 ,"-o"
 ,OBJ_PATH+"/Mutex.o"
} } ;

Target cpp233 = { "MutexSpinCount.cpp" , "../../HCore/CCore/src/./task/MutexSpinCount.cpp" } ;
Target ocpp233 = { "MutexSpinCount.o" , OBJ_PATH+"/MutexSpinCount.o" } ;
Rule rcpp233 = { {&cpp233} , {&ocpp233} , {&execpp233} } ;
Exe execpp233 = { "CC MutexSpinCount.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./task/MutexSpinCount.cpp"
 ,"-o"
 ,OBJ_PATH+"/MutexSpinCount.o"
} } ;

Target cpp234 = { "NanoIPDevice.cpp" , "../../Applied/CCore/src/./net/NanoIPDevice.cpp" } ;
Target ocpp234 = { "NanoIPDevice.o" , OBJ_PATH+"/NanoIPDevice.o" } ;
Rule rcpp234 = { {&cpp234} , {&ocpp234} , {&execpp234} } ;
Exe execpp234 = { "CC NanoIPDevice.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/NanoIPDevice.cpp"
 ,"-o"
 ,OBJ_PATH+"/NanoIPDevice.o"
} } ;

Target cpp235 = { "NanoPacket.cpp" , "../../Applied/CCore/src/NanoPacket.cpp" } ;
Target ocpp235 = { "NanoPacket.o" , OBJ_PATH+"/NanoPacket.o" } ;
Rule rcpp235 = { {&cpp235} , {&ocpp235} , {&execpp235} } ;
Exe execpp235 = { "CC NanoPacket.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/NanoPacket.cpp"
 ,"-o"
 ,OBJ_PATH+"/NanoPacket.o"
} } ;

Target cpp236 = { "NegBool.cpp" , "../../Simple/CCore/src/./gadget/NegBool.cpp" } ;
Target ocpp236 = { "NegBool.o" , OBJ_PATH+"/NegBool.o" } ;
Rule rcpp236 = { {&cpp236} , {&ocpp236} , {&execpp236} } ;
Exe execpp236 = { "CC NegBool.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/NegBool.cpp"
 ,"-o"
 ,OBJ_PATH+"/NegBool.o"
} } ;

Target cpp237 = { "NetBase.cpp" , "../../Applied/CCore/src/./net/NetBase.cpp" } ;
Target ocpp237 = { "NetBase.o" , OBJ_PATH+"/NetBase.o" } ;
Rule rcpp237 = { {&cpp237} , {&ocpp237} , {&execpp237} } ;
Exe execpp237 = { "CC NetBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/NetBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/NetBase.o"
} } ;

Target cpp238 = { "NetFork.cpp" , "../../Applied/CCore/src/./net/NetFork.cpp" } ;
Target ocpp238 = { "NetFork.o" , OBJ_PATH+"/NetFork.o" } ;
Rule rcpp238 = { {&cpp238} , {&ocpp238} , {&execpp238} } ;
Exe execpp238 = { "CC NetFork.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/NetFork.cpp"
 ,"-o"
 ,OBJ_PATH+"/NetFork.o"
} } ;

Target cpp239 = { "NewDelete.cpp" , "../../Simple/CCore/src/NewDelete.cpp" } ;
Target ocpp239 = { "NewDelete.o" , OBJ_PATH+"/NewDelete.o" } ;
Rule rcpp239 = { {&cpp239} , {&ocpp239} , {&execpp239} } ;
Exe execpp239 = { "CC NewDelete.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/NewDelete.cpp"
 ,"-o"
 ,OBJ_PATH+"/NewDelete.o"
} } ;

Target cpp240 = { "NoCopy.cpp" , "../../Simple/CCore/src/./gadget/NoCopy.cpp" } ;
Target ocpp240 = { "NoCopy.o" , OBJ_PATH+"/NoCopy.o" } ;
Rule rcpp240 = { {&cpp240} , {&ocpp240} , {&execpp240} } ;
Exe execpp240 = { "CC NoCopy.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/NoCopy.cpp"
 ,"-o"
 ,OBJ_PATH+"/NoCopy.o"
} } ;

Target cpp241 = { "NoMutex.cpp" , "../../Applied/CCore/src/./task/NoMutex.cpp" } ;
Target ocpp241 = { "NoMutex.o" , OBJ_PATH+"/NoMutex.o" } ;
Rule rcpp241 = { {&cpp241} , {&ocpp241} , {&execpp241} } ;
Exe execpp241 = { "CC NoMutex.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./task/NoMutex.cpp"
 ,"-o"
 ,OBJ_PATH+"/NoMutex.o"
} } ;

Target cpp242 = { "NoPrimeTest.cpp" , "../../Applied/CCore/src/./math/NoPrimeTest.cpp" } ;
Target ocpp242 = { "NoPrimeTest.o" , OBJ_PATH+"/NoPrimeTest.o" } ;
Rule rcpp242 = { {&cpp242} , {&ocpp242} , {&execpp242} } ;
Exe execpp242 = { "CC NoPrimeTest.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./math/NoPrimeTest.cpp"
 ,"-o"
 ,OBJ_PATH+"/NoPrimeTest.o"
} } ;

Target cpp243 = { "NoThrowFlags.cpp" , "../../Simple/CCore/src/./gadget/NoThrowFlags.cpp" } ;
Target ocpp243 = { "NoThrowFlags.o" , OBJ_PATH+"/NoThrowFlags.o" } ;
Rule rcpp243 = { {&cpp243} , {&ocpp243} , {&execpp243} } ;
Exe execpp243 = { "CC NoThrowFlags.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/NoThrowFlags.cpp"
 ,"-o"
 ,OBJ_PATH+"/NoThrowFlags.o"
} } ;

Target cpp244 = { "NodeAllocator.cpp" , "../../Fundamental/CCore/src/NodeAllocator.cpp" } ;
Target ocpp244 = { "NodeAllocator.o" , OBJ_PATH+"/NodeAllocator.o" } ;
Rule rcpp244 = { {&cpp244} , {&ocpp244} , {&execpp244} } ;
Exe execpp244 = { "CC NodeAllocator.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/NodeAllocator.cpp"
 ,"-o"
 ,OBJ_PATH+"/NodeAllocator.o"
} } ;

Target cpp245 = { "Nothing.cpp" , "../../Simple/CCore/src/./gadget/Nothing.cpp" } ;
Target ocpp245 = { "Nothing.o" , OBJ_PATH+"/Nothing.o" } ;
Rule rcpp245 = { {&cpp245} , {&ocpp245} , {&execpp245} } ;
Exe execpp245 = { "CC Nothing.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/Nothing.cpp"
 ,"-o"
 ,OBJ_PATH+"/Nothing.o"
} } ;

Target cpp246 = { "NullMovePtr.cpp" , "../../Simple/CCore/src/./gadget/NullMovePtr.cpp" } ;
Target ocpp246 = { "NullMovePtr.o" , OBJ_PATH+"/NullMovePtr.o" } ;
Rule rcpp246 = { {&cpp246} , {&ocpp246} , {&execpp246} } ;
Exe execpp246 = { "CC NullMovePtr.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/NullMovePtr.cpp"
 ,"-o"
 ,OBJ_PATH+"/NullMovePtr.o"
} } ;

Target cpp247 = { "ObjHost.cpp" , "../../Fundamental/CCore/src/ObjHost.cpp" } ;
Target ocpp247 = { "ObjHost.o" , OBJ_PATH+"/ObjHost.o" } ;
Rule rcpp247 = { {&cpp247} , {&ocpp247} , {&execpp247} } ;
Exe execpp247 = { "CC ObjHost.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/ObjHost.cpp"
 ,"-o"
 ,OBJ_PATH+"/ObjHost.o"
} } ;

Target cpp248 = { "ObjectDomain.cpp" , "../../Fundamental/CCore/src/ObjectDomain.cpp" } ;
Target ocpp248 = { "ObjectDomain.o" , OBJ_PATH+"/ObjectDomain.o" } ;
Rule rcpp248 = { {&cpp248} , {&ocpp248} , {&execpp248} } ;
Exe execpp248 = { "CC ObjectDomain.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/ObjectDomain.cpp"
 ,"-o"
 ,OBJ_PATH+"/ObjectDomain.o"
} } ;

Target cpp249 = { "OpAddHelper.cpp" , "../../Simple/CCore/src/./gadget/OpAddHelper.cpp" } ;
Target ocpp249 = { "OpAddHelper.o" , OBJ_PATH+"/OpAddHelper.o" } ;
Rule rcpp249 = { {&cpp249} , {&ocpp249} , {&execpp249} } ;
Exe execpp249 = { "CC OpAddHelper.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/OpAddHelper.cpp"
 ,"-o"
 ,OBJ_PATH+"/OpAddHelper.o"
} } ;

Target cpp250 = { "OptMember.cpp" , "../../Simple/CCore/src/OptMember.cpp" } ;
Target ocpp250 = { "OptMember.o" , OBJ_PATH+"/OptMember.o" } ;
Rule rcpp250 = { {&cpp250} , {&ocpp250} , {&execpp250} } ;
Exe execpp250 = { "CC OptMember.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/OptMember.cpp"
 ,"-o"
 ,OBJ_PATH+"/OptMember.o"
} } ;

Target cpp251 = { "Optional.cpp" , "../../Fundamental/CCore/src/Optional.cpp" } ;
Target ocpp251 = { "Optional.o" , OBJ_PATH+"/Optional.o" } ;
Rule rcpp251 = { {&cpp251} , {&ocpp251} , {&execpp251} } ;
Exe execpp251 = { "CC Optional.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/Optional.cpp"
 ,"-o"
 ,OBJ_PATH+"/Optional.o"
} } ;

Target cpp252 = { "OwnPtr.cpp" , "../../Simple/CCore/src/OwnPtr.cpp" } ;
Target ocpp252 = { "OwnPtr.o" , OBJ_PATH+"/OwnPtr.o" } ;
Rule rcpp252 = { {&cpp252} , {&ocpp252} , {&execpp252} } ;
Exe execpp252 = { "CC OwnPtr.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/OwnPtr.cpp"
 ,"-o"
 ,OBJ_PATH+"/OwnPtr.o"
} } ;

Target cpp253 = { "PKE.cpp" , "../../Applied/CCore/src/./net/PKE.cpp" } ;
Target ocpp253 = { "PKE.o" , OBJ_PATH+"/PKE.o" } ;
Rule rcpp253 = { {&cpp253} , {&ocpp253} , {&execpp253} } ;
Exe execpp253 = { "CC PKE.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/PKE.cpp"
 ,"-o"
 ,OBJ_PATH+"/PKE.o"
} } ;

Target cpp254 = { "PSec.cpp" , "../../Applied/CCore/src/./net/PSec.cpp" } ;
Target ocpp254 = { "PSec.o" , OBJ_PATH+"/PSec.o" } ;
Rule rcpp254 = { {&cpp254} , {&ocpp254} , {&execpp254} } ;
Exe execpp254 = { "CC PSec.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/PSec.cpp"
 ,"-o"
 ,OBJ_PATH+"/PSec.o"
} } ;

Target cpp255 = { "PSecCore.cpp" , "../../Applied/CCore/src/./net/PSecCore.cpp" } ;
Target ocpp255 = { "PSecCore.o" , OBJ_PATH+"/PSecCore.o" } ;
Rule rcpp255 = { {&cpp255} , {&ocpp255} , {&execpp255} } ;
Exe execpp255 = { "CC PSecCore.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/PSecCore.cpp"
 ,"-o"
 ,OBJ_PATH+"/PSecCore.o"
} } ;

Target cpp256 = { "PSecKey.cpp" , "../../Applied/CCore/src/./net/PSecKey.cpp" } ;
Target ocpp256 = { "PSecKey.o" , OBJ_PATH+"/PSecKey.o" } ;
Rule rcpp256 = { {&cpp256} , {&ocpp256} , {&execpp256} } ;
Exe execpp256 = { "CC PSecKey.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/PSecKey.cpp"
 ,"-o"
 ,OBJ_PATH+"/PSecKey.o"
} } ;

Target cpp257 = { "PTPBase.cpp" , "../../Applied/CCore/src/./net/PTPBase.cpp" } ;
Target ocpp257 = { "PTPBase.o" , OBJ_PATH+"/PTPBase.o" } ;
Rule rcpp257 = { {&cpp257} , {&ocpp257} , {&execpp257} } ;
Exe execpp257 = { "CC PTPBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/PTPBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/PTPBase.o"
} } ;

Target cpp258 = { "PTPBoot.cpp" , "../../Applied/CCore/src/./net/PTPBoot.cpp" } ;
Target ocpp258 = { "PTPBoot.o" , OBJ_PATH+"/PTPBoot.o" } ;
Rule rcpp258 = { {&cpp258} , {&ocpp258} , {&execpp258} } ;
Exe execpp258 = { "CC PTPBoot.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/PTPBoot.cpp"
 ,"-o"
 ,OBJ_PATH+"/PTPBoot.o"
} } ;

Target cpp259 = { "PTPBootBase.cpp" , "../../Applied/CCore/src/./net/PTPBootBase.cpp" } ;
Target ocpp259 = { "PTPBootBase.o" , OBJ_PATH+"/PTPBootBase.o" } ;
Rule rcpp259 = { {&cpp259} , {&ocpp259} , {&execpp259} } ;
Exe execpp259 = { "CC PTPBootBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/PTPBootBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/PTPBootBase.o"
} } ;

Target cpp260 = { "PTPClientDevice.cpp" , "../../Applied/CCore/src/./net/PTPClientDevice.cpp" } ;
Target ocpp260 = { "PTPClientDevice.o" , OBJ_PATH+"/PTPClientDevice.o" } ;
Rule rcpp260 = { {&cpp260} , {&ocpp260} , {&execpp260} } ;
Exe execpp260 = { "CC PTPClientDevice.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/PTPClientDevice.cpp"
 ,"-o"
 ,OBJ_PATH+"/PTPClientDevice.o"
} } ;

Target cpp261 = { "PTPConBase.cpp" , "../../Applied/CCore/src/./net/PTPConBase.cpp" } ;
Target ocpp261 = { "PTPConBase.o" , OBJ_PATH+"/PTPConBase.o" } ;
Rule rcpp261 = { {&cpp261} , {&ocpp261} , {&execpp261} } ;
Exe execpp261 = { "CC PTPConBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/PTPConBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/PTPConBase.o"
} } ;

Target cpp262 = { "PTPConDevice.cpp" , "../../Applied/CCore/src/./net/PTPConDevice.cpp" } ;
Target ocpp262 = { "PTPConDevice.o" , OBJ_PATH+"/PTPConDevice.o" } ;
Rule rcpp262 = { {&cpp262} , {&ocpp262} , {&execpp262} } ;
Exe execpp262 = { "CC PTPConDevice.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/PTPConDevice.cpp"
 ,"-o"
 ,OBJ_PATH+"/PTPConDevice.o"
} } ;

Target cpp263 = { "PTPEchoTest.cpp" , "../../Applied/CCore/src/./net/PTPEchoTest.cpp" } ;
Target ocpp263 = { "PTPEchoTest.o" , OBJ_PATH+"/PTPEchoTest.o" } ;
Rule rcpp263 = { {&cpp263} , {&ocpp263} , {&execpp263} } ;
Exe execpp263 = { "CC PTPEchoTest.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/PTPEchoTest.cpp"
 ,"-o"
 ,OBJ_PATH+"/PTPEchoTest.o"
} } ;

Target cpp264 = { "PTPExtra.cpp" , "../../Applied/CCore/src/./net/PTPExtra.cpp" } ;
Target ocpp264 = { "PTPExtra.o" , OBJ_PATH+"/PTPExtra.o" } ;
Rule rcpp264 = { {&cpp264} , {&ocpp264} , {&execpp264} } ;
Exe execpp264 = { "CC PTPExtra.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/PTPExtra.cpp"
 ,"-o"
 ,OBJ_PATH+"/PTPExtra.o"
} } ;

Target cpp265 = { "PTPServerDevice.cpp" , "../../Applied/CCore/src/./net/PTPServerDevice.cpp" } ;
Target ocpp265 = { "PTPServerDevice.o" , OBJ_PATH+"/PTPServerDevice.o" } ;
Rule rcpp265 = { {&cpp265} , {&ocpp265} , {&execpp265} } ;
Exe execpp265 = { "CC PTPServerDevice.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/PTPServerDevice.cpp"
 ,"-o"
 ,OBJ_PATH+"/PTPServerDevice.o"
} } ;

Target cpp266 = { "PTPSupport.cpp" , "../../Applied/CCore/src/./net/PTPSupport.cpp" } ;
Target ocpp266 = { "PTPSupport.o" , OBJ_PATH+"/PTPSupport.o" } ;
Rule rcpp266 = { {&cpp266} , {&ocpp266} , {&execpp266} } ;
Exe execpp266 = { "CC PTPSupport.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/PTPSupport.cpp"
 ,"-o"
 ,OBJ_PATH+"/PTPSupport.o"
} } ;

Target cpp267 = { "PTPSupportBase.cpp" , "../../Applied/CCore/src/./net/PTPSupportBase.cpp" } ;
Target ocpp267 = { "PTPSupportBase.o" , OBJ_PATH+"/PTPSupportBase.o" } ;
Rule rcpp267 = { {&cpp267} , {&ocpp267} , {&execpp267} } ;
Exe execpp267 = { "CC PTPSupportBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/PTPSupportBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/PTPSupportBase.o"
} } ;

Target cpp268 = { "Packet.cpp" , "../../Applied/CCore/src/Packet.cpp" } ;
Target ocpp268 = { "Packet.o" , OBJ_PATH+"/Packet.o" } ;
Rule rcpp268 = { {&cpp268} , {&ocpp268} , {&execpp268} } ;
Exe execpp268 = { "CC Packet.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/Packet.cpp"
 ,"-o"
 ,OBJ_PATH+"/Packet.o"
} } ;

Target cpp269 = { "PacketEndpointDevice.cpp" , "../../Applied/CCore/src/./net/PacketEndpointDevice.cpp" } ;
Target ocpp269 = { "PacketEndpointDevice.o" , OBJ_PATH+"/PacketEndpointDevice.o" } ;
Rule rcpp269 = { {&cpp269} , {&ocpp269} , {&execpp269} } ;
Exe execpp269 = { "CC PacketEndpointDevice.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/PacketEndpointDevice.cpp"
 ,"-o"
 ,OBJ_PATH+"/PacketEndpointDevice.o"
} } ;

Target cpp270 = { "PacketPool.cpp" , "../../Applied/CCore/src/PacketPool.cpp" } ;
Target ocpp270 = { "PacketPool.o" , OBJ_PATH+"/PacketPool.o" } ;
Rule rcpp270 = { {&cpp270} , {&ocpp270} , {&execpp270} } ;
Exe execpp270 = { "CC PacketPool.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/PacketPool.cpp"
 ,"-o"
 ,OBJ_PATH+"/PacketPool.o"
} } ;

Target cpp271 = { "PacketPool_PacketCount.cpp" , "../../Applied/CCore/src/PacketPool_PacketCount.cpp" } ;
Target ocpp271 = { "PacketPool_PacketCount.o" , OBJ_PATH+"/PacketPool_PacketCount.o" } ;
Rule rcpp271 = { {&cpp271} , {&ocpp271} , {&execpp271} } ;
Exe execpp271 = { "CC PacketPool_PacketCount.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/PacketPool_PacketCount.cpp"
 ,"-o"
 ,OBJ_PATH+"/PacketPool_PacketCount.o"
} } ;

Target cpp272 = { "PacketPool_PacketMaxDataLen.cpp" , "../../Applied/CCore/src/PacketPool_PacketMaxDataLen.cpp" } ;
Target ocpp272 = { "PacketPool_PacketMaxDataLen.o" , OBJ_PATH+"/PacketPool_PacketMaxDataLen.o" } ;
Rule rcpp272 = { {&cpp272} , {&ocpp272} , {&execpp272} } ;
Exe execpp272 = { "CC PacketPool_PacketMaxDataLen.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/PacketPool_PacketMaxDataLen.cpp"
 ,"-o"
 ,OBJ_PATH+"/PacketPool_PacketMaxDataLen.o"
} } ;

Target cpp273 = { "PacketSet.cpp" , "../../Applied/CCore/src/PacketSet.cpp" } ;
Target ocpp273 = { "PacketSet.o" , OBJ_PATH+"/PacketSet.o" } ;
Rule rcpp273 = { {&cpp273} , {&ocpp273} , {&execpp273} } ;
Exe execpp273 = { "CC PacketSet.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/PacketSet.cpp"
 ,"-o"
 ,OBJ_PATH+"/PacketSet.o"
} } ;

Target cpp274 = { "ParaQuickSort.cpp" , "../../Fundamental/CCore/src/./sort/ParaQuickSort.cpp" } ;
Target ocpp274 = { "ParaQuickSort.o" , OBJ_PATH+"/ParaQuickSort.o" } ;
Rule rcpp274 = { {&cpp274} , {&ocpp274} , {&execpp274} } ;
Exe execpp274 = { "CC ParaQuickSort.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./sort/ParaQuickSort.cpp"
 ,"-o"
 ,OBJ_PATH+"/ParaQuickSort.o"
} } ;

Target cpp275 = { "Partition.cpp" , "../../Fundamental/CCore/src/./algon/Partition.cpp" } ;
Target ocpp275 = { "Partition.o" , OBJ_PATH+"/Partition.o" } ;
Rule rcpp275 = { {&cpp275} , {&ocpp275} , {&execpp275} } ;
Exe execpp275 = { "CC Partition.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./algon/Partition.cpp"
 ,"-o"
 ,OBJ_PATH+"/Partition.o"
} } ;

Target cpp276 = { "Path.cpp" , "../../Fundamental/CCore/src/Path.cpp" } ;
Target ocpp276 = { "Path.o" , OBJ_PATH+"/Path.o" } ;
Rule rcpp276 = { {&cpp276} , {&ocpp276} , {&execpp276} } ;
Exe execpp276 = { "CC Path.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/Path.cpp"
 ,"-o"
 ,OBJ_PATH+"/Path.o"
} } ;

Target cpp277 = { "PerTask.cpp" , "../../Applied/CCore/src/PerTask.cpp" } ;
Target ocpp277 = { "PerTask.o" , OBJ_PATH+"/PerTask.o" } ;
Rule rcpp277 = { {&cpp277} , {&ocpp277} , {&execpp277} } ;
Exe execpp277 = { "CC PerTask.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/PerTask.cpp"
 ,"-o"
 ,OBJ_PATH+"/PerTask.o"
} } ;

Target cpp278 = { "Picture.cpp" , "../../Desktop/Tools/CCore/src/./video/Picture.cpp" } ;
Target ocpp278 = { "Picture.o" , OBJ_PATH+"/Picture.o" } ;
Rule rcpp278 = { {&cpp278} , {&ocpp278} , {&execpp278} } ;
Exe execpp278 = { "CC Picture.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Tools/CCore/src/./video/Picture.cpp"
 ,"-o"
 ,OBJ_PATH+"/Picture.o"
} } ;

Target cpp279 = { "Place.cpp" , "../../Simple/CCore/src/./gadget/Place.cpp" } ;
Target ocpp279 = { "Place.o" , OBJ_PATH+"/Place.o" } ;
Rule rcpp279 = { {&cpp279} , {&ocpp279} , {&execpp279} } ;
Exe execpp279 = { "CC Place.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/Place.cpp"
 ,"-o"
 ,OBJ_PATH+"/Place.o"
} } ;

Target cpp280 = { "PlanInit.cpp" , "../../Fundamental/CCore/src/PlanInit.cpp" } ;
Target ocpp280 = { "PlanInit.o" , OBJ_PATH+"/PlanInit.o" } ;
Rule rcpp280 = { {&cpp280} , {&ocpp280} , {&execpp280} } ;
Exe execpp280 = { "CC PlanInit.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/PlanInit.cpp"
 ,"-o"
 ,OBJ_PATH+"/PlanInit.o"
} } ;

Target cpp281 = { "PlanInit_CCore.cpp" , "../../Target/WIN32utf8/CCore/src/PlanInit_CCore.cpp" } ;
Target ocpp281 = { "PlanInit_CCore.o" , OBJ_PATH+"/PlanInit_CCore.o" } ;
Rule rcpp281 = { {&cpp281} , {&ocpp281} , {&execpp281} } ;
Exe execpp281 = { "CC PlanInit_CCore.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/PlanInit_CCore.cpp"
 ,"-o"
 ,OBJ_PATH+"/PlanInit_CCore.o"
} } ;

Target cpp282 = { "PlatformBase.cpp" , "../../Target/WIN32utf8/CCore/src/./base/PlatformBase.cpp" } ;
Target ocpp282 = { "PlatformBase.o" , OBJ_PATH+"/PlatformBase.o" } ;
Rule rcpp282 = { {&cpp282} , {&ocpp282} , {&execpp282} } ;
Exe execpp282 = { "CC PlatformBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./base/PlatformBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/PlatformBase.o"
} } ;

Target cpp283 = { "Point.cpp" , "../../Applied/CCore/src/./video/Point.cpp" } ;
Target ocpp283 = { "Point.o" , OBJ_PATH+"/Point.o" } ;
Rule rcpp283 = { {&cpp283} , {&ocpp283} , {&execpp283} } ;
Exe execpp283 = { "CC Point.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./video/Point.cpp"
 ,"-o"
 ,OBJ_PATH+"/Point.o"
} } ;

Target cpp284 = { "PointEdit.cpp" , "../../Desktop/Lib/CCore/src/./video/pref/PointEdit.cpp" } ;
Target ocpp284 = { "PointEdit.o" , OBJ_PATH+"/PointEdit.o" } ;
Rule rcpp284 = { {&cpp284} , {&ocpp284} , {&execpp284} } ;
Exe execpp284 = { "CC PointEdit.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/pref/PointEdit.cpp"
 ,"-o"
 ,OBJ_PATH+"/PointEdit.o"
} } ;

Target cpp285 = { "PosSub.cpp" , "../../Simple/CCore/src/./gadget/PosSub.cpp" } ;
Target ocpp285 = { "PosSub.o" , OBJ_PATH+"/PosSub.o" } ;
Rule rcpp285 = { {&cpp285} , {&ocpp285} , {&execpp285} } ;
Exe execpp285 = { "CC PosSub.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/PosSub.cpp"
 ,"-o"
 ,OBJ_PATH+"/PosSub.o"
} } ;

Target cpp286 = { "Pow.cpp" , "../../Simple/CCore/src/Pow.cpp" } ;
Target ocpp286 = { "Pow.o" , OBJ_PATH+"/Pow.o" } ;
Rule rcpp286 = { {&cpp286} , {&ocpp286} , {&execpp286} } ;
Exe execpp286 = { "CC Pow.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/Pow.cpp"
 ,"-o"
 ,OBJ_PATH+"/Pow.o"
} } ;

Target cpp287 = { "PretextFileToMem.cpp" , "../../Applied/CCore/src/PretextFileToMem.cpp" } ;
Target ocpp287 = { "PretextFileToMem.o" , OBJ_PATH+"/PretextFileToMem.o" } ;
Rule rcpp287 = { {&cpp287} , {&ocpp287} , {&execpp287} } ;
Exe execpp287 = { "CC PretextFileToMem.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/PretextFileToMem.cpp"
 ,"-o"
 ,OBJ_PATH+"/PretextFileToMem.o"
} } ;

Target cpp288 = { "Print.cpp" , "../../HCore/CCore/src/Print.cpp" } ;
Target ocpp288 = { "Print.o" , OBJ_PATH+"/Print.o" } ;
Rule rcpp288 = { {&cpp288} , {&ocpp288} , {&execpp288} } ;
Exe execpp288 = { "CC Print.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/Print.cpp"
 ,"-o"
 ,OBJ_PATH+"/Print.o"
} } ;

Target cpp289 = { "PrintAbort.cpp" , "../../Simple/CCore/src/PrintAbort.cpp" } ;
Target ocpp289 = { "PrintAbort.o" , OBJ_PATH+"/PrintAbort.o" } ;
Rule rcpp289 = { {&cpp289} , {&ocpp289} , {&execpp289} } ;
Exe execpp289 = { "CC PrintAbort.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/PrintAbort.cpp"
 ,"-o"
 ,OBJ_PATH+"/PrintAbort.o"
} } ;

Target cpp290 = { "PrintAsyncFile.cpp" , "../../Applied/CCore/src/./print/PrintAsyncFile.cpp" } ;
Target ocpp290 = { "PrintAsyncFile.o" , OBJ_PATH+"/PrintAsyncFile.o" } ;
Rule rcpp290 = { {&cpp290} , {&ocpp290} , {&execpp290} } ;
Exe execpp290 = { "CC PrintAsyncFile.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./print/PrintAsyncFile.cpp"
 ,"-o"
 ,OBJ_PATH+"/PrintAsyncFile.o"
} } ;

Target cpp291 = { "PrintBase.cpp" , "../../Fundamental/CCore/src/./printf/PrintBase.cpp" } ;
Target ocpp291 = { "PrintBase.o" , OBJ_PATH+"/PrintBase.o" } ;
Rule rcpp291 = { {&cpp291} , {&ocpp291} , {&execpp291} } ;
Exe execpp291 = { "CC PrintBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./printf/PrintBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/PrintBase.o"
} } ;

Target cpp292 = { "PrintBits.cpp" , "../../Simple/CCore/src/PrintBits.cpp" } ;
Target ocpp292 = { "PrintBits.o" , OBJ_PATH+"/PrintBits.o" } ;
Rule rcpp292 = { {&cpp292} , {&ocpp292} , {&execpp292} } ;
Exe execpp292 = { "CC PrintBits.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/PrintBits.cpp"
 ,"-o"
 ,OBJ_PATH+"/PrintBits.o"
} } ;

Target cpp293 = { "PrintCon.cpp" , "../../HCore/CCore/src/./print/PrintCon.cpp" } ;
Target ocpp293 = { "PrintCon.o" , OBJ_PATH+"/PrintCon.o" } ;
Rule rcpp293 = { {&cpp293} , {&ocpp293} , {&execpp293} } ;
Exe execpp293 = { "CC PrintCon.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./print/PrintCon.cpp"
 ,"-o"
 ,OBJ_PATH+"/PrintCon.o"
} } ;

Target cpp294 = { "PrintDDL.cpp" , "../../Desktop/Tools/CCore/src/./video/PrintDDL.cpp" } ;
Target ocpp294 = { "PrintDDL.o" , OBJ_PATH+"/PrintDDL.o" } ;
Rule rcpp294 = { {&cpp294} , {&ocpp294} , {&execpp294} } ;
Exe execpp294 = { "CC PrintDDL.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Tools/CCore/src/./video/PrintDDL.cpp"
 ,"-o"
 ,OBJ_PATH+"/PrintDDL.o"
} } ;

Target cpp295 = { "PrintError.cpp" , "../../Simple/CCore/src/PrintError.cpp" } ;
Target ocpp295 = { "PrintError.o" , OBJ_PATH+"/PrintError.o" } ;
Rule rcpp295 = { {&cpp295} , {&ocpp295} , {&execpp295} } ;
Exe execpp295 = { "CC PrintError.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/PrintError.cpp"
 ,"-o"
 ,OBJ_PATH+"/PrintError.o"
} } ;

Target cpp296 = { "PrintFile.cpp" , "../../HCore/CCore/src/./print/PrintFile.cpp" } ;
Target ocpp296 = { "PrintFile.o" , OBJ_PATH+"/PrintFile.o" } ;
Rule rcpp296 = { {&cpp296} , {&ocpp296} , {&execpp296} } ;
Exe execpp296 = { "CC PrintFile.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./print/PrintFile.cpp"
 ,"-o"
 ,OBJ_PATH+"/PrintFile.o"
} } ;

Target cpp297 = { "PrintInteger.cpp" , "../../Applied/CCore/src/./math/PrintInteger.cpp" } ;
Target ocpp297 = { "PrintInteger.o" , OBJ_PATH+"/PrintInteger.o" } ;
Rule rcpp297 = { {&cpp297} , {&ocpp297} , {&execpp297} } ;
Exe execpp297 = { "CC PrintInteger.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./math/PrintInteger.cpp"
 ,"-o"
 ,OBJ_PATH+"/PrintInteger.o"
} } ;

Target cpp298 = { "PrintPTPCon.cpp" , "../../Applied/CCore/src/./print/PrintPTPCon.cpp" } ;
Target ocpp298 = { "PrintPTPCon.o" , OBJ_PATH+"/PrintPTPCon.o" } ;
Rule rcpp298 = { {&cpp298} , {&ocpp298} , {&execpp298} } ;
Exe execpp298 = { "CC PrintPTPCon.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./print/PrintPTPCon.cpp"
 ,"-o"
 ,OBJ_PATH+"/PrintPTPCon.o"
} } ;

Target cpp299 = { "PrintProxy.cpp" , "../../Fundamental/CCore/src/./printf/PrintProxy.cpp" } ;
Target ocpp299 = { "PrintProxy.o" , OBJ_PATH+"/PrintProxy.o" } ;
Rule rcpp299 = { {&cpp299} , {&ocpp299} , {&execpp299} } ;
Exe execpp299 = { "CC PrintProxy.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./printf/PrintProxy.cpp"
 ,"-o"
 ,OBJ_PATH+"/PrintProxy.o"
} } ;

Target cpp300 = { "PrintRatio.cpp" , "../../Simple/CCore/src/PrintRatio.cpp" } ;
Target ocpp300 = { "PrintRatio.o" , OBJ_PATH+"/PrintRatio.o" } ;
Rule rcpp300 = { {&cpp300} , {&ocpp300} , {&execpp300} } ;
Exe execpp300 = { "CC PrintRatio.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/PrintRatio.cpp"
 ,"-o"
 ,OBJ_PATH+"/PrintRatio.o"
} } ;

Target cpp301 = { "PrintSet.cpp" , "../../Simple/CCore/src/PrintSet.cpp" } ;
Target ocpp301 = { "PrintSet.o" , OBJ_PATH+"/PrintSet.o" } ;
Rule rcpp301 = { {&cpp301} , {&ocpp301} , {&execpp301} } ;
Exe execpp301 = { "CC PrintSet.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/PrintSet.cpp"
 ,"-o"
 ,OBJ_PATH+"/PrintSet.o"
} } ;

Target cpp302 = { "PrintStem.cpp" , "../../Simple/CCore/src/PrintStem.cpp" } ;
Target ocpp302 = { "PrintStem.o" , OBJ_PATH+"/PrintStem.o" } ;
Rule rcpp302 = { {&cpp302} , {&ocpp302} , {&execpp302} } ;
Exe execpp302 = { "CC PrintStem.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/PrintStem.cpp"
 ,"-o"
 ,OBJ_PATH+"/PrintStem.o"
} } ;

Target cpp303 = { "PrintTime.cpp" , "../../Simple/CCore/src/PrintTime.cpp" } ;
Target ocpp303 = { "PrintTime.o" , OBJ_PATH+"/PrintTime.o" } ;
Rule rcpp303 = { {&cpp303} , {&ocpp303} , {&execpp303} } ;
Exe execpp303 = { "CC PrintTime.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/PrintTime.cpp"
 ,"-o"
 ,OBJ_PATH+"/PrintTime.o"
} } ;

Target cpp304 = { "PrintTitle.cpp" , "../../Simple/CCore/src/PrintTitle.cpp" } ;
Target ocpp304 = { "PrintTitle.o" , OBJ_PATH+"/PrintTitle.o" } ;
Rule rcpp304 = { {&cpp304} , {&ocpp304} , {&execpp304} } ;
Exe execpp304 = { "CC PrintTitle.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/PrintTitle.cpp"
 ,"-o"
 ,OBJ_PATH+"/PrintTitle.o"
} } ;

Target cpp305 = { "Printf.cpp" , "../../Fundamental/CCore/src/Printf.cpp" } ;
Target ocpp305 = { "Printf.o" , OBJ_PATH+"/Printf.o" } ;
Rule rcpp305 = { {&cpp305} , {&ocpp305} , {&execpp305} } ;
Exe execpp305 = { "CC Printf.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/Printf.cpp"
 ,"-o"
 ,OBJ_PATH+"/Printf.o"
} } ;

Target cpp306 = { "ProgressScale.cpp" , "../../Desktop/Tools/CCore/src/./video/ProgressScale.cpp" } ;
Target ocpp306 = { "ProgressScale.o" , OBJ_PATH+"/ProgressScale.o" } ;
Rule rcpp306 = { {&cpp306} , {&ocpp306} , {&execpp306} } ;
Exe execpp306 = { "CC ProgressScale.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Tools/CCore/src/./video/ProgressScale.cpp"
 ,"-o"
 ,OBJ_PATH+"/ProgressScale.o"
} } ;

Target cpp307 = { "PtrLen.cpp" , "../../Simple/CCore/src/./gadget/PtrLen.cpp" } ;
Target ocpp307 = { "PtrLen.o" , OBJ_PATH+"/PtrLen.o" } ;
Rule rcpp307 = { {&cpp307} , {&ocpp307} , {&execpp307} } ;
Exe execpp307 = { "CC PtrLen.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/PtrLen.cpp"
 ,"-o"
 ,OBJ_PATH+"/PtrLen.o"
} } ;

Target cpp308 = { "PtrLenReverse.cpp" , "../../Simple/CCore/src/./gadget/PtrLenReverse.cpp" } ;
Target ocpp308 = { "PtrLenReverse.o" , OBJ_PATH+"/PtrLenReverse.o" } ;
Rule rcpp308 = { {&cpp308} , {&ocpp308} , {&execpp308} } ;
Exe execpp308 = { "CC PtrLenReverse.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/PtrLenReverse.cpp"
 ,"-o"
 ,OBJ_PATH+"/PtrLenReverse.o"
} } ;

Target cpp309 = { "PtrStepLen.cpp" , "../../Simple/CCore/src/./gadget/PtrStepLen.cpp" } ;
Target ocpp309 = { "PtrStepLen.o" , OBJ_PATH+"/PtrStepLen.o" } ;
Rule rcpp309 = { {&cpp309} , {&ocpp309} , {&execpp309} } ;
Exe execpp309 = { "CC PtrStepLen.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/PtrStepLen.cpp"
 ,"-o"
 ,OBJ_PATH+"/PtrStepLen.o"
} } ;

Target cpp310 = { "Quick.cpp" , "../../Target/WIN32utf8/CCore/src/./base/Quick.cpp" } ;
Target ocpp310 = { "Quick.o" , OBJ_PATH+"/Quick.o" } ;
Rule rcpp310 = { {&cpp310} , {&ocpp310} , {&execpp310} } ;
Exe execpp310 = { "CC Quick.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./base/Quick.cpp"
 ,"-o"
 ,OBJ_PATH+"/Quick.o"
} } ;

Target cpp311 = { "QuickSort.cpp" , "../../Fundamental/CCore/src/./sort/QuickSort.cpp" } ;
Target ocpp311 = { "QuickSort.o" , OBJ_PATH+"/QuickSort.o" } ;
Rule rcpp311 = { {&cpp311} , {&ocpp311} , {&execpp311} } ;
Exe execpp311 = { "CC QuickSort.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./sort/QuickSort.cpp"
 ,"-o"
 ,OBJ_PATH+"/QuickSort.o"
} } ;

Target cpp312 = { "RBTreeBase.cpp" , "../../Fundamental/CCore/src/./tree/RBTreeBase.cpp" } ;
Target ocpp312 = { "RBTreeBase.o" , OBJ_PATH+"/RBTreeBase.o" } ;
Rule rcpp312 = { {&cpp312} , {&ocpp312} , {&execpp312} } ;
Exe execpp312 = { "CC RBTreeBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./tree/RBTreeBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/RBTreeBase.o"
} } ;

Target cpp313 = { "RBTreeLink.cpp" , "../../Fundamental/CCore/src/./tree/RBTreeLink.cpp" } ;
Target ocpp313 = { "RBTreeLink.o" , OBJ_PATH+"/RBTreeLink.o" } ;
Rule rcpp313 = { {&cpp313} , {&ocpp313} , {&execpp313} } ;
Exe execpp313 = { "CC RBTreeLink.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./tree/RBTreeLink.cpp"
 ,"-o"
 ,OBJ_PATH+"/RBTreeLink.o"
} } ;

Target cpp314 = { "RBTreeUpLink.cpp" , "../../Fundamental/CCore/src/./tree/RBTreeUpLink.cpp" } ;
Target ocpp314 = { "RBTreeUpLink.o" , OBJ_PATH+"/RBTreeUpLink.o" } ;
Rule rcpp314 = { {&cpp314} , {&ocpp314} , {&execpp314} } ;
Exe execpp314 = { "CC RBTreeUpLink.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./tree/RBTreeUpLink.cpp"
 ,"-o"
 ,OBJ_PATH+"/RBTreeUpLink.o"
} } ;

Target cpp315 = { "RadixHeap.cpp" , "../../Fundamental/CCore/src/RadixHeap.cpp" } ;
Target ocpp315 = { "RadixHeap.o" , OBJ_PATH+"/RadixHeap.o" } ;
Rule rcpp315 = { {&cpp315} , {&ocpp315} , {&execpp315} } ;
Exe execpp315 = { "CC RadixHeap.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/RadixHeap.cpp"
 ,"-o"
 ,OBJ_PATH+"/RadixHeap.o"
} } ;

Target cpp316 = { "Random.cpp" , "../../Fundamental/CCore/src/Random.cpp" } ;
Target ocpp316 = { "Random.o" , OBJ_PATH+"/Random.o" } ;
Rule rcpp316 = { {&cpp316} , {&ocpp316} , {&execpp316} } ;
Exe execpp316 = { "CC Random.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/Random.cpp"
 ,"-o"
 ,OBJ_PATH+"/Random.o"
} } ;

Target cpp317 = { "RangeDel.cpp" , "../../Simple/CCore/src/RangeDel.cpp" } ;
Target ocpp317 = { "RangeDel.o" , OBJ_PATH+"/RangeDel.o" } ;
Rule rcpp317 = { {&cpp317} , {&ocpp317} , {&execpp317} } ;
Exe execpp317 = { "CC RangeDel.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/RangeDel.cpp"
 ,"-o"
 ,OBJ_PATH+"/RangeDel.o"
} } ;

Target cpp318 = { "RatioEdit.cpp" , "../../Desktop/Lib/CCore/src/./video/pref/RatioEdit.cpp" } ;
Target ocpp318 = { "RatioEdit.o" , OBJ_PATH+"/RatioEdit.o" } ;
Rule rcpp318 = { {&cpp318} , {&ocpp318} , {&execpp318} } ;
Exe execpp318 = { "CC RatioEdit.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/pref/RatioEdit.cpp"
 ,"-o"
 ,OBJ_PATH+"/RatioEdit.o"
} } ;

Target cpp319 = { "RawFileToRead.cpp" , "../../HCore/CCore/src/RawFileToRead.cpp" } ;
Target ocpp319 = { "RawFileToRead.o" , OBJ_PATH+"/RawFileToRead.o" } ;
Rule rcpp319 = { {&cpp319} , {&ocpp319} , {&execpp319} } ;
Exe execpp319 = { "CC RawFileToRead.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/RawFileToRead.cpp"
 ,"-o"
 ,OBJ_PATH+"/RawFileToRead.o"
} } ;

Target cpp320 = { "ReadCon.cpp" , "../../HCore/CCore/src/ReadCon.cpp" } ;
Target ocpp320 = { "ReadCon.o" , OBJ_PATH+"/ReadCon.o" } ;
Rule rcpp320 = { {&cpp320} , {&ocpp320} , {&execpp320} } ;
Exe execpp320 = { "CC ReadCon.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/ReadCon.cpp"
 ,"-o"
 ,OBJ_PATH+"/ReadCon.o"
} } ;

Target cpp321 = { "ReadConType.cpp" , "../../Fundamental/CCore/src/ReadConType.cpp" } ;
Target ocpp321 = { "ReadConType.o" , OBJ_PATH+"/ReadConType.o" } ;
Rule rcpp321 = { {&cpp321} , {&ocpp321} , {&execpp321} } ;
Exe execpp321 = { "CC ReadConType.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/ReadConType.cpp"
 ,"-o"
 ,OBJ_PATH+"/ReadConType.o"
} } ;

Target cpp322 = { "RefArray.cpp" , "../../Fundamental/CCore/src/./array/RefArray.cpp" } ;
Target ocpp322 = { "RefArray.o" , OBJ_PATH+"/RefArray.o" } ;
Rule rcpp322 = { {&cpp322} , {&ocpp322} , {&execpp322} } ;
Exe execpp322 = { "CC RefArray.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./array/RefArray.cpp"
 ,"-o"
 ,OBJ_PATH+"/RefArray.o"
} } ;

Target cpp323 = { "RefObjectBase.cpp" , "../../Simple/CCore/src/RefObjectBase.cpp" } ;
Target ocpp323 = { "RefObjectBase.o" , OBJ_PATH+"/RefObjectBase.o" } ;
Rule rcpp323 = { {&cpp323} , {&ocpp323} , {&execpp323} } ;
Exe execpp323 = { "CC RefObjectBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/RefObjectBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/RefObjectBase.o"
} } ;

Target cpp324 = { "RefPtr.cpp" , "../../Simple/CCore/src/RefPtr.cpp" } ;
Target ocpp324 = { "RefPtr.o" , OBJ_PATH+"/RefPtr.o" } ;
Rule rcpp324 = { {&cpp324} , {&ocpp324} , {&execpp324} } ;
Exe execpp324 = { "CC RefPtr.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/RefPtr.cpp"
 ,"-o"
 ,OBJ_PATH+"/RefPtr.o"
} } ;

Target cpp325 = { "RefVal.cpp" , "../../Desktop/Core/CCore/src/./video/RefVal.cpp" } ;
Target ocpp325 = { "RefVal.o" , OBJ_PATH+"/RefVal.o" } ;
Rule rcpp325 = { {&cpp325} , {&ocpp325} , {&execpp325} } ;
Exe execpp325 = { "CC RefVal.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Core/CCore/src/./video/RefVal.cpp"
 ,"-o"
 ,OBJ_PATH+"/RefVal.o"
} } ;

Target cpp326 = { "Replace.cpp" , "../../Simple/CCore/src/./gadget/Replace.cpp" } ;
Target ocpp326 = { "Replace.o" , OBJ_PATH+"/Replace.o" } ;
Rule rcpp326 = { {&cpp326} , {&ocpp326} , {&execpp326} } ;
Exe execpp326 = { "CC Replace.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/Replace.cpp"
 ,"-o"
 ,OBJ_PATH+"/Replace.o"
} } ;

Target cpp327 = { "ResSem.cpp" , "../../HCore/CCore/src/./task/ResSem.cpp" } ;
Target ocpp327 = { "ResSem.o" , OBJ_PATH+"/ResSem.o" } ;
Rule rcpp327 = { {&cpp327} , {&ocpp327} , {&execpp327} } ;
Exe execpp327 = { "CC ResSem.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./task/ResSem.cpp"
 ,"-o"
 ,OBJ_PATH+"/ResSem.o"
} } ;

Target cpp328 = { "Rot.cpp" , "../../Applied/CCore/src/./crypton/Rot.cpp" } ;
Target ocpp328 = { "Rot.o" , OBJ_PATH+"/Rot.o" } ;
Rule rcpp328 = { {&cpp328} , {&ocpp328} , {&execpp328} } ;
Exe execpp328 = { "CC Rot.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./crypton/Rot.cpp"
 ,"-o"
 ,OBJ_PATH+"/Rot.o"
} } ;

Target cpp329 = { "SHA.cpp" , "../../Applied/CCore/src/./crypton/SHA.cpp" } ;
Target ocpp329 = { "SHA.o" , OBJ_PATH+"/SHA.o" } ;
Rule rcpp329 = { {&cpp329} , {&ocpp329} , {&execpp329} } ;
Exe execpp329 = { "CC SHA.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./crypton/SHA.cpp"
 ,"-o"
 ,OBJ_PATH+"/SHA.o"
} } ;

Target cpp330 = { "SIntFunc.cpp" , "../../Simple/CCore/src/./gadget/SIntFunc.cpp" } ;
Target ocpp330 = { "SIntFunc.o" , OBJ_PATH+"/SIntFunc.o" } ;
Rule rcpp330 = { {&cpp330} , {&ocpp330} , {&execpp330} } ;
Exe execpp330 = { "CC SIntFunc.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/SIntFunc.cpp"
 ,"-o"
 ,OBJ_PATH+"/SIntFunc.o"
} } ;

Target cpp331 = { "SafeBuf.cpp" , "../../Simple/CCore/src/SafeBuf.cpp" } ;
Target ocpp331 = { "SafeBuf.o" , OBJ_PATH+"/SafeBuf.o" } ;
Rule rcpp331 = { {&cpp331} , {&ocpp331} , {&execpp331} } ;
Exe execpp331 = { "CC SafeBuf.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/SafeBuf.cpp"
 ,"-o"
 ,OBJ_PATH+"/SafeBuf.o"
} } ;

Target cpp332 = { "SaveLoad.cpp" , "../../Fundamental/CCore/src/SaveLoad.cpp" } ;
Target ocpp332 = { "SaveLoad.o" , OBJ_PATH+"/SaveLoad.o" } ;
Rule rcpp332 = { {&cpp332} , {&ocpp332} , {&execpp332} } ;
Exe execpp332 = { "CC SaveLoad.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/SaveLoad.cpp"
 ,"-o"
 ,OBJ_PATH+"/SaveLoad.o"
} } ;

Target cpp333 = { "Scan.cpp" , "../../HCore/CCore/src/Scan.cpp" } ;
Target ocpp333 = { "Scan.o" , OBJ_PATH+"/Scan.o" } ;
Rule rcpp333 = { {&cpp333} , {&ocpp333} , {&execpp333} } ;
Exe execpp333 = { "CC Scan.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/Scan.cpp"
 ,"-o"
 ,OBJ_PATH+"/Scan.o"
} } ;

Target cpp334 = { "ScanAsyncFile.cpp" , "../../Applied/CCore/src/./scan/ScanAsyncFile.cpp" } ;
Target ocpp334 = { "ScanAsyncFile.o" , OBJ_PATH+"/ScanAsyncFile.o" } ;
Rule rcpp334 = { {&cpp334} , {&ocpp334} , {&execpp334} } ;
Exe execpp334 = { "CC ScanAsyncFile.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./scan/ScanAsyncFile.cpp"
 ,"-o"
 ,OBJ_PATH+"/ScanAsyncFile.o"
} } ;

Target cpp335 = { "ScanBase.cpp" , "../../Fundamental/CCore/src/./scanf/ScanBase.cpp" } ;
Target ocpp335 = { "ScanBase.o" , OBJ_PATH+"/ScanBase.o" } ;
Rule rcpp335 = { {&cpp335} , {&ocpp335} , {&execpp335} } ;
Exe execpp335 = { "CC ScanBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./scanf/ScanBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/ScanBase.o"
} } ;

Target cpp336 = { "ScanBit.cpp" , "../../Simple/CCore/src/ScanBit.cpp" } ;
Target ocpp336 = { "ScanBit.o" , OBJ_PATH+"/ScanBit.o" } ;
Rule rcpp336 = { {&cpp336} , {&ocpp336} , {&execpp336} } ;
Exe execpp336 = { "CC ScanBit.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/ScanBit.cpp"
 ,"-o"
 ,OBJ_PATH+"/ScanBit.o"
} } ;

Target cpp337 = { "ScanFile.cpp" , "../../HCore/CCore/src/./scan/ScanFile.cpp" } ;
Target ocpp337 = { "ScanFile.o" , OBJ_PATH+"/ScanFile.o" } ;
Rule rcpp337 = { {&cpp337} , {&ocpp337} , {&execpp337} } ;
Exe execpp337 = { "CC ScanFile.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./scan/ScanFile.cpp"
 ,"-o"
 ,OBJ_PATH+"/ScanFile.o"
} } ;

Target cpp338 = { "ScanProxy.cpp" , "../../Fundamental/CCore/src/./scanf/ScanProxy.cpp" } ;
Target ocpp338 = { "ScanProxy.o" , OBJ_PATH+"/ScanProxy.o" } ;
Rule rcpp338 = { {&cpp338} , {&ocpp338} , {&execpp338} } ;
Exe execpp338 = { "CC ScanProxy.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./scanf/ScanProxy.cpp"
 ,"-o"
 ,OBJ_PATH+"/ScanProxy.o"
} } ;

Target cpp339 = { "ScanRange.cpp" , "../../Simple/CCore/src/ScanRange.cpp" } ;
Target ocpp339 = { "ScanRange.o" , OBJ_PATH+"/ScanRange.o" } ;
Rule rcpp339 = { {&cpp339} , {&ocpp339} , {&execpp339} } ;
Exe execpp339 = { "CC ScanRange.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/ScanRange.cpp"
 ,"-o"
 ,OBJ_PATH+"/ScanRange.o"
} } ;

Target cpp340 = { "ScanTools.cpp" , "../../Fundamental/CCore/src/./scanf/ScanTools.cpp" } ;
Target ocpp340 = { "ScanTools.o" , OBJ_PATH+"/ScanTools.o" } ;
Rule rcpp340 = { {&cpp340} , {&ocpp340} , {&execpp340} } ;
Exe execpp340 = { "CC ScanTools.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./scanf/ScanTools.cpp"
 ,"-o"
 ,OBJ_PATH+"/ScanTools.o"
} } ;

Target cpp341 = { "Scanf.cpp" , "../../Fundamental/CCore/src/Scanf.cpp" } ;
Target ocpp341 = { "Scanf.o" , OBJ_PATH+"/Scanf.o" } ;
Rule rcpp341 = { {&cpp341} , {&ocpp341} , {&execpp341} } ;
Exe execpp341 = { "CC Scanf.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/Scanf.cpp"
 ,"-o"
 ,OBJ_PATH+"/Scanf.o"
} } ;

Target cpp342 = { "Scope.cpp" , "../../Fundamental/CCore/src/Scope.cpp" } ;
Target ocpp342 = { "Scope.o" , OBJ_PATH+"/Scope.o" } ;
Rule rcpp342 = { {&cpp342} , {&ocpp342} , {&execpp342} } ;
Exe execpp342 = { "CC Scope.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/Scope.cpp"
 ,"-o"
 ,OBJ_PATH+"/Scope.o"
} } ;

Target cpp343 = { "ScopeGuard.cpp" , "../../Simple/CCore/src/./gadget/ScopeGuard.cpp" } ;
Target ocpp343 = { "ScopeGuard.o" , OBJ_PATH+"/ScopeGuard.o" } ;
Rule rcpp343 = { {&cpp343} , {&ocpp343} , {&execpp343} } ;
Exe execpp343 = { "CC ScopeGuard.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/ScopeGuard.cpp"
 ,"-o"
 ,OBJ_PATH+"/ScopeGuard.o"
} } ;

Target cpp344 = { "SelectFrames.cpp" , "../../Desktop/Lib/CCore/src/./video/book/SelectFrames.cpp" } ;
Target ocpp344 = { "SelectFrames.o" , OBJ_PATH+"/SelectFrames.o" } ;
Rule rcpp344 = { {&cpp344} , {&ocpp344} , {&execpp344} } ;
Exe execpp344 = { "CC SelectFrames.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/book/SelectFrames.cpp"
 ,"-o"
 ,OBJ_PATH+"/SelectFrames.o"
} } ;

Target cpp345 = { "Sem.cpp" , "../../HCore/CCore/src/./task/Sem.cpp" } ;
Target ocpp345 = { "Sem.o" , OBJ_PATH+"/Sem.o" } ;
Rule rcpp345 = { {&cpp345} , {&ocpp345} , {&execpp345} } ;
Exe execpp345 = { "CC Sem.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./task/Sem.cpp"
 ,"-o"
 ,OBJ_PATH+"/Sem.o"
} } ;

Target cpp346 = { "Shape.Button.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.Button.cpp" } ;
Target ocpp346 = { "Shape.Button.o" , OBJ_PATH+"/Shape.Button.o" } ;
Rule rcpp346 = { {&cpp346} , {&ocpp346} , {&execpp346} } ;
Exe execpp346 = { "CC Shape.Button.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.Button.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.Button.o"
} } ;

Target cpp347 = { "Shape.Check.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.Check.cpp" } ;
Target ocpp347 = { "Shape.Check.o" , OBJ_PATH+"/Shape.Check.o" } ;
Rule rcpp347 = { {&cpp347} , {&ocpp347} , {&execpp347} } ;
Exe execpp347 = { "CC Shape.Check.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.Check.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.Check.o"
} } ;

Target cpp348 = { "Shape.Contour.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.Contour.cpp" } ;
Target ocpp348 = { "Shape.Contour.o" , OBJ_PATH+"/Shape.Contour.o" } ;
Rule rcpp348 = { {&cpp348} , {&ocpp348} , {&execpp348} } ;
Exe execpp348 = { "CC Shape.Contour.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.Contour.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.Contour.o"
} } ;

Target cpp349 = { "Shape.DragFrame.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.DragFrame.cpp" } ;
Target ocpp349 = { "Shape.DragFrame.o" , OBJ_PATH+"/Shape.DragFrame.o" } ;
Rule rcpp349 = { {&cpp349} , {&ocpp349} , {&execpp349} } ;
Exe execpp349 = { "CC Shape.DragFrame.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.DragFrame.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.DragFrame.o"
} } ;

Target cpp350 = { "Shape.FixedFrame.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.FixedFrame.cpp" } ;
Target ocpp350 = { "Shape.FixedFrame.o" , OBJ_PATH+"/Shape.FixedFrame.o" } ;
Rule rcpp350 = { {&cpp350} , {&ocpp350} , {&execpp350} } ;
Exe execpp350 = { "CC Shape.FixedFrame.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.FixedFrame.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.FixedFrame.o"
} } ;

Target cpp351 = { "Shape.FrameBase.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.FrameBase.cpp" } ;
Target ocpp351 = { "Shape.FrameBase.o" , OBJ_PATH+"/Shape.FrameBase.o" } ;
Rule rcpp351 = { {&cpp351} , {&ocpp351} , {&execpp351} } ;
Exe execpp351 = { "CC Shape.FrameBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.FrameBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.FrameBase.o"
} } ;

Target cpp352 = { "Shape.Info.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.Info.cpp" } ;
Target ocpp352 = { "Shape.Info.o" , OBJ_PATH+"/Shape.Info.o" } ;
Rule rcpp352 = { {&cpp352} , {&ocpp352} , {&execpp352} } ;
Exe execpp352 = { "CC Shape.Info.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.Info.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.Info.o"
} } ;

Target cpp353 = { "Shape.Label.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.Label.cpp" } ;
Target ocpp353 = { "Shape.Label.o" , OBJ_PATH+"/Shape.Label.o" } ;
Rule rcpp353 = { {&cpp353} , {&ocpp353} , {&execpp353} } ;
Exe execpp353 = { "CC Shape.Label.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.Label.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.Label.o"
} } ;

Target cpp354 = { "Shape.Light.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.Light.cpp" } ;
Target ocpp354 = { "Shape.Light.o" , OBJ_PATH+"/Shape.Light.o" } ;
Rule rcpp354 = { {&cpp354} , {&ocpp354} , {&execpp354} } ;
Exe execpp354 = { "CC Shape.Light.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.Light.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.Light.o"
} } ;

Target cpp355 = { "Shape.Line.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.Line.cpp" } ;
Target ocpp355 = { "Shape.Line.o" , OBJ_PATH+"/Shape.Line.o" } ;
Rule rcpp355 = { {&cpp355} , {&ocpp355} , {&execpp355} } ;
Exe execpp355 = { "CC Shape.Line.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.Line.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.Line.o"
} } ;

Target cpp356 = { "Shape.LineEdit.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.LineEdit.cpp" } ;
Target ocpp356 = { "Shape.LineEdit.o" , OBJ_PATH+"/Shape.LineEdit.o" } ;
Rule rcpp356 = { {&cpp356} , {&ocpp356} , {&execpp356} } ;
Exe execpp356 = { "CC Shape.LineEdit.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.LineEdit.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.LineEdit.o"
} } ;

Target cpp357 = { "Shape.Progress.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.Progress.cpp" } ;
Target ocpp357 = { "Shape.Progress.o" , OBJ_PATH+"/Shape.Progress.o" } ;
Rule rcpp357 = { {&cpp357} , {&ocpp357} , {&execpp357} } ;
Exe execpp357 = { "CC Shape.Progress.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.Progress.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.Progress.o"
} } ;

Target cpp358 = { "Shape.Radio.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.Radio.cpp" } ;
Target ocpp358 = { "Shape.Radio.o" , OBJ_PATH+"/Shape.Radio.o" } ;
Rule rcpp358 = { {&cpp358} , {&ocpp358} , {&execpp358} } ;
Exe execpp358 = { "CC Shape.Radio.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.Radio.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.Radio.o"
} } ;

Target cpp359 = { "Shape.RunButton.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.RunButton.cpp" } ;
Target ocpp359 = { "Shape.RunButton.o" , OBJ_PATH+"/Shape.RunButton.o" } ;
Rule rcpp359 = { {&cpp359} , {&ocpp359} , {&execpp359} } ;
Exe execpp359 = { "CC Shape.RunButton.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.RunButton.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.RunButton.o"
} } ;

Target cpp360 = { "Shape.Scroll.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.Scroll.cpp" } ;
Target ocpp360 = { "Shape.Scroll.o" , OBJ_PATH+"/Shape.Scroll.o" } ;
Rule rcpp360 = { {&cpp360} , {&ocpp360} , {&execpp360} } ;
Exe execpp360 = { "CC Shape.Scroll.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.Scroll.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.Scroll.o"
} } ;

Target cpp361 = { "Shape.ScrollList.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.ScrollList.cpp" } ;
Target ocpp361 = { "Shape.ScrollList.o" , OBJ_PATH+"/Shape.ScrollList.o" } ;
Rule rcpp361 = { {&cpp361} , {&ocpp361} , {&execpp361} } ;
Exe execpp361 = { "CC Shape.ScrollList.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.ScrollList.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.ScrollList.o"
} } ;

Target cpp362 = { "Shape.ShiftSwitch.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.ShiftSwitch.cpp" } ;
Target ocpp362 = { "Shape.ShiftSwitch.o" , OBJ_PATH+"/Shape.ShiftSwitch.o" } ;
Rule rcpp362 = { {&cpp362} , {&ocpp362} , {&execpp362} } ;
Exe execpp362 = { "CC Shape.ShiftSwitch.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.ShiftSwitch.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.ShiftSwitch.o"
} } ;

Target cpp363 = { "Shape.SimpleTextList.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.SimpleTextList.cpp" } ;
Target ocpp363 = { "Shape.SimpleTextList.o" , OBJ_PATH+"/Shape.SimpleTextList.o" } ;
Rule rcpp363 = { {&cpp363} , {&ocpp363} , {&execpp363} } ;
Exe execpp363 = { "CC Shape.SimpleTextList.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.SimpleTextList.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.SimpleTextList.o"
} } ;

Target cpp364 = { "Shape.Slider.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.Slider.cpp" } ;
Target ocpp364 = { "Shape.Slider.o" , OBJ_PATH+"/Shape.Slider.o" } ;
Rule rcpp364 = { {&cpp364} , {&ocpp364} , {&execpp364} } ;
Exe execpp364 = { "CC Shape.Slider.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.Slider.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.Slider.o"
} } ;

Target cpp365 = { "Shape.Spinor.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.Spinor.cpp" } ;
Target ocpp365 = { "Shape.Spinor.o" , OBJ_PATH+"/Shape.Spinor.o" } ;
Rule rcpp365 = { {&cpp365} , {&ocpp365} , {&execpp365} } ;
Exe execpp365 = { "CC Shape.Spinor.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.Spinor.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.Spinor.o"
} } ;

Target cpp366 = { "Shape.Split.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.Split.cpp" } ;
Target ocpp366 = { "Shape.Split.o" , OBJ_PATH+"/Shape.Split.o" } ;
Rule rcpp366 = { {&cpp366} , {&ocpp366} , {&execpp366} } ;
Exe execpp366 = { "CC Shape.Split.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.Split.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.Split.o"
} } ;

Target cpp367 = { "Shape.Switch.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.Switch.cpp" } ;
Target ocpp367 = { "Shape.Switch.o" , OBJ_PATH+"/Shape.Switch.o" } ;
Rule rcpp367 = { {&cpp367} , {&ocpp367} , {&execpp367} } ;
Exe execpp367 = { "CC Shape.Switch.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.Switch.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.Switch.o"
} } ;

Target cpp368 = { "Shape.Text.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.Text.cpp" } ;
Target ocpp368 = { "Shape.Text.o" , OBJ_PATH+"/Shape.Text.o" } ;
Rule rcpp368 = { {&cpp368} , {&ocpp368} , {&execpp368} } ;
Exe execpp368 = { "CC Shape.Text.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.Text.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.Text.o"
} } ;

Target cpp369 = { "Shape.TextLine.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Shape.TextLine.cpp" } ;
Target ocpp369 = { "Shape.TextLine.o" , OBJ_PATH+"/Shape.TextLine.o" } ;
Rule rcpp369 = { {&cpp369} , {&ocpp369} , {&execpp369} } ;
Exe execpp369 = { "CC Shape.TextLine.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Shape.TextLine.cpp"
 ,"-o"
 ,OBJ_PATH+"/Shape.TextLine.o"
} } ;

Target cpp370 = { "ShapeLib.cpp" , "../../Desktop/Lib/CCore/src/./video/ShapeLib.cpp" } ;
Target ocpp370 = { "ShapeLib.o" , OBJ_PATH+"/ShapeLib.o" } ;
Rule rcpp370 = { {&cpp370} , {&ocpp370} , {&execpp370} } ;
Exe execpp370 = { "CC ShapeLib.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/ShapeLib.cpp"
 ,"-o"
 ,OBJ_PATH+"/ShapeLib.o"
} } ;

Target cpp371 = { "ShortSort.cpp" , "../../Fundamental/CCore/src/./sort/ShortSort.cpp" } ;
Target ocpp371 = { "ShortSort.o" , OBJ_PATH+"/ShortSort.o" } ;
Rule rcpp371 = { {&cpp371} , {&ocpp371} , {&execpp371} } ;
Exe execpp371 = { "CC ShortSort.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./sort/ShortSort.cpp"
 ,"-o"
 ,OBJ_PATH+"/ShortSort.o"
} } ;

Target cpp372 = { "Signal.cpp" , "../../Fundamental/CCore/src/Signal.cpp" } ;
Target ocpp372 = { "Signal.o" , OBJ_PATH+"/Signal.o" } ;
Rule rcpp372 = { {&cpp372} , {&ocpp372} , {&execpp372} } ;
Exe execpp372 = { "CC Signal.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/Signal.cpp"
 ,"-o"
 ,OBJ_PATH+"/Signal.o"
} } ;

Target cpp373 = { "SimpleArray.cpp" , "../../Fundamental/CCore/src/./array/SimpleArray.cpp" } ;
Target ocpp373 = { "SimpleArray.o" , OBJ_PATH+"/SimpleArray.o" } ;
Rule rcpp373 = { {&cpp373} , {&ocpp373} , {&execpp373} } ;
Exe execpp373 = { "CC SimpleArray.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./array/SimpleArray.cpp"
 ,"-o"
 ,OBJ_PATH+"/SimpleArray.o"
} } ;

Target cpp374 = { "SimpleConsole.cpp" , "../../Applied/CCore/src/./video/SimpleConsole.cpp" } ;
Target ocpp374 = { "SimpleConsole.o" , OBJ_PATH+"/SimpleConsole.o" } ;
Rule rcpp374 = { {&cpp374} , {&ocpp374} , {&execpp374} } ;
Exe execpp374 = { "CC SimpleConsole.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./video/SimpleConsole.cpp"
 ,"-o"
 ,OBJ_PATH+"/SimpleConsole.o"
} } ;

Target cpp375 = { "SimpleRotate.cpp" , "../../Fundamental/CCore/src/./algon/SimpleRotate.cpp" } ;
Target ocpp375 = { "SimpleRotate.o" , OBJ_PATH+"/SimpleRotate.o" } ;
Rule rcpp375 = { {&cpp375} , {&ocpp375} , {&execpp375} } ;
Exe execpp375 = { "CC SimpleRotate.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./algon/SimpleRotate.cpp"
 ,"-o"
 ,OBJ_PATH+"/SimpleRotate.o"
} } ;

Target cpp376 = { "SingleBridge.cpp" , "../../Applied/CCore/src/./net/SingleBridge.cpp" } ;
Target ocpp376 = { "SingleBridge.o" , OBJ_PATH+"/SingleBridge.o" } ;
Rule rcpp376 = { {&cpp376} , {&ocpp376} , {&execpp376} } ;
Exe execpp376 = { "CC SingleBridge.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/SingleBridge.cpp"
 ,"-o"
 ,OBJ_PATH+"/SingleBridge.o"
} } ;

Target cpp377 = { "SingleEchoDevice.cpp" , "../../Applied/CCore/src/./net/SingleEchoDevice.cpp" } ;
Target ocpp377 = { "SingleEchoDevice.o" , OBJ_PATH+"/SingleEchoDevice.o" } ;
Rule rcpp377 = { {&cpp377} , {&ocpp377} , {&execpp377} } ;
Exe execpp377 = { "CC SingleEchoDevice.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/SingleEchoDevice.cpp"
 ,"-o"
 ,OBJ_PATH+"/SingleEchoDevice.o"
} } ;

Target cpp378 = { "SingleHost.cpp" , "../../Fundamental/CCore/src/SingleHost.cpp" } ;
Target ocpp378 = { "SingleHost.o" , OBJ_PATH+"/SingleHost.o" } ;
Rule rcpp378 = { {&cpp378} , {&ocpp378} , {&execpp378} } ;
Exe execpp378 = { "CC SingleHost.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/SingleHost.cpp"
 ,"-o"
 ,OBJ_PATH+"/SingleHost.o"
} } ;

Target cpp379 = { "SlowSem.cpp" , "../../HCore/CCore/src/./task/SlowSem.cpp" } ;
Target ocpp379 = { "SlowSem.o" , OBJ_PATH+"/SlowSem.o" } ;
Rule rcpp379 = { {&cpp379} , {&ocpp379} , {&execpp379} } ;
Exe execpp379 = { "CC SlowSem.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./task/SlowSem.cpp"
 ,"-o"
 ,OBJ_PATH+"/SlowSem.o"
} } ;

Target cpp380 = { "SmallPrimes.cpp" , "../../Applied/CCore/src/./math/SmallPrimes.cpp" } ;
Target ocpp380 = { "SmallPrimes.o" , OBJ_PATH+"/SmallPrimes.o" } ;
Rule rcpp380 = { {&cpp380} , {&ocpp380} , {&execpp380} } ;
Exe execpp380 = { "CC SmallPrimes.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./math/SmallPrimes.cpp"
 ,"-o"
 ,OBJ_PATH+"/SmallPrimes.o"
} } ;

Target cpp381 = { "SmoothAlgo.cpp" , "../../Desktop/Draw/CCore/src/./video/SmoothAlgo.cpp" } ;
Target ocpp381 = { "SmoothAlgo.o" , OBJ_PATH+"/SmoothAlgo.o" } ;
Rule rcpp381 = { {&cpp381} , {&ocpp381} , {&execpp381} } ;
Exe execpp381 = { "CC SmoothAlgo.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Draw/CCore/src/./video/SmoothAlgo.cpp"
 ,"-o"
 ,OBJ_PATH+"/SmoothAlgo.o"
} } ;

Target cpp382 = { "SmoothDrawArt.cpp" , "../../Desktop/Draw/CCore/src/./video/SmoothDrawArt.cpp" } ;
Target ocpp382 = { "SmoothDrawArt.o" , OBJ_PATH+"/SmoothDrawArt.o" } ;
Rule rcpp382 = { {&cpp382} , {&ocpp382} , {&execpp382} } ;
Exe execpp382 = { "CC SmoothDrawArt.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Draw/CCore/src/./video/SmoothDrawArt.cpp"
 ,"-o"
 ,OBJ_PATH+"/SmoothDrawArt.o"
} } ;

Target cpp383 = { "Sort.cpp" , "../../Fundamental/CCore/src/Sort.cpp" } ;
Target ocpp383 = { "Sort.o" , OBJ_PATH+"/Sort.o" } ;
Rule rcpp383 = { {&cpp383} , {&ocpp383} , {&execpp383} } ;
Exe execpp383 = { "CC Sort.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/Sort.cpp"
 ,"-o"
 ,OBJ_PATH+"/Sort.o"
} } ;

Target cpp384 = { "SortUnique.cpp" , "../../Fundamental/CCore/src/./algon/SortUnique.cpp" } ;
Target ocpp384 = { "SortUnique.o" , OBJ_PATH+"/SortUnique.o" } ;
Rule rcpp384 = { {&cpp384} , {&ocpp384} , {&execpp384} } ;
Exe execpp384 = { "CC SortUnique.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./algon/SortUnique.cpp"
 ,"-o"
 ,OBJ_PATH+"/SortUnique.o"
} } ;

Target cpp385 = { "Space.cpp" , "../../Simple/CCore/src/./gadget/Space.cpp" } ;
Target ocpp385 = { "Space.o" , OBJ_PATH+"/Space.o" } ;
Rule rcpp385 = { {&cpp385} , {&ocpp385} , {&execpp385} } ;
Exe execpp385 = { "CC Space.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/Space.cpp"
 ,"-o"
 ,OBJ_PATH+"/Space.o"
} } ;

Target cpp386 = { "SpanLenEngine.cpp" , "../../Desktop/Lib/CCore/src/./video/book/SpanLenEngine.cpp" } ;
Target ocpp386 = { "SpanLenEngine.o" , OBJ_PATH+"/SpanLenEngine.o" } ;
Rule rcpp386 = { {&cpp386} , {&ocpp386} , {&execpp386} } ;
Exe execpp386 = { "CC SpanLenEngine.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/book/SpanLenEngine.cpp"
 ,"-o"
 ,OBJ_PATH+"/SpanLenEngine.o"
} } ;

Target cpp387 = { "SpawnProcess.cpp" , "../../HCore/CCore/src/SpawnProcess.cpp" } ;
Target ocpp387 = { "SpawnProcess.o" , OBJ_PATH+"/SpawnProcess.o" } ;
Rule rcpp387 = { {&cpp387} , {&ocpp387} , {&execpp387} } ;
Exe execpp387 = { "CC SpawnProcess.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/SpawnProcess.cpp"
 ,"-o"
 ,OBJ_PATH+"/SpawnProcess.o"
} } ;

Target cpp388 = { "StartStop.cpp" , "../../Simple/CCore/src/StartStop.cpp" } ;
Target ocpp388 = { "StartStop.o" , OBJ_PATH+"/StartStop.o" } ;
Rule rcpp388 = { {&cpp388} , {&ocpp388} , {&execpp388} } ;
Exe execpp388 = { "CC StartStop.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/StartStop.cpp"
 ,"-o"
 ,OBJ_PATH+"/StartStop.o"
} } ;

Target cpp389 = { "Starter.cpp" , "../../Fundamental/CCore/src/Starter.cpp" } ;
Target ocpp389 = { "Starter.o" , OBJ_PATH+"/Starter.o" } ;
Rule rcpp389 = { {&cpp389} , {&ocpp389} , {&execpp389} } ;
Exe execpp389 = { "CC Starter.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/Starter.cpp"
 ,"-o"
 ,OBJ_PATH+"/Starter.o"
} } ;

Target cpp390 = { "StepEval.cpp" , "../../Fundamental/CCore/src/StepEval.cpp" } ;
Target ocpp390 = { "StepEval.o" , OBJ_PATH+"/StepEval.o" } ;
Rule rcpp390 = { {&cpp390} , {&ocpp390} , {&execpp390} } ;
Exe execpp390 = { "CC StepEval.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/StepEval.cpp"
 ,"-o"
 ,OBJ_PATH+"/StepEval.o"
} } ;

Target cpp391 = { "StrKey.cpp" , "../../Simple/CCore/src/StrKey.cpp" } ;
Target ocpp391 = { "StrKey.o" , OBJ_PATH+"/StrKey.o" } ;
Rule rcpp391 = { {&cpp391} , {&ocpp391} , {&execpp391} } ;
Exe execpp391 = { "CC StrKey.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/StrKey.cpp"
 ,"-o"
 ,OBJ_PATH+"/StrKey.o"
} } ;

Target cpp392 = { "StrMap.cpp" , "../../Fundamental/CCore/src/StrMap.cpp" } ;
Target ocpp392 = { "StrMap.o" , OBJ_PATH+"/StrMap.o" } ;
Rule rcpp392 = { {&cpp392} , {&ocpp392} , {&execpp392} } ;
Exe execpp392 = { "CC StrMap.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/StrMap.cpp"
 ,"-o"
 ,OBJ_PATH+"/StrMap.o"
} } ;

Target cpp393 = { "StrParse.cpp" , "../../Fundamental/CCore/src/StrParse.cpp" } ;
Target ocpp393 = { "StrParse.o" , OBJ_PATH+"/StrParse.o" } ;
Rule rcpp393 = { {&cpp393} , {&ocpp393} , {&execpp393} } ;
Exe execpp393 = { "CC StrParse.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/StrParse.cpp"
 ,"-o"
 ,OBJ_PATH+"/StrParse.o"
} } ;

Target cpp394 = { "StrPrint.cpp" , "../../Fundamental/CCore/src/./printf/StrPrint.cpp" } ;
Target ocpp394 = { "StrPrint.o" , OBJ_PATH+"/StrPrint.o" } ;
Rule rcpp394 = { {&cpp394} , {&ocpp394} , {&execpp394} } ;
Exe execpp394 = { "CC StrPrint.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./printf/StrPrint.cpp"
 ,"-o"
 ,OBJ_PATH+"/StrPrint.o"
} } ;

Target cpp395 = { "StrToChar.cpp" , "../../Applied/CCore/src/StrToChar.cpp" } ;
Target ocpp395 = { "StrToChar.o" , OBJ_PATH+"/StrToChar.o" } ;
Rule rcpp395 = { {&cpp395} , {&ocpp395} , {&execpp395} } ;
Exe execpp395 = { "CC StrToChar.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/StrToChar.cpp"
 ,"-o"
 ,OBJ_PATH+"/StrToChar.o"
} } ;

Target cpp396 = { "String.cpp" , "../../Fundamental/CCore/src/String.cpp" } ;
Target ocpp396 = { "String.o" , OBJ_PATH+"/String.o" } ;
Rule rcpp396 = { {&cpp396} , {&ocpp396} , {&execpp396} } ;
Exe execpp396 = { "CC String.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/String.cpp"
 ,"-o"
 ,OBJ_PATH+"/String.o"
} } ;

Target cpp397 = { "StringScan.cpp" , "../../Fundamental/CCore/src/./scanf/StringScan.cpp" } ;
Target ocpp397 = { "StringScan.o" , OBJ_PATH+"/StringScan.o" } ;
Rule rcpp397 = { {&cpp397} , {&ocpp397} , {&execpp397} } ;
Exe execpp397 = { "CC StringScan.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./scanf/StringScan.cpp"
 ,"-o"
 ,OBJ_PATH+"/StringScan.o"
} } ;

Target cpp398 = { "SubWindow.cpp" , "../../Desktop/Core/CCore/src/./video/SubWindow.cpp" } ;
Target ocpp398 = { "SubWindow.o" , OBJ_PATH+"/SubWindow.o" } ;
Rule rcpp398 = { {&cpp398} , {&ocpp398} , {&execpp398} } ;
Exe execpp398 = { "CC SubWindow.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Core/CCore/src/./video/SubWindow.cpp"
 ,"-o"
 ,OBJ_PATH+"/SubWindow.o"
} } ;

Target cpp399 = { "Swap.cpp" , "../../Simple/CCore/src/Swap.cpp" } ;
Target ocpp399 = { "Swap.o" , OBJ_PATH+"/Swap.o" } ;
Rule rcpp399 = { {&cpp399} , {&ocpp399} , {&execpp399} } ;
Exe execpp399 = { "CC Swap.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/Swap.cpp"
 ,"-o"
 ,OBJ_PATH+"/Swap.o"
} } ;

Target cpp400 = { "SymCount.cpp" , "../../Simple/CCore/src/SymCount.cpp" } ;
Target ocpp400 = { "SymCount.o" , OBJ_PATH+"/SymCount.o" } ;
Rule rcpp400 = { {&cpp400} , {&ocpp400} , {&execpp400} } ;
Exe execpp400 = { "CC SymCount.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/SymCount.cpp"
 ,"-o"
 ,OBJ_PATH+"/SymCount.o"
} } ;

Target cpp401 = { "SymPart.cpp" , "../../Simple/CCore/src/SymPart.cpp" } ;
Target ocpp401 = { "SymPart.o" , OBJ_PATH+"/SymPart.o" } ;
Rule rcpp401 = { {&cpp401} , {&ocpp401} , {&execpp401} } ;
Exe execpp401 = { "CC SymPart.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/SymPart.cpp"
 ,"-o"
 ,OBJ_PATH+"/SymPart.o"
} } ;

Target cpp402 = { "Symbol.cpp" , "../../Simple/CCore/src/Symbol.cpp" } ;
Target ocpp402 = { "Symbol.o" , OBJ_PATH+"/Symbol.o" } ;
Rule rcpp402 = { {&cpp402} , {&ocpp402} , {&execpp402} } ;
Exe execpp402 = { "CC Symbol.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/Symbol.cpp"
 ,"-o"
 ,OBJ_PATH+"/Symbol.o"
} } ;

Target cpp403 = { "SysAbort.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysAbort.cpp" } ;
Target ocpp403 = { "SysAbort.o" , OBJ_PATH+"/SysAbort.o" } ;
Rule rcpp403 = { {&cpp403} , {&ocpp403} , {&execpp403} } ;
Exe execpp403 = { "CC SysAbort.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysAbort.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysAbort.o"
} } ;

Target cpp404 = { "SysAsyncFile.cpp" , "../../Applied/CCore/src/./sys/SysAsyncFile.cpp" } ;
Target ocpp404 = { "SysAsyncFile.o" , OBJ_PATH+"/SysAsyncFile.o" } ;
Rule rcpp404 = { {&cpp404} , {&ocpp404} , {&execpp404} } ;
Exe execpp404 = { "CC SysAsyncFile.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./sys/SysAsyncFile.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysAsyncFile.o"
} } ;

Target cpp405 = { "SysAsyncFileSystem.cpp" , "../../Applied/CCore/src/./sys/SysAsyncFileSystem.cpp" } ;
Target ocpp405 = { "SysAsyncFileSystem.o" , OBJ_PATH+"/SysAsyncFileSystem.o" } ;
Rule rcpp405 = { {&cpp405} , {&ocpp405} , {&execpp405} } ;
Exe execpp405 = { "CC SysAsyncFileSystem.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./sys/SysAsyncFileSystem.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysAsyncFileSystem.o"
} } ;

Target cpp406 = { "SysAtomic.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysAtomic.cpp" } ;
Target ocpp406 = { "SysAtomic.o" , OBJ_PATH+"/SysAtomic.o" } ;
Rule rcpp406 = { {&cpp406} , {&ocpp406} , {&execpp406} } ;
Exe execpp406 = { "CC SysAtomic.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysAtomic.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysAtomic.o"
} } ;

Target cpp407 = { "SysCon.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysCon.cpp" } ;
Target ocpp407 = { "SysCon.o" , OBJ_PATH+"/SysCon.o" } ;
Rule rcpp407 = { {&cpp407} , {&ocpp407} , {&execpp407} } ;
Exe execpp407 = { "CC SysCon.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysCon.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysCon.o"
} } ;

Target cpp408 = { "SysEnv.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysEnv.cpp" } ;
Target ocpp408 = { "SysEnv.o" , OBJ_PATH+"/SysEnv.o" } ;
Rule rcpp408 = { {&cpp408} , {&ocpp408} , {&execpp408} } ;
Exe execpp408 = { "CC SysEnv.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysEnv.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysEnv.o"
} } ;

Target cpp409 = { "SysError.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysError.cpp" } ;
Target ocpp409 = { "SysError.o" , OBJ_PATH+"/SysError.o" } ;
Rule rcpp409 = { {&cpp409} , {&ocpp409} , {&execpp409} } ;
Exe execpp409 = { "CC SysError.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysError.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysError.o"
} } ;

Target cpp410 = { "SysFile.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysFile.cpp" } ;
Target ocpp410 = { "SysFile.o" , OBJ_PATH+"/SysFile.o" } ;
Rule rcpp410 = { {&cpp410} , {&ocpp410} , {&execpp410} } ;
Exe execpp410 = { "CC SysFile.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysFile.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysFile.o"
} } ;

Target cpp411 = { "SysFileInternal.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysFileInternal.cpp" } ;
Target ocpp411 = { "SysFileInternal.o" , OBJ_PATH+"/SysFileInternal.o" } ;
Rule rcpp411 = { {&cpp411} , {&ocpp411} , {&execpp411} } ;
Exe execpp411 = { "CC SysFileInternal.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysFileInternal.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysFileInternal.o"
} } ;

Target cpp412 = { "SysFileSystem.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysFileSystem.cpp" } ;
Target ocpp412 = { "SysFileSystem.o" , OBJ_PATH+"/SysFileSystem.o" } ;
Rule rcpp412 = { {&cpp412} , {&ocpp412} , {&execpp412} } ;
Exe execpp412 = { "CC SysFileSystem.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysFileSystem.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysFileSystem.o"
} } ;

Target cpp413 = { "SysLaunchPath.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysLaunchPath.cpp" } ;
Target ocpp413 = { "SysLaunchPath.o" , OBJ_PATH+"/SysLaunchPath.o" } ;
Rule rcpp413 = { {&cpp413} , {&ocpp413} , {&execpp413} } ;
Exe execpp413 = { "CC SysLaunchPath.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysLaunchPath.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysLaunchPath.o"
} } ;

Target cpp414 = { "SysMemPage.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysMemPage.cpp" } ;
Target ocpp414 = { "SysMemPage.o" , OBJ_PATH+"/SysMemPage.o" } ;
Rule rcpp414 = { {&cpp414} , {&ocpp414} , {&execpp414} } ;
Exe execpp414 = { "CC SysMemPage.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysMemPage.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysMemPage.o"
} } ;

Target cpp415 = { "SysNet.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysNet.cpp" } ;
Target ocpp415 = { "SysNet.o" , OBJ_PATH+"/SysNet.o" } ;
Rule rcpp415 = { {&cpp415} , {&ocpp415} , {&execpp415} } ;
Exe execpp415 = { "CC SysNet.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysNet.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysNet.o"
} } ;

Target cpp416 = { "SysPlanInit.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysPlanInit.cpp" } ;
Target ocpp416 = { "SysPlanInit.o" , OBJ_PATH+"/SysPlanInit.o" } ;
Rule rcpp416 = { {&cpp416} , {&ocpp416} , {&execpp416} } ;
Exe execpp416 = { "CC SysPlanInit.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysPlanInit.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysPlanInit.o"
} } ;

Target cpp417 = { "SysProp.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysProp.cpp" } ;
Target ocpp417 = { "SysProp.o" , OBJ_PATH+"/SysProp.o" } ;
Rule rcpp417 = { {&cpp417} , {&ocpp417} , {&execpp417} } ;
Exe execpp417 = { "CC SysProp.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysProp.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysProp.o"
} } ;

Target cpp418 = { "SysSem.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysSem.cpp" } ;
Target ocpp418 = { "SysSem.o" , OBJ_PATH+"/SysSem.o" } ;
Rule rcpp418 = { {&cpp418} , {&ocpp418} , {&execpp418} } ;
Exe execpp418 = { "CC SysSem.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysSem.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysSem.o"
} } ;

Target cpp419 = { "SysSpawn.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysSpawn.cpp" } ;
Target ocpp419 = { "SysSpawn.o" , OBJ_PATH+"/SysSpawn.o" } ;
Rule rcpp419 = { {&cpp419} , {&ocpp419} , {&execpp419} } ;
Exe execpp419 = { "CC SysSpawn.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysSpawn.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysSpawn.o"
} } ;

Target cpp420 = { "SysSpawnInternal.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysSpawnInternal.cpp" } ;
Target ocpp420 = { "SysSpawnInternal.o" , OBJ_PATH+"/SysSpawnInternal.o" } ;
Rule rcpp420 = { {&cpp420} , {&ocpp420} , {&execpp420} } ;
Exe execpp420 = { "CC SysSpawnInternal.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysSpawnInternal.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysSpawnInternal.o"
} } ;

Target cpp421 = { "SysTask.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysTask.cpp" } ;
Target ocpp421 = { "SysTask.o" , OBJ_PATH+"/SysTask.o" } ;
Rule rcpp421 = { {&cpp421} , {&ocpp421} , {&execpp421} } ;
Exe execpp421 = { "CC SysTask.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysTask.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysTask.o"
} } ;

Target cpp422 = { "SysTime.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysTime.cpp" } ;
Target ocpp422 = { "SysTime.o" , OBJ_PATH+"/SysTime.o" } ;
Rule rcpp422 = { {&cpp422} , {&ocpp422} , {&execpp422} } ;
Exe execpp422 = { "CC SysTime.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysTime.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysTime.o"
} } ;

Target cpp423 = { "SysTlsSlot.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysTlsSlot.cpp" } ;
Target ocpp423 = { "SysTlsSlot.o" , OBJ_PATH+"/SysTlsSlot.o" } ;
Rule rcpp423 = { {&cpp423} , {&ocpp423} , {&execpp423} } ;
Exe execpp423 = { "CC SysTlsSlot.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysTlsSlot.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysTlsSlot.o"
} } ;

Target cpp424 = { "SysUtf8.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysUtf8.cpp" } ;
Target ocpp424 = { "SysUtf8.o" , OBJ_PATH+"/SysUtf8.o" } ;
Rule rcpp424 = { {&cpp424} , {&ocpp424} , {&execpp424} } ;
Exe execpp424 = { "CC SysUtf8.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysUtf8.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysUtf8.o"
} } ;

Target cpp425 = { "SysWait.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysWait.cpp" } ;
Target ocpp425 = { "SysWait.o" , OBJ_PATH+"/SysWait.o" } ;
Rule rcpp425 = { {&cpp425} , {&ocpp425} , {&execpp425} } ;
Exe execpp425 = { "CC SysWait.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysWait.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysWait.o"
} } ;

Target cpp426 = { "SysWaitInternal.cpp" , "../../Target/WIN32utf8/CCore/src/./sys/SysWaitInternal.cpp" } ;
Target ocpp426 = { "SysWaitInternal.o" , OBJ_PATH+"/SysWaitInternal.o" } ;
Rule rcpp426 = { {&cpp426} , {&ocpp426} , {&execpp426} } ;
Exe execpp426 = { "CC SysWaitInternal.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Target/WIN32utf8/CCore/src/./sys/SysWaitInternal.cpp"
 ,"-o"
 ,OBJ_PATH+"/SysWaitInternal.o"
} } ;

Target cpp427 = { "Task.cpp" , "../../HCore/CCore/src/Task.cpp" } ;
Target ocpp427 = { "Task.o" , OBJ_PATH+"/Task.o" } ;
Rule rcpp427 = { {&cpp427} , {&ocpp427} , {&execpp427} } ;
Exe execpp427 = { "CC Task.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/Task.cpp"
 ,"-o"
 ,OBJ_PATH+"/Task.o"
} } ;

Target cpp428 = { "TaskCore.cpp" , "../../HCore/CCore/src/./task/TaskCore.cpp" } ;
Target ocpp428 = { "TaskCore.o" , OBJ_PATH+"/TaskCore.o" } ;
Rule rcpp428 = { {&cpp428} , {&ocpp428} , {&execpp428} } ;
Exe execpp428 = { "CC TaskCore.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./task/TaskCore.cpp"
 ,"-o"
 ,OBJ_PATH+"/TaskCore.o"
} } ;

Target cpp429 = { "TaskEvent.cpp" , "../../HCore/CCore/src/./task/TaskEvent.cpp" } ;
Target ocpp429 = { "TaskEvent.o" , OBJ_PATH+"/TaskEvent.o" } ;
Rule rcpp429 = { {&cpp429} , {&ocpp429} , {&execpp429} } ;
Exe execpp429 = { "CC TaskEvent.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./task/TaskEvent.cpp"
 ,"-o"
 ,OBJ_PATH+"/TaskEvent.o"
} } ;

Target cpp430 = { "TaskHeap.cpp" , "../../HCore/CCore/src/TaskHeap.cpp" } ;
Target ocpp430 = { "TaskHeap.o" , OBJ_PATH+"/TaskHeap.o" } ;
Rule rcpp430 = { {&cpp430} , {&ocpp430} , {&execpp430} } ;
Exe execpp430 = { "CC TaskHeap.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/TaskHeap.cpp"
 ,"-o"
 ,OBJ_PATH+"/TaskHeap.o"
} } ;

Target cpp431 = { "TaskMemStack.cpp" , "../../Applied/CCore/src/TaskMemStack.cpp" } ;
Target ocpp431 = { "TaskMemStack.o" , OBJ_PATH+"/TaskMemStack.o" } ;
Rule rcpp431 = { {&cpp431} , {&ocpp431} , {&execpp431} } ;
Exe execpp431 = { "CC TaskMemStack.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/TaskMemStack.cpp"
 ,"-o"
 ,OBJ_PATH+"/TaskMemStack.o"
} } ;

Target cpp432 = { "TempArray.cpp" , "../../Fundamental/CCore/src/./array/TempArray.cpp" } ;
Target ocpp432 = { "TempArray.o" , OBJ_PATH+"/TempArray.o" } ;
Rule rcpp432 = { {&cpp432} , {&ocpp432} , {&execpp432} } ;
Exe execpp432 = { "CC TempArray.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./array/TempArray.cpp"
 ,"-o"
 ,OBJ_PATH+"/TempArray.o"
} } ;

Target cpp433 = { "TextLabel.cpp" , "../../Simple/CCore/src/TextLabel.cpp" } ;
Target ocpp433 = { "TextLabel.o" , OBJ_PATH+"/TextLabel.o" } ;
Rule rcpp433 = { {&cpp433} , {&ocpp433} , {&execpp433} } ;
Exe execpp433 = { "CC TextLabel.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/TextLabel.cpp"
 ,"-o"
 ,OBJ_PATH+"/TextLabel.o"
} } ;

Target cpp434 = { "TextTools.cpp" , "../../Fundamental/CCore/src/TextTools.cpp" } ;
Target ocpp434 = { "TextTools.o" , OBJ_PATH+"/TextTools.o" } ;
Rule rcpp434 = { {&cpp434} , {&ocpp434} , {&execpp434} } ;
Exe execpp434 = { "CC TextTools.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/TextTools.cpp"
 ,"-o"
 ,OBJ_PATH+"/TextTools.o"
} } ;

Target cpp435 = { "TimeScope.cpp" , "../../Simple/CCore/src/TimeScope.cpp" } ;
Target ocpp435 = { "TimeScope.o" , OBJ_PATH+"/TimeScope.o" } ;
Rule rcpp435 = { {&cpp435} , {&ocpp435} , {&execpp435} } ;
Exe execpp435 = { "CC TimeScope.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/TimeScope.cpp"
 ,"-o"
 ,OBJ_PATH+"/TimeScope.o"
} } ;

Target cpp436 = { "Timer.cpp" , "../../Simple/CCore/src/Timer.cpp" } ;
Target ocpp436 = { "Timer.o" , OBJ_PATH+"/Timer.o" } ;
Rule rcpp436 = { {&cpp436} , {&ocpp436} , {&execpp436} } ;
Exe execpp436 = { "CC Timer.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/Timer.cpp"
 ,"-o"
 ,OBJ_PATH+"/Timer.o"
} } ;

Target cpp437 = { "TlsSlot.cpp" , "../../Simple/CCore/src/TlsSlot.cpp" } ;
Target ocpp437 = { "TlsSlot.o" , OBJ_PATH+"/TlsSlot.o" } ;
Rule rcpp437 = { {&cpp437} , {&ocpp437} , {&execpp437} } ;
Exe execpp437 = { "CC TlsSlot.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/TlsSlot.cpp"
 ,"-o"
 ,OBJ_PATH+"/TlsSlot.o"
} } ;

Target cpp438 = { "ToMemBase.cpp" , "../../Applied/CCore/src/ToMemBase.cpp" } ;
Target ocpp438 = { "ToMemBase.o" , OBJ_PATH+"/ToMemBase.o" } ;
Rule rcpp438 = { {&cpp438} , {&ocpp438} , {&execpp438} } ;
Exe execpp438 = { "CC ToMemBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/ToMemBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/ToMemBase.o"
} } ;

Target cpp439 = { "ToMoveCtor.cpp" , "../../Simple/CCore/src/ToMoveCtor.cpp" } ;
Target ocpp439 = { "ToMoveCtor.o" , OBJ_PATH+"/ToMoveCtor.o" } ;
Rule rcpp439 = { {&cpp439} , {&ocpp439} , {&execpp439} } ;
Exe execpp439 = { "CC ToMoveCtor.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/ToMoveCtor.cpp"
 ,"-o"
 ,OBJ_PATH+"/ToMoveCtor.o"
} } ;

Target cpp440 = { "ToolFrame.cpp" , "../../Desktop/Lib/CCore/src/./video/ToolFrame.cpp" } ;
Target ocpp440 = { "ToolFrame.o" , OBJ_PATH+"/ToolFrame.o" } ;
Rule rcpp440 = { {&cpp440} , {&ocpp440} , {&execpp440} } ;
Exe execpp440 = { "CC ToolFrame.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/ToolFrame.cpp"
 ,"-o"
 ,OBJ_PATH+"/ToolFrame.o"
} } ;

Target cpp441 = { "Tree.cpp" , "../../Fundamental/CCore/src/Tree.cpp" } ;
Target ocpp441 = { "Tree.o" , OBJ_PATH+"/Tree.o" } ;
Rule rcpp441 = { {&cpp441} , {&ocpp441} , {&execpp441} } ;
Exe execpp441 = { "CC Tree.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/Tree.cpp"
 ,"-o"
 ,OBJ_PATH+"/Tree.o"
} } ;

Target cpp442 = { "TreeBase.cpp" , "../../Fundamental/CCore/src/./tree/TreeBase.cpp" } ;
Target ocpp442 = { "TreeBase.o" , OBJ_PATH+"/TreeBase.o" } ;
Rule rcpp442 = { {&cpp442} , {&ocpp442} , {&execpp442} } ;
Exe execpp442 = { "CC TreeBase.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./tree/TreeBase.cpp"
 ,"-o"
 ,OBJ_PATH+"/TreeBase.o"
} } ;

Target cpp443 = { "TreeLink.cpp" , "../../Fundamental/CCore/src/./tree/TreeLink.cpp" } ;
Target ocpp443 = { "TreeLink.o" , OBJ_PATH+"/TreeLink.o" } ;
Rule rcpp443 = { {&cpp443} , {&ocpp443} , {&execpp443} } ;
Exe execpp443 = { "CC TreeLink.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./tree/TreeLink.cpp"
 ,"-o"
 ,OBJ_PATH+"/TreeLink.o"
} } ;

Target cpp444 = { "TreeMap.cpp" , "../../Fundamental/CCore/src/TreeMap.cpp" } ;
Target ocpp444 = { "TreeMap.o" , OBJ_PATH+"/TreeMap.o" } ;
Rule rcpp444 = { {&cpp444} , {&ocpp444} , {&execpp444} } ;
Exe execpp444 = { "CC TreeMap.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/TreeMap.cpp"
 ,"-o"
 ,OBJ_PATH+"/TreeMap.o"
} } ;

Target cpp445 = { "TreeUpLink.cpp" , "../../Fundamental/CCore/src/./tree/TreeUpLink.cpp" } ;
Target ocpp445 = { "TreeUpLink.o" , OBJ_PATH+"/TreeUpLink.o" } ;
Rule rcpp445 = { {&cpp445} , {&ocpp445} , {&execpp445} } ;
Exe execpp445 = { "CC TreeUpLink.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./tree/TreeUpLink.cpp"
 ,"-o"
 ,OBJ_PATH+"/TreeUpLink.o"
} } ;

Target cpp446 = { "Tuple.cpp" , "../../Simple/CCore/src/Tuple.cpp" } ;
Target ocpp446 = { "Tuple.o" , OBJ_PATH+"/Tuple.o" } ;
Rule rcpp446 = { {&cpp446} , {&ocpp446} , {&execpp446} } ;
Exe execpp446 = { "CC Tuple.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/Tuple.cpp"
 ,"-o"
 ,OBJ_PATH+"/Tuple.o"
} } ;

Target cpp447 = { "TypeNumber.cpp" , "../../Fundamental/CCore/src/TypeNumber.cpp" } ;
Target ocpp447 = { "TypeNumber.o" , OBJ_PATH+"/TypeNumber.o" } ;
Rule rcpp447 = { {&cpp447} , {&ocpp447} , {&execpp447} } ;
Exe execpp447 = { "CC TypeNumber.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/TypeNumber.cpp"
 ,"-o"
 ,OBJ_PATH+"/TypeNumber.o"
} } ;

Target cpp448 = { "TypeSwitch.cpp" , "../../Simple/CCore/src/TypeSwitch.cpp" } ;
Target ocpp448 = { "TypeSwitch.o" , OBJ_PATH+"/TypeSwitch.o" } ;
Rule rcpp448 = { {&cpp448} , {&ocpp448} , {&execpp448} } ;
Exe execpp448 = { "CC TypeSwitch.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/TypeSwitch.cpp"
 ,"-o"
 ,OBJ_PATH+"/TypeSwitch.o"
} } ;

Target cpp449 = { "UDPDevice.cpp" , "../../HCore/CCore/src/./net/UDPDevice.cpp" } ;
Target ocpp449 = { "UDPDevice.o" , OBJ_PATH+"/UDPDevice.o" } ;
Rule rcpp449 = { {&cpp449} , {&ocpp449} , {&execpp449} } ;
Exe execpp449 = { "CC UDPDevice.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../HCore/CCore/src/./net/UDPDevice.cpp"
 ,"-o"
 ,OBJ_PATH+"/UDPDevice.o"
} } ;

Target cpp450 = { "UDPoint.cpp" , "../../Applied/CCore/src/./net/UDPoint.cpp" } ;
Target ocpp450 = { "UDPoint.o" , OBJ_PATH+"/UDPoint.o" } ;
Rule rcpp450 = { {&cpp450} , {&ocpp450} , {&execpp450} } ;
Exe execpp450 = { "CC UDPoint.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/UDPoint.cpp"
 ,"-o"
 ,OBJ_PATH+"/UDPoint.o"
} } ;

Target cpp451 = { "UIntFunc.cpp" , "../../Simple/CCore/src/./gadget/UIntFunc.cpp" } ;
Target ocpp451 = { "UIntFunc.o" , OBJ_PATH+"/UIntFunc.o" } ;
Rule rcpp451 = { {&cpp451} , {&ocpp451} , {&execpp451} } ;
Exe execpp451 = { "CC UIntFunc.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/UIntFunc.cpp"
 ,"-o"
 ,OBJ_PATH+"/UIntFunc.o"
} } ;

Target cpp452 = { "UIntSat.cpp" , "../../Simple/CCore/src/./gadget/UIntSat.cpp" } ;
Target ocpp452 = { "UIntSat.o" , OBJ_PATH+"/UIntSat.o" } ;
Rule rcpp452 = { {&cpp452} , {&ocpp452} , {&execpp452} } ;
Exe execpp452 = { "CC UIntSat.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/UIntSat.cpp"
 ,"-o"
 ,OBJ_PATH+"/UIntSat.o"
} } ;

Target cpp453 = { "UIntSlowMulAlgo.cpp" , "../../Fundamental/CCore/src/./math/UIntSlowMulAlgo.cpp" } ;
Target ocpp453 = { "UIntSlowMulAlgo.o" , OBJ_PATH+"/UIntSlowMulAlgo.o" } ;
Rule rcpp453 = { {&cpp453} , {&ocpp453} , {&execpp453} } ;
Exe execpp453 = { "CC UIntSlowMulAlgo.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/./math/UIntSlowMulAlgo.cpp"
 ,"-o"
 ,OBJ_PATH+"/UIntSlowMulAlgo.o"
} } ;

Target cpp454 = { "UIntSplit.cpp" , "../../Simple/CCore/src/UIntSplit.cpp" } ;
Target ocpp454 = { "UIntSplit.o" , OBJ_PATH+"/UIntSplit.o" } ;
Rule rcpp454 = { {&cpp454} , {&ocpp454} , {&execpp454} } ;
Exe execpp454 = { "CC UIntSplit.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/UIntSplit.cpp"
 ,"-o"
 ,OBJ_PATH+"/UIntSplit.o"
} } ;

Target cpp455 = { "Unid.cpp" , "../../Fundamental/CCore/src/Unid.cpp" } ;
Target ocpp455 = { "Unid.o" , OBJ_PATH+"/Unid.o" } ;
Rule rcpp455 = { {&cpp455} , {&ocpp455} , {&execpp455} } ;
Exe execpp455 = { "CC Unid.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/Unid.cpp"
 ,"-o"
 ,OBJ_PATH+"/Unid.o"
} } ;

Target cpp456 = { "UserAction.cpp" , "../../Desktop/Core/CCore/src/./video/UserAction.cpp" } ;
Target ocpp456 = { "UserAction.o" , OBJ_PATH+"/UserAction.o" } ;
Rule rcpp456 = { {&cpp456} , {&ocpp456} , {&execpp456} } ;
Exe execpp456 = { "CC UserAction.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Core/CCore/src/./video/UserAction.cpp"
 ,"-o"
 ,OBJ_PATH+"/UserAction.o"
} } ;

Target cpp457 = { "UserPreference.cpp" , "../../Desktop/Lib/CCore/src/./video/UserPreference.cpp" } ;
Target ocpp457 = { "UserPreference.o" , OBJ_PATH+"/UserPreference.o" } ;
Rule rcpp457 = { {&cpp457} , {&ocpp457} , {&execpp457} } ;
Exe execpp457 = { "CC UserPreference.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/UserPreference.cpp"
 ,"-o"
 ,OBJ_PATH+"/UserPreference.o"
} } ;

Target cpp458 = { "Utf8.cpp" , "../../Simple/CCore/src/Utf8.cpp" } ;
Target ocpp458 = { "Utf8.o" , OBJ_PATH+"/Utf8.o" } ;
Rule rcpp458 = { {&cpp458} , {&ocpp458} , {&execpp458} } ;
Exe execpp458 = { "CC Utf8.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/Utf8.cpp"
 ,"-o"
 ,OBJ_PATH+"/Utf8.o"
} } ;

Target cpp459 = { "UtilFunc.cpp" , "../../Simple/CCore/src/./gadget/UtilFunc.cpp" } ;
Target ocpp459 = { "UtilFunc.o" , OBJ_PATH+"/UtilFunc.o" } ;
Rule rcpp459 = { {&cpp459} , {&ocpp459} , {&execpp459} } ;
Exe execpp459 = { "CC UtilFunc.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Simple/CCore/src/./gadget/UtilFunc.cpp"
 ,"-o"
 ,OBJ_PATH+"/UtilFunc.o"
} } ;

Target cpp460 = { "VideoConsole.cpp" , "../../Applied/CCore/src/./video/VideoConsole.cpp" } ;
Target ocpp460 = { "VideoConsole.o" , OBJ_PATH+"/VideoConsole.o" } ;
Rule rcpp460 = { {&cpp460} , {&ocpp460} , {&execpp460} } ;
Exe execpp460 = { "CC VideoConsole.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./video/VideoConsole.cpp"
 ,"-o"
 ,OBJ_PATH+"/VideoConsole.o"
} } ;

Target cpp461 = { "VideoDevice.cpp" , "../../Applied/CCore/src/./video/VideoDevice.cpp" } ;
Target ocpp461 = { "VideoDevice.o" , OBJ_PATH+"/VideoDevice.o" } ;
Rule rcpp461 = { {&cpp461} , {&ocpp461} , {&execpp461} } ;
Exe execpp461 = { "CC VideoDevice.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./video/VideoDevice.cpp"
 ,"-o"
 ,OBJ_PATH+"/VideoDevice.o"
} } ;

Target cpp462 = { "Volume.cpp" , "../../Fundamental/CCore/src/Volume.cpp" } ;
Target ocpp462 = { "Volume.o" , OBJ_PATH+"/Volume.o" } ;
Rule rcpp462 = { {&cpp462} , {&ocpp462} , {&execpp462} } ;
Exe execpp462 = { "CC Volume.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Fundamental/CCore/src/Volume.cpp"
 ,"-o"
 ,OBJ_PATH+"/Volume.o"
} } ;

Target cpp463 = { "Window.Blank.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.Blank.cpp" } ;
Target ocpp463 = { "Window.Blank.o" , OBJ_PATH+"/Window.Blank.o" } ;
Rule rcpp463 = { {&cpp463} , {&ocpp463} , {&execpp463} } ;
Exe execpp463 = { "CC Window.Blank.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.Blank.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.Blank.o"
} } ;

Target cpp464 = { "Window.Button.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.Button.cpp" } ;
Target ocpp464 = { "Window.Button.o" , OBJ_PATH+"/Window.Button.o" } ;
Rule rcpp464 = { {&cpp464} , {&ocpp464} , {&execpp464} } ;
Exe execpp464 = { "CC Window.Button.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.Button.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.Button.o"
} } ;

Target cpp465 = { "Window.Check.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.Check.cpp" } ;
Target ocpp465 = { "Window.Check.o" , OBJ_PATH+"/Window.Check.o" } ;
Rule rcpp465 = { {&cpp465} , {&ocpp465} , {&execpp465} } ;
Exe execpp465 = { "CC Window.Check.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.Check.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.Check.o"
} } ;

Target cpp466 = { "Window.Decor.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.Decor.cpp" } ;
Target ocpp466 = { "Window.Decor.o" , OBJ_PATH+"/Window.Decor.o" } ;
Rule rcpp466 = { {&cpp466} , {&ocpp466} , {&execpp466} } ;
Exe execpp466 = { "CC Window.Decor.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.Decor.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.Decor.o"
} } ;

Target cpp467 = { "Window.DragFrame.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.DragFrame.cpp" } ;
Target ocpp467 = { "Window.DragFrame.o" , OBJ_PATH+"/Window.DragFrame.o" } ;
Rule rcpp467 = { {&cpp467} , {&ocpp467} , {&execpp467} } ;
Exe execpp467 = { "CC Window.DragFrame.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.DragFrame.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.DragFrame.o"
} } ;

Target cpp468 = { "Window.FireButton.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.FireButton.cpp" } ;
Target ocpp468 = { "Window.FireButton.o" , OBJ_PATH+"/Window.FireButton.o" } ;
Rule rcpp468 = { {&cpp468} , {&ocpp468} , {&execpp468} } ;
Exe execpp468 = { "CC Window.FireButton.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.FireButton.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.FireButton.o"
} } ;

Target cpp469 = { "Window.Info.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.Info.cpp" } ;
Target ocpp469 = { "Window.Info.o" , OBJ_PATH+"/Window.Info.o" } ;
Rule rcpp469 = { {&cpp469} , {&ocpp469} , {&execpp469} } ;
Exe execpp469 = { "CC Window.Info.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.Info.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.Info.o"
} } ;

Target cpp470 = { "Window.Light.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.Light.cpp" } ;
Target ocpp470 = { "Window.Light.o" , OBJ_PATH+"/Window.Light.o" } ;
Rule rcpp470 = { {&cpp470} , {&ocpp470} , {&execpp470} } ;
Exe execpp470 = { "CC Window.Light.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.Light.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.Light.o"
} } ;

Target cpp471 = { "Window.LineEdit.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.LineEdit.cpp" } ;
Target ocpp471 = { "Window.LineEdit.o" , OBJ_PATH+"/Window.LineEdit.o" } ;
Rule rcpp471 = { {&cpp471} , {&ocpp471} , {&execpp471} } ;
Exe execpp471 = { "CC Window.LineEdit.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.LineEdit.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.LineEdit.o"
} } ;

Target cpp472 = { "Window.Progress.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.Progress.cpp" } ;
Target ocpp472 = { "Window.Progress.o" , OBJ_PATH+"/Window.Progress.o" } ;
Rule rcpp472 = { {&cpp472} , {&ocpp472} , {&execpp472} } ;
Exe execpp472 = { "CC Window.Progress.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.Progress.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.Progress.o"
} } ;

Target cpp473 = { "Window.Radio.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.Radio.cpp" } ;
Target ocpp473 = { "Window.Radio.o" , OBJ_PATH+"/Window.Radio.o" } ;
Rule rcpp473 = { {&cpp473} , {&ocpp473} , {&execpp473} } ;
Exe execpp473 = { "CC Window.Radio.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.Radio.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.Radio.o"
} } ;

Target cpp474 = { "Window.RunButton.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.RunButton.cpp" } ;
Target ocpp474 = { "Window.RunButton.o" , OBJ_PATH+"/Window.RunButton.o" } ;
Rule rcpp474 = { {&cpp474} , {&ocpp474} , {&execpp474} } ;
Exe execpp474 = { "CC Window.RunButton.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.RunButton.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.RunButton.o"
} } ;

Target cpp475 = { "Window.Scroll.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.Scroll.cpp" } ;
Target ocpp475 = { "Window.Scroll.o" , OBJ_PATH+"/Window.Scroll.o" } ;
Rule rcpp475 = { {&cpp475} , {&ocpp475} , {&execpp475} } ;
Exe execpp475 = { "CC Window.Scroll.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.Scroll.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.Scroll.o"
} } ;

Target cpp476 = { "Window.ScrollList.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.ScrollList.cpp" } ;
Target ocpp476 = { "Window.ScrollList.o" , OBJ_PATH+"/Window.ScrollList.o" } ;
Rule rcpp476 = { {&cpp476} , {&ocpp476} , {&execpp476} } ;
Exe execpp476 = { "CC Window.ScrollList.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.ScrollList.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.ScrollList.o"
} } ;

Target cpp477 = { "Window.Scrollable.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.Scrollable.cpp" } ;
Target ocpp477 = { "Window.Scrollable.o" , OBJ_PATH+"/Window.Scrollable.o" } ;
Rule rcpp477 = { {&cpp477} , {&ocpp477} , {&execpp477} } ;
Exe execpp477 = { "CC Window.Scrollable.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.Scrollable.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.Scrollable.o"
} } ;

Target cpp478 = { "Window.SimpleTextList.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.SimpleTextList.cpp" } ;
Target ocpp478 = { "Window.SimpleTextList.o" , OBJ_PATH+"/Window.SimpleTextList.o" } ;
Rule rcpp478 = { {&cpp478} , {&ocpp478} , {&execpp478} } ;
Exe execpp478 = { "CC Window.SimpleTextList.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.SimpleTextList.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.SimpleTextList.o"
} } ;

Target cpp479 = { "Window.Slider.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.Slider.cpp" } ;
Target ocpp479 = { "Window.Slider.o" , OBJ_PATH+"/Window.Slider.o" } ;
Rule rcpp479 = { {&cpp479} , {&ocpp479} , {&execpp479} } ;
Exe execpp479 = { "CC Window.Slider.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.Slider.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.Slider.o"
} } ;

Target cpp480 = { "Window.Spinor.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.Spinor.cpp" } ;
Target ocpp480 = { "Window.Spinor.o" , OBJ_PATH+"/Window.Spinor.o" } ;
Rule rcpp480 = { {&cpp480} , {&ocpp480} , {&execpp480} } ;
Exe execpp480 = { "CC Window.Spinor.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.Spinor.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.Spinor.o"
} } ;

Target cpp481 = { "Window.Split.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.Split.cpp" } ;
Target ocpp481 = { "Window.Split.o" , OBJ_PATH+"/Window.Split.o" } ;
Rule rcpp481 = { {&cpp481} , {&ocpp481} , {&execpp481} } ;
Exe execpp481 = { "CC Window.Split.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.Split.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.Split.o"
} } ;

Target cpp482 = { "Window.Text.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.Text.cpp" } ;
Target ocpp482 = { "Window.Text.o" , OBJ_PATH+"/Window.Text.o" } ;
Rule rcpp482 = { {&cpp482} , {&ocpp482} , {&execpp482} } ;
Exe execpp482 = { "CC Window.Text.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.Text.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.Text.o"
} } ;

Target cpp483 = { "Window.TextLine.cpp" , "../../Desktop/Lib/CCore/src/./video/lib/Window.TextLine.cpp" } ;
Target ocpp483 = { "Window.TextLine.o" , OBJ_PATH+"/Window.TextLine.o" } ;
Rule rcpp483 = { {&cpp483} , {&ocpp483} , {&execpp483} } ;
Exe execpp483 = { "CC Window.TextLine.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/lib/Window.TextLine.cpp"
 ,"-o"
 ,OBJ_PATH+"/Window.TextLine.o"
} } ;

Target cpp484 = { "WindowLib.cpp" , "../../Desktop/Lib/CCore/src/./video/WindowLib.cpp" } ;
Target ocpp484 = { "WindowLib.o" , OBJ_PATH+"/WindowLib.o" } ;
Rule rcpp484 = { {&cpp484} , {&ocpp484} , {&execpp484} } ;
Exe execpp484 = { "CC WindowLib.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/Lib/CCore/src/./video/WindowLib.cpp"
 ,"-o"
 ,OBJ_PATH+"/WindowLib.o"
} } ;

Target cpp485 = { "WindowReport.cpp" , "../../Desktop/App/CCore/src/./video/WindowReport.cpp" } ;
Target ocpp485 = { "WindowReport.o" , OBJ_PATH+"/WindowReport.o" } ;
Rule rcpp485 = { {&cpp485} , {&ocpp485} , {&execpp485} } ;
Exe execpp485 = { "CC WindowReport.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Desktop/App/CCore/src/./video/WindowReport.cpp"
 ,"-o"
 ,OBJ_PATH+"/WindowReport.o"
} } ;

Target cpp486 = { "XPoint.cpp" , "../../Applied/CCore/src/./net/XPoint.cpp" } ;
Target ocpp486 = { "XPoint.o" , OBJ_PATH+"/XPoint.o" } ;
Rule rcpp486 = { {&cpp486} , {&ocpp486} , {&execpp486} } ;
Exe execpp486 = { "CC XPoint.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I"+"../.."+"/Target/"+"WIN32utf8"
 ,"-I"+"../.."+"/HCore"
 ,"-I"+"../.."+"/Simple"
 ,"-I"+"../.."+"/Fundamental"
 ,"-I"+"../.."+"/Applied"
 ,"-I"+"../.."+"/Desktop/Core"
 ,"-I"+"../.."+"/Desktop/Draw"
 ,"-I"+"../.."+"/Desktop/Font"
 ,"-I"+"../.."+"/Desktop/Lib"
 ,"-I"+"../.."+"/Desktop/Tools"
 ,"-I"+"../.."+"/Desktop/App"
 ,"../../Applied/CCore/src/./net/XPoint.cpp"
 ,"-o"
 ,OBJ_PATH+"/XPoint.o"
} } ;

Target asm1 = { "IntegerFastAlgo.s" , "../../Target/WIN32utf8/CCore/src/./math/IntegerFastAlgo.s" } ;
Target oasm1 = { "IntegerFastAlgo.s.o" , OBJ_PATH+"/IntegerFastAlgo.s.o" } ;
Rule rasm1 = { {&asm1} , {&oasm1} , {&exeasm1} } ;
Exe exeasm1 = { "AS IntegerFastAlgo.s" , AS , {
  "../../Target/WIN32utf8/CCore/src/./math/IntegerFastAlgo.s"
 ,"-o"
 ,OBJ_PATH+"/IntegerFastAlgo.s.o"
} } ;

Target asm2 = { "IntelAES.s" , "../../Target/WIN32utf8/CCore/src/./crypton/IntelAES.s" } ;
Target oasm2 = { "IntelAES.s.o" , OBJ_PATH+"/IntelAES.s.o" } ;
Rule rasm2 = { {&asm2} , {&oasm2} , {&exeasm2} } ;
Exe exeasm2 = { "AS IntelAES.s" , AS , {
  "../../Target/WIN32utf8/CCore/src/./crypton/IntelAES.s"
 ,"-o"
 ,OBJ_PATH+"/IntelAES.s.o"
} } ;

Target asm3 = { "IntelCPUID.s" , "../../Target/WIN32utf8/CCore/src/./crypton/IntelCPUID.s" } ;
Target oasm3 = { "IntelCPUID.s.o" , OBJ_PATH+"/IntelCPUID.s.o" } ;
Rule rasm3 = { {&asm3} , {&oasm3} , {&exeasm3} } ;
Exe exeasm3 = { "AS IntelCPUID.s" , AS , {
  "../../Target/WIN32utf8/CCore/src/./crypton/IntelCPUID.s"
 ,"-o"
 ,OBJ_PATH+"/IntelCPUID.s.o"
} } ;

Target asm4 = { "IntelRandom.s" , "../../Target/WIN32utf8/CCore/src/./crypton/IntelRandom.s" } ;
Target oasm4 = { "IntelRandom.s.o" , OBJ_PATH+"/IntelRandom.s.o" } ;
Rule rasm4 = { {&asm4} , {&oasm4} , {&exeasm4} } ;
Exe exeasm4 = { "AS IntelRandom.s" , AS , {
  "../../Target/WIN32utf8/CCore/src/./crypton/IntelRandom.s"
 ,"-o"
 ,OBJ_PATH+"/IntelRandom.s.o"
} } ;

Target asm5 = { "PlatformBase.s" , "../../Target/WIN32utf8/CCore/src/./base/PlatformBase.s" } ;
Target oasm5 = { "PlatformBase.s.o" , OBJ_PATH+"/PlatformBase.s.o" } ;
Rule rasm5 = { {&asm5} , {&oasm5} , {&exeasm5} } ;
Exe exeasm5 = { "AS PlatformBase.s" , AS , {
  "../../Target/WIN32utf8/CCore/src/./base/PlatformBase.s"
 ,"-o"
 ,OBJ_PATH+"/PlatformBase.s.o"
} } ;

Target asm6 = { "Quick.s" , "../../Target/WIN32utf8/CCore/src/./base/Quick.s" } ;
Target oasm6 = { "Quick.s.o" , OBJ_PATH+"/Quick.s.o" } ;
Rule rasm6 = { {&asm6} , {&oasm6} , {&exeasm6} } ;
Exe exeasm6 = { "AS Quick.s" , AS , {
  "../../Target/WIN32utf8/CCore/src/./base/Quick.s"
 ,"-o"
 ,OBJ_PATH+"/Quick.s.o"
} } ;

Target asm7 = { "SysAtomic.s" , "../../Target/WIN32utf8/CCore/src/./sys/SysAtomic.s" } ;
Target oasm7 = { "SysAtomic.s.o" , OBJ_PATH+"/SysAtomic.s.o" } ;
Rule rasm7 = { {&asm7} , {&oasm7} , {&exeasm7} } ;
Exe exeasm7 = { "AS SysAtomic.s" , AS , {
  "../../Target/WIN32utf8/CCore/src/./sys/SysAtomic.s"
 ,"-o"
 ,OBJ_PATH+"/SysAtomic.s.o"
} } ;

Target asm8 = { "SysTime.s" , "../../Target/WIN32utf8/CCore/src/./sys/SysTime.s" } ;
Target oasm8 = { "SysTime.s.o" , OBJ_PATH+"/SysTime.s.o" } ;
Rule rasm8 = { {&asm8} , {&oasm8} , {&exeasm8} } ;
Exe exeasm8 = { "AS SysTime.s" , AS , {
  "../../Target/WIN32utf8/CCore/src/./sys/SysTime.s"
 ,"-o"
 ,OBJ_PATH+"/SysTime.s.o"
} } ;

Target main = { 'main' , TARGET } ;

Rule rmain = { {
  &ocpp1
 ,&ocpp2
 ,&ocpp3
 ,&ocpp4
 ,&ocpp5
 ,&ocpp6
 ,&ocpp7
 ,&ocpp8
 ,&ocpp9
 ,&ocpp10
 ,&ocpp11
 ,&ocpp12
 ,&ocpp13
 ,&ocpp14
 ,&ocpp15
 ,&ocpp16
 ,&ocpp17
 ,&ocpp18
 ,&ocpp19
 ,&ocpp20
 ,&ocpp21
 ,&ocpp22
 ,&ocpp23
 ,&ocpp24
 ,&ocpp25
 ,&ocpp26
 ,&ocpp27
 ,&ocpp28
 ,&ocpp29
 ,&ocpp30
 ,&ocpp31
 ,&ocpp32
 ,&ocpp33
 ,&ocpp34
 ,&ocpp35
 ,&ocpp36
 ,&ocpp37
 ,&ocpp38
 ,&ocpp39
 ,&ocpp40
 ,&ocpp41
 ,&ocpp42
 ,&ocpp43
 ,&ocpp44
 ,&ocpp45
 ,&ocpp46
 ,&ocpp47
 ,&ocpp48
 ,&ocpp49
 ,&ocpp50
 ,&ocpp51
 ,&ocpp52
 ,&ocpp53
 ,&ocpp54
 ,&ocpp55
 ,&ocpp56
 ,&ocpp57
 ,&ocpp58
 ,&ocpp59
 ,&ocpp60
 ,&ocpp61
 ,&ocpp62
 ,&ocpp63
 ,&ocpp64
 ,&ocpp65
 ,&ocpp66
 ,&ocpp67
 ,&ocpp68
 ,&ocpp69
 ,&ocpp70
 ,&ocpp71
 ,&ocpp72
 ,&ocpp73
 ,&ocpp74
 ,&ocpp75
 ,&ocpp76
 ,&ocpp77
 ,&ocpp78
 ,&ocpp79
 ,&ocpp80
 ,&ocpp81
 ,&ocpp82
 ,&ocpp83
 ,&ocpp84
 ,&ocpp85
 ,&ocpp86
 ,&ocpp87
 ,&ocpp88
 ,&ocpp89
 ,&ocpp90
 ,&ocpp91
 ,&ocpp92
 ,&ocpp93
 ,&ocpp94
 ,&ocpp95
 ,&ocpp96
 ,&ocpp97
 ,&ocpp98
 ,&ocpp99
 ,&ocpp100
 ,&ocpp101
 ,&ocpp102
 ,&ocpp103
 ,&ocpp104
 ,&ocpp105
 ,&ocpp106
 ,&ocpp107
 ,&ocpp108
 ,&ocpp109
 ,&ocpp110
 ,&ocpp111
 ,&ocpp112
 ,&ocpp113
 ,&ocpp114
 ,&ocpp115
 ,&ocpp116
 ,&ocpp117
 ,&ocpp118
 ,&ocpp119
 ,&ocpp120
 ,&ocpp121
 ,&ocpp122
 ,&ocpp123
 ,&ocpp124
 ,&ocpp125
 ,&ocpp126
 ,&ocpp127
 ,&ocpp128
 ,&ocpp129
 ,&ocpp130
 ,&ocpp131
 ,&ocpp132
 ,&ocpp133
 ,&ocpp134
 ,&ocpp135
 ,&ocpp136
 ,&ocpp137
 ,&ocpp138
 ,&ocpp139
 ,&ocpp140
 ,&ocpp141
 ,&ocpp142
 ,&ocpp143
 ,&ocpp144
 ,&ocpp145
 ,&ocpp146
 ,&ocpp147
 ,&ocpp148
 ,&ocpp149
 ,&ocpp150
 ,&ocpp151
 ,&ocpp152
 ,&ocpp153
 ,&ocpp154
 ,&ocpp155
 ,&ocpp156
 ,&ocpp157
 ,&ocpp158
 ,&ocpp159
 ,&ocpp160
 ,&ocpp161
 ,&ocpp162
 ,&ocpp163
 ,&ocpp164
 ,&ocpp165
 ,&ocpp166
 ,&ocpp167
 ,&ocpp168
 ,&ocpp169
 ,&ocpp170
 ,&ocpp171
 ,&ocpp172
 ,&ocpp173
 ,&ocpp174
 ,&ocpp175
 ,&ocpp176
 ,&ocpp177
 ,&ocpp178
 ,&ocpp179
 ,&ocpp180
 ,&ocpp181
 ,&ocpp182
 ,&ocpp183
 ,&ocpp184
 ,&ocpp185
 ,&ocpp186
 ,&ocpp187
 ,&ocpp188
 ,&ocpp189
 ,&ocpp190
 ,&ocpp191
 ,&ocpp192
 ,&ocpp193
 ,&ocpp194
 ,&ocpp195
 ,&ocpp196
 ,&ocpp197
 ,&ocpp198
 ,&ocpp199
 ,&ocpp200
 ,&ocpp201
 ,&ocpp202
 ,&ocpp203
 ,&ocpp204
 ,&ocpp205
 ,&ocpp206
 ,&ocpp207
 ,&ocpp208
 ,&ocpp209
 ,&ocpp210
 ,&ocpp211
 ,&ocpp212
 ,&ocpp213
 ,&ocpp214
 ,&ocpp215
 ,&ocpp216
 ,&ocpp217
 ,&ocpp218
 ,&ocpp219
 ,&ocpp220
 ,&ocpp221
 ,&ocpp222
 ,&ocpp223
 ,&ocpp224
 ,&ocpp225
 ,&ocpp226
 ,&ocpp227
 ,&ocpp228
 ,&ocpp229
 ,&ocpp230
 ,&ocpp231
 ,&ocpp232
 ,&ocpp233
 ,&ocpp234
 ,&ocpp235
 ,&ocpp236
 ,&ocpp237
 ,&ocpp238
 ,&ocpp239
 ,&ocpp240
 ,&ocpp241
 ,&ocpp242
 ,&ocpp243
 ,&ocpp244
 ,&ocpp245
 ,&ocpp246
 ,&ocpp247
 ,&ocpp248
 ,&ocpp249
 ,&ocpp250
 ,&ocpp251
 ,&ocpp252
 ,&ocpp253
 ,&ocpp254
 ,&ocpp255
 ,&ocpp256
 ,&ocpp257
 ,&ocpp258
 ,&ocpp259
 ,&ocpp260
 ,&ocpp261
 ,&ocpp262
 ,&ocpp263
 ,&ocpp264
 ,&ocpp265
 ,&ocpp266
 ,&ocpp267
 ,&ocpp268
 ,&ocpp269
 ,&ocpp270
 ,&ocpp271
 ,&ocpp272
 ,&ocpp273
 ,&ocpp274
 ,&ocpp275
 ,&ocpp276
 ,&ocpp277
 ,&ocpp278
 ,&ocpp279
 ,&ocpp280
 ,&ocpp281
 ,&ocpp282
 ,&ocpp283
 ,&ocpp284
 ,&ocpp285
 ,&ocpp286
 ,&ocpp287
 ,&ocpp288
 ,&ocpp289
 ,&ocpp290
 ,&ocpp291
 ,&ocpp292
 ,&ocpp293
 ,&ocpp294
 ,&ocpp295
 ,&ocpp296
 ,&ocpp297
 ,&ocpp298
 ,&ocpp299
 ,&ocpp300
 ,&ocpp301
 ,&ocpp302
 ,&ocpp303
 ,&ocpp304
 ,&ocpp305
 ,&ocpp306
 ,&ocpp307
 ,&ocpp308
 ,&ocpp309
 ,&ocpp310
 ,&ocpp311
 ,&ocpp312
 ,&ocpp313
 ,&ocpp314
 ,&ocpp315
 ,&ocpp316
 ,&ocpp317
 ,&ocpp318
 ,&ocpp319
 ,&ocpp320
 ,&ocpp321
 ,&ocpp322
 ,&ocpp323
 ,&ocpp324
 ,&ocpp325
 ,&ocpp326
 ,&ocpp327
 ,&ocpp328
 ,&ocpp329
 ,&ocpp330
 ,&ocpp331
 ,&ocpp332
 ,&ocpp333
 ,&ocpp334
 ,&ocpp335
 ,&ocpp336
 ,&ocpp337
 ,&ocpp338
 ,&ocpp339
 ,&ocpp340
 ,&ocpp341
 ,&ocpp342
 ,&ocpp343
 ,&ocpp344
 ,&ocpp345
 ,&ocpp346
 ,&ocpp347
 ,&ocpp348
 ,&ocpp349
 ,&ocpp350
 ,&ocpp351
 ,&ocpp352
 ,&ocpp353
 ,&ocpp354
 ,&ocpp355
 ,&ocpp356
 ,&ocpp357
 ,&ocpp358
 ,&ocpp359
 ,&ocpp360
 ,&ocpp361
 ,&ocpp362
 ,&ocpp363
 ,&ocpp364
 ,&ocpp365
 ,&ocpp366
 ,&ocpp367
 ,&ocpp368
 ,&ocpp369
 ,&ocpp370
 ,&ocpp371
 ,&ocpp372
 ,&ocpp373
 ,&ocpp374
 ,&ocpp375
 ,&ocpp376
 ,&ocpp377
 ,&ocpp378
 ,&ocpp379
 ,&ocpp380
 ,&ocpp381
 ,&ocpp382
 ,&ocpp383
 ,&ocpp384
 ,&ocpp385
 ,&ocpp386
 ,&ocpp387
 ,&ocpp388
 ,&ocpp389
 ,&ocpp390
 ,&ocpp391
 ,&ocpp392
 ,&ocpp393
 ,&ocpp394
 ,&ocpp395
 ,&ocpp396
 ,&ocpp397
 ,&ocpp398
 ,&ocpp399
 ,&ocpp400
 ,&ocpp401
 ,&ocpp402
 ,&ocpp403
 ,&ocpp404
 ,&ocpp405
 ,&ocpp406
 ,&ocpp407
 ,&ocpp408
 ,&ocpp409
 ,&ocpp410
 ,&ocpp411
 ,&ocpp412
 ,&ocpp413
 ,&ocpp414
 ,&ocpp415
 ,&ocpp416
 ,&ocpp417
 ,&ocpp418
 ,&ocpp419
 ,&ocpp420
 ,&ocpp421
 ,&ocpp422
 ,&ocpp423
 ,&ocpp424
 ,&ocpp425
 ,&ocpp426
 ,&ocpp427
 ,&ocpp428
 ,&ocpp429
 ,&ocpp430
 ,&ocpp431
 ,&ocpp432
 ,&ocpp433
 ,&ocpp434
 ,&ocpp435
 ,&ocpp436
 ,&ocpp437
 ,&ocpp438
 ,&ocpp439
 ,&ocpp440
 ,&ocpp441
 ,&ocpp442
 ,&ocpp443
 ,&ocpp444
 ,&ocpp445
 ,&ocpp446
 ,&ocpp447
 ,&ocpp448
 ,&ocpp449
 ,&ocpp450
 ,&ocpp451
 ,&ocpp452
 ,&ocpp453
 ,&ocpp454
 ,&ocpp455
 ,&ocpp456
 ,&ocpp457
 ,&ocpp458
 ,&ocpp459
 ,&ocpp460
 ,&ocpp461
 ,&ocpp462
 ,&ocpp463
 ,&ocpp464
 ,&ocpp465
 ,&ocpp466
 ,&ocpp467
 ,&ocpp468
 ,&ocpp469
 ,&ocpp470
 ,&ocpp471
 ,&ocpp472
 ,&ocpp473
 ,&ocpp474
 ,&ocpp475
 ,&ocpp476
 ,&ocpp477
 ,&ocpp478
 ,&ocpp479
 ,&ocpp480
 ,&ocpp481
 ,&ocpp482
 ,&ocpp483
 ,&ocpp484
 ,&ocpp485
 ,&ocpp486
 ,&oasm1
 ,&oasm2
 ,&oasm3
 ,&oasm4
 ,&oasm5
 ,&oasm6
 ,&oasm7
 ,&oasm8
} , {&main} , {&exemain1,&exemain2} } ;

Cmd exemain1 = { 'RM' , "rm -f \""+TARGET+"\"" } ;

Exe exemain2 = { 'AR '+TARGET , AR , {
  "r"
 ,TARGET
 ,ocpp1.file
 ,ocpp2.file
 ,ocpp3.file
 ,ocpp4.file
 ,ocpp5.file
 ,ocpp6.file
 ,ocpp7.file
 ,ocpp8.file
 ,ocpp9.file
 ,ocpp10.file
 ,ocpp11.file
 ,ocpp12.file
 ,ocpp13.file
 ,ocpp14.file
 ,ocpp15.file
 ,ocpp16.file
 ,ocpp17.file
 ,ocpp18.file
 ,ocpp19.file
 ,ocpp20.file
 ,ocpp21.file
 ,ocpp22.file
 ,ocpp23.file
 ,ocpp24.file
 ,ocpp25.file
 ,ocpp26.file
 ,ocpp27.file
 ,ocpp28.file
 ,ocpp29.file
 ,ocpp30.file
 ,ocpp31.file
 ,ocpp32.file
 ,ocpp33.file
 ,ocpp34.file
 ,ocpp35.file
 ,ocpp36.file
 ,ocpp37.file
 ,ocpp38.file
 ,ocpp39.file
 ,ocpp40.file
 ,ocpp41.file
 ,ocpp42.file
 ,ocpp43.file
 ,ocpp44.file
 ,ocpp45.file
 ,ocpp46.file
 ,ocpp47.file
 ,ocpp48.file
 ,ocpp49.file
 ,ocpp50.file
 ,ocpp51.file
 ,ocpp52.file
 ,ocpp53.file
 ,ocpp54.file
 ,ocpp55.file
 ,ocpp56.file
 ,ocpp57.file
 ,ocpp58.file
 ,ocpp59.file
 ,ocpp60.file
 ,ocpp61.file
 ,ocpp62.file
 ,ocpp63.file
 ,ocpp64.file
 ,ocpp65.file
 ,ocpp66.file
 ,ocpp67.file
 ,ocpp68.file
 ,ocpp69.file
 ,ocpp70.file
 ,ocpp71.file
 ,ocpp72.file
 ,ocpp73.file
 ,ocpp74.file
 ,ocpp75.file
 ,ocpp76.file
 ,ocpp77.file
 ,ocpp78.file
 ,ocpp79.file
 ,ocpp80.file
 ,ocpp81.file
 ,ocpp82.file
 ,ocpp83.file
 ,ocpp84.file
 ,ocpp85.file
 ,ocpp86.file
 ,ocpp87.file
 ,ocpp88.file
 ,ocpp89.file
 ,ocpp90.file
 ,ocpp91.file
 ,ocpp92.file
 ,ocpp93.file
 ,ocpp94.file
 ,ocpp95.file
 ,ocpp96.file
 ,ocpp97.file
 ,ocpp98.file
 ,ocpp99.file
 ,ocpp100.file
 ,ocpp101.file
 ,ocpp102.file
 ,ocpp103.file
 ,ocpp104.file
 ,ocpp105.file
 ,ocpp106.file
 ,ocpp107.file
 ,ocpp108.file
 ,ocpp109.file
 ,ocpp110.file
 ,ocpp111.file
 ,ocpp112.file
 ,ocpp113.file
 ,ocpp114.file
 ,ocpp115.file
 ,ocpp116.file
 ,ocpp117.file
 ,ocpp118.file
 ,ocpp119.file
 ,ocpp120.file
 ,ocpp121.file
 ,ocpp122.file
 ,ocpp123.file
 ,ocpp124.file
 ,ocpp125.file
 ,ocpp126.file
 ,ocpp127.file
 ,ocpp128.file
 ,ocpp129.file
 ,ocpp130.file
 ,ocpp131.file
 ,ocpp132.file
 ,ocpp133.file
 ,ocpp134.file
 ,ocpp135.file
 ,ocpp136.file
 ,ocpp137.file
 ,ocpp138.file
 ,ocpp139.file
 ,ocpp140.file
 ,ocpp141.file
 ,ocpp142.file
 ,ocpp143.file
 ,ocpp144.file
 ,ocpp145.file
 ,ocpp146.file
 ,ocpp147.file
 ,ocpp148.file
 ,ocpp149.file
 ,ocpp150.file
 ,ocpp151.file
 ,ocpp152.file
 ,ocpp153.file
 ,ocpp154.file
 ,ocpp155.file
 ,ocpp156.file
 ,ocpp157.file
 ,ocpp158.file
 ,ocpp159.file
 ,ocpp160.file
 ,ocpp161.file
 ,ocpp162.file
 ,ocpp163.file
 ,ocpp164.file
 ,ocpp165.file
 ,ocpp166.file
 ,ocpp167.file
 ,ocpp168.file
 ,ocpp169.file
 ,ocpp170.file
 ,ocpp171.file
 ,ocpp172.file
 ,ocpp173.file
 ,ocpp174.file
 ,ocpp175.file
 ,ocpp176.file
 ,ocpp177.file
 ,ocpp178.file
 ,ocpp179.file
 ,ocpp180.file
 ,ocpp181.file
 ,ocpp182.file
 ,ocpp183.file
 ,ocpp184.file
 ,ocpp185.file
 ,ocpp186.file
 ,ocpp187.file
 ,ocpp188.file
 ,ocpp189.file
 ,ocpp190.file
 ,ocpp191.file
 ,ocpp192.file
 ,ocpp193.file
 ,ocpp194.file
 ,ocpp195.file
 ,ocpp196.file
 ,ocpp197.file
 ,ocpp198.file
 ,ocpp199.file
 ,ocpp200.file
 ,ocpp201.file
 ,ocpp202.file
 ,ocpp203.file
 ,ocpp204.file
 ,ocpp205.file
 ,ocpp206.file
 ,ocpp207.file
 ,ocpp208.file
 ,ocpp209.file
 ,ocpp210.file
 ,ocpp211.file
 ,ocpp212.file
 ,ocpp213.file
 ,ocpp214.file
 ,ocpp215.file
 ,ocpp216.file
 ,ocpp217.file
 ,ocpp218.file
 ,ocpp219.file
 ,ocpp220.file
 ,ocpp221.file
 ,ocpp222.file
 ,ocpp223.file
 ,ocpp224.file
 ,ocpp225.file
 ,ocpp226.file
 ,ocpp227.file
 ,ocpp228.file
 ,ocpp229.file
 ,ocpp230.file
 ,ocpp231.file
 ,ocpp232.file
 ,ocpp233.file
 ,ocpp234.file
 ,ocpp235.file
 ,ocpp236.file
 ,ocpp237.file
 ,ocpp238.file
 ,ocpp239.file
 ,ocpp240.file
 ,ocpp241.file
 ,ocpp242.file
 ,ocpp243.file
 ,ocpp244.file
 ,ocpp245.file
 ,ocpp246.file
 ,ocpp247.file
 ,ocpp248.file
 ,ocpp249.file
 ,ocpp250.file
 ,ocpp251.file
 ,ocpp252.file
 ,ocpp253.file
 ,ocpp254.file
 ,ocpp255.file
 ,ocpp256.file
 ,ocpp257.file
 ,ocpp258.file
 ,ocpp259.file
 ,ocpp260.file
 ,ocpp261.file
 ,ocpp262.file
 ,ocpp263.file
 ,ocpp264.file
 ,ocpp265.file
 ,ocpp266.file
 ,ocpp267.file
 ,ocpp268.file
 ,ocpp269.file
 ,ocpp270.file
 ,ocpp271.file
 ,ocpp272.file
 ,ocpp273.file
 ,ocpp274.file
 ,ocpp275.file
 ,ocpp276.file
 ,ocpp277.file
 ,ocpp278.file
 ,ocpp279.file
 ,ocpp280.file
 ,ocpp281.file
 ,ocpp282.file
 ,ocpp283.file
 ,ocpp284.file
 ,ocpp285.file
 ,ocpp286.file
 ,ocpp287.file
 ,ocpp288.file
 ,ocpp289.file
 ,ocpp290.file
 ,ocpp291.file
 ,ocpp292.file
 ,ocpp293.file
 ,ocpp294.file
 ,ocpp295.file
 ,ocpp296.file
 ,ocpp297.file
 ,ocpp298.file
 ,ocpp299.file
 ,ocpp300.file
 ,ocpp301.file
 ,ocpp302.file
 ,ocpp303.file
 ,ocpp304.file
 ,ocpp305.file
 ,ocpp306.file
 ,ocpp307.file
 ,ocpp308.file
 ,ocpp309.file
 ,ocpp310.file
 ,ocpp311.file
 ,ocpp312.file
 ,ocpp313.file
 ,ocpp314.file
 ,ocpp315.file
 ,ocpp316.file
 ,ocpp317.file
 ,ocpp318.file
 ,ocpp319.file
 ,ocpp320.file
 ,ocpp321.file
 ,ocpp322.file
 ,ocpp323.file
 ,ocpp324.file
 ,ocpp325.file
 ,ocpp326.file
 ,ocpp327.file
 ,ocpp328.file
 ,ocpp329.file
 ,ocpp330.file
 ,ocpp331.file
 ,ocpp332.file
 ,ocpp333.file
 ,ocpp334.file
 ,ocpp335.file
 ,ocpp336.file
 ,ocpp337.file
 ,ocpp338.file
 ,ocpp339.file
 ,ocpp340.file
 ,ocpp341.file
 ,ocpp342.file
 ,ocpp343.file
 ,ocpp344.file
 ,ocpp345.file
 ,ocpp346.file
 ,ocpp347.file
 ,ocpp348.file
 ,ocpp349.file
 ,ocpp350.file
 ,ocpp351.file
 ,ocpp352.file
 ,ocpp353.file
 ,ocpp354.file
 ,ocpp355.file
 ,ocpp356.file
 ,ocpp357.file
 ,ocpp358.file
 ,ocpp359.file
 ,ocpp360.file
 ,ocpp361.file
 ,ocpp362.file
 ,ocpp363.file
 ,ocpp364.file
 ,ocpp365.file
 ,ocpp366.file
 ,ocpp367.file
 ,ocpp368.file
 ,ocpp369.file
 ,ocpp370.file
 ,ocpp371.file
 ,ocpp372.file
 ,ocpp373.file
 ,ocpp374.file
 ,ocpp375.file
 ,ocpp376.file
 ,ocpp377.file
 ,ocpp378.file
 ,ocpp379.file
 ,ocpp380.file
 ,ocpp381.file
 ,ocpp382.file
 ,ocpp383.file
 ,ocpp384.file
 ,ocpp385.file
 ,ocpp386.file
 ,ocpp387.file
 ,ocpp388.file
 ,ocpp389.file
 ,ocpp390.file
 ,ocpp391.file
 ,ocpp392.file
 ,ocpp393.file
 ,ocpp394.file
 ,ocpp395.file
 ,ocpp396.file
 ,ocpp397.file
 ,ocpp398.file
 ,ocpp399.file
 ,ocpp400.file
 ,ocpp401.file
 ,ocpp402.file
 ,ocpp403.file
 ,ocpp404.file
 ,ocpp405.file
 ,ocpp406.file
 ,ocpp407.file
 ,ocpp408.file
 ,ocpp409.file
 ,ocpp410.file
 ,ocpp411.file
 ,ocpp412.file
 ,ocpp413.file
 ,ocpp414.file
 ,ocpp415.file
 ,ocpp416.file
 ,ocpp417.file
 ,ocpp418.file
 ,ocpp419.file
 ,ocpp420.file
 ,ocpp421.file
 ,ocpp422.file
 ,ocpp423.file
 ,ocpp424.file
 ,ocpp425.file
 ,ocpp426.file
 ,ocpp427.file
 ,ocpp428.file
 ,ocpp429.file
 ,ocpp430.file
 ,ocpp431.file
 ,ocpp432.file
 ,ocpp433.file
 ,ocpp434.file
 ,ocpp435.file
 ,ocpp436.file
 ,ocpp437.file
 ,ocpp438.file
 ,ocpp439.file
 ,ocpp440.file
 ,ocpp441.file
 ,ocpp442.file
 ,ocpp443.file
 ,ocpp444.file
 ,ocpp445.file
 ,ocpp446.file
 ,ocpp447.file
 ,ocpp448.file
 ,ocpp449.file
 ,ocpp450.file
 ,ocpp451.file
 ,ocpp452.file
 ,ocpp453.file
 ,ocpp454.file
 ,ocpp455.file
 ,ocpp456.file
 ,ocpp457.file
 ,ocpp458.file
 ,ocpp459.file
 ,ocpp460.file
 ,ocpp461.file
 ,ocpp462.file
 ,ocpp463.file
 ,ocpp464.file
 ,ocpp465.file
 ,ocpp466.file
 ,ocpp467.file
 ,ocpp468.file
 ,ocpp469.file
 ,ocpp470.file
 ,ocpp471.file
 ,ocpp472.file
 ,ocpp473.file
 ,ocpp474.file
 ,ocpp475.file
 ,ocpp476.file
 ,ocpp477.file
 ,ocpp478.file
 ,ocpp479.file
 ,ocpp480.file
 ,ocpp481.file
 ,ocpp482.file
 ,ocpp483.file
 ,ocpp484.file
 ,ocpp485.file
 ,ocpp486.file
 ,oasm1.file
 ,oasm2.file
 ,oasm3.file
 ,oasm4.file
 ,oasm5.file
 ,oasm6.file
 ,oasm7.file
 ,oasm8.file
} } ;

include <.vmobj/deps.vm.ddl>
