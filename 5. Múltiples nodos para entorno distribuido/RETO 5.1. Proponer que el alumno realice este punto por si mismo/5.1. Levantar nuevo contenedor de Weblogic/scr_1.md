# Múltiples nodos para entorno distribuido - Parte I

Configuraremos nuestra home. En mi caso *dsebastm*. Posteriormente configuraremos la carpeta compartida:

```
export MY_HOME=dsebastm

export PWD_WL=/home/$MY_HOME/domain.properties
export SH_FOLDER=/home/$MY_HOME/docker/sharedFolder
echo $SH_FOLDER
```

Buscaremos que los puertos no estén empleados:

```
netstat -vap | grep 7002
netstat -vap | grep 9004
```

Si no están empleados podemos seguir, sino buscaremos otro.

Si usas como nombre de un contenedor otro que ya existe, obtendrás el siguiente error:

*
docker: Error response from daemon: Conflict. The container name "/<CONTAINER_NAME>" is already in use by container "<ID>". You have to remove (or rename) that container to be able to reuse that name.
See 'docker run --help'.
*

Vamos a ver el error anterior lanzando el contenedor con el mismo nombre que el que ya hemos empleado:

```
docker run -d --name oracle-wl -p 7002:7001 -p 9004:9002 -v $PWD_WL:/u01/oracle/properties/domain.properties -v $SH_FOLDER:/u01/oracle/shared_folder store/oracle/weblogic:12.2.1.3-dev
```

Para evitar el error cambiaremos el nombre (por ejemplo a `oracle-wl-new-env-shared-folder`):

```
docker run -d --name oracle-wl-new-env-shared-folder -p 7002:7001 -p 9004:9002 -v $PWD_WL:/u01/oracle/properties/domain.properties -v $SH_FOLDER:/u01/oracle/shared_folder store/oracle/weblogic:12.2.1.3-dev
```