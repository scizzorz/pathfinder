#!/bin/bash
PATHFINDER_DIR=~/pathfinder;
PATHFINDER_RUN=
function pathfinder {
	if [ $PATHFIND_RUN ] && [ "$1" != "-x" ]; then
		echo "pathfinder has already been executed in this environment. If you would like to re-execute pathfind, please retry with -x."
	else
		PATHFIND_RUN=true
		[ "$1" == "-x" ] && shift
		name_string="-name bin"
		for path in ${*:1}; do
			name_string+=" -o -name $path"
		done
		for subpath in $(find $PATHFINDER_DIR $(echo $name_string)); do
			export PATH=$subpath:$PATH
		done
	fi
}
function sourcefinder {
	for subsource in $(find $PATHFINDER_DIR -name "source"); do
		for sourcefile in $(find "$subsource" -name "*.sh"); do
			source "$sourcefile"
		done
	done
}
