--------------------------------------------------------------------------------
-- Setup - Run as SCOTT or <ORA_USER>
--------------------------------------------------------------------------------

-- Make sure parallelism is fully enabled
alter session enable parallel DDL;
alter session enable parallel DML;
alter session enable parallel QUERY;

-- Drop tables if they exist
DROP TABLE RDF$ET_TAB purge;
DROP TABLE RDF$VE_TAB purge;
DROP TABLE load_catalog ;


-- Create the RDF$ET_TAB table to record a trace of the loading
CREATE TABLE RDF$ET_TAB (
  proc_sid      varchar2(30), 
  proc_sig      varchar2(200),
  event_name    varchar2(200),
  start_time    timestamp,
  end_time      timestamp,
  start_comment varchar2(1000) DEFAULT NULL,
  end_comment   varchar2(1000) DEFAULT NULL
);
GRANT INSERT, UPDATE on RDF$ET_TAB to MDSYS;

-- Create the RDF$VE_TAB (Value Error reporting table)

CREATE TABLE RDF$VE_TAB (
  proc_sid          VARCHAR2(30),
  proc_sig          VARCHAR2(200),
  lex_value         varchar2(4000),
  occur_positions   VARCHAR2(100),
  valid_positions   VARCHAR2(100),
  invalid_positions VARCHAR2(100),
  bad_value_error   VARCHAR2(1000)
);
GRANT INSERT on RDF$VE_TAB to MDSYS;


-- Create and initialize the loading catalog
-- CREATE TABLE load_catalog (
--  file_name     varchar2(100) primary key,
--  loaded        char check (loaded in ('Y','N','*')),
--  load_start    timestamp,
--  load_end      timestamp,
--  elapsed       number
--);
-- insert into load_catalog (file_name, loaded)
-- select column_value, 'N'
-- from table (list_files('RDF_DATA_DIR'))
-- where column_value like '%part-%.nq';

-- commit;

-- Create the triple store
 CREATE TABLE cdm_data (triple SDO_RDF_TRIPLE_S);

grant insert on cdm_data to mdsys;

-- Create the RDF model
EXECUTE SEM_APIS.CREATE_SEM_MODEL('cdm', 'cdm_data', 'triple');

-- Create the staging table
drop table stage_table purge;
CREATE TABLE stage_table (
  RDF$STC_sub   varchar2(4000) not null,
  RDF$STC_pred  varchar2(4000) not null,
  RDF$STC_obj   clob not null,
  RDF$STC_graph varchar2(4000)
) 
compress nologging;

-- Create a source external table
BEGIN
  sem_apis.create_source_external_table(
    source_table    => 'STAGE_TABLE_SOURCE',
    def_directory   => 'RDF_DATA_DIR',
    log_directory   => 'RDF_LOG_DIR',
    bad_directory   => 'RDF_BAD_DIR',
    flags           => 'CLOB=T CLOB_LEN=10485760 '
   );
END;
/
grant SELECT on STAGE_TABLE_SOURCE to MDSYS;

-- ALTER <external_table> LOCATION ('*part-*.nq');
ALTER TABLE STAGE_TABLE_SOURCE LOCATION ('*part-*.nq');
-- Check the structure of the external table
select dbms_metadata.get_ddl('TABLE','STAGE_TABLE_SOURCE') from dual;


