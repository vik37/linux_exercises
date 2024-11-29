#!/usr/bin/env bash

declare -r folder="images/"
count=0
count_failure=0

mkdir -p "$folder"

while (( count_failure < 5 )); do
	(( count = count + 1 ));
        url="https://downloads.coding.mk/055%20-%20bash/while/images/image-${count}.jpg" 
	curl -f -o "${folder}image-${count}.jpg" "${url}"
	isFailed=$?

	if (( isFailed > 0 )); then
		(( count_failure = count_failure + 1 ))
		echo "Failed: ${count_failure}"
	else
		echo "Downloading... "
		echo -e  "\n"
	fi

	echo "Count: ${count} - URL: ${url}"
done

echo "Image download is completed"
