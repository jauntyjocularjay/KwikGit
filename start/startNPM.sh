#!/bin/bash

git submodule add https://github.com/GeorgeSchafer/KwikGit.git sh
bash sh/gitBranches.sh
touch .gitignore 
echo "/node_modules/" >> .gitignore
echo "startNPM.sh" >> .gitignore
mkdir test
touch test/test.chai.mjs

npm i mocha chai --save-dev

cd test
git submodule add https://github.com/GeorgeSchafer/ChaiFunctions.git
cd ..
