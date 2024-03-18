#!/bin/bash

npm install
echo 'npm dependencies installed'

bash sh/gitBranches.sh
echo ''

npm i mocha chai --save-dev
echo ''

cd ..
echo ''

npm init
echo ''

git add .
git commit -a -m 'Ran startNPM'
echo ''

bash sh/gitRelease.sh
echo 'Branches created'
echo ''
