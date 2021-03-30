#!/usr/bin/env dash

rm -rf .legit/
./legit-init
touch a b
./legit-add a b
./legit-commit -m "first commit"
rm a
./legit-commit -m "second commit"
./legit-add a
./legit-commit -m "second commit"

./legit-rm --cached b
./legit-commit -m "second commit"
./legit-rm b

./legit-add b
./legit-rm b
./legit-commit -m "third commit"
exit
./legit-rm b
./legit-commit -m "fourth commit"


#Tests error behaviour of legit-rm
