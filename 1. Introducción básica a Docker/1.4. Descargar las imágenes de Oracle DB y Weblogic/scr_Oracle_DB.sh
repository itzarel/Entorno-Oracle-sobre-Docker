#!/bin/bash

# Abrir el sitio de Docker Oracle DB
sensible-browser https://hub.docker.com/_/oracle-database-enterprise-edition

echo "RECUERDA!: Acceptar 'Developer Tier'"
docker pull store/oracle/database-enterprise:12.2.0.1
