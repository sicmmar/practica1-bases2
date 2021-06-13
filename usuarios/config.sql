create tablespace ELECCIONESTBS
datafile 'ELECCIONESDTF.tbs'
size 250M
autoextend on maxsize 500M;

create user elecciones identified by elecciones
default tablespace ELECCIONESTBS;

grant all privileges to ELECCIONES;

SELECT DISTINCT sgm.TABLESPACE_NAME , dtf.file_name, (dtf.bytes/1024)/1024 as MB,
(dtf.maxbytes/1024)/1024 as MAX_MB
FROM DBA_SEGMENTS sgm
JOIN DBA_DATA_FILES dtf ON (sgm.TABLESPACE_NAME = dtf.TABLESPACE_NAME);

-- PARAMETROS

alter system set sga_target=500M;
show parameter sga_target;
alter system set sga_target=700M;

alter system set processes=1500;
show parameter processes;


alter system set sessions = 500;
show parameter sessions;
show con_name;
alter session set container=CDB$ROOT;
alter session set container=PDB$SEED;


alter system set pga_aggregate_target=100M;
show parameter pga;

SELECT * FROM DBA_ROLES;

SELECT username, created FROM all_users where created > '01-JUN-21';
