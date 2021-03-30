#!/usr/bin/env dash

# Test to show very basic error messages for a varieuty of cases

rm -rf .legit/
./legit-init
./legit-init abc
echo a>a
echo b>b
echo c>c
echo d>d
./legit-add
./legit-add ''
./legit-commit
./legit-commit -m
./legit-commit -m ''
./legit-commit -m abc
./legit-log
./legit-show
./legit-show 0:abc
./legit-show :
./legit-rm
./legit-rm -
