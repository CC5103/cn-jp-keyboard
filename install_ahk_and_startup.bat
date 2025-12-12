@echo off
setlocal

echo ==============================
echo  AutoHotkey v2.0 Installer
echo ==============================
echo.

REM --- 1. Download AutoHotkey v2.0 ---
set AHK_URL=https://www.autohotkey.com/download/ahk-v2.exe
set AHK_EXE=%TEMP%\ahk-v2.exe

echo Downloading AutoHotkey v2.0...
curl -L %AHK_URL% -o "%AHK_EXE%"
if not exist "%AHK_EXE%" (
    echo Failed to download AutoHotkey installer.
    pause
    exit /b
)

echo Download complete.
echo.

REM --- 2. Silent install ---
echo Installing AutoHotkey v2.0 silently...
"%AHK_EXE%" /silent
echo Installation complete.
echo.

REM --- 3. Copy kana_to_jp.ahk to Startup ---
set SRC=%~dp0kana_to_jp.ahk
set DEST="%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\kana_to_jp.ahk"

if not exist "%SRC%" (
    echo ERROR: kana_to_jp.ahk was not found in the current folder. Please ensure it is present.
    pause
    exit /b
)

echo Copying kana_to_jp.ahk to Startup folder...
copy "%SRC%" %DEST% /Y >nul

echo Startup script installed.
echo.

echo Removing installer...
del "%AHK_EXE%"
echo AutoHotkey v2.0 Installer removed.
echo.

echo ==============================
echo  All steps completed!
echo  - AutoHotkey v2 installed
echo  - kana_to_jp.ahk added to Startup
echo Please restart your computer to apply changes
echo ==============================
echo.
pause
