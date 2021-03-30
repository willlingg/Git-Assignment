#!/usr/bin/env dash

#Testing for weird filenames and commit messages

rm -rf .legit
./legit-init
#Should create a new .legit repository
echo a>__a
./legit-add __a
./legit_add 0_0
./legit-add xD
./legit-add o-o
echo money a> 'a$'
./legit-add 'a$' #This shouldn't pass the test
echo dotty a> 'a.........a'
./legit_add 'a.........a'
./legit-commit -m 'm1' -m 'm2' -m 'm3' -m 'm4' #This should fail too
