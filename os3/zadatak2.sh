#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Potrebno je proslijediti točno jedan argument."
	exit 1
fi

if [[ $1 -lt 1 || $1 -gt 10 ]]; then
	echo "Argument mora biti u rasponu od [1-10]"
	exit 1
fi

broj=$1
brojevi=()

for ((i=1; i<="$broj"; i++)); do
	brojevi+=("$i")
done

echo "${brojevi[@]}" > brojevi.txt



