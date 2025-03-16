git clone https://github.com/ian-knight-uofa/git-practice-02.git
git checkout branch2
git merge branch3
if [ $? -ne 0 ]; then echo "Merge conflict detected, please resolve manually."; fi
git branch -d branch3
