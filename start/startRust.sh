#!/bin/bash

# project_name = "TacticalGridRU"

rustup update
rustc --version
# If rustc --version fails, it indicates the PATH is not setup correctly

cargo new project_name

cd project_name