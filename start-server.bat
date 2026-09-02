@echo off
title VELOUR E-Commerce Local Server
echo ======================================================
echo   Starting VELOUR E-Commerce Store on localhost:3000
echo ======================================================

REM Check if Antigravity bundled node exists
if exist "C:\Users\Avinash Mule\AppData\Roaming\Antigravity\bin\agy-node.cmd" (
    start http://localhost:3000
    "C:\Users\Avinash Mule\AppData\Roaming\Antigravity\bin\agy-node.cmd" "%~dp0server.cjs"
) else (
    REM Fallback to system node
    start http://localhost:3000
    node "%~dp0server.cjs"
)

pause
