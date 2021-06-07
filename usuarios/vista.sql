select dep.nombre_depto as departamento, mun.nombre_muni as municipio
from ELECCIONES.acta a, ELECCIONES.departamento dep, ELECCIONES.municipio mun
where a.departamento = dep.codigo_depto and a.municipio = mun.codigo_muni;