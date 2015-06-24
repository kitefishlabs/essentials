#!/bin/sh

cd $1

echo `pwd`

for subdir in $(ls -F)
do
	echo ${subdir}
	cd ${subdir}
	for file in *.aiff
	do
		name=`basename ${file} .aiff`
		echo $name
		sox -b16 ${name}.aiff ${name}.wav
		rm ${name}.aiff
	done
	cd ..
done
