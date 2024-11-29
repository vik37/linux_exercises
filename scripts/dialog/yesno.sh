#!/usr/bin/env bash

if dialog --keep-tite --yesno 'Are you sure?' 0 0; then
	echo "You have selected: YES - ${$?}"
else
	echo "You have selected: NO - ${$?}"
fi
