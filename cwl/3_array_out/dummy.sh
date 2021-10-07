#!/bin/bash

if [ "$#" -lt "2" ]
then
  echo "usage aasdasd"
  exit 1
fi

if [ ! $1 == "-f" ]
then
  echo "usage 2"
  exit 2
fi

for i in {1..10} ; do touch $2_$i; done

