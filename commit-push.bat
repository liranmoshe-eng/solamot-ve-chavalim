@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo ====================================
echo   Git Commit ^& Push
echo ====================================
echo.

git add -A

set /p MSG="Commit message (Enter for default): "
if "%MSG%"=="" set MSG=Update game

git commit -m "%MSG%"

echo.
echo Pushing to GitHub...
git push

echo.
echo ====================================
echo   Done!
echo ====================================
pause
