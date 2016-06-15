#!/bin/bash

echo "Please enter '1' for Question 1 or '2' for Question 2";
read input

case "$input" in
1) /opt/containers/1.sh /opt/containers/words.txt
   ;;
2) /opt/containers/2.pl /opt/containers/file.txt
   ;;
*) echo "Incorrect option entered, please enter the correct option"
   ;;
esac
