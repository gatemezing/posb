--------------------------------------------------------------------------------
-- Cleanup - Run as SYSTEM or SYS
--------------------------------------------------------------------------------
-- Drop the directory 
drop directory rdf_data_dir;
drop directory rdf_log_dir;
drop directory rdf_bad_dir;

-- Drop the semantic network
exec sem_apis.drop_sem_network();

-- Revoke java access to the data directory
exec dbms_java.revoke_permission('OPOCE', 'SYS:java.io.FilePermission','/stage/pz_normalize_full/data2bio', 'read' )
