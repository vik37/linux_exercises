#!/usr/bin/env bash

yesno=0

while (( yesno == 0 )); do

	name=$(dialog --keep-tite --title 'Student Informations' --inputbox 'Please enter name: ' 0 0 2>&1 >/dev/tty)
	cancled=$?

	if [[ cancled -eq 0 ]] && [ -n "${name}" ]; then
		echo "${name}" >>  test.txt
	else
		echo "No input provided or dialog was canceled."
	fi

	dialog --keep-tite --yesno 'Do you want to continue?' 0 0
	yesno=$?
done
