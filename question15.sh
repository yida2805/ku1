git clone https://github.com/ian-knight-uofa/git-practice-01.git
git checkout main
git merge branch1
if [ $? -ne 0 ]; then echo "Merge conflict detected, please resolve manually."; fi
