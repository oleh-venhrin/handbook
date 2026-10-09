@echo off
chcp 65001 > nul
echo ===================================================
echo   Запуск перегляду довідника (Astro Starlight)
echo   Відкрийте у браузері: http://localhost:4321/handbook/
echo   Для зупинки натисніть Ctrl+C
echo ===================================================
call npm run dev
pause
