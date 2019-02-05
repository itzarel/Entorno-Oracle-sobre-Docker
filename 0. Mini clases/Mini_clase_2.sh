#!/bin/bash

echo "********************************"
echo "** Mini clae #2: Weblogic 12c **"
echo "********************************"

docker pull store/oracle/weblogic:12.2.1.3-dev

docker run -d --name oracle-wl-mini-class -p 7001:7001 -p 9002:9002 -v /home/dsebastm/domain.properties:/u01/oracle/properties/domain.properties store/oracle/weblogic:12.2.1.3-dev

docker ps
docker logs oracle-wl

sensible-browser https://localhots:9002/console
