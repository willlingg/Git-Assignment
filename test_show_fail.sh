#!/usr/bin/env dash

rm -rf .legit/
./legit-init
echo line 1 > a
echo hello world >b
./legit-add a b
./legit-commit -m 'first commit'


./legit-show :c

./legit-show 0:c
