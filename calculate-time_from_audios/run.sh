######################################################################
##
##  useage:
##	put your audios in ./wavs  and ensure filenames are end with .wav
##	bash run.sh
##
##  info:
##	use soxi
##	./soxi_result is a file contains all soxi result 
##	./time is a file contains time information
##	./time-pure is a file conatians final result
##	
##
######################################################################


bash bash cal-time-audios.sh > soxi_result

rm time

while read line
do
  #echo $line | grep 'wavs' >> num_time
  echo $line | grep '[0-9]:[0-9][0-9]\.' >> time
done < soxi_result

python get_time.py
