@echo off
set /p folder="Enter the full path of your website folder: "
cd /d "%folder%"

echo Initializing Git...
git init

echo Adding files...
git add .

echo Committing...
git commit -m "Initial commit"

set /p repo="Enter your GitHub repository URL (e.g. https://github.com/YourUsername/YourRepo.git): "

git remote add origin %repo%
git branch -M main
git push -u origin main

echo ---------------------------------------
echo ✅ Upload Complete!
echo You can check your repository online.
pause
