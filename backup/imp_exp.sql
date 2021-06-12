CREATE DIRECTORY exp_equipos AS 'C:\DataPump\ExportEquipos';

GRANT read, write ON DIRECTORY exp_equipos TO backupu;
GRANT  DATAPUMP_EXP_FULL_DATABASE TO backupu;

--expdp backupu/backupu DIRECTORY=exp_equipos DUMPFILE=exp_eq.dmp LOGFILE=eq_lg.log TABLES=backupu.Jugador, backupu.Equipo CONTENT=METADATA_ONLY

-- LUEGO LA IMPORTACION

--impdp impeq/impeq DIRECTORY=exp_equipos DUMPFILE=exp_eq.dmp LOGFILE=eq_lg.log full=y

