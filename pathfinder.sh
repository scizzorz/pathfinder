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
		for path in $@; do
			name_string+=" -o -name $path"
		done

		for subpath in $(find $PATHFINDER_DIR $name_string); do
			export PATH=$subpath:$PATH
		done
	fi
}
function sourcefinder {
	name_string="-name source"
	for path in $@; do
		name_string+=" -o -name $path"
	done

	for subsource in $(find $PATHFINDER_DIR $name_string); do
		for sourcefile in $(find "$subsource" -name "*.sh"); do
			source "$sourcefile"
		done
	done
}
