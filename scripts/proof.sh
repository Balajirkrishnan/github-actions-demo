#!/bin/bash
# Get the root directory of the repo
repo_root=$(git rev-parse --show-toplevel)

#Touch the proof file
date +"%Y-%m-%d %T" > "${repo_root}"/.pre-commit
git add "${repo_root}"/.pre-commit
