#!/bin/bash

mkdir "$1"
cd "$1"
git init
touch README.md
echo "# $1" >> README.md
git add README.md
touch "$1"."$2"
git add "$1"."$2"
echo -n "Please enter your GitHub username: "
read uname
git config --global user.email "$uname"
git commit -m "first commit"
hub create -d "init commit"
git remote add origin https://github.com/$uname/$1.git
git push -u origin master

#git config credential.helper cache
#hub create -d "init commit"
#git commit -m "init commit"
#git push --set-upstream origin master
