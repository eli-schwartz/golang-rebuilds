#!/bin/sh

mkdir -p asp
cd asp

while read -r pkg; do
	asp export "$pkg"
done < ../packages
