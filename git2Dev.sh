#!/bin/bash
# This should be run only after verifying the branch passes its unit tests.

git checkout dev-jade
git pull
git add .
<<<<<<< HEAD
git commit -a -m "Releasing changes to dev"
=======
git commit -a -m "preparing to release changes from dev-jade to dev"
>>>>>>> c01856235659dc4b927d12b70a8b9e35d3b83fbd
git push

git checkout dev
git pull
<<<<<<< HEAD
git merge dev-jade -m "Releasing changes to dev"
=======
git merge dev-jade -m "Releasing changes from dev-jade to dev"
>>>>>>> c01856235659dc4b927d12b70a8b9e35d3b83fbd
git push

git checkout dev-jade
