#!/usr/bin/env dash


rm -rf .legit/
./legit-init
echo hello > a
echo world >b
./legit-add a b
./legit-commit -m 'first commit'
rm a
./legit-commit -m 'nothing' #should produce nothing to commit

./legit-commit -a -m 'second commit'
