@echo off
setlocal

echo ==============================
echo  Restore AutoHotkey & Keyboard
echo ==============================
echo.

REM --- 1. Stop running kana_to_jp.ahk scripts ---
echo Stopping running AutoHotkey scripts...
taskkill /IM AutoHotkey.exe /F >nul 2>&1
taskkill /IM "AutoHotkey Unicode 64-bit.exe" /F >nul 2>&1
echo All running AHK scripts stopped.
echo.

REM --- 2. Remove startup script ---
set STARTUP_SCRIPT="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\kana_to_jp.ahk"

if exist %STARTUP_SCRIPT% (
    del %STARTUP_SCRIPT%
    echo Startup script removed.
) else (
    echo No startup script found.
)
echo.

REM --- 3. Prompt user to log off / restart ---
echo To fully restore your keyboard settings, please log off or restart Windows.
echo ==============================
pause
