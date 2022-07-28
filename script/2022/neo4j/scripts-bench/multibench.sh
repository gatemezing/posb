#!/bin/bash
ls *.sh | xargs -P 5 bench.sh 

exit 0
