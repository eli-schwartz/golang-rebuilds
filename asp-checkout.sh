#!/bin/sh

mkdir -p asp
cd asp

while read -r pkg; do
	asp checkout "$pkg"
done < ../packages
