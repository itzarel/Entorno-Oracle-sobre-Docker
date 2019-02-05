# Tests

## Pregunta 1

#### ¿Cómo se puede obtener una nueva imagen desde el respositorio de docker?

1. docker push

2. docker pull

3. docker run

4. docker get

> Respuesta [ 2 ]

## Pregunta 2

#### ¿Con qué comando se pueden ver los contenedores que están levantados?

1. docker ps -all

2. docker ps -a

3. docker ps

4. docker ls

> Respuesta [ 3 ]

## Pregunta 3

#### ¿Con qué comando se pueden ver la información que registra un contenedor?

1. `docker logs CONTAINER ID` o `docker logs NAME`

2. docker logs IMAGE

3. docker log

4. `docker log CONTAINER ID` o `docker log NAME`

> Respuesta [ 1 ]

## Pregunta 4

#### ¿Con qué comando se pueden cerrar la sesión de docker?

1. docker login

2. docker close

3. docker logout

4. docker out

> Respuesta [ 3 ]

## Pregunta 5

#### ¿La imagen de Oracle Weblogic puede ser descargada directamente a través de docker pull?

1. Sí

2. No es necesario registrarse

3. Sólo si eres Chuck Norris

4. Si encaso de haberte registrado y descargado la imagen con antelación

> Respuesta [ 2, 4 ]

## Pregunta 6

#### ¿Qué comando nos permite lanzar un contenedor creándolo previamente?

1. docker run

2. docker start

3. docker init

4. Es correcto tanto la uno como la dos

> Respuesta [ 1 ]

## Pregunta 7

#### ¿Qué comando nos permite lanzar un contenedor ya creado?

1. docker run

2. docker start

3. docker init

4. Es correcto tanto la uno como la dos

> Respuesta [ 2 ]

## Pregunta 8

#### Cuando hacemos un docker run ¿Qué indica el parámetro "-p"?

1. Se va a lanzar en modo desatendido

2. Se va a especificar un puerto

3. Se va a especificar el nombre del contenedor

4. Se va a crear un tunel

> Respuesta [ 4 ]

## Pregunta 9

#### Cuando hacemos un docker run ¿Qué indica el parámetro "-d"?

1. Se va a lanzar en modo desatendido

2. Se va a especificar un puerto

3. Se va a especificar el nombre del contenedor

4. Se va a crear un tunel

> Respuesta [ 1 ]

## Pregunta 10

#### Cuando hacemos un docker run ¿Qué indica el parámetro "--name"?

1. Se va a lanzar en modo desatendido

2. Se va a especificar un puerto

3. Se va a especificar el nombre del contenedor

4. Se va a crear un tunel

> Respuesta [ 3 ]

## Pregunta 11

#### ¿Para que se emplean el SQLPlus o el SQL Developer?

1. Para hacer palomitas mientras veo la peli de Bob Esponja

2. Es un interprete de SQL para las Oracle DB

3. Para insertar registros

4. Para recuperar la información de logs de los contenedores de Oracle

> Respuesta [ 2 ]

## Pregunta 12

#### ¿Si al hacer el docker run he empleado el parámetro "-p" que dirección deberé poner para poder acceder al contenedor de Oracle DB?

1. La que le haya dado el DHCP del router

2. La IP del contenedor

3. La redirección que me diga Windows

4. Localhost

> Respuesta [ 2, 4 ]

## Pregunta 13

#### ¿Si al hacer el docker run he empleado el parámetro "-p" para hacer INSERTS en la Oracle DB deberé acceder directamente dentro del contenedor y ejecutar un interprete y si no lo tengo instalado lo deberé instalar con un `apt instar` o un `yum` según el OS del contenedor?

1. Sí en cualquier caso y como unico medio

2. Sí, es uno de los medios para hacer inserts

3. Puedo acceder desde mi máquina al contenedor empleando un un cliente SQL

4. Deberé hacer un netstat para validar el tráfico ya que seguramente no esté habilitado

> Respuesta [ 2, 3 ]

## Pregunta 14

#### ¿Qué me permite hacer el parámetro "-v" en el docker run?

1. Montar un volumen al contenedor

2. Subir el volumen del contenedor

3. Recuperar un valor determinado que se especificará después de este "-v"

4. 42

> Respuesta [ 1 ]

## Pregunta 15

#### ¿Cómo podemos saber que el contenedor de Weblogic se ha lanzado y está funcionando?

1. Accediendo a la consola hasta que me permita acceder

