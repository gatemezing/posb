set echo on ;
spool LiST_CLOB_large02.txt

connect opoce/Opoce2017
alter session enable parallel dml;
truncate table stage_table_clob;

alter session set TRACEFILE_identifier='LiST_CLOB_large02';

set timing on;
exec SEM_APIS.LOAD_INTO_STAGING_TABLE(staging_table => 'STAGE_TABLE_CLOB', source_table  => 'STAGE_TABLE_SOURCE', input_format  => 'N-QUAD', staging_table_owner => 'OPOCE', source_table_owner  => 'OPOCE', parallel => 20, flags => '  CLOB_ONLY __dumpSQLstmts__ ');

commit;
set timing off

spool off

