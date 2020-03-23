#!/bin/bash

if [ "$#" -lt "2" ]

then
  echo "usage aasdasd"
  exit 1
fi

echo "Saving output to " $2
echo "Lorem ipsum" > $2
echo $1 >> $2
echo "Done."


