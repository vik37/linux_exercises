#!/usr/bin/env bash

echo -n "Please enter an integer: "
read value

declare -i ivalue="${value//[^0-9]/}"

echo "${ivalue}"