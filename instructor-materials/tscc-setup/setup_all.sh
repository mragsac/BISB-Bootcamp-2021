#!/bin/bash
for i in $(seq 100 122) # replace with ucsd-train account numbers
  do
  act="ucsd-train$i"
  scp module4.yml module6.yml bisbsetup.sh ${act}@tscc.sdsc.edu:/home/$act
  ssh ${act}@tscc.sdsc.edu 'qsub bisbsetup.sh'
done


# these are instructor accounts; same unless you want to do additional tasks
for i in $(seq 123 125) 
  do
  act="ucsd-train$i"
  scp module4.yml module6.yml bisbsetup.sh ${act}@tscc.sdsc.edu:/home/$act
  ssh ${act}@tscc.sdsc.edu 'qsub bisbsetup.sh'
done

