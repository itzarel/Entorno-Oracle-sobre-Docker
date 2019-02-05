#!/bin/bash

echo "After 'docker run -d -p 8080:8080 -p 1521:1521 --name real-oracle-db store/oracle/database-enterprise:12.2.0.1'"

sensible-browser https://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html

echo ""
echo "HostName: localhost (hostname will be System IP address if you installed in any Linux VM)"
echo "Port: 1521"
echo "UserName and Password: dummy"
echo "Service Name: ORCLCDB.localdomain"

echo "CREATE TABLE openwebinar_oracle_db_docker (key integer, value varchar2(20));"
