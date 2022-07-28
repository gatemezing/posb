#!/bin/bash
# May 2020 by @gatemezing
# first generation i = 1 to 3150 (350 times 9)
# TODO: imrpove the script to be robust and generic regardless of the increment
# 10 billion = _gen_i +  + initial prod files
i=3072
j=3382
k=8
# change input directory and output directory accordingly
# /home/mondeca/data/new_dataset/pz_normalized_full
echo "Start generating nquads...."
dir="/home/ubuntu/opoceData"
echo "input dir is...."
echo "$dir"
dirOut="/home/ubuntu/genData"
echo "Output genDir is..."
echo "$dirOut"

while (($i <= $j)); do

  for file in $dir/*.nq.gz; do
	
	trimmedgz=$(basename $file .gz)
        gunzip -k  < "$file" > $dir/"$trimmedgz" 
        #filename=${file##*/}
	echo "file name is ..."
	echo "$trimmedgz"
        filepath=$dir/$trimmedgz
        filenoext=$(basename $trimmedgz .nq)
    sed -e 's/http\:\/\/publications\.europa\.eu\/resource\/cellar/http\:\/\/publications\.europa\.eu\/resource\/cellar\/'$i'\/gen/g' $filepath > $dirOut/$filenoext'_'$k'_gen_.nq'
    #genfile=$filenoext'_gen__.nq'
    gzip -f  $dirOut/$filenoext'_'$k'_gen_.nq'
    gzip -f $dir/$trimmedgz
        i=$[$i+1]
        echo "$i"
   ## execute command here with $filename
 done
 let n=$(($i%5))
 if [$n -eq 0] 
 then 
   k=$[$k+1]
 fi;

done
echo "That's all folks"
echo "End work here"
