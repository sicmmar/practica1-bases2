create view VOTOSPRESIDENTE
as
(select dep.nombre_depto as departamento, mun.nombre_muni as municipio, 
par.nombre_part as partido, a.total_votos_validos
from ELECCIONES.departamento dep, ELECCIONES.municipio mun, ELECCIONES.acta a
inner join ELECCIONES.voto v on a.numero_mesa = v.voto_mesa 
inner join ELECCIONES.partido par on v.voto_partido = par.codigo_part
where a.departamento = dep.codigo_depto and a.municipio = mun.codigo_muni);

grant select on VOTOSPRESIDENTE to guest1;
