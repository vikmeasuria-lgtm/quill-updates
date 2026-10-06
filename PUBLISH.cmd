@echo off
rem Publishes the prepared Quill release (installer + signed latest.json) to github.com/vikmeasuria-lgtm/quill-updates.
rem Double-click after publish-installer.ps1 has prepared a release here. Takes a minute or so.
cd /d "%~dp0"
git push -u origin main
if errorlevel 1 (echo. & echo Upload failed - see the message above. & pause & exit /b 1)
echo.
echo Done. Quill updates are live: installed copies pick this up next time they open.
pause
