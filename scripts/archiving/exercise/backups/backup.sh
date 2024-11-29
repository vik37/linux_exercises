#!/usr/bin/env bash


declare -r backup_path="${HOME}/scripts/archiving/exercise/backups"
declare -r data_path="${HOME}/scripts/archiving/exercise/fake_db"
declare -r log_file="${backup_path}/logs/log-error-$(date '+%Y-%m-%d').log"

if [[ ! -e "${log_file}" ]]; then
	touch "${log_file}"
fi

if [[ -d "${data_path}" ]]; then
	echo "Backup proccess data was started..."
	readarray -t data_folders < <(ls "${data_path}")

	for data in "${data_folders[@]}"; do
		temp_file=$(ls "${data_path}/${data}/")
		echo "${temp_file}"
		tar -cjf "${temp_file}-$(date '+%m-%d').tar.bz2" "${data_path}/${data}" 2>> "${log_file}"
	done
	echo -e "Backup proccess successfully end... \n $(ls *.bz2)"
else
	echo  "File: (${data_path})  does not exists" >> "${log_file}"
	exit 1;
fi

#echo "Viktor Testing... " >>  "${backup_path}/test-$(date '+%Y-%m-%d').txt"

#cat "${backup_path}/test-2024-11-10.txt"
