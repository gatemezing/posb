#!/bin/bash
# run 5 times
# single client
# warm 20 times
# result in csv

# case virtuoso endpoint 
#./benchmark -s 0 -t 60 -q http://opoce.mondeca.com:8890/sparql -m mixqueries_vos.tsv -p 5 -r 5  -w 20 -c results/results_vso_5_group1.csv
#./benchmark -s 0 -t 60 -q http://opoce.mondeca.com:8890/sparql -m mixqueries_vos.tsv -p 20 -r 5 -w 20 -c results/results_vso_20_group1.csv
#./benchmark -s 0 -t 60 -q http://opoce.mondeca.com:8890/sparql -m mixqueries_vos.tsv -p 50 -r 5 -w 20 -c results/results_vso_50_group1.csv
#./benchmark -s 0 -t 60 -q http://opoce.mondeca.com:8890/sparql -m mixqueries_vos.tsv -p 70 -r 5 -w 20 -c results/results_vso_70_group1.csv
#./benchmark -s 0 -t 60 -q http://opoce.mondeca.com:8890/sparql -m mixqueries_vos.tsv -p 100 -r 5 -w 20 -c results/results_vso_100_group1.csv

# case blazegraph
#./benchmark -s 0 -t 60  -q http://opoce.mondeca.com:9999/blazegraph/namespace/opocenewdata/sparql -m mixqueries_vos.tsv -r 5 -w 20 -c results/results_blz_group1.csv

#case GDB
#./benchmark -s 0 -t 60  -q http://opoce.mondeca.com:7200/repositories/opoceProd -m mixqueries_vos.tsv -r 5 -w 20 -c results/results_gdb_group1.csv
#./benchmark -s 0 -t 60 -q http://opoce.mondeca.com:7200/repositories/opoceProdRdfsPlus -m mixqueries_vos.tsv -r 5 -w 20 -c results/results_gdbRdfs_group1.csv

#case stardog. sample curl with user: curl -u mondeca:MdK2016! -X GET "uri/query=..."
#./benchmark -s 0 -t 60  -q http://opoce.mondeca.com:5820/opoceProd/query  -m mixqueries_vos1.tsv -p 5 -r 5 -w 20 -c results/results_5_stg_group1.csv
#./benchmark -s 0 -t 10  -q http://opoce.mondeca.com:5820/opoceData/query -u http://opoce.mondeca.com:5820/opoceData/query -m mixqueries_cat3.tsv -p 5 -r 5 -w 20 -c results/results_stg_5_cat3_sameAs.csv
#./benchmark -s 0 -t 60  -q http://opoce.mondeca.com:5820/opoceProd/query  -m mixqueries_vos1.tsv -p 20 -r 5 -w 20 -c results/results_20_stg_group1.csv
#./benchmark -s 0 -t 10  -q http://opoce.mondeca.com:5820/opoceData/query -u http://opoce.mondeca.com:5820/opoceData/query  -m mixqueries_cat3.tsv -p 20 -r 5 -w 20 -c results/results_stg_20_cat3_sameAs.csv
#./benchmark -s 0 -t 60  -q http://opoce.mondeca.com:5820/opoceProd/query  -m mixqueries_vos1.tsv -p 50 -r 5 -w 20 -c results/results_50_stg_group1.csv
#./benchmark -s 0 -t 10  -q http://opoce.mondeca.com:5820/opoceData/query -u http://opoce.mondeca.com:5820/opoceData/query  -m mixqueries_cat3.tsv -p 50 -r 5 -w 20 -c results/results_stg_50_cat3_sameas.csv
#./benchmark -s 0 -t 60  -q http://opoce.mondeca.com:5820/opoceProd/query  -m mixqueries_vos1.tsv -p 70 -r 5 -w 20 -c results/results_70_stg_group1.csv
#./benchmark -s 0 -t 10  -q http://opoce.mondeca.com:5820/opoceData/query -u http://opoce.mondeca.com:5820/opoceData/query -m mixqueries_cat3.tsv -p 70 -r 5 -w 20 -c results/results_stg_70_cat3_sameas.csv
#./benchmark -s 0 -t 60  -q http://opoce.mondeca.com:5820/opoceProd/query  -m mixqueries_vos1.tsv -p 100 -r 5 -w 20 -c results/results_100_stg_group1.csv
#./benchmark -s 0 -t 10  -q http://opoce.mondeca.com:5820/opoceData/query -u http://opoce.mondeca.com:5820/opoceData/query -m mixqueries_cat3.tsv -p 100 -r 5 -w 20 -c results/results_stg_100_cat3_sameas.csv

## queries group 2
#./benchmark -s 0 -t 600  -q http://opoce.mondeca.com:5820/opoceProd/query  -m mixqueries_vos.tsv -r 5 -w 2 -c results/results_stdg_group2_.csv

