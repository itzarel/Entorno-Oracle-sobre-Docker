# docker ps

**VIA**: <https://docs.docker.com/engine/reference/commandline/ps/>

List containers
--all , -a		Show all containers (default shows just running)

**USO**: `docker ps [OPTIONS]`

Lista la totalidad de contenedores.

&nbsp;

# docker run

**VIA**: <https://docs.docker.com/engine/reference/commandline/run/>

Run a command in a new container

**USO**: `docker run [OPTIONS] IMAGE [COMMAND] [ARG...]`

Permite iniciar y lanzar un comando sobre un contenedor.

&nbsp;

# docker start

**VIA**: <https://docs.docker.com/engine/reference/commandline/start/>

Start one or more stopped containers

**USO**: `docker start [OPTIONS] CONTAINER [CONTAINER...]`

Permite lanzar un contenedor parado.

&nbsp;

## Diferencia: start vs run

Ambos comandos nos permiten lanzar un contenedor. La principal diferencia radica en que *docker run* creará un **nuevo contenedor**, mientras que *docker start* ejecutará un contenedor que ya ha sido previamente lanzado.
De esta manera si lanzamos un contenedor con *docker run*, hacemos una operación dentro del contenedor (por ejemplo instalar una app), lo paramos y posteriormente volvemos a lanzar *docker run* la aplicacion que habíamos instalado antes no estará ya que es un nuevo contenedor. Por lo que se deberá emplear *docker start*.

&nbsp;

# docker logs

**VIA**: <https://docs.docker.com/engine/reference/commandline/logs/>

Fetch the logs of a container

**USO**: docker logs [OPTIONS] CONTAINER

Busca los logs de un contenedor.

&nbsp;

# curl

**VIA**: *man*

curl  is  a tool to transfer data from or to a server, using one of the supported protocols

**USO**: curl [options] [URL...]

Permite descargar un recurso desde un servidor usanfo un protocolo soportado.
