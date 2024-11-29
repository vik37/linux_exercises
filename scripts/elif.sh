#!/usr/bin/env bash

if ping jdslkjdsklajds.com; then
	echo "dslkjdsklajds.com could not be ping"
elif ping google.com; then
	echo 'google.com could be pinged'
else
	echo 'No server could be ping'
fi
