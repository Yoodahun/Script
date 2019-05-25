#! /bin/bash
#
# # for myfile in *;
# # do
# #   if [ -f "$myfile" ]; then
# #     echo "$myfile"
# #
# #     grep -n "dum" "$myfile"
# #   else
# #     echo "$myfile is NOT a file..."
# #     echo " "
# #   fi
# # done

# Step 3 ***********************************
# for myfile in *;
# do
#
#   if [ -f "$myfile" ]; then
#     #echo "$myfile"
#
#     #grep -ni "spo" "$myfile"
#     #if grep is fail, return empty string
#     check=$(grep -ni "spo" "$myfile")
#     if [ -z "$check" ]; then
#       echo "EMPTY"
#     else
#       echo "HOT FILE !!! FOUND"
#     fi
# else
#   echo "$myfile is NOT a file..."
#   echo ""
# fi
# echo "------------------"
#
# done
# Step 3***********************************
# Step 4***********************************
# for myfile in *;
# do
#   if [ -f "$myfile" ]; then
#     echo "$myfile"
#
#     grep -n "dum" "$myfile"
#   else
#     echo "$myfile is NOT a file..."
#     echo " "
#   fi
# done
# Step 4***********************************

# Step 5***********************************
mkdir ./hot-folder #make directory in present working directory
for myfile in *;
do
  if [ -f "$myfile" ]; then
    #echo "$myfile"

    #grep -ni "spo" "$myfile"
    #if grep is fail, return empty string
    check=$(grep -ni "spo" "$myfile")
    if [ -z "$check" ]; then
      echo "EMPTY"
    else
      echo "HOT FILE !!! FOUND"
      cp "$myfile" ./hot-folder
      echo "$myfile is copied into hot-folder !!!"
    fi
else
  echo "$myfile is NOT a file..."
  echo ""
fi
echo "------------------"

done
# Step 5***********************************

# Step 6***********************************
mkdir ./hot-folder #make directory in present working directory
for myfile in *;
do
  if [ -f "$myfile" ]; then
    #echo "$myfile"

    #grep -ni "spo" "$myfile"
    #if grep is fail, return empty string
    check=$(grep -ni "spo" "$myfile")
    if [ -z "$check" ]; then
      echo "EMPTY"
    else
      echo "HOT FILE !!! FOUND"
      cp "$myfile" ./hot-folder
      echo "$myfile is copied into hot-folder !!!"
      echo " " >> hot-folder/"$myfile"
      echo "******" >> hot-folder/"$myfile"
      echo "$check" >> hot-folder/"$myfile"
    fi
else
  echo "$myfile is NOT a file..."
  echo ""
fi
echo "------------------"

done
# Step 6***********************************
