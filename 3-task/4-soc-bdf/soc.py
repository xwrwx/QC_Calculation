#!/usr/bin/env python3
import numpy as np

line_number = 0
a = []
e = []
with open("004.out", "r") as inputf:
    for line in inputf:
        line_number += 1

        if (line_number >= 4215) and (line_number <= 4217):
            b = line.split()
            a.append(b[3])
            a.append(b[5])
    c = np.square(float(a[0]))+np.square(float(a[1]))+np.square(float(a[2]))+np.square(float(a[3]))+np.square(float(a[4]))+np.square(float(a[5]))
    d = np.sqrt(c)
    e.append(d)

print(e)



