#!/bin/bash

sensible-browser https://docs.docker.com/engine/reference/commandline/import/


# export MY_HOME=dsebastm
# export EXPORT_FOLDER=/home/$MY_HOME/docker/exported_images
cd $EXPORT_FOLDER

echo "docker import [OPTIONS] file - [REPOSITORY[:TAG]]"


# Importar sin compresión & sin optiones
echo 'tar <FILE> | docker import - <REPOSITORY>'
tar -c first_example.tar | docker import - first_import_example
docker images | grep first_import_example
docker history first_import_example

# Importar sin compresión & con mensaje de opción
echo 'tar <FILE> | docker import --message "<MESSAGE>" - <REPOSITORY>'
tar -c first_example.tar | docker import --message "Import example in Openwebinar" - second_import_example
docker images | grep second_import_example
docker history second_import_example

# Importar sin compresión & con cambio de opción (--change or -c)
echo "change: Apply Dockerfile instruction to the created image"
echo 'tar <FILE> | docker import --change "<OPTION>" - <REPOSITORY>'
tar -c first_example.tar | docker import --change "ENV DEBUG true" - third_import_example
docker images | grep third_import_example

# Importar sin compresión & con tag
echo 'tar <FILE> | docker import - <REPOSITORY>:<TAG>'
tar -c first_example.tar | docker import - fourth_import_example:IMPORTANT
docker images | grep fourth_import_example

# Importar con compresión
echo 'tar <FILE> | docker import - <REPOSITORY>'
zcat fourth_example.gz | docker import - fifth_import_example


docker images
