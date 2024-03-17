#!/bin/bash

# git submodule add https://github.com/GeorgeSchafer/KwikGit.git sh
git submodule add https://github.com/GeorgeSchafer/EasyAccessor.git lib/ea
git submodule init
git submodule update
echo ''

bash sh/gitBranches.sh
echo ''

touch .gitignore 
echo "/node_modules/" >> .gitignore
echo ''

npm i mocha chai --save-dev
echo ''

mkdir test
cd test
git submodule add https://github.com/GeorgeSchafer/ChaiTests.git
touch test.spec.mjs
echo ''

cd ..
echo ''

npm init
echo ''

git add .
git commit -a -m 'Ran startNPM'
echo ''