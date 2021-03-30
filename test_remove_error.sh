#!/usr/bin/env dash

#Testing error messages for legit-rm

rm -rf .legit/
./legit-init
#Initialized empty legit repository in .legit
echo 1 >a
echo 2 >b
./legit-add a b
./legit-commit -m "first commit"

./legit-rm a

#Should produce error repository is different to working file
echo change1>>a

./legit-rm a
#legit-rm: error: 'a' is not in the legit repository
exit
./legit-add a
echo change2>>a
./legit-rm a
#Should produce both
