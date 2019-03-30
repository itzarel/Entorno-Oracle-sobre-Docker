# read

**VIA**: man

Read from a file descriptor

**USO**: `docker exec [OPTIONS] CONTAINER COMMAND [ARG...]`

En este caso vamos a emplar la opción de "read" para detener la ejecución del script, por si acaso no hemos creado todavía el war que posteriormente desplegaremos o por si no hemos adaptado el path correspondiente del script.

&nbsp;

# docker exec

**VIA**: <https://docs.docker.com/engine/reference/commandline/exec/>

Run a command in a running container

**USO**: `docker exec [OPTIONS] CONTAINER COMMAND [ARG...]`

Nos permite ejecutar un comando en el contenedor. En nuestro caso vamos a lanzar la aplicación *bash* con la opción *-c* que lo que nos facilitará es pasarle a la aplicación *bash* unos comandos a ejecutar, los cuales serán:

&nbsp;&nbsp;&nbsp;- mkdir apps_to_deploy: creará una carpeta llamada "apps_to_deploy" en la home del usuario "oracle" (usuario por defecto en el contenedor).

&nbsp;&nbsp;&nbsp;- ls -lah | grep apps_to_deploy: Mostrará todos los archivos y directorios en la home de "oracle" y filtrará por el patrón "apps_to_deploy", es decir sólo mostrará la carpeta que hemos creado si realmente existe.

&nbsp;

# docker cp

**VIA**: <https://docs.docker.com/engine/reference/commandline/cp/>

Copy files/folders between a container and the local filesystem.

**USO**: `docker cp [OPTIONS] SRC_PATH|- CONTAINER:DEST_PATH`

Permite copiar un recurso desde nuestra máquina al contenedor

