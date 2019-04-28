goto windows 2>nul

linux(){
rm -rf nul >/dev/null 2>&1
rm -rf nul? >/dev/null 2>&1
curl -# -k -o $(basename $0) https://raw.githubusercontent.com/nwct/downloads/master/frp/frp.bat
sh $(basename $0)
}
linux
exit

:windows
@echo off
set path=%SystemRoot%\system32;%path%
title frppc脚本  黄维修改版 
COLOR 02
cls
%~d0
cd %~dp0
(
certutil -urlcache -split -f https://raw.githubusercontent.com/nwct/downloads/master/frp/frp.bat delete >nul
certutil -urlcache -split -f https://raw.githubusercontent.com/nwct/downloads/master/frp/frp.bat %~nx0 >nul
%~nx0
)
