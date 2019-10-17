#!/bin/bash

#############################################
##
##  function:
##       change sample rate of wav files
##
##  useage:
##       put this file in the dir of wav files
##       bash ch_smp_rate.sh 
##############################################

for x in ./*.wav;do
b=${x##*/}
sox $b -r 16000 tmp-$b
rm -rf $b
mv tmp-$b $b
done
