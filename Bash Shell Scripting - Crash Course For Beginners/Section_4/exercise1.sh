#! /bin/bash


divisible() {
    local num=$1
    echo " you wrote $num"

    for i in {2,3,5}
    do
      if [ $(( $num%i )) ]; then
        echo "the number $num is divisible by $i"
      fi
    done
}

divisible 30
