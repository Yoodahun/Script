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
SAVEIFS=$IFS
IFS=$(echo -en "\n\b") #공백문자 처리 handling space in filename
GITHUB_PAGE_DIR="Documents/Github/Yoodahun.github.io"
POSTS="_posts"
MOVE_TO_DIR=$1
WORK_DIRECTORY="_drafts"
############## Be Careful !!! This is working Directory! So, you shoud be rewrite ! ############
DATE_FORMAT=`date +%Y-%m-%d`

if [ -z "$MOVE_TO_DIR" ]; then
  echo "wrong parameter"
  exit 1
else
  for convertFile in `ls "$HOME/$GITHUB_PAGE_DIR/$WORK_DIRECTORY/"`; do
    if [ $? -ne 0 ]; then
      echo "No such file or directory"
      exit 1
    fi
    echo "$convertFile"
    mv "$HOME/$GITHUB_PAGE_DIR/$WORK_DIRECTORY/$convertFile" "$HOME/$GITHUB_PAGE_DIR/$POSTS/$MOVE_TO_DIR/$DATE_FORMAT-$convertFile"
  done
  if [ $? -eq 0 ]; then
     read -p "Push to Remote Repo of Git (y/n) ?" agree
     if [ $agree == "y" ]; then
       cd "$HOME/$GITHUB_PAGE_DIR/"
       sh pushToMasterRemoteRepo.sh
     else
       echo "Exit Script. You should be push your commit to remote repo."
     fi
  else
    echo "There is Error."
  fi
fi

IFS=$SAVEIFS
exit 0
