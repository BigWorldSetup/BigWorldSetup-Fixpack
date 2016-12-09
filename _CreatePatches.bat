:: Run this in the same folder as _CreatePatches.tp2 and WeiDU.exe (not included) - usually your game folder, but could be elsewhere
SETLOCAL
cd /d %~dp0
weidu --nogame --log _CreatePatches.debug _CreatePatches.tp2
