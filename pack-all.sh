#!/bin/bash

for dir in `ls "StudyJesus"`
do   
  echo -e "\n<<<<<< $dir >>>>>>"  
  if [ -d "StudyJesus/$dir" ]; then
    sh pack-single.sh StudyJesus/$dir
  fi
done
