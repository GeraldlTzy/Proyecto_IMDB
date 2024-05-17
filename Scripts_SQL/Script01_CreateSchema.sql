CREATE SCHEMA IF NOT EXISTS su;

create role su_user;
create user 'su'@'localhost' IDENTIFIED BY 'su';
grant select, drop, insert, update, create, alter, delete on su.* to 'su'@'localhost';
grant create routine, alter routine on su.* to 'su'@'localhost'

/*drop user 'su'@'localhost';
create user 'su'@'localhost' IDENTIFIED BY 'su';
grant su_user to 'su'@'localhost';*/
/*
 * Se supone que no funcionan igual que los de oracle, habrá que usar
 * esquemas creo
 * CREATE TABLESPACE tb1;
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
