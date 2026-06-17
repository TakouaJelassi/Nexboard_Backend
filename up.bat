@echo off
git pull
git add .
git commit -m "%*"
git push

echo.
echo --------------------------------------------------
echo Deployment gestartet!
echo Pruefe den Deploy-Status in deinem Render-Dashboard.
echo --------------------------------------------------
echo.
pause
