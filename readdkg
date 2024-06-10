#!/bin/bash

read -r -p  "Enter the name of your KwikGit folder: " folder
rm -r $folder

git rm ./$folder
git add .
git commit -a -m 'removed KwikGit'
rm -rf .git/modules/$folder
git config --remove-section submodule.$folder

git submodule add https://github.com/jadedrakerider/KwikGit.git $folder

cd ..
