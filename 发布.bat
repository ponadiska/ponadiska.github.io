@echo off
cd /d "%~dp0"
git add .
git diff --cached --quiet
if errorlevel 1 (
  echo Committing and pushing...
  git commit -m "update site"
  git push
) else (
  echo Nothing to commit.
)
echo.
echo Done. You can close this window now.
pause
