#!/usr/bin/env dash

#This script tests if commit can pick up the removal of a file and commit it

rm -rf .legit/
echo lets go boys >file
./legit-init
./legit-add file
./legit-commit -m first
echo nothing > nothing
./legit-add nothing
rm nothing
./legit-add nothing
./legit-commit -m 'second'
./legit-add file
./legit-commit -m another1
rm test3
./legit-add test3
./legit-commit -m "should commit empty folder"
