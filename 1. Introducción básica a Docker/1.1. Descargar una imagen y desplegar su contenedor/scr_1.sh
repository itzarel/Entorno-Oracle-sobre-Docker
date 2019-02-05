#!/bin/bash

# Abrir la documentación del nuevo contenedor
sensible-browser https://hub.docker.com/_/hello-world/

# Obtener la nueva imagen de hello world
docker pull hello-world

# Ejecutar hello world
docker run hello-world
