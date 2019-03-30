#!/bin/bash

echo "Después de ejecutar el comando 'docker pull store/oracle/weblogic:12.2.1.3-dev'"

# Set your home folder, in my case 'dsebastm'
export MY_HOME=dsebastm

# Go to your home, in my case 'dsebastm'
cd /home/$MY_HOME

cat <<EOF > domain.properties
username=weblogic
password=1234webl
EOF

# nano domain.properties
# And add:
#   username=weblogic
#   password=1234webl
# The domain.properties must exist and it must have info
cat domain.properties

# Create a variable with the 'domain.properties' location path
export PWD_WL=/home/$MY_HOME/domain.properties
echo $PWD_WL
cat $PWD_WL

# Start the Oracle DB container. Take careful, the ports must be open
  # Oracle DB default port
netstat -anop | grep 7001
  # Database Home Page (APEX)
netstat -anop | grep 9002
# To run the WL container, Oracle documentation said
docker run -d --name oracle-wl -p 7001:7001 -p 9002:9002 -v $PWD_WL:/u01/oracle/properties store/oracle/weblogic:12.2.1.3-dev
   #   https://hub.docker.com/u/dsebastm/content/sub-4d5e862e-2d77-4086-a3d1-6b74dffe2a4c
      #  Sección: Providing Admin server Username and Password
      #  Error: NO INDICAR el archivo 'domain.properties'

# This command generates an ¡¡¡ERROR!!!, it is not correct.
#   NO CREARÁ la carpeta 'properties' y por lo tanto lanzará execpción
docker logs oracle-wl
   #   mkdir: cannot create directory '/u01/oracle/properties': File exists
   #   A properties file with the username and password needs to be supplied.
docker rm oracle-wl

# Now, see the docker path. It has the correct one
docker run -d --name oracle-wl -p 7001:7001 -p 9002:9002 -v $PWD_WL:/u01/oracle/properties/domain.properties store/oracle/weblogic:12.2.1.3-dev

echo "Esperar hasta que aparezca que el servidor está en estado RUNNING:"
echo "'<Dec 14, 2018 11:25:35,488 AM GMT> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to RUNNING.> '"
docker logs oracle-wl

