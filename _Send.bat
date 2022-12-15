@echo off
echo.
echo Make sure to Drag and Drop the file here first
echo.
set /p ip= The IP is 
@echo on 
adb connect %ip%
adb push %1 /storage/emulated/0/Download
@echo off
echo.
adb disconnect
pause