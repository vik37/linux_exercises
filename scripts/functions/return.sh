#!/usr/bin/env bash

#greet() {
#	local name="${1:-'world'}"
#	echo "Hello ${name}!"
#	return 2
#}

#greet
#echo $?

#----------------------------------

greet() {
	local name="${1:-'world'}"
        echo "Hello ${name}!"
}

message=$(greet 'Leony')
echo "${message}"
