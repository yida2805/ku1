git clone https://github.com/ian-knight-uofa/git-practice-04.git
echo "Fetching all branches..."
git fetch --all
git branch -r
echo "Merging all branches starting with ready into main..."
for branch in $(git branch -r | grep "ready" | sed "s/origin\///"); do
  git checkout main
  git merge --no-ff $branch -m "Merged $branch into main"
  if [ $? -ne 0 ]; then
    echo "Merge conflict detected, please resolve manually."
  fi
done
echo "Deleting merged ready branches..."
for branch in $(git branch -r | grep "ready" | sed "s/origin\///"); do
  git branch -d $branch
  git push origin --delete $branch
done
echo "Updating update branches with latest main changes..."
for branch in $(git branch -r | grep "update" | sed "s/origin\///"); do
  git checkout $branch
  git merge main -m "Updated $branch with latest main changes"
  git push origin $branch
done
