#!/bin/bash

echo "*****************************"
echo "** Mini clae #1: Oracle DB **"
echo "*****************************"

docker pull store/oracle/database-enterprise:12.2.0.1

docker run -d -p 8080:8080 -p 1521:1521 --name real-oracle-db store/oracle/database-enterprise:12.2.0.1

echo "HostName: localhost (hostname will be System IP address if you installed in any Linux VM)"
echo "Port: 1521"
echo "UserName and Password: dummy"
echo "Service Name: ORCLCDB.localdomain"

echo "CREATE TABLE openwebinar_oracle_db_docker (key integer, value varchar2(20));"
