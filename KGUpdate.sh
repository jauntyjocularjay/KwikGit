#!/bin/bash

read -r -p "enter your KwikGit Directory: " kgdir

cd $kgdir

git pull 

cd ..
