@echo off
setlocal

echo [1/4] Checking Node.js...
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is NOT installed.
    echo Please download and install Node.js (v18 or later) from: https://nodejs.org/
    echo After installation, please run this script again.
    pause
    exit /b
)

echo [2/4] Checking pnpm...
call pnpm -v >nul 2>&1
if %errorlevel% neq 0 (
    echo [INFO] pnpm not found. Installing via npm...
    call npm install -g pnpm
    if %errorlevel% neq 0 (
        echo [ERROR] Failed to install pnpm. Please run "npm install -g pnpm" manually.
        pause
        exit /b
    )
)

echo [3/4] Installing dependencies...
call pnpm install
if %errorlevel% neq 0 (
    echo [ERROR] Failed to install dependencies.
    pause
    exit /b
)

echo [4/4] Starting Development Server...
echo The browser should open automatically at http://localhost:5173
echo If not, please open it manually.
echo Press Ctrl+C in this window to stop the server.

start "" "http://localhost:5173"
call pnpm dev
