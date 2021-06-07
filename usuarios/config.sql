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
alter system set sga_target=700M;

alter system set processes=1500;
show parameter processes;


alter system set sessions=500;
show parameter sessions;

alter system set pga_aggregate_target=100M;
show parameter pga;

SELECT * FROM DBA_ROLES;

SELECT username, created FROM all_users where created > '01-JUN-21';
