#! /bin/bash

for i in {1..4}; do
  touch "${i}file.txt"
done

for i in {1..3}; do
  touch "myfile${i}.jpg"
done

echo "Creating test files..."
sleep 1
ls -l
echo ""

###################
choice=""
while [ "$choice" != "t" -a "$choice" != "j" ]; do
  #convert varable value to string
  echo "To rename .jpg file press j, To rename .txt press t:"
  read choice
  echo "You typed $choice"
done

read -p "Write prefix to add to thise files " pre
echo "the prefix is $pre"

if [ "$choice" == "t" ]; then
  for element in *.txt
  do
    mv ${element} ${pre}${element} #Change file name
  done
else
  for element in *.jpg
  do
    mv ${element} ${pre}${element} #Change file name
  done
fi

ls -l
