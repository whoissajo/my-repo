@echo off
:: Generate a random commit message
for /f "tokens=2 delims==" %%A in ('"wmic os get localdatetime /value"') do set datetime=%%A
set commit_message=Auto commit: %datetime:~0,14%

:: Git commands
git add .
git commit -m "%commit_message%"
git push --force origin main