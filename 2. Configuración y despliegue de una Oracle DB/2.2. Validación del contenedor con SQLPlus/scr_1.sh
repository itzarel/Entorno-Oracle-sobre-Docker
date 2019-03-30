#!/bin/bash

echo "Después de ejecutar el comando 'docker run -d -p 8080:8080 -p 1521:1521 --name real-oracle-db store/oracle/database-enterprise:12.2.0.1'"

echo "¡¡¡ DEBEMOS ESPERAR HASTA !!!"
echo "  STATUS"
echo "  Up 3 seconds (health: starting)"

# Para lanzar este comando DEBEMOS ESPERAR hasta que STATUS esté (health)
# 1,5 min aprox (segun máquina)
sleep 90
docker exec -it real-oracle-db bash -c "source /home/oracle/.bashrc; sqlplus /nolog"

# Si diera algún error:
   #  docker exec -it real-oracle-db bash -c "/u01/app/oracle/product/12.2.0/dbhome_1/bin/sqlplus /nolog"
   #  docker exec -it real-oracle-db bash -c "source /home/oracle/.bashrc"
   #  docker exec -it real-oracle-db bash -c "/u01/app/oracle/product/12.2.0/dbhome_1/bin/sqlplus /nolog"

echo ""
echo "Poner el password con 'Oradoc_db1'"
echo 'alter session set "_oracle_script"=true;'
echo "create user dummy identified by dummy;"
echo "GRANT CONNECT, RESOURCE, DBA TO dummy;"
echo "exit"

connect sys as sysdba;
   #  Password: Oradoc_db1
   #  alter session set "_oracle_script"=true;
   #  create user dummy identified by dummy;
   #  GRANT CONNECT, RESOURCE, DBA TO dummy;
