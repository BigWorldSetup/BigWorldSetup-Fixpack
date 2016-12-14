:: Run this in the same directory as _CreatePatches.tp2 and WeiDU.exe and the BiG World Fixpack folder - usually your game folder, but could be elsewhere

@echo off
SETLOCAL
cd /d %~dp0

SET helpmsg=This .bat file, the latest WeiDU.exe (included with this Fixpack or available from www.weidu.org/~thebigg/weidu.exe) and the _CreatePatches.tp2 file must be placed in the same directory (usually that would be your game directory, although it does not have to be), before running this script.
SET helpmsg2=The mod folders for which you want to generate patches (along with any tp2 files in the mod package that were not inside the mod folder itself, such as a setup-modname.tp2 file) must be placed in that same directory also, before running this script.  Original (pre-patch) copies of those same mods must be placed in a new folder named _ORIGINALS.  This script will compare the mod files in subfolders of the local directory to the mod files in subfolders of the _ORIGINALS directory and produce patches reflecting any differences.
SET helpmsg3=This script is primarily for contributors to the BiG World Fixpack, so if your goal is to apply existing Fixpack patches rather than to create new patches of your own, please use the other script (_ApplyPatches) instead of this one.

IF NOT EXIST "weidu.exe" echo.
IF NOT EXIST "weidu.exe" echo %helpmsg%
IF NOT EXIST "weidu.exe" echo.
IF NOT EXIST "weidu.exe" echo %helpmsg2%
IF NOT EXIST "weidu.exe" echo.
IF NOT EXIST "weidu.exe" echo %helpmsg3%
IF NOT EXIST "weidu.exe" echo.
IF NOT EXIST "weidu.exe" pause

IF NOT EXIST "_CreatePatches.tp2" echo.
IF NOT EXIST "_CreatePatches.tp2" echo %helpmsg%
IF NOT EXIST "_CreatePatches.tp2" echo.
IF NOT EXIST "_CreatePatches.tp2" echo %helpmsg2%
IF NOT EXIST "_CreatePatches.tp2" echo.
IF NOT EXIST "_CreatePatches.tp2" echo %helpmsg3%
IF NOT EXIST "_CreatePatches.tp2" echo.
IF NOT EXIST "_CreatePatches.tp2" pause

IF NOT EXIST "_ORIGINALS" echo.
IF NOT EXIST "_ORIGINALS" echo %helpmsg%
IF NOT EXIST "_ORIGINALS" echo.
IF NOT EXIST "_ORIGINALS" echo %helpmsg2%
IF NOT EXIST "_ORIGINALS" echo.
IF NOT EXIST "_ORIGINALS" echo %helpmsg3%
IF NOT EXIST "_ORIGINALS" echo.
IF NOT EXIST "_ORIGINALS" pause

weidu --nogame --no-exit-pause --logapp --log _CreatePatches.debug _CreatePatches.tp2

IF NOT EXIST "BiG World Installpack\BiG World Smoothpack" pause
