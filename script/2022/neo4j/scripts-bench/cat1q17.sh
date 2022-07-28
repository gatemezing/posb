#!/bin/bash


dt=$(date +%s%N);
#echo "$dt : start querying cat1 q1 ..."
cat ../queries/cat1/q17.cypher | cypher-shell -a localhost:7687 -u neo4j -p trinity -d neo4j --format plain

dt2=$(date +%s%N); 
delta=$dt2-$dt;
echo "duration cat1 q17: $(($(($dt2-$dt))/1000000)) ms"
exit 0
