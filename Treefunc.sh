#! /bin/bash

file_list(){
ls>list1.txt
}

file_or_dir(){
while read -r line; do
	if [[ -d $line ]];
	then
	   echo $line	   
	   sub_dir_in
	   read_sub_dir_files
  	else
  	   echo $line
  	fi
done <list1.txt
}

sub_dir_in(){
cd $line
ls
ls>list2.txt

}

read_sub_dir_files(){
while read -r line; do
	if [[ -d $line ]];
	then
	   echo $line
	   sub_dir_in
	   fi
done <list2.txt

}

main(){
file_list
file_or_dir

}


main
