# export

**VIA**: <https://ss64.com/bash/export.html>

Set an environment variable. The supplied names are marked for automatic export to the environment of subsequently executed commands.

**USO**: `export [-fn] [name[=value]]`

Nos permite crear una variable de entorno que posteriormente podremos ir empleando.
Será bastante útil para el resto de temas.

&nbsp;

# cat

**VIA**: *man*

Concatenate FILE(s) to standard output.
With no FILE, or when FILE is -, read standard input.

**USO**: `cat [OPTION]... [FILE]...`

Permite mostrar la información de un archivo por la salida estandar.

&nbsp;

# docker run

**VIA**: <https://docs.docker.com/engine/reference/commandline/run/>

&nbsp;&nbsp;&nbsp;-v, --volume		Bind mount a volume

**USO**: `docker run [OPTIONS] IMAGE [COMMAND] [ARG...]`

Este comando ya lo hemos explicado, permite lanzar una imagen. En este caso emplearemos la opción adicional *"-v"* que permite **montar un recurso** de nuestra máquina en el **contenedor**.

&nbsp;

# docker rm

**VIA**: <https://docs.docker.com/engine/reference/commandline/rm/>

Remove one or more containers

**USO**: `docker rm [OPTIONS] CONTAINER [CONTAINER...]`

Permite eliminar uno o más contenedores.
