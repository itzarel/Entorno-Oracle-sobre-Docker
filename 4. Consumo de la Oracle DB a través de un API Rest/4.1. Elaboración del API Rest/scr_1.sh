#!/bin/bash


read -n1 -r -p "Primeramente crear el war que vamos a copiar, sino detener el script (ctrl+c)..." key

echo "Para pasar el EAR emplear el comando 'docker cp'"
echo ""
# Elimino la carpeta (si no existe retornará un error)
docker exec -it oracle-wl bash -c "rm -rf apps_to_deploy"
echo "Primero crearemos la carpeta donde copiaremos nuestra app"
docker exec -it oracle-wl bash -c "mkdir apps_to_deploy"

echo "A continuacion se deberia mostrar:"
docker exec -it oracle-wl bash -c "ls -lah | grep apps_to_deploy"

docker cp ./OpenwebinarDockerAPI/openwebinar_mavel/app-rest-api/target/app-rest-api-0.1.0-SNAPSHOT.war oracle-wl:/u01/oracle/apps_to_deploy/
echo "La aplicación se ha copiado al contenedor"
docker exec -it oracle-wl bash -c "ls -lah ./apps_to_deploy"
