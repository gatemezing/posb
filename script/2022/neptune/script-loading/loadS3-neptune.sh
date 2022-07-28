#!/bin/bash
aws s3 cp /home/ubuntu/genData/*.nq.gz s3://opoce10billion --recursive

aws s3 sync /home/ubuntu/genData/ s3://opoce10billion
