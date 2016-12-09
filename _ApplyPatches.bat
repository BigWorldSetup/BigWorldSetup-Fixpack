:: Run this in the same folder as _ApplyPatches.tp2 and WeiDU.exe (not included) - usually your game folder, but could be elsewhere
SETLOCAL
cd /d %~dp0
weidu --nogame --no-exit-pause --logapp --log _ApplyPatches.debug _ApplyPatches.tp2
