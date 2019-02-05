# Práctica 2

### Múltiples nodos para entorno distribuido

Se deberá tener dos entornos completos (WL y DB) diferentes e independientes.
Cada WL deberá tener únicamente conexión a su respectiva DB, pero ambos entornos deberán ejecutarse a la vez (es decir, corriendo en paralelo).
Además, el WL deberá tener una carpeta compartida con el PC, es decir deberá haber una carpeta común entre PC local y Docker y viceversa.

***Recomendación***: Seguir los siguientes pasos para que las tareas sean más atómicas:

&nbsp;&nbsp;&nbsp;- Levantar nuevo contenedor de Weblogic

&nbsp;&nbsp;&nbsp;- Levantar nuevo contenedor de Oracle DB

&nbsp;&nbsp;&nbsp;- Conexión desde WL a Oracle DB