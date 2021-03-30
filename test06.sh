#!/usr/bin/env dash

#This tests the commit -a option

rm -rf .legit/
./legit-init
echo hello > a
echo world >b
./legit-add a b
./legit-commit -m 'first commit'
echo line 2 >> a
./legit-commit -a -m 'second commit'
./legit-show 0:a
./legit-show 1:a
./legit-show :a

rm -rf .legit/
./legit-init
echo hello > a
echo world >b
./legit-add a b
./legit-commit -m 'first commit'
rm a
./legit-commit -m 'nothing' #should produce nothing to commit
./legit-commit -a -m 'second commit'
