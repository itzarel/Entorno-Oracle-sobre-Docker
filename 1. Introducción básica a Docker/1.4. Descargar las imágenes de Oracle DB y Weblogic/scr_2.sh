#!/bin/bash

# Abrir el sitio de Docker Oracle WL site
sensible-browser https://hub.docker.com/_/oracle-weblogic-server-12c

echo "RECUERDA!: Aceptar 'Developer Tier'"
docker pull store/oracle/weblogic:12.2.1.3-dev