2. Accediendo a los logs de Weblogic por terminal hasta que salga la `Server state changed to RUNNING`

3. Lanzando el comando docker logs sobre el contenedor hasta que salfa `Server state changed to RUNNING`

4. Haciendo un curl

> Respuesta [ 2, 3 ]

## Pregunta 16

#### ¿Cual de estas opciones dependen de un domain de WL?

1. Environment y Services

2. Deployments y Security Realms

3. Diagnostics y Domain Partitions

4. Interoperability

> Respuesta [ 1, 2, 3, 4 ]

## Pregunta 17

#### Tras acceder del login de WL ¿Qué es lo primero que se muestra?

1. System Status

2. La conexión a BBDD

3. Los deployments en estado OK

4. Las opciones de la consola

> Respuesta [ 1, 4 ]

## Pregunta 18

#### Si estoy configurando la conexión al contenedor de Oracle DB ¿Puedo poner localhost si he lanzado el Oracle DB con la opción "-p"?

1. No, debo poner la IP del contenedor

2. Sí ya que he puesto el "-p"

3. Steve Jobs seguro que te lo hubiera vendido (Steve Wozniak 4 president)

4. Es indistinta la opción 1 y la 2

> Respuesta [ 2 ]

## Pregunta 19

#### ¿Que comando nos permite recuperar la dirección IP del contenedor?

1. docker ps -ip

2. docker ip

3. docker inspect

4. docker export

> Respuesta [ 3 ]

## Pregunta 20

#### ¿Que permite docker exec?

1. Exportar un contenedor

2. Importar un contenedor

3. Ejecutar un comando o lanzar una aplicación en el contenedor

4. Ejecutar un ls en el contenedor

> Respuesta [ 3 ]

## Pregunta 21

#### ¿Que permite docker exec?

1. Exportar un contenedor

2. Importar un contenedor

3. Ejecutar un comando o lanzar una aplicación en el contenedor

4. Ejecutar un ls en el contenedor

> Respuesta [ 3 ]

## Pregunta 22

#### ¿Que capas normalmente tiene un API REST?

1. Modelo de datos, repositorio, servicio y recurso

2. Modelo de datos, repositorio y servicio

3. Modelo de datos, repositorio, servicio, recurso y Postman

4. Modelo de datos y recurso

> Respuesta [ 1 ]

## Pregunta 23

#### Entre otros formatos ¿Que formato de aplicación aceptar Weblogic?

1. WAR

2. EAR

3. TAR, ZIP, 7Z...

4. Entre otros la 1 y la 2

> Respuesta [ 4 ]

## Pregunta 24

#### Entre otras opciones ¿Que nos permite hacer Postman?

1. Tespear APIs en red

2. Unos maravillosos reportajes que haga competencia a Peter Parker

3. Hacer submits de un formulario concreto

4. Probar peticiones GET, POST, PUT entre otras

> Respuesta [ 1, 4 ]

## Pregunta 25

#### ¿Cómo se puede añadir una nueva petición en Postman?

1. Yendo a Archivo >> Nueva petición

2. Importando un proyecto anterior

3. Copiando un proyecto ya existente

4. Haciendo clic sobre el + situado en la sección donde están las pestañas de las peticiones.

> Respuesta [ 4 ]

## Pregunta 26

#### ¿Qué funcionalidad tiene netstat?

1. Filtrar el contenido

2. Recuperar información de la red según las opciones que se le hayan pasado

3. Muestra los puertos disponibles de docker

4. Es un alias para docker run

> Respuesta [ 2 ]

## Pregunta 27

#### ¿Podemos tener N contenedores levantados de una misma imagen?

1. Sí

2. No, docker retorna un error

3. Sólo 3

4. Únicamente si estamos en un sistema basado en Linux o Unix

> Respuesta [ 1 ]

## Pregunta 28

#### Si usas como nombre de un contenedor otro que ya existe ¿Qué error retorna?

1. docker:   Error checking TLS connection: Error checking and/or regenerating the certs: There was an error validating certificates for host "192.168.99.100:2376": dial tcp 192.168.99.100:2376: i/o timeout

2. docker: Nullpointer exception

3. docker: Error response from daemon: Conflict. The container name "/<CONTAINER_NAME>" is already in use by container "<ID>". You have to remove (or rename) that container to be able to reuse that name.

4. docker: Network timed out while trying to connect to https://index.docker.io/v1/repositories/library/hello-world/images. You may want to check your internet connection or if you are behind a proxy.

> Respuesta [ 3 ]

