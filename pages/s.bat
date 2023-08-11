@echo off
setlocal enabledelayedexpansion

set "start_num=1"
set "end_num=100"
set "cero=0"

for /L %%i in (%start_num%,1,%end_num%) do (
    set "num=%%i"
    set /a "cero+=1"
    set "padded_num=%%i"
    @REM if !cero! lss 10 set "cero=000!cero!"
    @REM if !cero! geq 10 if !cero! lss 100 set "cero=00!cero!"

    if %%i lss 10 set "padded_num=00%%i"
    if %%i geq 10 if %%i lss 100 set "padded_num=0%%i"
    ren "!num!-thumb.jpg" "!num!-large.jpg"
    @echo "!num!.jpg"
) 
pause 
