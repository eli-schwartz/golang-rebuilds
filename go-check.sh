#!/bin/bash
cd source
for pkg in *; do
	pushd $pkg &> /dev/null
	if go list -f '{{.Imports}}' ./... | grep ' net/http ' >/dev/null; then
		echo $pkg
	fi
done
