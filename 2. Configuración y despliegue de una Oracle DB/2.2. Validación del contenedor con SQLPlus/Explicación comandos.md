# docker exec

**VIA**: <https://docs.docker.com/engine/reference/commandline/exec/>

Run a command in a running container

&nbsp;&nbsp;&nbsp;-i, --interactive	Keep STDIN open even if not attached

&nbsp;&nbsp;&nbsp;-t, --tty		Allocate a pseudo-TTY

&nbsp;&nbsp;&nbsp;-c		        Run many commands:

**USO**: `docker exec [OPTIONS] CONTAINER COMMAND [ARG...]`

Permite ejecutar un comando en un contenedor lanzado.

&nbsp;

# sqlplus /nolog

**VIA**: <https://docs.oracle.com/cd/B19306_01/server.102/b14238/smtosp.htm>

If you want SQL*Plus to behave in the same way as Server Manager, then use the NOLOG option when you start SQL*Plus. SQL*Plus starts and you can use the CONNECT command to connect as a user.

**USO**: `sqlplus /nolog`

Lanza la aplicación de SQLPLus por la cual se puede conectar a una BBDD e interactuar con ella empleando SQL.

&nbsp;

# connect

**VIA**: <https://docs.oracle.com/cd/B19306_01/server.102/b14238/smtosp.htm>

**VIA**: <https://docs.oracle.com/database/121/ADMQS/GUID-DE8A79BD-FAE4-4364-98FF-D2BD992A06E7.htm>

To start Server Manager, enter the name of the Server Manager program at a system prompt; the name of this program is operating system-specific. After you start up Server Manager, connect using the CONNECT command.

**USO**: dos opciones válidas:

&nbsp;&nbsp;&nbsp;`CONNECT hr/hr` &nbsp; o &nbsp; `CONNECT hr AS hr`

Tras haber lanzado el comando de sqlplus, esta opción nos permite conectar a una BBDD concreta con un usuario determinado.