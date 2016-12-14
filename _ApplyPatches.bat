:: Run this in the same directory as _ApplyPatches.tp2 and WeiDU.exe and the BiG World Fixpack folder - usually your game folder, but could be elsewhere

@echo off
SETLOCAL
cd /d %~dp0

SET helpmsg=This .bat file, the latest WeiDU.exe (included with this Fixpack or available from www.weidu.org/~thebigg/weidu.exe), the _ApplyPatches.tp2 file and the BiG World Fixpack folder must be placed in the same directory (usually that would be your game directory, although it does not have to be), before running this script.
SET helpmsg2=The unpacked mod folders that you want to patch (along with any tp2 files in the mod package that were not inside the mod folder itself, such as a setup-modname.tp2 file) must be placed in that same directory also, before running this script.
SET helpmsg3=Note that you can use a free tool like 7zip (http://www.7-zip.org/download.html) or any similar utility to unpack mods that are distributed in exe format (they are really just zip files wrapped in a self-extracting install script, so tools like 7zip can unpack them just like zip files).

IF NOT EXIST "weidu.exe" echo.
IF NOT EXIST "weidu.exe" echo %helpmsg%
IF NOT EXIST "weidu.exe" echo.
IF NOT EXIST "weidu.exe" echo %helpmsg2%
IF NOT EXIST "weidu.exe" echo.
IF NOT EXIST "weidu.exe" echo %helpmsg3%
IF NOT EXIST "weidu.exe" echo.
IF NOT EXIST "weidu.exe" pause

IF NOT EXIST "_ApplyPatches.tp2" echo.
IF NOT EXIST "_ApplyPatches.tp2" echo %helpmsg%
IF NOT EXIST "_ApplyPatches.tp2" echo.
IF NOT EXIST "_ApplyPatches.tp2" echo %helpmsg2%
IF NOT EXIST "_ApplyPatches.tp2" echo.
IF NOT EXIST "_ApplyPatches.tp2" echo %helpmsg3%
IF NOT EXIST "_ApplyPatches.tp2" echo.
IF NOT EXIST "_ApplyPatches.tp2" pause

IF NOT EXIST "BiG World Fixpack" IF NOT EXIST "BiG_World_Fixpack" echo.
IF NOT EXIST "BiG World Fixpack" IF NOT EXIST "BiG_World_Fixpack" echo %helpmsg%
IF NOT EXIST "BiG World Fixpack" IF NOT EXIST "BiG_World_Fixpack" echo.
IF NOT EXIST "BiG World Fixpack" IF NOT EXIST "BiG_World_Fixpack" echo %helpmsg2%
IF NOT EXIST "BiG World Fixpack" IF NOT EXIST "BiG_World_Fixpack" echo.
IF NOT EXIST "BiG World Fixpack" IF NOT EXIST "BiG_World_Fixpack" echo %helpmsg3%
IF NOT EXIST "BiG World Fixpack" IF NOT EXIST "BiG_World_Fixpack" echo.
IF NOT EXIST "BiG World Fixpack" IF NOT EXIST "BiG_World_Fixpack" pause

weidu --nogame --no-exit-pause --logapp --log _ApplyPatches.debug _ApplyPatches.tp2

IF NOT EXIST "BiG World Installpack\BiG World Smoothpack" pause
