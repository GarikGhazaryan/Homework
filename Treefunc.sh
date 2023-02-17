#! /bin/bash

file_list(){
ls>list1.txt
}

file_or_dir(){
while read -r line; do
	if [[ -d $line ]];
	then
	   echo "1|_"$line
	   	   
	   sub_dir_in
	   read_sub_dir_files
	   
  	else
  	   echo "2|__" $line
  	fi
done <list1.txt
}

sub_dir_in(){
cd $line
ls>list2.txt
var=$(cat list2.txt)
if [[ ! -d $var ]]
then
echo "      3|_"$var
fi

}

read_sub_dir_files(){
while read -r line; do
	if [[ -d $line ]];
	then
	   echo "    4|__"$line
	   sub_dir_in
	   read_sub_dir_files
	   #else
	   #echo "        6|____$line"
	   fi
done <list2.txt

}

main(){
file_list
file_or_dir

}


main
