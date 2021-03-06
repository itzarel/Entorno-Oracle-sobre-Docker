#!/bin/bash

# Configuraremos nuestra home. En mi caso 'dsebastm'
export MY_HOME=dsebastm

export PWD_WL=/home/$MY_HOME/domain.properties
export SH_FOLDER=/home/$MY_HOME/docker/sharedFolder
echo $SH_FOLDER

netstat -anop | grep 7002
netstat -anop | grep 9004

# Si usas como NOMBRE de un CONTENEDOR otro que ya existe, obtendrás el siguiente error:
#   docker: Error response from daemon: Conflict. The container name "/<CONTAINER_NAME>" is already in use by container "<ID>". You have to remove (or rename) that container to be able to reuse that name.
#   See 'docker run --help'.
docker run -d --name oracle-wl -p 7002:7001 -p 9004:9002 -v $PWD_WL:/u01/oracle/properties/domain.properties -v $SH_FOLDER:/u01/oracle/shared_folder store/oracle/weblogic:12.2.1.3-dev


# Para evitar el error cambiaremos el nombre
docker run -d --name oracle-wl-new-env-shared-folder -p 7002:7001 -p 9004:9002 -v $PWD_WL:/u01/oracle/properties/domain.properties -v $SH_FOLDER:/u01/oracle/shared_folder store/oracle/weblogic:12.2.1.3-dev
