#!/usr/bin/env dash

#This script tests if commits are able to properly the state of files

rm -rf .legit/
echo lets go >file
./legit-init
./legit-add file
./legit-commit -m first
echo lets go again! >> second_file
./legit-add second_file
./legit-commit -m another1
echo one more edit >> file
./legit-add file
./legit-commit -m "last commit"
