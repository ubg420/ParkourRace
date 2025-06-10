set GITHUB_ID=ubg420
set REPO_TYPE=public

dir /ad /b

set tamp=ParkourRace
cd %tamp%
echo %cd%
echo %tamp%
git init
gh repo create %tamp% --%REPO_TYPE% -y
set REPO_URL=https://github.com/%GITHUB_ID%/%tamp%.git
git remote add origin %REPO_URL%
git pull origin main
git add .
git commit -m "1"
git push -u origin HEAD:main
cd..