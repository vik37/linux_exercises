#!/usr/bin/env bash

#while getopts 'al' opt 2>/dev/null; do
#	echo "${opt}"
#done

what=""
while getopts 'alh' opt 2>/dev/null; do
	case "${opt}" in
		h)
			what="help"
			break
			;;
		a) echo "Option a"
			;;
		l) echo "Option l"
			;;
		?) echo "An error occure"
			;;
	esac
done

if [[ "${what}" == "help" ]]; then
	echo 'this is a help menu'
	exit
fi
