spool BLFST_VC_small03.txt
--------------------------------------------------------------------------------
-- Load triples from the stage table
--------------------------------------------------------------------------------

-- First run the script to calibrate the disk
conn opoce/Opoce2017
set echo on;

-- Make sure parallelism is fully enabled
alter session force parallel DDL parallel 20;
alter session force parallel DML parallel 20;
alter session force parallel QUERY parallel 20;

-- Check count of quads to process
-- select count(*) from stage_table;

-- create model cdm 
--EXECUTE SEM_APIS.CREATE_SEM_MODEL('cdm', 'cdm_data', 'triple');

-- Clear the loading log
--insert into RDF$ET_TAB_BCK  select * from RDF$ET_TAB;
--truncate table RDF$ET_TAB;
--truncate table CDM_DATA;

-- alter session and trace
alter session set tracefile_identifier='BLK_VC_small03'; 

-- Load from the staging table into the model
-- Flags used:
--   PARSE: allows parsing of triples retrieved from the staging table (also parses triples containing graph names).
--   PARSE_ON_ERROR=REPORT_INVALID_VALUES: 
--   DEBUG_TRACE=T: record additional trace info in RDF$ET_TAB
--   DEBUG_TRACE_SQL=T: record all SQL statements in RDF$ET_TAB
--   MBV_METHOD=SHADOW: allows the use of a different value loading strategy that may lead to faster processing for small loads.
--   PARALLEL=4: degree of parallelism for the load.
GRANT insert on cdm_data to MDSYS;
GRANT select on stage_table_VC to MDSYS;
GRANT select, insert, update on RDF$ET_TAB to MDSYS;

set timing on;
begin
  SEM_APIS.BULK_LOAD_FROM_STAGING_TABLE(
    model_name => 'cdm', 
    table_owner => 'opoce', 
    table_name => 'stage_table_VC',
    flags => ' PARSE PARSE_ON_ERROR=REPORT_INVALID_VALUES DEBUG_TRACE=T DEBUG_TRACE_SQL=T  MBV_METHOD=SHADOW DEDUP=PURGE PARALLEL=20 FORCE_PARALLEL EXPLAIN_PLAN '
    -- flags => 'DEBUG_TRACE=T DEBUG_TRACE_SQL=T MBV_METHOD=SHADOW'
    -- flags => 'PARSE PARSE_ON_ERROR=REPORT_INVALID_VALUES DEBUG_TRACE=T DEBUG_TRACE_SQL=T MBV_METHOD=SHADOW'
  );
end;
/
set timing off

-- Check counts of triples loaded
select count(*) from cdm_data where rownum<10000 ;

-- Spot check some random triples
-- select t.triple.GET_TRIPLE() from cdm_data sample(0.001) t;

@ et_tab_script.sql

spool off

