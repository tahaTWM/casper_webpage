@echo off

set /p loaclName=Enter your local repository Name : 

set /p repoLink=Enter you repository Name : 
git init
git remote add %loaclName% https://github.com/tahaTWM/%repoLink%
git add -A
set /p repoCommit=Enter your repo commant : 
git commit -m "%repoCommit%"
git push -u %repoName% main
pause