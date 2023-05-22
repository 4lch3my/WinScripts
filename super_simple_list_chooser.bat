:: readme
:: Super Simple List Chooser

:: Super simple list chooser for Windows 7/10/11 with CMD. 
:: Light, easy to use and simple to modify.
:: Hook it up to AHK.exe for an even better experience ;)

@echo off

title List chooser

:begin  

echo -
echo -
echo Write "CommandX" to start apps (X is number Command1 etc):
echo ===============================================
echo -----------------------------------------------
echo 	[0m1)[0m 	[36mCommand1[0m
echo 	[0m2)[0m 	[36mCommand2[
echo 	[0m3)[0m	[36mCommand3

echo  [0m----------------------------------------------[0m
echo	 ==============================================
set /p op=Type option:
if "%op%"=="Command1" goto c1
if "%op%"=="Command2" goto c2
if "%op%"=="Command3" goto c3

echo Please Pick an option:
goto :begin

:c1

echo I am command one - Add here the command what you wan to run
goto :complete

:c2

echo I am command two - Add here the command what you wan to run
goto :complete

:c3

echo I am command three - Add here the command what you wan to run
goto :complete

:complete

echo ===============================================
echo Command was run successfully! Returning to start
echo ===============================================
goto :begin
