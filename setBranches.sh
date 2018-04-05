#!/bin/sh

# echo "$(ls .git/modules)"

# grep -e "url" .gitmodules -C 2 | sed -e 's/^[ 	]*//'

BRED='\033[1;31m'
BGREEN='\033[1;32m'
IWhite='\033[0;97m'
NC='\033[0m'

paths=($(grep -e "path" .gitmodules | sed -e 's/path =//'))
branches=($(grep -e "branch" .gitmodules | sed -e 's/branch =//'))
numOfModules=$(grep -e "branch" .gitmodules | sed -n '$=')
length=${#branches[@]}

# echo ${branches[3]}

for ((i = 0; i != length; i++)); do
	echo "${BGREEN}Path: '${paths[i]}' -- Branch: '${branches[i]}'${NC}"

	(cd ${paths[i]} && git checkout ${branches[i]})
done
