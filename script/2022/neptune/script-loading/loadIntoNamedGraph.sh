#!/bin/sh
# Load S3 data into named graph
curl -X POST "https://db-opoceprod.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/sparql" --data-urlencode 'update=load s3://opoce-cdm/cdm.rdf into graph <http://aws.amazon.com/neptune/vocab/TestNamedGraph>'
