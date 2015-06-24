#! /bin/sh

for film in The_Big_Lebowski

do

rsync -v --progress /afs/northstar.dartmouth.edu/users/m/mcasey.BMARS/ACTION/${film}/${film}.mov /Users/kfl/Movies/action/${film}/

done
