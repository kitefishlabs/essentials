#!/bin/sh

cd $1

echo `pwd`
for file in *.wav
do
	name=`basename ${file} .wav`
	echo $name
	sox ${name}.wav -b 16 ${name}_16.wav
	#rm ${name}.wav
done
