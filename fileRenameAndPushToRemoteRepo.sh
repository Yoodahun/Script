#! /bin/bash
#######################################
## append date to file title        ##
## 파일명에 날짜를 붙이기           ##
## and move to specific directory   ##
## 그리고 특정 폴더로 이동하기      ##
## GITHUB_PAGE_DIR : 복사해서 이동  ##
##  할 폴더. Documents이후부터 입력.##
######################################

############## Be Careful !!! This is working Directory! So, you should be rewrite ! ############
source constantEnv.txt
SAVEIFS=$IFS
IFS=$(echo -en "\n\b") #공백문자 처리 handling space in filename
DATE_FORMAT=`date +%Y-%m-%d`
MOVE_TO_DIR=$1 # First Parameter that path move to
############## Be Careful !!! This is working Directory! So, you shoud be rewrite ! ############

if [ -z "$MOVE_TO_DIR" ]; then
  echo "There is no Parameter or file path"
  exit 1
else
  ls -l "$HOME/$GITHUB_PAGE_DIR/$WORK_DIRECTORY/"
  for convertFile in `ls "$HOME/$GITHUB_PAGE_DIR/$WORK_DIRECTORY/"`; do
    if [ $? -ne 0 ]; then
      echo "No such file or directory"
      exit 1
    fi
    echo "$convertFile"
    mv "$HOME/$GITHUB_PAGE_DIR/$WORK_DIRECTORY/$convertFile" "$HOME/$GITHUB_PAGE_DIR/$POSTS/$MOVE_TO_DIR/$DATE_FORMAT-$convertFile"
    moveResult=$?
  done
  ls -l "$HOME/$GITHUB_PAGE_DIR/$POSTS/$MOVE_TO_DIR/"

  ## add, commit, push git
  if [ $moveResult -eq 0 ]; then
     read -p "Push to Remote Repo of Git (y/n) ?" agree
     if [ $agree == "y" ]; then
       cd "$HOME/$GITHUB_PAGE_DIR/"
       sh pushToMasterRemoteRepo.sh
     else
       echo "Exit Script. You should be push your commit to remote repo."
     fi
  else
    echo "There is an Error."
    exit 1
  fi
fi

IFS=$SAVEIFS
exit 0
