# Práctica 1
## Bases de Datos 2

Desarrollado por: 

Asunción Mariana Sic Sor **_201504051_**

## Tabla de Contenido

* [Permisos y Autenticación](#permisos-y-autenticación)
    * [Configuración inicial](#configuración-inicial)
    * [Configuración de Roles](#roles)
* [Referencias](#referencias)

# Permisos y Autenticación
## Configuración Inicial
### TableSpace

Para crear el tablespace, se requiere lo siguiente

|Propiedad|Nombre|
|:--:|:--:|
|TableSpace|ELECCIONESTBS|
|DataFile|ELECCIONESDTF.tbs|
|Tamaño DataFile|250MB ~ 500MB|

Se creó de la siguiente manera:
```sql
create tablespace ELECCIONESTBS
datafile 'ELECCIONESDTF.tbs'
size 250M
autoextend on maxsize 500M;
```

![](img/tablespace.PNG)

### Schema

El nombre del schema será ```ELECCIONES``` asignando el tablespace creado [anteriormente](#tablespace).

Para esto, se crea de la siguiente manera:
```sql
create user elecciones identified by elecciones
default tablespace ELECCIONESTBS;

grant all privileges to ELECCIONES;
```
Se ejecuta y se crea con éxito

![](img/cr_user.PNG)

### Parámetros Iniciales

Parámetros requeridos
|Parámetro|Tamaño|
|:--:|:--:|
|SGA|500MB|
|Processes|1500|
|Sessions|500|
|PGA|100MB|

#### SGA

Es un parámetro modificable que configura el tamaño de la memoria SGA.

Se cambia de la siguiente manera
```sql
alter system set sga_target=500M;
show parameter sga_target;
```

![](img/p_sga.png)

#### Processes

Este parámetro modifica la cantidad máxima de procesos admitidos que el usuario puede realizar mientras utiliza Oracle en el Sistema Operativo anfitrión, por lo tanto dependerá del número de cores que contiene la máquina y por esa razón no se puede modificar el número [[1]](#1)

![](img/p_pr.png)

#### Sessions



#### PGA
Se modifica de la siguiente manera 
```sql
alter system set pga_aggregate_target=100M;
show parameter pga;
```
![](img/cr_pga.png)

## Roles



# Referencias
## 1 
Oracle (2019). Database Reference: 1.266 PROCESSES Junio 5, 2021, de Oracle Sitio web: [https://docs.oracle.com/en/database/oracle/oracle-database/18/refrn/PROCESSES.html#GUID-B757AF80-DA38-4167-A914-FE376A3AD4FE](https://docs.oracle.com/en/database/oracle/oracle-database/18/refrn/PROCESSES.html#GUID-B757AF80-DA38-4167-A914-FE376A3AD4FE)
