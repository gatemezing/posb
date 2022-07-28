
# stress test option
# neptune read only endpoint: opoce10b.cluster-ro-ctllocetqpml.eu-west-3.neptune.amazonaws.com
#endpoint: https://opoce10b.cluster-ro-ctllocetqpml.eu-west-3.neptune.amazonaws.com
./stress -q https://opoce10b.cluster-ro-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -m mixqueries_cat1opti_neptune.tsv --max-runtime 180 --max-threads 128 --ramp-up 2

# case server 10B data
# read-write option
#./stress  -q https://opoce10b.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql -m mixqueries_cat1opti_neptune.tsv --max-runtime 180 --max-threads 128 --ramp-up 2 
