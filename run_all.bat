@echo off
title AI Resume Analyzer & Job Recommendation System
echo ========================================================
echo   Launching AI Resume Analyzer Backend and Frontend
echo ========================================================
cd /d "%~dp0"

echo Starting Backend Server on http://localhost:5000...
start "AI Resume - Backend" cmd /c "run_backend.bat"

timeout /t 3 /nobreak >nul

echo Starting Frontend Dev Server on http://localhost:5173...
start "AI Resume - Frontend" cmd /c "run_frontend.bat"

echo.
echo Both servers have been launched in separate terminal windows!
echo Backend:  http://localhost:5000
echo Frontend: http://localhost:5173
echo.
timeout /t 5
