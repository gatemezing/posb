
# stress testing case neptune in neptune
#./stress -q http://opoce.mondeca.com:8890/sparql -m mixqueries_cat1.tsv --max-runtime 180 --max-threads 128 --ramp-up 2

# case server 1B data

./stress  -q https://db-opoceprod.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -m mixqueries_cat1opti_neptune.tsv --max-runtime 180 --max-threads 128 --ramp-up 2 
