text OBJ_PATH = ".obj" ;

text CC = "D:/cygwin/opt/gcc-9.1.0/bin/g++-9.1.0" ;

text AS = "as" ;

text LD = "D:/cygwin/opt/gcc-9.1.0/bin/g++-9.1.0" ;

text AR = "ar" ;

text TARGET = "D:/active/home/bin/CCore-VMakeList.exe" ;

Target cpp1 = { "Engine.cpp" , "src/Engine.cpp" } ;
Target ocpp1 = { "Engine.o" , OBJ_PATH+"/Engine.o" } ;
Rule rcpp1 = { {&cpp1} , {&ocpp1} , {&intdep1,&execpp1} } ;
Exe execpp1 = { "CC Engine.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I../../Target/WIN32utf8"
 ,"-I../../HCore"
 ,"-I../../Simple"
 ,"-I../../Fundamental"
 ,"-I../../Applied"
 ,"-I../../Desktop/Core"
 ,"-I../../Desktop/Draw"
 ,"-I../../Desktop/Font"
 ,"-I../../Desktop/Lib"
 ,"-I../../Desktop/Tools"
 ,"-I../../Desktop/App"
 ,"-I."
 ,"src/Engine.cpp"
 ,"-o"
 ,OBJ_PATH+"/Engine.o"
} } ;

IntCmd intdep1 = { 'RM DEP' , &rmdep1 } ;

Rm rmdep1 = { { OBJ_PATH+"/Engine.dep" } } ;

Target cpp2 = { "VMakeList.cpp" , "src/VMakeList.cpp" } ;
Target ocpp2 = { "VMakeList.o" , OBJ_PATH+"/VMakeList.o" } ;
Rule rcpp2 = { {&cpp2} , {&ocpp2} , {&intdep2,&execpp2} } ;
Exe execpp2 = { "CC VMakeList.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I../../Target/WIN32utf8"
 ,"-I../../HCore"
 ,"-I../../Simple"
 ,"-I../../Fundamental"
 ,"-I../../Applied"
 ,"-I../../Desktop/Core"
 ,"-I../../Desktop/Draw"
 ,"-I../../Desktop/Font"
 ,"-I../../Desktop/Lib"
 ,"-I../../Desktop/Tools"
 ,"-I../../Desktop/App"
 ,"-I."
 ,"src/VMakeList.cpp"
 ,"-o"
 ,OBJ_PATH+"/VMakeList.o"
} } ;

IntCmd intdep2 = { 'RM DEP' , &rmdep2 } ;

Rm rmdep2 = { { OBJ_PATH+"/VMakeList.dep" } } ;

Target cpp3 = { "main.cpp" , "src/main.cpp" } ;
Target ocpp3 = { "main.o" , OBJ_PATH+"/main.o" } ;
Rule rcpp3 = { {&cpp3} , {&ocpp3} , {&intdep3,&execpp3} } ;
Exe execpp3 = { "CC main.cpp" , CC , {
  "-c"
 ,"-std=c++17"
 ,"-fconcepts"
 ,"-fwrapv"
 ,"-O3"
 ,"-march=ivybridge"
 ,"-mmmx"
 ,"-msse"
 ,"-msse2"
 ,"-Wall"
 ,"-Wextra"
 ,"-Wno-non-virtual-dtor"
 ,"-Wno-switch"
 ,"-Wno-type-limits"
 ,"-Wno-enum-compare"
 ,"-Wno-missing-field-initializers"
 ,"-Wno-delete-non-virtual-dtor"
 ,"-Wno-misleading-indentation"
 ,"-I../../Target/WIN32utf8"
 ,"-I../../HCore"
 ,"-I../../Simple"
 ,"-I../../Fundamental"
 ,"-I../../Applied"
 ,"-I../../Desktop/Core"
 ,"-I../../Desktop/Draw"
 ,"-I../../Desktop/Font"
 ,"-I../../Desktop/Lib"
 ,"-I../../Desktop/Tools"
 ,"-I../../Desktop/App"
 ,"-I."
 ,"src/main.cpp"
 ,"-o"
 ,OBJ_PATH+"/main.o"
} } ;

IntCmd intdep3 = { 'RM DEP' , &rmdep3 } ;

Rm rmdep3 = { { OBJ_PATH+"/main.dep" } } ;

text ARGS = '@'+OBJ_PATH+'/target.args' ;

IntCmd intargs = { 'ARGS' , &echoargs } ;

Echo echoargs = { { 
 '"'+ocpp1.file+"\"\n"
,'"'+ocpp2.file+"\"\n"
,'"'+ocpp3.file+"\"\n" } , OBJ_PATH+'/target.args' } ;

Target main = { 'main' , TARGET } ;

Rule rmain = { { core_ptr 
,&ocpp1
,&ocpp2
,&ocpp3 } , {&main} , {&intargs,&exemain} } ;

Exe exemain = { 'LD '+TARGET , LD , {
  ARGS
 ,"-Wl,-s"
 ,"../../Target/WIN32utf8/CCore.a"
 ,"-lws2_32"
 ,"-lgmp"
 ,"-lgdi32"
 ,"-lfreetype"
 ,"-o"
 ,TARGET
} } ;

Target core = { 'CCore' , "../../Target/WIN32utf8/CCore.a" } ;

Target *core_ptr = &core ;

include <.obj/deps.vm.ddl>
