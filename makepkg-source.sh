#!/bin/sh

startdir=$PWD

mkdir -p source
mkdir -p sourcedest
source_path=$(readlink -f ./source)
sourcedest_path=$(readlink -f ./sourcedest)

for dir in ./asp/*; do
	cd "$startdir/$dir/trunk"
	SRCDEST="${sourcedest_path}" makepkg --nobuild --nodeps --noprepare --skippgpcheck --skipinteg
	d=$(find src/ -maxdepth 1 ! -path src/ -type d)
	mkdir -p $source_path/$(basename $dir)
	mv $d $source_path/$(basename $dir)
done
