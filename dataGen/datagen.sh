#!/bin/bash
# first generation i = 1 to 2195
# second genreation i = 2196 to 4390.
# add _gen_2_.nq for the extension of second files generated
# 2 billions = _gen_ + _gen_2_ + initial prod files
#i="1"
#i="2196"
i="4390"
# change input directory and output directory accordingly
# /home/mondeca/data/new_dataset/pz_normalized_full
echo "Let's start generating nquads...."
dir="/home/mondeca/data/new_dataset/pz_normalized_full"
echo "input dir is...."
echo "$dir"
dirOut="/home/mondeca/data/new_dataset/genData/prodGen"
for file in $dir/*.nq; do
	filename=${file##*/}
    filepath=$dir/$filename
	filenoext=${filename%%.*}
#sed -e 's/http\:\/\/publications\.europa\.eu\/resource\/cellar/http\:\/\/publications\.europa\.eu\/resource\/cellar\/'$i'\/gen/g' $filepath > $dirOut/$filenoext'_gen_.nq'
    #sed -e 's/http\:\/\/publications\.europa\.eu\/resource\/cellar/http\:\/\/publications\.europa\.eu\/resource\/cellar\/'$i'\/gen/g' $filepath > $dirOut/$filenoext'_gen_2_.nq' 
    sed -e 's/http\:\/\/publications\.europa\.eu\/resource\/cellar/http\:\/\/publications\.europa\.eu\/resource\/cellar\/'$i'\/gen/g' $filepath > $dirOut/$filenoext'_gen_3_.nq'
    echo "$filename"
#echo "$filenoext"
	i=$[$i+1]
	#echo "$i"
##execute command here with $filename
done
echo "that's all folks...."
