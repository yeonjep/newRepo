#!/usr/bin/python3
import sys

textfile=open('textfile.txt','r')

diction={}


lines=textfile.readlines()

for x in range (len(lines)) :

   word=lines[x].split()
   for it in word:
      it.lower()

      if it in dic:
         diction[it]+=1
      else:
         diction[it]=1


for x,y in diction.items():


   print(x,y)
 # sorted(y,reverse=True)
00
