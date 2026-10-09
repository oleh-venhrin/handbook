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
echo 2. Публікація на GitHub Pages...
call npx --yes gh-pages -d dist --dotfiles -m "Deploy Astro handbook to GitHub Pages"
if %ERRORLEVEL% NEQ 0 (
    echo Помилка під час публікації на GitHub Pages!
    pause
    exit /b %ERRORLEVEL%
)

echo.
echo ===================================================
echo   Сайт успішно опубліковано на GitHub Pages!
echo   https://oleh-venhrin.github.io/handbook/
echo ===================================================
pause
