#echo off
REM http://waneck.github.io/wwx-unity3d-haxe/
if not exist libs mkdir libs

set unihx=%haxepath%\lib\unihx\git\lib
xcopy /s %unihx%\UnityEngine.dll  libs\
xcopy /s %unihx%\UnityEditor.dll  libs\
haxe build.hxml
pause