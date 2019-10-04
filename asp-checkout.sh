#!/bin/sh

mkdir -p asp
cd asp

while read -r pkg; do
	asp update "$pkg"
	asp export "$pkg"
done < ../packages
