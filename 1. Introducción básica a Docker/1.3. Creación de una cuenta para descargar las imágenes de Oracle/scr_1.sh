#!/bin/bash

# Abrir el sitio de 'Docker Oracle DB'
sensible-browser https://hub.docker.com/_/oracle-database-enterprise-edition

echo "Hacer el checkout"
echo "En 'id.docker.com/login' clic sobre 'Create account'"
echo "Crear una nueva account en 'https://hub.docker.com/signup'"

# Login
docker login

# Logout
docker logout


echo "Login en Oracle - oracle-database-enterprise-edition"
sensible-browser https://hub.docker.com/_/oracle-database-enterprise-edition
echo "Hacer el checkout"
echo 'Obtener la "Oracle Database Enterprise Edition"'
echo 'Rellenar "Contact Information"'
echo 'Aceptar "Developer Tier"'
echo "Copy and paste to pull this image"


echo "Login on Oracle - oracle-weblogic-server-12c"
sensible-browser https://hub.docker.com/_/oracle-weblogic-server-12c
echo "Hacer el checkout"
echo 'Obtener el "Oracle WebLogic Server"'
echo 'Rellenar "Contact Information"'
echo 'Aceptar "Developer Tier"'
echo "Copy and paste to pull this image"
