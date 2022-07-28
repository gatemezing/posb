#!/bin/bash
# querying cat2

dt=$(date +%s%N);
cat ../queries/cat2/q3.cypher | cypher-shell -a localhost:7687 -u neo4j -p trinity -d neo4j --format plain

dt2=$(date +%s%N); 
delta=$dt2-$dt;
echo "duration cat2 q3:  $(($(($dt2-$dt))/1000000)) ms"
exit 0
