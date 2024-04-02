#!/bin/bash
# This should be run only after verifying the branch passes its unit tests.

git checkout dev
git pull
git add .
<<<<<<< HEAD
git commit -a -m "Releasing changes to beta"
=======
git commit -a -m "preparing to release changes from dev to beta"
>>>>>>> c01856235659dc4b927d12b70a8b9e35d3b83fbd
git push

git checkout beta
git pull
<<<<<<< HEAD
git merge dev -m "Releasing changes to beta"
=======
git add .
git commit . -m "preparing to release dev changes to beta"
git merge dev -m "releasing changes from dev to beta"
>>>>>>> c01856235659dc4b927d12b70a8b9e35d3b83fbd
git push

git checkout dev
