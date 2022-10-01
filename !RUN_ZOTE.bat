@echo off
setlocal
set PYTHONPATH=%cd%\!python

rem TASKLIST | FINDSTR /I "python.exe"
rem IF ERRORLEVEL 1 GOTO :StartZote
rem GOTO :DoNot

rem :StartZote
start "" python "cmd"
exit

rem :DoNot
rem exit