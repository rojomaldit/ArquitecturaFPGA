#!/usr/bin/python

mem = "   logic [31:0] rom [0:18] = '{\n"
ins = 0
counter = 0

with open('./main.list') as f:
  lines = f.readlines()[6:]
  for line in lines:
    if (line[0] != "\n" and line[0:3] != "000"):
      counter = counter + 1
      mem = mem + "                              "  \
                + "32'h" + line[6:14] + ",\n"

while(counter < 19):
  mem = mem + "                              32'h00000000,\n"
  counter = counter + 1

mem = mem[:-2] + "\n" + "                             };"
#print("Memory entries: " + str(counter) + "\n")
print(mem)

