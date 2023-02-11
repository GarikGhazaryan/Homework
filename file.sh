#! /bin/bash

#Delete all the empty lines from the file and save it back.

sed -i /^$/d file.txt





#Write a script which will make a copy of file/directory without using linux "cp"  command.

cat file1.txt>/home/garik/Desktop/test/file1.txt





#Write a script which will move file/directory hierarchy without using linux "mv"  command.


ln f1.txt /home/garik/Desktop/test/to_move.txt
rn f1.txt
