#!/usr/bin/env bash

read -p 'Please enter your OS: ' os

case "${os}" in
	Mac)
		echo "On a Mac, you need to manually install this program"
		;;
	Debian|Ubuntu)
		echo "You need to use apt to install this program"
		;;
	RHEL)
		;&
	CentOS)
		echo "You need to use dnf to install this program"
		;;
	L*)
		echo "We don't know what to do. At least your os starts with an L"
		;;
	*)
		echo "-------"
		;;
esac
