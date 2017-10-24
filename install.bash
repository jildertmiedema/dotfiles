#!/bin/bash
groups=(frontend backend tools)
installers=()
dir=$(dirname "$0")

for group in "${groups[@]}"; 
do
	echo "checking group: ${group}"

	groupdir=( ${dir}/${group}/**/install.bash )

	for installer in "${groupdir[@]}"; do
		installers+=("${installer}")
		echo "checking installer: ${installer}"
	done
done

for installer in "${installers[@]}"; do
	bash ${installer}
done