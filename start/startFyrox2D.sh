#!/bin/bash

project_name="TacticalGrid3D" # Your project name

cargo add fyrox
cargo install fyrox-template --force --git https://github.com/FyroxEngine/Fyrox
fyrox-template init --name TacticalGrid3D --style 3d
cd $project_name
cargo run --package editor --release

