#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Potrebno je unijeti samo jedan argument"
	exit 1
fi

trenutni_dir="$(pwd)"
dir="${trenutni_dir}/$1"

if [ ! -d "$dir" ]; then
	echo "Direktorij '$dir' ne postoji!"
	exit 1
else
	echo "$dir"
	cd "$dir"
	zip -r "svi_zapisi.zip" *
fi



