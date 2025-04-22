#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Potrebno je proslijediti točno 2 argumenata"
	exit 1
fi

abs_path=$1
ext=$2
found=0
for datoteka in "$abs_path"/*"$ext"; do
	if [ -f "$datoteka" ]; then
		found=1
		echo "$(basename "$datoteka")"
	fi
done

if [ "$found" -eq 0 ]; then
	echo "Nije pronađeno ni jedna datoteka s nastavkom $ext u direktorij $abs_path"
fi

