#! /bin/bash


echo "Start git add"
git add .
echo "***********************"

status="git status"
echo "Print git status"
$status
echo "***********************"

echo "Start git commit -m"
git commit -m "`date +\"%Y-%m-%d\"` Posting"
echo "***********************"

echo "git push to master"
git push

echo "done !"

exit 0;
