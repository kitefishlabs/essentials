#!/bin/sh

cd $1

echo `pwd`

for subdir in $(ls -F)
do
	echo ${subdir}
	cd ${subdir}
	for file in *.aif
	do
		name=`basename ${file} .aif`
		echo $name
		sox -b16 ${name}.aif ${name}.wav
		rm ${name}.aif
	done
	cd ..
done
