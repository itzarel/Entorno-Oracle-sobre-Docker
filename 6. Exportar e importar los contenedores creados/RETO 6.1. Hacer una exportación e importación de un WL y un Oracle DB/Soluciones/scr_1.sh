#!/bin/bash


export MY_HOME=dsebastm
export EXPORT_FOLDER=/home/$MY_HOME/docker/exported_images

docker export oracle-wl | gzip > $EXPORT_FOLDER/oracle_wl_backup.gz
docker export real-oracle-db | gzip > $EXPORT_FOLDER/oracle_db.gz

zcat oracle_wl_backup.gz | docker import --message "Imported WL" - recovered-oracle-wl:wl_updated
zcat oracle_db.gz | docker import --message "Imported DB" - recovered-oracle_db:db_updated

docker images
