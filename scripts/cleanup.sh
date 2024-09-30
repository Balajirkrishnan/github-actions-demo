#!/bin/bash
#Get the root directory of the repo
repo_root=$(git rev-parse --show-toplevel)

#Get rid of any local caches
find ${repo_root} -name ".terraform" -type d -exec rm -rf "{}" \; &> /dev/null
find ${repo_root} -name ".terragrunt-cache" -type d -exec rm -rf "{}" \; &> /dev/null

#Get rid of terragrunt created files
find ${repo_root} -name "backend.tf" -type f -exec rm -rf "{}" \; &>/dev/null
find ${repo_root} -name "provider.tf" -type f -exec rm -rf "{}" \; &>/dev/null
