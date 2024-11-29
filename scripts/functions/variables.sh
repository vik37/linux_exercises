#!/usr/bin/env bash

#greet() {
#	name='Max'

#	local name
#	if [[ -z "${name}" ]]; then
#		read -p 'Please enter your name: ' name
#	fi

#	echo "Hello ${name}"
#}

#name="----"

#greet
#greet

#echo "Name: ${name}"

#---------------------------------------------------

greet() {
	read name
	echo "Hello ${name}"
}

echo "Olivia" | greet

greet_pos(){
	echo "Hello $1"
}

greet_pos "Linux"

greet_default() {
	local name="${1:-'World'}"
#	echo "Hello $1!"
	echo "Hello ${name}"
}

greet_default
greet_default "Linux"
