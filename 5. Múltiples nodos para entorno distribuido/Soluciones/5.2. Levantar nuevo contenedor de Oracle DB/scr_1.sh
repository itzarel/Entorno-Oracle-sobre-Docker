#!/bin/bash

netstat -vap | grep 8082
netstat -vap | grep 1524

# Recuerda cambiar el nombre del contenedor para evitar tener el mismo error que el comentado en la clase anterior

docker run -d -p 8082:8080 -p 1524:1521 --name real-oracle-db-new-env store/oracle/database-enterprise:12.2.0.1

echo "Recuerda que el contenedor deberá quedar en STATUS (healthy): 'docker ps'"
sleep 90
docker exec -it real-oracle-db-new-env bash -c "source /home/oracle/.bashrc; sqlplus /nolog"

# Si diera algún error:
   #  docker exec -it real-oracle-db bash -c "/u01/app/oracle/product/12.2.0/dbhome_1/bin/sqlplus /nolog"
   #  docker exec -it real-oracle-db bash -c "source /home/oracle/.bashrc"
   #  docker exec -it real-oracle-db bash -c "/u01/app/oracle/product/12.2.0/dbhome_1/bin/sqlplus /nolog"

echo ""
echo "Poner el password con 'Oradoc_db1'"
echo 'alter session set "_oracle_script"=true;'
echo "create user dummy_2 identified by dummy_2;"
echo "GRANT CONNECT, RESOURCE, DBA TO dummy_2;"
echo "exit"

connect sys as sysdba;
