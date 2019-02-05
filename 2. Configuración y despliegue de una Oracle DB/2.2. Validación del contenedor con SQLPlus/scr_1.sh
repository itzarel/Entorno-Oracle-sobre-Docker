#!/bin/bash

echo "Después de ejecutar el comando 'docker run -d -p 8080:8080 -p 1521:1521 --name real-oracle-db store/oracle/database-enterprise:12.2.0.1'"

echo ""
echo "Poner el password con 'Oradoc_db1'"
echo "store.docker.com: El password por defecto para conectar a la BBDD con el usuario 'sys' es Oradoc_db1."
echo "alter session set '_ORACLE_SCRIPT'=true;"
echo "create user dummy identified by dummy;"
echo "GRANT CONNECT, RESOURCE, DBA TO dummy;"
echo "exit"
docker exec -it real-oracle-db bash -c "source /home/oracle/.bashrc; sqlplus /nolog"
connect sys as sysdba;
