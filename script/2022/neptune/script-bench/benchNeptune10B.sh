# benchmarking Neptune for publications office
# author: @gatemezing
# date: May 2022

# bench opti queries cat1
# instance reader: opoce10b-instance-1.ctllocetqpml.eu-west-3.neptune.amazonaws.com
./benchmark -s 0 -t 60  -q https://opoce10b.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -m mixqueries_cat1opti_neptune.tsv -r 5 -w 20 -c results/results_neptune_group1_10B_opti_update.csv

# cat2
#./benchmark -s 0 -t 600  -q https://opoce10b.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -m mixqueries_cat2_neptune.tsv -p 5 -r 5 -w 20 -c results/results_neptune_group2_10B.csv

# bench parallel 5 
#./benchmark -s 0 -t 60  -q https://opoce10b.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -m mixqueries_cat1opti_neptune.tsv -p 5 -r 5 -w 20 -c results/results_neptune_group1_10B_opti_parallel_5.csv

# bench parallel 100
#./benchmark -s 0 -t 60  -q https://opoce10b.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -m mixqueries_cat1opti_neptune.tsv -p 100 -r 5 -w 20 -c results/results_neptune_group1_10B_opti_parallel_100.csv

# bench parallel 1000
#./benchmark -s 0 -t 60  -q https://opoce10b.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -m mixqueries_cat1opti_neptune.tsv -p 1000 -r 5 -w 20 -c results/results_neptune_group1_10B_opti_parallel_1000.csv
# instance reader 
#./benchmark -s 0 -t 60  -q https://opoce10b-instance1.ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -m mixqueries_cat1opti_neptune.tsv -r 5 -w 20 -c results/results_neptune_group1_10B_opti_reader.csv
