# Hacer una exportacion e importacion de un WL y un Oracle DB

Primero definiremos las variables con los path sobre lo cuales trabajaremos

```
export MY_HOME=dsebastm
export EXPORT_FOLDER=/home/$MY_HOME/docker/exported_images
```

Con estos dos comandos haremos la exportación de nuestros actuales contenedores:

```
docker export oracle-wl | gzip > $EXPORT_FOLDER/oracle_wl_backup.gz
docker export real-oracle-db | gzip > $EXPORT_FOLDER/oracle_db.gz
```

Y como los hemos generado con compresión, descomprimiremos e importaremos:

```
zcat oracle_wl_backup.gz | docker import --message "Imported WL" - recovered-oracle-wl:wl_updated
zcat oracle_db.gz | docker import --message "Imported DB" - recovered-oracle_db:db_updated
```