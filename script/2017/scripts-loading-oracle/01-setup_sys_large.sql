set echo on pages 10000
--------------------------------------------------------------------------------
-- Setup - Run as SYSTEM or SYS
--------------------------------------------------------------------------------
-- Define a directory (run as SYS or SYSTEM or MDSYS)
-- create or replace directory rdf_data_dir as '/stage/pz_normalize_full/data/';
create or replace directory rdf_data_dir as '/stage/pz_normalize_full/data5bio';

-- create or replace directory rdf_log_dir as '/stage/pz_normalize_full/log/';
create or replace directory rdf_log_dir as '/stage/pz_normalize_full/log/';
-- create or replace directory rdf_bad_dir as '/stage/pz_normalize_full/bad/';
create or replace directory rdf_bad_dir as '/stage/pz_normalize_full/bad/';
grant read,write on directory rdf_data_dir to opoce;
grant read,write on directory rdf_log_dir to opoce;
grant read,write on directory rdf_bad_dir to opoce;


-- Define the semantic network
--exec sem_apis.create_sem_network('OPOCE_TPL2');

-- exec sem_apis.add_sem_index('SPCGM');
exec sem_apis.drop_sem_index('PSCGM');
-- Grant java access to the data directory
-- exec dbms_java.grant_permission('OPOCE', 'SYS:java.io.FilePermission','/stage/pz_normalize_full/data', 'read' )
exec dbms_java.grant_permission('OPOCE', 'SYS:java.io.FilePermission','/stage/pz_normalize_full/data5bio', 'read' )
