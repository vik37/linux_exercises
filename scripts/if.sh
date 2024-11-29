#!/usr/bin/env bash

read -n 2 -p 'Please insert your name: ' name

echo '-----------'

if [[ ${name} == "Max" ]]; then
	echo "The name is Max mother fucker"
else
	echo "The name is ${name}"
fi

echo '------------------'
