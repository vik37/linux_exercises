#!/usr/bin/env bash

#tar -cjf "backups/customers-data-${date_str}.tar.bz2" "customers_data"
#tar -cjf "backups/inventory-data-${date_str}.tar.bz2" "inventory_data"

folders=(
    "./customers_data"
    "./inventory_data"
)

log_error() {
    echo "$1" >&2
    echo "$1" >> backup.log
}

exit_code=0
date_str=$(date '+%m-%d')

for folder in "${folders[@]}"; do
    folder_basename=$(basename "${folder}")
    archive_path="backups/${folder_basename//_/-}-${date_str}.tar.bz2"

    
    if ! tar -cjf "${archive_path}" "${folder}"; then
        log_error "[ERROR]: Tar of ${folder} could not be created" 2>> backup.log
        exit_code=1
    fi
done

if ! ./backup_db.sh > "backups/orders-${date_str}.sql.bz2"; then
    log_error "[ERROR]: Creating of the DB backup failed"
    exit_code=2
elif ! bzip2 "backups/orders-${date_str}.sql"; then
    log_error "[ERROR]: Compressing of the DB backup failed"
    exit_code=3
fi

exit "${exit_code}"