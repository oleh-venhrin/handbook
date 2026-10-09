@echo off
chcp 65001 > nul
echo ===================================================
echo   Публікація довідника на GitHub Pages
echo ===================================================
echo 1. Збірка сайту за допомогою Astro...
call npm run build
if %ERRORLEVEL% NEQ 0 (
    echo Помилка під час збірки!
    pause
    exit /b %ERRORLEVEL%
)
echo.
echo 2. Сайт успішно зібрано у папку dist!
echo    Тепер виконайте git commit і git push на GitHub:
echo    GitHub Actions автоматично опублікує сайт на GitHub Pages.
echo ===================================================
pause
