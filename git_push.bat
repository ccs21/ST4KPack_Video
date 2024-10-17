git add .
git commit -m "20241018"
step_commits=$(git log --oneline --reverse refs/heads/main | awk 'NR % 1000 == 0')
echo "$step_commits" | while read commit message; do git push origin +$commit:refs/heads/main; done