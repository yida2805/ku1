git checkout -b branch2
touch file4
git add file4
git commit -m "Added file4"
echo "Modifying file4..." >> file4
git checkout main
