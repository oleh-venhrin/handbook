@echo off
echo ===================================================
echo   Публікація довідника на GitHub Pages
echo ===================================================
"C:\Users\23059\.venvs\handbook\Scripts\mkdocs.exe" gh-deploy --force
echo.
echo Публікацію завершено!
pause
