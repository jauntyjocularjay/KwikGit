#!/bin/bash
# This should be run only after verifying the branch passes its unit tests.


git checkout main
git pull

git checkout release
git pull
git merge main -m "Releasing changes"
git push

git checkout dev
