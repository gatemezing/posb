#!/bin/bash
aws s3 cp opoceData/*.nq.gz  s3://opoce-bench-prod/  --recursive 

aws s3 sync opoceData/ s3://opoce-bench-prod/
