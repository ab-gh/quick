#!/bin/bash

mkdir "$1"
cd "$1"
git init
touch README.md
echo "# $1" >> README.md
git add README.md
touch "$1"."$2"
git add "$1"."$2"
hub create -d "init commit"
git commit -m "init commit"
