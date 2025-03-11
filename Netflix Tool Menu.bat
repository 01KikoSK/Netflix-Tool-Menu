@echo off
:: Netflix Tool - Advanced Batch Script

:menu
cls
echo ================================
echo        Netflix Tool Menu
echo ================================
echo 1. Open Netflix in Default Browser
echo 2. Open Netflix in Google Chrome (Fullscreen)
echo 3. Close Netflix App (Windows Store Version)
echo 4. Exit
echo ================================
set /p choice="Enter your choice (1-4): "

if "%choice%"=="1" goto open_default
if "%choice%"=="2" goto open_chrome
if "%choice%"=="3" goto close_app
if "%choice%"=="4" exit
goto menu

:open_default
start https://www.netflix.com
echo Netflix opened in your default browser.
pause
goto menu

:open_chrome
:: Adjust the path to Chrome if necessary
set CHROME_PATH="C:\Program Files\Google\Chrome\Application\chrome.exe"
start %CHROME_PATH% --start-fullscreen --app=https://www.netflix.com
echo Netflix opened in Google Chrome (Fullscreen).
pause
goto menu

:close_app
:: Close the Netflix app (Windows Store version)
taskkill /f /im wwahost.exe
echo Netflix app closed.
pause
goto menu
