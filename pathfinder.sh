#!/bin/bash
PATHFINDER_DIR=~/pathfinder;
PATHFINDER_RUN=
function pathfinder {
	if [ $PATHFIND_RUN ] && [ "$1" != "-x" ]; then
		echo "pathfinder has already been executed in this environment. If you would like to re-execute pathfind, please retry with -x."
	else
		PATHFIND_RUN=true
		for subpath in $(find $PATHFINDER_DIR -name "bin"); do
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
