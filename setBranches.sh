#!/bin/sh

BRED='\033[1;31m'
BGREEN='\033[1;32m'
NC='\033[0m'

paths=($(grep -e "path" .gitmodules | sed -e 's/path =//'))
branches=($(grep -e "branch" .gitmodules | sed -e 's/branch =//'))
urls=($(grep -e "url" .gitmodules | sed -e 's/url =//' -e 's/git@github\.com:/https:\/\/github.com\//' -e 's/\.git//'))
numOfModules=$(grep -e "branch" .gitmodules | sed -n '$=')
length=${#branches[@]}

for ((i = 0; i != length; i++)); do
	echo "${BGREEN}Path: ${NC}${paths[i]}${BRED} -- ${BGREEN}Branch: ${NC}${branches[i]}${BRED} -- ${BGREEN}URL: ${NC}${urls[i]}/tree/${branches[i]}"

	(cd ${paths[i]} && git checkout ${branches[i]})
done
