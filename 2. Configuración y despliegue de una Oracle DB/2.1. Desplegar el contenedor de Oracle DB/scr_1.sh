#!/bin/bash

echo "Después de 'docker pull store/oracle/database-enterprise:12.2.0.1'"

# Instalar netstart para poder tener herramientas de red
sudo apt install net-tools

# A continuación vamos a iniciar el contenedor del 'Oracle DB'
# IMPORTANTE, tener en cuenta que los puertos deben estar libres y abiertos
  # Puerto por defecto para Oracle (1521)
netstat -vap | grep 1521

# Vamos a generar un conflicto de puertos
  # Paramos el contenedor de demo del tema anterior y lo borramos
docker stop web-test
docker rm web-test
  # Y lanzamos con el puerto 8080
docker run -d --name web-test -p 8080:8000 crccheck/hello-world
  # Página de inicio de la BBDD, APEX (8080)
docker run -d -p 8080:8080 -p 1521:1521 --name real-oracle-db store/oracle/database-enterprise:12.2.0.1

# port is already allocated
echo "Esto nos retornará un conflicto"
echo "docker: Error response from daemon: driver failed programming external connectivity on endpoint real-oracle-db (170652503b1153f8f876c8c1658395f9d5d7ab4461d638bbd979f463962b4d9c): Bind for 0.0.0.0:8080 failed: port is already allocated."

netstat -anop | grep 8080
# tcp6       0      0 :::8080                 :::*                    ESCUCHAR    -                    apagado (0.00/0/0)


# Ahora DESHACEMOS lo anterior y lanzamos nuevamente

docker stop web-test
docker rm web-test
docker run -d -p 8080:8080 -p 1521:1521 --name real-oracle-db store/oracle/database-enterprise:12.2.0.1
