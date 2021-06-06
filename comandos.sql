create tablespace ELECCIONESTBS
datafile 'ELECCIONESDTF.tbs'
size 250M
autoextend on maxsize 500M;

create user elecciones identified by elecciones
default tablespace ELECCIONESTBS;

grant all privileges to ELECCIONES;

-- PARAMETROS

alter system set sga_target=500M;
show parameter sga_target;


alter system set processes=1500;
show parameter processes;

