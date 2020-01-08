#!/usr/bin/env bash

for var in "$@"
do
  cli53 list | tr -s ' ' | grep -e "$var" | cut -f 2 -d ' ' |
  while read line;
  do
      printf "Processing ${line} \n";
      cli53 rrpurge ${line} --confirm;
      cli53 delete ${line};
  done
done
