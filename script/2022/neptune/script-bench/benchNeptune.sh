#!/bin/bash
# run 5 times ; single client
# warm 20 times
# result in csv

# gatemezing. May 2022
# case Neptune queries cat2
#./benchmark -s 0 -t 600  -q https://db-opoceprod.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -m mixqueries_cat2_neptune.tsv -r 5 -w 20 -c results/results_neptune_group2.csv

#./benchmark -s 0 -t 600  -q https://db-opoceprod.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -m mixqueries_timeout_neptune.tsv -r 5 -w 20 -c results/results_neptune_timeout.csv

# case Neptune queries cat3
#./benchmark -s 0 -t 10 --norand  -q https://db-opoceprod.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -u https://db-opoceprod.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -m mixqueries_cat3_neptune.tsv -p 5 -r 5 -w 20 -c results/results_neptune_group3_5_parallel.csv

# case Neptune queries cat1
./benchmark -s 0 -t 60 --norand  -q https://db-opoceprod.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -m mixqueries_cat1opti_neptune.tsv -r 5 -w 20 -c results/results_neptune_group1_opti_update.csv

# db-opoceprod-instance-1.ctllocetqpml.eu-west-3.neptune.amazonaws.com
# case parallel 100  parallel
#./benchmark -s 0 -t 60 --norand  -q https://db-opoceprod.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -m mixqueries_cat1opti_neptune.tsv -p 100 -r 5 -w 20 -c results/results_neptune_group1_opti_100_parallel.csv

## case parallel 5
#./benchmark -s 0 -t 60 --norand  -q https://db-opoceprod.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -m mixqueries_cat1opti_neptune.tsv -p 5 -r 5 -w 20 -c results/results_neptune_group1_opti_5_parallel.csv

## case parallel 1000 parallel
#./benchmark -s 0 -t 60 --norand  -q https://db-opoceprod.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -m mixqueries_cat1opti_neptune.tsv -p 1000 -r 5 -w 20 -c results/results_neptune_group1_opti_1000_parallel.csv
