#! /bin/bash

fileCheck() {

  number=0
  for item in ./*.txt
  do
    number=$(( number+1 )) #increment for counting files
    #echo "$number"
  done
}

echo "hello!"
fileCheck
echo "the number if items is: $number"
read -p "type Enter if you want to open all txt files" input

echo "you typed $input"
if [ -z "$input" ]; then # Is input Empty String?
    open *.txt
else
    echo "you did not press Enter!"
fi
