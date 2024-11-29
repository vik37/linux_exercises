#!/usr/bin/env bash

fruits=("bannana" "apple" "passion fruit")
#for fruit in "${fruits[@]}"; do
#	echo "${fruit}"
#done

#-----------------------------------------

select fruit in "${fruits[@]}" "quit"; do
	[[ "${fruit}" == "quit" ]] && break
	echo " - ${fruit}"
done
