#!/bin/bash
#loading opoce PROD dataset with Stardog

nohup stardog-admin db create -o strict.parsing=false -n  opoce10B /home/ubuntu/opoce10BData/*.nq.gz &
