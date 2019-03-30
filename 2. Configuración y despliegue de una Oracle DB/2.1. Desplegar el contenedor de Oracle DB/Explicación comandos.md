# netstat

**VIA**: man netstat

Print network connections, routing tables, interface statistics, masquerade connections, and multicast memberships

&nbsp;&nbsp;&nbsp;-a, --all

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Show  both  listening and non-listening sockets.  With the --interfaces

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; option, show interfaces that are not up

&nbsp;&nbsp;&nbsp;-n --numeric

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Show numerical addresses instead of trying to determine symbolic host, port or user names.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; useful information about unconfigured address families.

&nbsp;&nbsp;&nbsp;-o --timers

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Include information related to networking timers.

&nbsp;&nbsp;&nbsp;-p, --program

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Show the PID and name of the program to which each socket belongs.

**USO**: `netstat [options]`

Permite mostrar diferentes elementos de la red tales como conexiones, tablas de enrutado, estadísticas de interfaz, máscara de conexiones y miembros de multicast.

En nuestro caso de ejecución emplearemos las opciones *"-vap"* que serán modo **verbose** (con más información), los **sockets** que están y no a la **escucha** y finalmente el **PID** del proceso.

&nbsp;

# docker run

**VIA**: <https://docs.docker.com/engine/reference/commandline/run/>

&nbsp;&nbsp;&nbsp;-d, --detach		Run container in background and print container ID

&nbsp;&nbsp;&nbsp;-p, --publish	Publish a container’s port(s) to the host

&nbsp;&nbsp;&nbsp;--name		Assign a name to the container

**USO**: `docker run [OPTIONS] IMAGE [COMMAND] [ARG...]`

Este comando ya lo hemos visto anteriormente, nos permite crear un contenedor y lanzarlo. Las opciones que va a emplear nuestro comando será *-d*, *-p* y *--name*. La primera permite lanzar un contenedor en **segundo plano**, la segunda opción permite **publicar el puerto** del contenedor para que podamos acceder desde fuera del mismo y la tercera opción nos permite darle un **nombre concreto** al contenedor.