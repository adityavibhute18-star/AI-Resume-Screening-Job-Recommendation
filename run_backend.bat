@echo off
title AI Resume Analyzer - Backend
echo ==============================================
echo   Starting AI Resume Analyzer Backend API
echo ==============================================
cd /d "%~dp0"
call .venv\Scripts\activate.bat
python run.py
pause
