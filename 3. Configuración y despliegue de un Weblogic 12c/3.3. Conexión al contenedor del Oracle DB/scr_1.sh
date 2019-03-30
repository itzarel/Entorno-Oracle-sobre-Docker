#!/bin/bash

echo "Después de tener levantado tanto el contenedor de Oracle DB como de WL ejecutar:"
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' real-oracle-db
