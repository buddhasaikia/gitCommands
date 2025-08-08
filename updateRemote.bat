@echo off
REM Script to update remote repository with README changes

git add .
git commit -m "Updated README.md"
git push

echo "Repository updated successfully!"
pause
