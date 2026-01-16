@echo off
echo Resetting Mock Data...
echo This will open the admin page with a reset trigger.
start "" "http://localhost:5173/?reset=true"
