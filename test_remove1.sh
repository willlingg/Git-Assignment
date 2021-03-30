#!/usr/bin/env dash

rm -rf .legit/
./legit-init
#Initialized empty legit repository in .legit
echo 1 >a
echo 2 >b
./legit-add a b
./legit-commit -m "first commit"

#Committed as commit 0
echo 3 >c
echo 4 >d

./legit-add c d

./legit-rm --cached a c


./legit-commit -m "second commit"

./legit-show 0:a
exit
$ legit-show 1:a
legit-show: error: 'a' not found in commit 1
$ legit-show :a
legit-show: error: 'a' not found in index
