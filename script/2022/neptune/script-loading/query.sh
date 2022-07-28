#!/bin/sh
# sample curl query
#curl -X POST --data-binary 'query=select *  where {?s ?p ?o} limit 20' https://db-opoceprod.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql

curl -X POST --data-binary 'query=select * from <http://aws.amazon.com/neptune/vocab/TestNamedGraph>  where {?s ?p ?o} limit 20' https://db-opoceprod.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql
