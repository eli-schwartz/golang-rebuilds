#!/bin/bash

mkdir -p asp
pushd asp
for pkg in $(cat ../packages); do
	asp checkout $pkg
done
