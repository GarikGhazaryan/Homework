#! /bin/bash



if [[ -d $1 ]]
then
	rsync -a $1/ $2
else
	rsync -a $1 $2
fi




