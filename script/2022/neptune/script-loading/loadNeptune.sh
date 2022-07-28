#!/bin/bash
# loading from a different sucket to same cluster endpoint
# name of bucket: 

curl  -X POST \
    -H 'Content-Type: application/json' \
    https://db-opoceprod.cluster-ctllocetqpml.eu-west-3.neptune.amazonaws.com:8182/loader -d '
    { 
      "source" : "s3://opoce-bench-prod", 
      "format" : "nquads",  
      "iamRoleArn" : "arn:aws:iam::672418254241:role/NeptuneLoadFromS3",  
      "region" : "eu-west-3", 
      "failOnError" : "FALSE"
    }'
