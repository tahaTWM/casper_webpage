@echo off

set /p userName=Enter user Name : 
set /p loaclrepoName=Enter loacl repository Name : 
set /p repoName=Enter repository Name : 

git init

git remote add %loaclrepoName% https://github.com/%userName%/%repoName%

echo git remote add %loaclrepoName% https://github.com/%userName%/%repoName%

git add -A

set /p commit=Enter your commit : 
echo %commit%

git commit -m "%commit%"

echo git push -u %loaclrepoName% main

git branch -M main

git push -u %loaclrepoName% main

pause