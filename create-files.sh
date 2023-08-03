# /bin/bash

repo-add coleos-testing.db.tar.gz *.pkg.tar.zst
echo "Removing Symlinks"
rm coleos-testing.db
rm coleos-testing.files
echo "Renaming files"
mv coleos-testing.db.tar.gz coleos-testing.db
mv coleos-testing.files.tar.gz coleos-testing.files
git add *
git commit -a -m "New update"

# Redo process because of signing
rm coleos-testing.db
rm coleos-testing.files

repo-add coleos-testing.db.tar.gz *.pkg.tar.zst
echo "Removing Symlinks"
rm coleos-testing.db
rm coleos-testing.files
echo "Renaming files"
mv coleos-testing.db.tar.gz coleos-testing.db
mv coleos-testing.files.tar.gz coleos-testing.files
git add *
git commit -a -m "New update"
git push