# case oracle 12c - cat 1
#./benchmark -s -0 -t 60 -q http://opoce.mondeca.com:3030/oracle/sparql -m mixqueries_cat1_oracle.tsv -p 5 -r 5 -w 20 -c results/results_5_cat1_oracle.csv
#./benchmark -s -0 -t 60 -q http://opoce.mondeca.com:3030/oracle/sparql -m mixqueries_cat1_oracle.tsv -p 20 -r 5 -w 20 -c results/results_20_cat1_oracle.csv
#./benchmark -s -0 -t 60 -q http://opoce.mondeca.com:3030/oracle/sparql -m mixqueries_cat1_oracle.tsv -p 50 -r 5 -w 20 -c results/results_50_cat1_oracle.csv
#./benchmark -s -0 -t 60 -q http://opoce.mondeca.com:3030/oracle/sparql -m mixqueries_cat1_oracle.tsv -p 70 -r 5 -w 20 -c results/results_70_cat1_oracle.csv
#./benchmark -s -0 -t 60 -q http://opoce.mondeca.com:3030/oracle/sparql -m mixqueries_cat1_oracle.tsv -p 100 -r 5 -w 20 -c results/results_100_cat1_oracle.csv

# case oracle 12c - cat 3 ##
#./benchmark -s -0 -t 10 -q http://opoce.mondeca.com:3030/oracle/sparql -u http://opoce.mondeca.com:3030/oracle/update -m mixqueries_cat3_oracle.tsv -p 5 -r 5 -w 20 -c results/results_5_cat3_oracle.csv
#./benchmark -s -0 -t 10 -q http://opoce.mondeca.com:3030/oracle/sparql  -u http://opoce.mondeca.com:3030/oracle/update -m mixqueries_cat3_oracle.tsv -p 20 -r 5 -w 20 -c results/results_20_cat3_oracle.csv
#./benchmark -s -0 -t 10 -q http://opoce.mondeca.com:3030/oracle/sparql  -u http://opoce.mondeca.com:3030/oracle/update -m mixqueries_cat3_oracle.tsv -p 50 -r 5 -w 20 -c results/results_50_cat3_oracle.csv
#./benchmark -s -0 -t 10 -q http://opoce.mondeca.com:3030/oracle/sparql  -u http://opoce.mondeca.com:3030/oracle/update -m mixqueries_cat3_oracle.tsv -p 70 -r 5 -w 20 -c results/results_70_cat3_oracle.csv
#./benchmark -s -0 -t 10 -q http://opoce.mondeca.com:3030/oracle/sparql  -u http://opoce.mondeca.com:3030/oracle/update -m mixqueries_cat3_oracle.tsv -p 100 -r 5 -w 20 -c results/results_100_cat3_oracle.csv

# case virtuoso - catlogs 
#./benchmark -s -0 -t 300 -q http://opoce.mondeca.com:8890/sparql  -m mixqueries_catlogs.tsv -p 5 -r 5 -w 20 -c results/results_5_virtuoso_catlogs.csv
#./benchmark -s -0 -t 300 -q http://opoce.mondeca.com:8890/sparql  -m mixqueries_catlogs.tsv -p 20 -r 5 -w 20 -c results/results_20_virtuoso_catlogs.csv

# case virtuoso - cat 3 ##
#./benchmark -s -0 -t 10 -q http://opoce.mondeca.com:8890/sparql -u http://opoce.mondeca.com:8890/sparql -m mixqueries_cat3.tsv -p 5 -r 5 -w 20 -c results/results_5_cat3_virtuoso_backupOn.csv
#./benchmark -s -0 -t 10 -q http://opoce.mondeca.com:8890/sparql -u http://opoce.mondeca.com:8890/sparql -m mixqueries_cat3.tsv -p 20 -r 5 -w 20 -c results/results_20_virtuoso_cat3.csv
#./benchmark -s -0 -t 10 -q http://opoce.mondeca.com:8890/sparql -u http://opoce.mondeca.com:8890/sparql -m mixqueries_cat3.tsv -p 50 -r 5 -w 20 -c results/results_50_virtuoso_cat3.csv
#./benchmark -s -0 -t 10 -q http://opoce.mondeca.com:8890/sparql -u http://opoce.mondeca.com:8890/sparql -m mixqueries_cat3.tsv -p 70 -r 5 -w 20 -c results/results_70_virtuoso_cat3.csv
#./benchmark -s -0 -t 10 -q http://opoce.mondeca.com:8890/sparql -u http://opoce.mondeca.com:8890/sparql -m mixqueries_cat3.tsv -p 100 -r 5 -w 20 -c results/results_100_virtuoso_cat3.csv

# case Mklogic - catlogs ## timout=300s
#./benchmark  -s 0 -t 300 --password MdK2016! --username mondeca  -q http://opoce1.mondeca.com:8000/v1/graphs/sparql?database=opoceProd -m mixqueries_catlogs.tsv -p 70 -r 5 -w 20 -c results/results_70_mklogic_catlogs.csv
#./benchmark  -s 0 -t 300 --password MdK2016! --username mondeca  -q http://opoce1.mondeca.com:8000/v1/graphs/sparql?database=opoceProd -m mixqueries_catlogs.tsv -p 100 -r 5 -w 20 -c results/results_100_mklogic_catlogs.csv

