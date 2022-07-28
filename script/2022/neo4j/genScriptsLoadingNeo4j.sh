#!/bin/bash

## Generating script to load each file one by one for Neo4J 
## using neosemantics 
# @gatemezing - May 2nd, 2022
echo "Let's start generating files for Neo4j...."
#dir1b="/Users/gatemezing/OpoceDump/opoceData"
dir="/Users/gatemezing/opoceGenData"
dt=$(date '+%Y-%m-%d-%H:%M:%S');
echo "Starting the process at...$dt "

echo "input directory is....$dir"


## change the repo based on your requirement
SCRIPT="/Users/gatemezing/BenchTestOpoce/neo4j/"
dirOut="/Users/gatemezing/BenchTestOpoce/neo4j/tmp"
filecp="/Users/gatemezing/BenchTestOpoce/neo4j/dataload002.cypher"
filesh="/Users/gatemezing/BenchTestOpoce/neo4j/dataload002.sh"
loadscript="/Users/gatemezing/BenchTestOpoce/neo4j/dataload.sh"

echo "#!/bin/bash" > $loadscript
echo "file sh to use is $filesh"
cd $SCRIPT
for file in $dir/*.nq.gz; do
	filename=${file##*/}
    filepath=$dir/$filename
	filenoext=${filename%%.*}
	fnz=$filenoext'.nq.gz'
	#substring filenoext ${STR:7:6} output000002
	check=${#filenoext}
	echo $check
	if [ $check -eq 12 ]; then lname=${filenoext:7:6} ;
		else lname=${filenoext:7:13}
	fi
	#lname=${filenoext:7:13} 
	nfname='dataload'$lname
	dl="dataload"
	echo " file no extension ....$filenoext" 
	
	 
	nfnamecp=$nfname'.cypher'
	echo "file cypher...$nfnamecp"
	nfnamesh=$nfname'.sh'
	
	echo "creating cypher file..."
	
	cp $filecp $nfnamecp
	sed -i ' ' "s/output000002/$filenoext/g" $nfnamecp 
	mv $nfnamecp $dirOut/$nfnamecp
	
	cp $filesh $nfnamesh
	echo "file sh copied is $nfnamesh"
	echo "creating script file..."
	
	sed -i ' ' "s/dataload000002.cypher/$nfnamecp/g" $nfnamesh
	mv $nfnamesh  $dirOut/$nfnamesh
	
	echo "modifying the final loading script"
	
	echo "./$nfnamesh" >> $loadscript
    #cat $file
	

done

echo "exit 0" >> $loadscript
cat $loadscript
mv $loadscript $dirOut/

dt2=$(date '+%Y-%m-%d-%H:%M:%S');
echo "End process at $dt2"

echo "that's all folks...."