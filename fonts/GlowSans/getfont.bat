@echo off
setlocal enabledelayedexpansion

set index=1

:loop
set url=https://gcore.jsdelivr.net/gh/CeriseBouquet/static@master/fonts/GlowSans/GlowSansSC-Normal-Heavy_diff.%index%.woff2
echo Checking !url!

curl -f -O !url!
if %errorlevel% neq 0 (
    echo File not found, stopping.
    goto end
)

set /a index+=1
goto loop

:end
echo Done.
