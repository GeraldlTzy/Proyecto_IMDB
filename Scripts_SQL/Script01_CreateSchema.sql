CREATE SCHEMA IF NOT EXISTS SU;

/*See the engine*/
SHOW VARIABLES LIKE 'default_storage_engine';

CREATE USER 'su'@'localhost' IDENTIFIED BY 'su';
GRANT CREATE ON su.* TO 'su'@'localhost';

/*
 * Se supone que no funcionan igual que los de oracle, habrá que usar
 * esquemas creo
 * CREATE TABLESPACE tablespace_name;
 * DROP TABLESPACE tablespace_name;
 * InnoDB and NDB:
 *   [ADD DATAFILE 'file_name']
 *   [AUTOEXTEND_SIZE [=] value]
 *
 * InnoDB only:
 *   [FILE_BLOCK_SIZE = value]
 *   [ENCRYPTION [=] {'Y' | 'N'}]
 *
 * InnoDB and NDB:
 *   [ENGINE [=] engine_name]
 */