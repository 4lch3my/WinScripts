:: ========
:: Simple server uptime checker combined with an auto uploader for multiple nodes.
:: Designed for dashboards and other data displaying systems with a instant feedback for uploads in a ServiceDesk environment.
:: ========
:: To get started change the FROM_LOCATION and TO_LOCATION to what ever you want. Then run as an Administrator!
:: ========

echo off & cls
:top
PING  -n 1 "" | FIND "TTL="
IF ERRORLEVEL 1 (SET OUT=4F  & echo Request timed out.) ELSE (SET OUT=2F)
color %OUT%
ping -n 2 -l 10 127.0.0.1 >nul
echo File Upload Started...
xcopy  /Y "FROM_LOCATION" "TO_LOCATION" 
echo File Upload Completed!
timeout 60
GoTo top
