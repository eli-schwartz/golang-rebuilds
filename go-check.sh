#!/bin/sh

# which package are we searching for use of?
[ -n "$1" ] || set -- 'net/http'

cd source
startdir=$PWD

for pkg in *; do
	cd "$startdir/$pkg"
	if go list -f '{{.Imports}}' ./... | grep -q " $1 "; then
		echo "$pkg"
	fi
done
