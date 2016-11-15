#!/bin/sh

tar -zxvf $1

cd $1
toCompress=`ls $1`

for i in $toCompress
do
	tar -zxvf $i	
done