#!/bin/bash

git submodule add https://github.com/GeorgeSchafer/KwikGit.git sh
bash sh/gitBranches.sh
touch .gitignore 
mkdir test
touch test/test.unitc.cpp