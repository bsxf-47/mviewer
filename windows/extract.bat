@echo off
set filepath=%1
set pathToScripts=%~dp0..
echo %filepath%
py %pathToScripts%\extract_mview.py %filepath%
set dir=%filepath:~0,-6%
echo %dir%
pause
py %pathToScripts%\extract_model.py %dir%
pause null