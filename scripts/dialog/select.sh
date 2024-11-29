#!/usr/bin/env bash

select product in "Orange" "Apple" "Pineapple" "Mango"; do
	echo "${REPLY}: ${product}"
	break
done
