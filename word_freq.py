#!/usr/bin/python3
import sys

textfile=open('textfile.txt','r')

diction={}


lines=textfile.readlines()

for i in range (len(lines)) :

   word=lines[i].split()
   for it in word:
      it.lower()

      if it in dic:
         diction[it]+=1
      else:
         diction[it]=1


for i,j in diction.items():


  # print(i,j)
  sorted(j,reverse=True)
00
