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
GITHUB_PAGE_DIR="Documents/github_blog/Yoodahun.github.io"
POSTS="_posts/"
MOVE_TO_DIR=$1
WORK_DIRECTORY="_drafts"
############## Be Careful !!! This is working Directory! So, you shoud be rewrite ! ############
DATE_FORMAT=`date +%Y-%m-%d`

if [ -z "$MOVE_TO_DIR" ]; then
  echo "wrong parameter"
  exit 1
else
  for convertFile in `ls "$HOME/$GITHUB_PAGE_DIR/$WORK_DIRECTORY"`; do
    echo "$convertFile"
    mv "$HOME/$GITHUB_PAGE_DIR/$WORK_DIRECTORY" "$HOME/$GITHUB_PAGE_DIR/$POSTS/$MOVE_TO_DIR/$DATE_FORMAT-$convertFile"
  done
  if [ $? -eq 0 ]; then
     read -p "Push to Remote Repo of Git (y/n) ?" agree
     if [ $agree -eq "y"]; then
       sh "$HOME/$GITHUB_PAGE_DIR/pushToMasterRemoteRepo.sh"
     else
       echo "Exit Script. You should be push your commit to remote repo."
     fi
  fi
fi
exit 0
