#!/usr/bin/env dash

#This script tests if commits are able to preserve the state of files

rm -rf .legit/
echo lets go boys >file
./legit-init
./legit-add file
./legit-commit -m first
echo lets go again boys >> file
./legit-add file
./legit-commit -m another1
rm file 
