#!/bin/bash

counter=1
preimenovane_datoteke=()

for datoteka in ./screenshots/*; do
	ime_datoteke=$(basename "$datoteka")
	novi_naziv="./screenshots/screenshot_${counter}_${ime_datoteke}"
	counter=$((counter+1))
	
	mv "$datoteka" "$novi_naziv"
	preimenovane_datoteke+=("$novi_naziv")
done

echo "${preimenovane_datoteke[@]}"
