#!/bin/bash

read -r -p  "Enter the name of your submodule folder: " folder
rm -r $folder

git rm ./$folder
git add .
git commit -a -m 'removed submodule in $folder'
rm -rf .git/modules/$folder
git config --remove-section submodule.$folder

