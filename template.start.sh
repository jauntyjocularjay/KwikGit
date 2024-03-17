#!/bin/bash


touch .gitignore 
echo "/node_modules/" >> .gitignore
echo 'created .gitignore'
echo ''

git submodule init
git submodule update
echo 'submodules updated'
echo ''

npm install
echo 'npm dependencies installed'
echo ''
