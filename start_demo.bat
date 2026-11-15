@echo off

cd /d "%~dp0"

echo Uranus demo server starting at http://127.0.0.1:8000/mission_health_simulator.html

echo Close this window to stop the server.

py -3 -m http.server --bind 127.0.0.1 8000

if errorlevel 1 (

  echo Python 3 launcher was not found. Install Python 3 or run: python -m http.server --bind 127.0.0.1 8000

  pause

)

