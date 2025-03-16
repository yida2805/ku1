git clone https://github.com/ian-knight-uofa/git-practice-04.git
git branch -r
for branch in $(git branch -r | grep "ready"); do
  git checkout main
  git merge "$branch"
done
git push origin main
for branch in $(git branch -r | grep "update"); do
  git checkout "$branch"
  git merge main
  git push origin "$branch"
done
