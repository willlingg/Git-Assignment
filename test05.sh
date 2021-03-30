#!/usr/bin/env dash

#This script tests committing multiple files

rm -rf .legit/
touch a b c d e f g h
./legit-init
./legit-add e g h f a b c d
./legit-commit -m first
echo change a >> a
echo change b >> #!/usr/bin/env bash
./legit-add a b
./legit-commit -m second!
./legit-log
./legit-show 1:a
echo lets go again >> testf
./legit-add testf
./legit-commit -m another
rm testf
./legit-add testf
./legit-commit -m "should commit empty folder"
