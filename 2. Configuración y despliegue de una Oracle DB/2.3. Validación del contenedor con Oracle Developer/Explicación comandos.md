# CREATE TABLE

**VIA**: <https://docs.oracle.com/cd/B28359_01/server.111/b28310/tables003.htm>

To create a new table in your schema, you must have the CREATE TABLE system privilege. To create a table in another user's schema, you must have the CREATE ANY TABLE system privilege. Additionally, the owner of the table must have a quota for the tablespace that contains the table, or the UNLIMITED TABLESPACE system privilege.
Create tables using the SQL statement CREATE TABLE.

**USO**: `CREATE TABLE <TABLE> (<COLUMN_1>, <COLUMN_2>, ...);`

Este comando SQL nos permitirá crear una nueva tabla `<TABLE>` con N columnas `<COLUM_N>`.