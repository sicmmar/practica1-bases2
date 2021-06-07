--alter session set "_ORACLE_SCRIPT"=true;
-- CREACIÓN DE ROLES CON SUS PERMISOS
create role upd;
grant UPDATE on ELECCIONES.acta to upd;
grant UPDATE on ELECCIONES.departamento to upd;
grant UPDATE on ELECCIONES.eleccion to upd;
grant UPDATE on ELECCIONES.municipio to upd;
grant UPDATE on ELECCIONES.partido to upd;
grant UPDATE on ELECCIONES.voto to upd;

create role ins;
grant INSERT on ELECCIONES.acta to ins;
grant INSERT on ELECCIONES.departamento to ins;
grant INSERT on ELECCIONES.eleccion to ins;
grant INSERT on ELECCIONES.municipio to ins;
grant INSERT on ELECCIONES.partido to ins;
grant INSERT on ELECCIONES.voto to ins;

create role sel;
grant SELECT on ELECCIONES.acta to sel;
grant SELECT on ELECCIONES.departamento to sel;
grant SELECT on ELECCIONES.eleccion to sel;
grant SELECT on ELECCIONES.municipio to sel;
grant SELECT on ELECCIONES.partido to sel;
grant SELECT on ELECCIONES.voto to sel;

create role del;
grant DELETE on ELECCIONES.acta to del;
grant DELETE on ELECCIONES.departamento to del;
grant DELETE on ELECCIONES.eleccion to del;
grant DELETE on ELECCIONES.municipio to del;
grant DELETE on ELECCIONES.partido to del;
grant DELETE on ELECCIONES.voto to del;

create role guest;
grant sel to guest;

create role mesas;
grant ins, sel to mesas;

create role it;
grant sel, create user, create table to it;

create role admin;
grant upd, ins, sel, del, create user to admin;

-------------------------------------------------------------------------------------------------------
-- CREACIÓN DE USUARIOS 

-- GUEST
create user guest1 identified by guest1
default tablespace ELECCIONESTBS;

grant guest to guest1;

create user guest2 identified by guest2
default tablespace ELECCIONESTBS;

grant guest to guest2;

create user guest3 identified by guest3
default tablespace ELECCIONESTBS;

grant guest to guest3;

-- MESAS
create user mesas1 identified by mesas1
default tablespace ELECCIONESTBS;

grant mesas to mesas1;

create user mesas2 identified by mesas2
default tablespace ELECCIONESTBS;

grant mesas to mesas2;

create user mesas3 identified by mesas3
default tablespace ELECCIONESTBS;

grant mesas to mesas3;

create user mesas4 identified by mesas4
default tablespace ELECCIONESTBS;

grant mesas to mesas4;

-- IT
create user it1 identified by it1
default tablespace ELECCIONESTBS;

grant mesas to it1;

create user it2 identified by it2
default tablespace ELECCIONESTBS;

grant it to it2;

-- ADMIN
create user admin1 identified by admin1
default tablespace ELECCIONESTBS;

grant admin to admin1;

create user admin2 identified by admin2
default tablespace ELECCIONESTBS;

grant admin to admin2;

