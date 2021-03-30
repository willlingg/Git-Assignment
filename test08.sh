#!/usr/bin/env dash

#This script tests the -rm command

rm -rf .legit/
./legit-rm
echo a >a
./legit-init
./legit-rm
./legit-rm --force --cached
./legit-rm a
echo another a >> a
./legit-rm --force a
./legit-add a
./legit-commit -m "first commit"
./legit-rm a
echo make a >a
./legit-add a
./legit-rm --cached a
./legit-show :a
cat a
