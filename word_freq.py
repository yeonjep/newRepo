#!/usr/bin/python3
import sys

textfile=open('textfile.txt','r')

dic={}


lines=textfile.readlines()

for i in range (len(lines)) :

   word=lines[i].split()
   for it in word:
      it.lower()

      if it in dic:
         dic[it]+=1
      else:
         dic[it]=1


for i,j in dic.items():


  # print(i,j)
  sorted(j,reverse=True)
00
