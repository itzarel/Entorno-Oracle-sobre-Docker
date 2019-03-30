# Recapitulación del contenido visto hasta el momento

En el anterior tema vimos como **descargarnos imágenes** desde el respositorio de Oracle y como **ejecutarlas**. Además vimos que para poder hacer uso de las imágenes de Oracle debíamos registrarnos con una cuenta tanto de Oracle como de Docker.

&nbsp;

En este tema nos hemos conectado a la DB de Oracle tras lanzar el contenedor de **Oracle-DB** empleando el comando:

`docker run -d -p 8080:8080 -p 1521:1521 --name real-oracle-db store/oracle/database-enterprise:12.2.0.1`

Y posteriormente nos hemos conectado a éste contenedor empleando el comando **'sqlplus'**:

`docker exec -it real-oracle-db bash -c "source /home/oracle/.bashrc; sqlplus /nolog"
connect sys as sysdba;`

Estando dentro del SQLPLus lanzamos los siguientes comandos para poder crear un **usuario nuevo**:

Password as 'Oradoc_db1'
alter session set '_ORACLE_SCRIPT'=true;"
create user dummy identified by dummy;"
GRANT CONNECT, RESOURCE, DBA TO dummy;"

Que nos permitieron:

&nbsp;&nbsp;&nbsp;(1) Crear la **password** para el usuario **'sys'**

&nbsp;&nbsp;&nbsp;(2) Crear el **usuario dummy**

&nbsp;&nbsp;&nbsp;(3) Concederle **permisos** para que pueda funcionar correctamente.

&nbsp;

Finalmente nos conectamos al SQL Developer y lanzamos el comando:

CREATE TABLE openwebinar_oracle_db_docker (key integer, value varchar2(20));

Para tener nuestra **primera tabla creada** en el **contenedor**. Posteriormente abrimos el script *insert_data.sql* desde el Oracle Developer para **añadir información** a la **tabla** anteriormente creada.
