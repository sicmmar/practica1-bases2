create tablespace BACKUPTBS
datafile 'BACKUPDTF.tbs'
size 250M
autoextend on maxsize 500M;

create user backupu identified by backupu
default tablespace BACKUPTBS;

grant all privileges to backupu;