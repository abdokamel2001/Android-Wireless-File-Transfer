@echo off
echo.
echo Make sure the file is in /Download
echo.
set /p name= Enter file name : 
echo.
set /p ip= The IP is 
@echo on
adb connect %ip%
adb pull /storage/emulated/0/Download/%name% "%USERPROFILE%\Desktop"
@echo off
echo.
adb disconnect
pause