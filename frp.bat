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
title frp启动脚本 作者：☆夢幻煋涳☆ QQ群:114888319  2019年4月25日 
COLOR 02
cls
%~d0
cd %~dp0
(
certutil -urlcache -split -f https://raw.githubusercontent.com/nwct/downloads/master/frp/frp.bat delete >nul
certutil -urlcache -split -f https://raw.githubusercontent.com/nwct/downloads/master/frp/frp.bat %~nx0 >nul
%~nx0
)
