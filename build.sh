#!/bin/bash

mkdir -p out
cd src
files=( $(find *.pwsle) )
i=0
while((i < ${#files[@]})); do
	pwuc "${files[i]}" -o "../out/${files[i]%.*}"
	i=$((i+1));
done
