#!/usr/bin/env python3
import numpy as np

line_number = 0
aaa = []
aa = []
with open("005.out", "r") as inputf:
    for line in inputf:
        line_number += 1

        if (line_number >= 1892) and (line_number <= 2001):
            b = line.split()
            aaa.append([b[3],b[5],b[8],b[10],b[13],b[15]])
            #c = np.square(float(b[3]))

            c = np.square(float(b[3]))+np.square(float(b[5]))+np.square(float(b[8]))+np.square(float(b[10]))+np.square(float(b[13]))+np.square(float(b[15]))
            d = np.sqrt(c)
            aa.append(d)

print(aa)



