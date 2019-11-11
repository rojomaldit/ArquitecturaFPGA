import os
os.system('make clean && make')
ins = 0
output_file = ['logic [31:0] rom [0:DOU] = \'{']
mem_file = open('./main.list', 'r+')
lines = mem_file.readlines()[6:]
for line in lines:
  if (line[0] != '\n' and line[0] == ' '):
    output_file.append('\t32\'h' + line[6:14] + ',')
    ins += 1
output_file[0]=output_file[0].replace('DOU',str(ins-1))
output_file[-1]=output_file[-1][:-1]
output_file.append('};')
for line in output_file:
  print(line)
mem_file.close()