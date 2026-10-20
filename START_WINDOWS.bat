@echo off
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js ornatylmagan. nodejs.org saytinan Node.js LTS ornatynyz.
  pause
  exit /b 1
)
if not exist node_modules call npm install
call npm run dev -- --host 127.0.0.1
pause
