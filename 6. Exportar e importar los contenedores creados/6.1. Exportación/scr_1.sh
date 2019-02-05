#!/bin/bash

sensible-browser https://docs.docker.com/engine/reference/commandline/export/

export MY_HOME=dsebastm
export EXPORT_FOLDER=/home/$MY_HOME/docker/exported_images
mkdir $EXPORT_FOLDER

echo "Haremos esto unicamente para esta prueba"
docker pull hello-world
docker run --name only_testing_porpouse hello-world

# Exporta sin compresión
echo 'docker export -o="[location_path]/first_example.tar" <CONTAINER_NAME>'
docker export -o="$EXPORT_FOLDER/first_example.tar" only_testing_porpouse

echo 'docker export --output="[location_path]/second_example.tar" <CONTAINER_NAME>'
docker export --output="$EXPORT_FOLDER/second_example.tar" only_testing_porpouse

echo 'docker export <CONTAINER_NAME> > [location_path]/third_example.tar'
docker export only_testing_porpouse > $EXPORT_FOLDER/third_example.tar

# Exporta con compresión
echo 'docker export <CONTAINER_NAME> | gzip > [location_path]/fourth_example.gz'
docker export only_testing_porpouse | gzip > $EXPORT_FOLDER/fourth_example.gz
