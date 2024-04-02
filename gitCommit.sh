#!/bin/bash

read -r -p  "Enter commit message: " message
git add .
git commit -m "$message"
git push
