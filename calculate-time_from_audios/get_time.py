######################################################
##
##   useage:
##	python get_time.py
##	you need time(result of soxi) first
##	result are write in time-pure
##          count    duration-of-this-audio    total(seconds)    total(minuts)
##
##
#####################################################





import re

pattern = re.compile("[0-9][0-9]:[0-9][0-9]:[0-9][0-9].[0-9][0-9]")

with open("time", 'r') as inf, open("time-pure", 'w') as ouf:
  lines = [x.strip() for x in inf.readlines()]

  count = 0
  total = 0.0
  minuts = 0.0
  time = []
  for i in lines:
    l = re.findall(pattern, i)
    if l != []:
      #time.append(l[0])
      #print(l)
      s_t = "".join(l)
      t = s_t[6:]
      f_t = float(t)
      total += f_t
      minuts = total / 60
      ouf.write(str(count) + "\t" + str(f_t) + "\t" + str(total) + "\t" + str(minuts) + '\n')
      count += 1
        

  
