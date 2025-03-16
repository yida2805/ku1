git checkout -b branch1
mkdir -p dir1/dir3
touch dir1/dir3/newfile1
git add dir1/dir3/newfile1
git commit -m "Added newfile1 in branch1"
git checkout -b branch2
mkdir -p dir1/dir2 dir1/dir3
mv dir1/dir2/foo dir1/dir2/foo_modified
touch dir1/dir3/newfile2
git add dir1/dir2/foo_modified dir1/dir3/newfile2
git commit -m "Renamed foo to foo_modified and added newfile2"
