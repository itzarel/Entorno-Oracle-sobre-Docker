#!/bin/bash

echo "Después de 'docker pull hello-world'"

# NO TENEMOS ningún CONTENEDOR lanzado porque 'hello-world' finaliza.
# Lo podremos ver con el siguiente comando, lista todos los contenedores ejecutándose
sensible-browser https://docs.docker.com/engine/reference/commandline/ps/
docker ps

# Con '-a' o '--all' se muestra toda la información de los contenedores
docker ps -a

# CONTAINER ID        IMAGE                                       COMMAND                  CREATED             STATUS                          ...
# 989cdb2c21b4        hello-world                                 "/hello"                 4 minutes ago       Exited (0) 4 minutes ago        ...

# Lanzamos el contenedor detenido
docker start <CONTAINER ID>
docker start <NAME>

# Podremos revisar los logs del contenedor
docker logs <CONTAINER ID>
docker logs <NAME>


# Ahondando más, descargamos y ejecutamos un contenedor que no se pare por si mismo
sensible-browser https://hub.docker.com/r/crccheck/hello-world
docker pull crccheck/hello-world
   # Lanza el nuevo contenedor y a continuación ctrl+c (las opciones las veremos en próximas clases)
docker run -p 80:8000 crccheck/hello-world
   # Después ctrl+c
docker ps -a

   # Lanzar el container id
docker start <CONTAINER ID>
curl localhost

# ######################################## #
# ##########    run VS start    ########## #
# ######################################## #

docker stop <CONTAINER ID>
curl localhost

   # También se puede lanzar con el nombre
docker start <NAME>
curl localhost



# 1.3. Creación de una cuenta para descargar las imágenes de Oracledocker 
