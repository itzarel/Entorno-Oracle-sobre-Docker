#!/bin/bash

echo "Después que aparezca que el servidor está corriendo:"
echo "'<Dec 14, 2018 11:25:35,488 AM GMT> <Notice> <WebLogicServer> <BEA-000365> <Server state changed to RUNNING.> '"

sensible-browser https://localhots:9002/console

echo "A continuación deberemos escribir las credenciales que pusimos previamente en el archivo 'domain.properties'"

echo "Ahora podrás navegar por las distintas partes de tu Weblogic"
