#!/bin/bash

netstat -vap | grep 8082
netstat -vap | grep 1524

# Recuerda cambiar el nombre del contenedor para evitar tener el mismo error que el comentado en la clase anterior

docker run -d -p 8082:8080 -p 1524:1521 --name real-oracle-db-new-env store/oracle/database-enterprise:12.2.0.1
