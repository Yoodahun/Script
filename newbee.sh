#! /bin/bash
#testfile

rm /Users/Yoo/Documents/Github/Script/test/*


for i in {1..3}
do
  touch "/Users/Yoo/Documents/Github/Script/test/test${i}.txt"
done

for file in /Users/Yoo/Documents/Github/Script/test/*
do
  echo ${file}
done
