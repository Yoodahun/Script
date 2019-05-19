#! /bin/bash

myFunction() {
  local var1="Eggs"
  var2="Salad"

  echo " my variable inside the func is: $var1"

}

echo "start the program"

myFunction

echo "Outside : $var1"
