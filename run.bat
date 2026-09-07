@echo off
setlocal enabledelayedexpansion
title Smart Navigation Portal Server

cd /d "%~dp0"

echo =========================================================
echo   Smart Navigation Portal (小智 AI 应用导航)
echo =========================================================
echo.

set PORT=8890

:: Extract Physical LAN IPv4 (Exclude Virtual/VPN/WSL/Meta interfaces)
for /f "usebackq tokens=*" %%i in (`powershell -NoProfile -Command "(Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -notmatch 'vEthernet|Virtual|VMware|WSL|Loopback|Tailscale|ZeroTier|Meta|Clash' -and $_.IPAddress -match '^(192\.168\.|10\.|172\.(1[6-9]|2[0-9]|3[0-1])\.)' } | Select-Object -ExpandProperty IPAddress -First 1)"`) do (
    set "INTRANET_IP=%%i"
)

if "%INTRANET_IP%"=="" set "INTRANET_IP=127.0.0.1"

echo [Local Access]    : http://127.0.0.1:%PORT%/index.html
echo [Intranet Access] : http://%INTRANET_IP%:%PORT%/index.html
echo.
echo [Feature] Hot-Reload enabled: File changes take effect immediately on browser refresh.
echo [Info] Server is running. Press Ctrl+C to stop.
echo.

start "" "http://127.0.0.1:%PORT%/index.html"

python -m http.server %PORT%

if %ERRORLEVEL% NEQ 0 (
    echo [Error] Failed to start server on port %PORT%.
    pause
)
