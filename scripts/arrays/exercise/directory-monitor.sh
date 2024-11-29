#!/usr/bin/env bash

readarray -t home_directory < <(ls ~/)

path="/home/viktor/"
for directory in "${home_directory[@]}"; do
	totalSize=$(du -h "${path}${directory}")
	echo "${directory} - Total Size: ${totalSize}"
done
