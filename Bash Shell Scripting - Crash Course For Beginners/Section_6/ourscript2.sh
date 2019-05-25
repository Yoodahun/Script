#!/usr/bin/env bash



for i in $(find . -type d);
do
if [ $i != "./hot-folder" ]; then

  echo "************* FOLDER $i **************"

  for myfile in $i/* ;
  do
    if [ -f "$myfile" ]; then
      echo "thie file inside is : $myfile"
      ####################################
      check=$(grep -ni "spo" "$myfile")
      if [ -z "$check" ]; then
        echo "EMPTY"
      else
        echo "HOT FILE !!! FOUND"

        name_f=$(basename $myfile)

        cp "$myfile" ./hot-folder/"$name_f"
        echo "$myfile is copied into hot-folder !!!"
        echo " " >> hot-folder/"$name_f"
        echo "******" >> hot-folder/"$name_f"
        echo "$check" >> hot-folder/"$name_f"
      fi
      ####################################
    fi
  done
  echo "************"
  echo " "
  fi
done
