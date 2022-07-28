#!/bin/bash
##loading with GraphDB 
nohup preload -c /home/ubuntu/gdbms/graphdb-ee-9.10.0/conf/opoce-config.ttl -f -p /home/ubuntu/opoceData/*.nq.gz &

