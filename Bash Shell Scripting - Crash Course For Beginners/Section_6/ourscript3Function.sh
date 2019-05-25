#!/usr/bin/env bash

#function
get_file() {
 local str="$1"
 local fil="$2"

 # echo "the String you are Looking for is: $str"
 # echo "the file is you are searching is $fil"

 #grep -ni $str $file

 check=$(grep -ni "$str" "$fil")

 if [ -z "$check" ]; then
   echo "### $fil is EMPTY !! ###"
 else
   echo " FOUND !!! "

   name_file=$(basename "$fil")
   #echo "just filename is: $name_file"
   cp "$fil" hot-folder/"$name_file"
   echo "$myfile is copied into hot-folder !!!"
   echo " " >> hot-folder/"$name_file"
   echo "******" >> hot-folder/"$name_file"
   echo "$check" >> hot-folder/"$name_file"
 fi

}

#######   Whole Program ####################
rm -r /hot-folder
mkdir ./hot-folder

for i in $(find . -type d);
do

if [[ $i != "./hot-folder" ]]; then
  #statements
  echo "########### THE FOLDER IS $i ############"
  for myfile in $i/*;
  do
    if [[ -f "$myfile" ]]; then
      #statements
      get_file "spo" "$myfile"
    fi
  done
fi
echo "-----------------"
done
#######   Whole Program ####################
