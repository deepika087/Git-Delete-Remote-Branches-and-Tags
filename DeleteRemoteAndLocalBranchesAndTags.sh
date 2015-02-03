cd /
cd \\Users\\danand\\workspace\\XYZFolder\\XYZCodeBase
git branch 
git tag
git tag | awk -F/  '/release_/ {print $1}' |  xargs -I {} git push origin :refs/tags/{}
git tag | awk -F/  '/release_/ {print $1}' |  xargs git tag -d
git branch -r | awk -F/ '/release_/{print $2}' | xargs -I {} git push origin :{} 
git branch | awk -F/ '/release_/{print $2}' | xargs -I {} git branch -D  origin/{}
git branch | awk -F/ '/release_/{print $1}' | xargs -I {} git branch -D  {}
git remote prune origin
git prune
git branch
git tag