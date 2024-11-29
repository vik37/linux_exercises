#!/usr/bin/env bash

select option in "uptime" "user" "free disk space"  "quit"; do
	case "${option}" in
		uptime) uptime;;
		user) echo "${USER}" ;;
		"free disk space") df ;;
		quit) break ;;
		*) echo "Option not found" >&2
	esac
done
