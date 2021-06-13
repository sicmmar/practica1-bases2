create tablespace BACKUPTBS
datafile 'BACKUPDTF.tbs'
size 250M
autoextend on maxsize 500M;

create user backupu identified by backupu
default tablespace BACKUPTBS;

grant all privileges to backupu;

drop table equipo;
drop table jugador;
drop table jornada;
drop table liga;
drop table partido;


create tablespace EQUIPOTBS
datafile 'EQUIPODTF.tbs'
size 250M
autoextend on maxsize 500M;

create user eq identified by eq
default tablespace EQUIPOTBS;

grant all privileges to eq;