for i in `ls wavs/*.wav`
do
  soxi $i
done
