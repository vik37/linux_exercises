#!/usr/bin/env bash

declare -r book="romeo-book.txt"
declare -i status

if [[ -e "${book}" ]]; then
	echo -e "${book} was downloaded previously \n"
        status=1
elif [[ ! -e "${book}" ]]; then
        echo "Download started"
	curl 'https://downloads.codingcoursestv.eu/055%20-%20bash/if/romeo.txt' -o "${book}"
        status=2
        
       echo "Book {book} was downloaded successfully"
else
	echo -e "${book} does not exists eny more. \n"
        status=0
fi

echo "--------------------------------"
echo "STATUS: ${status}"
echo -e "-------------------------------- \n"

if [[ "${status}" -gt 0 ]]; then
# 	cat "${book}" | grep 'love' | wc -l
	count=$(grep -o 'love' romeo-book.txt | wc -l)
	echo -e "Maximum number of words containing 'love' is ${count}\n"
else
	echo "PROCCESS END UNSSUCCESSFULLY"
fi

echo -e "/n"

read -p "Do you want to see the book? " display

if [[ "${display}" == "yes" ]]; then
	cat "${book}"
fi
