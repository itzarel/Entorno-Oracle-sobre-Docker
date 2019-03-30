#!/bin/bash

echo "After 'docker run -d -p 8080:8080 -p 1521:1521 --name real-oracle-db store/oracle/database-enterprise:12.2.0.1'"

echo "Vamos a descargar el SQL DEVELOPER"
sensible-browser https://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html

echo ""
echo "HostName: localhost (hostname will be System IP address if you installed in any Linux VM)"
echo "Port: 1521"
echo "UserName and Password: dummy"
echo "Service Name: ORCLCDB.localdomain"
   #   Esta información la sacamos de:
      # https://hub.docker.com/u/dsebastm/content/sub-66e45207-90ee-461d-b8ce-663ceec27617
      # Sección: Connecting from outside the container
      # Apartado: SERVICE_NAME

echo "CREATE TABLE openwebinar_oracle_db_docker (key integer, value varchar2(20));"
echo 'INSERT INTO "DUMMY"."OPENWEBINAR_ORACLE_DB_DOCKER" (KEY, VALUE)'
echo "VALUES (0, 'clase 2.3');"
