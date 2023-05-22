:: =========
:: server_uptime_checker designed for Windows 7 & 10 machines
:: Simple batch script to determine if your server is connected to the network/internet
:: =========
:: Usage:
:: =========
:: 1, Download file
:: 2, Add IP address (example: 8.8.8.8)
:: If red = server offline
:: If green= server online
:: System also shows byte size, log time and TTL
:: #4lch3my
:: =========

echo off & cls
set /p IP=Enter your IP Address :
:top
PING  -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET OUT=4F  & echo Request timed out.) ELSE (SET OUT=2F)
color %OUT%
ping -n 2 -l 10 127.0.0.1 >nul
GoTo top
