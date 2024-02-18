#!/usr/bin/env bash

printf "Flat Directory Structure\n"

bat ./*.cue
printf "\n"

echo cue eval
cue eval
printf "\n"