## Pregunta 29

#### Si ya tengo un puerto capturado por un contenedor y quiero levantar otro que emplea ese mismo puerto ¿Puedo levantar este nuevo?

1. No en ningún caso

2. Docker se encarga de organizar el tráfico, no hay que preocuparse

3. Hay que revisar la routing table.

4. Si el puerto 8080 está ya empleado por un contenedor puedo emplear `-p 8082:8080` cuando haga el nuevo docker run.

> Respuesta [ 4 ]

## Pregunta 30

#### Cuando se está definiendo la conexión a la BBDD desde el WL, en la URL ¿Puedo poner poner localhost?

1. Sí se puede emplear jdbc:oracle:thin:@//localhost

2. Siempre se ha de especificar la IP, nunca localhost

3. Independientemente

4. En algunos casos determinados

> Respuesta [ 2 ]

## Pregunta 31

#### ¿Que funcionalidad tiene docker export?

1. Esta pregunta es demasiado fácil, por favor haznos preguntas más difíciles, la respuesta es para exportar contenedores

2. Para importar contendores

3. Generar estadísticas de docker

4. Hacer una compresión de un contenedor

> Respuesta [ 1 ]

## Pregunta 32

#### ¿Por defecto qué formato se suele emplear para exportar un contenedor?

1. EAR

2. WAR

3. TAR

4. EXE

> Respuesta [ 3 ]

## Pregunta 33

#### ¿Qué genera un archivo comprimido de un contenedor?

1. docker export -o="$EXPORT_FOLDER/first_example.tar" only_testing_porpouse

2. docker export --output="$EXPORT_FOLDER/second_example.tar" only_testing_porpouse

3. docker export only_testing_porpouse > $EXPORT_FOLDER/third_example.tar

4. docker export only_testing_porpouse | gzip > $EXPORT_FOLDER/fourth_example.gz

> Respuesta [ 4 ]

## Pregunta 33

#### ¿Se puede importar directamente un contenedor?

1. Sí empleando únicamente docker import

2. No, primero es necesario capturar el archivo empleando (entre otras opciones) tar

3. Primero se debe hacer uso de grep

4. Nunca se emplea esta opción

> Respuesta [ 2 ]

## Pregunta 34

#### ¿Cómo se puede importar un archivo comprimido con una imagen?

1. tar -c first_example.tar | docker import - fourth_import_example:IMPORTANT

2. docker images | grep second_import_example

3. zcat fourth_example.gz | docker import - fifth_import_example

4. echo "El hombre de negro conduce tu ferrari con los pies de dos hormigas"

> Respuesta [ 3 ]

## Pregunta 35

#### ¿Cual de los siguientes comandos importa una nueva imagen con un tag nuevo?

1. tar -c first_example.tar | docker import - fourth_import_example:IMPORTANT

2. docker images | grep second_import_example

3. zcat fourth_example.gz | docker import - fifth_import_example

4. echo "Ayer me lo dirá dentro de 3 hora Mc Fly"

> Respuesta [ 1 ]

## Pregunta 36

#### ¿Qué comando importa una imagen desde Internet?

1. docker export http://example.com/exampleimage.tgz

2. docker import http://example.com/exampleimage.tgz

3. docker import --web http://example.com/exampleimage.tgz

4. docker import -w http://example.com/exampleimage.tgz

> Respuesta [ 2 ]

## Pregunta 37

#### ¿Dónde puedo consultar los contenedores de Oracle?

1. https://hub.docker.com/_/oracle-database-enterprise-edition

2. https://hub.docker.com/_/oracle-weblogic-server-12c

3. https://hub.docker.com/publishers/oracle

4. https://www.oracle.com/es/index.html

> Respuesta [ 3 ]

## Pregunta 38

#### ¿Qué permite hacer el comando curl?

1. Copiar una URL

2. Comerme una rosquilla

3. Obtener logs

4. Permite descargar un recurso desde un servidor usanfo un protocolo soportado.

> Respuesta [ 4 ]

## Pregunta 39

#### ¿Con qué comando se pueden iniciar la sesión de docker?

1. docker login

2. docker close

3. docker logout

4. docker out

> Respuesta [ 1 ]

## Pregunta 40

#### ¿Cómo se puede mostrar los subelementos de una carpeta sin acceder al contenedor?

1. docker exec -it real-oracle-db bash "ls"

2. docker exec -it real-oracle-db bash -c "ls"

3. docker exec -it real-oracle-db ls

4. ls

> Respuesta [ 2 ]

