#!/bin/bash
# first generation i = 1 to 2195
# second genreation i = 2196 to 4390.
# add _gen_2_.nq for the extension of second files generated
# 2 billions = _gen_ + _gen_2_ + initial prod files
#i="1"
#i="2196"
#i="4390"
#i="6586"
#i="8781" #n=5
#i="10976" #n=6
#i="13171"
#i="15366" #n=8

# 10 billions = 2 billions + _gen_i_ {i=3..8}
# change input directory and output directory accordingly
# /home/mondeca/data/new_dataset/pz_normalized_full

#2nd part to generate other 5 billions with i starting with 20000
#i="20000" #n=10
#i="22196" #n=11
#i="24391" #n=12
i="26586" #n=13
#i="28781" #n=14
#i="30976" #n=15
#i="33171" #n=16
#i="35366" #n=17
#i="37561" #n=18
#i="39756" #n=19

echo "Let's start generating nquads...."
#dir="/home/mondeca/data/new_dataset/pz_normalize_full"
dir="/home/mondeca/data/pz_normalize_full"
echo "input dir is...."
echo "$dir"
#dirOut="/home/mondeca/data/new_dataset/genData/prodGen10"
dirOut="/home/mondeca/data/part2_5biopz"
for file in $dir/*.nq; do
	filename=${file##*/}
    filepath=$dir/$filename
	filenoext=${filename%%.*}
#sed -e 's/http\:\/\/publications\.europa\.eu\/resource\/cellar/http\:\/\/publications\.europa\.eu\/resource\/cellar\/'$i'\/gen/g' $filepath > $dirOut/$filenoext'_gen_.nq'
    #sed -e 's/http\:\/\/publications\.europa\.eu\/resource\/cellar/http\:\/\/publications\.europa\.eu\/resource\/cellar\/'$i'\/gen/g' $filepath > $dirOut/$filenoext'_gen_2_.nq' 
   # sed -e 's/http\:\/\/publications\.europa\.eu\/resource\/cellar/http\:\/\/publications\.europa\.eu\/resource\/cellar\/'$i'\/gen/g' $filepath > $dirOut/$filenoext'_gen_3_.nq'
   #  sed -e 's/http\:\/\/publications\.europa\.eu\/resource\/cellar/http\:\/\/publications\.europa\.eu\/resource\/cellar\/'$i'\/gen/g' $filepath > $dirOut/$filenoext'_gen_4_.nq'    
#sed -e 's/http\:\/\/publications\.europa\.eu\/resource\/cellar/http\:\/\/publications\.europa\.eu\/resource\/cellar\/'$i'\/gen/g' $filepath > $dirOut/$filenoext'_gen_5_.nq'
# sed -e 's/http\:\/\/publications\.europa\.eu\/resource\/cellar/http\:\/\/publications\.europa\.eu\/resource\/cellar\/'$i'\/gen/g' $filepath > $dirOut/$filenoext'_gen_6_.nq'
# sed -e 's/http\:\/\/publications\.europa\.eu\/resource\/cellar/http\:\/\/publications\.europa\.eu\/resource\/cellar\/'$i'\/gen/g' $filepath > $dirOut/$filenoext'_gen_7_.nq'
#sed -e 's/http\:\/\/publications\.europa\.eu\/resource\/cellar/http\:\/\/publications\.europa\.eu\/resource\/cellar\/'$i'\/gen/g' $filepath > $dirOut/$filenoext'_gen_8_.nq'
sed -e 's/http\:\/\/publications\.europa\.eu\/resource\/cellar/http\:\/\/publications\.europa\.eu\/resource\/cellar\/'$i'\/gen/g' $filepath > $dirOut/$filenoext'_gen_13_.nq'

echo "$filename"
#echo "$filenoext"
	i=$[$i+1]
	#echo "$i"
##execute command here with $filename
done
echo "that's all folks...."
