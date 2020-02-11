#!/usr/bin/python

import time
from decimal import Decimal
import numpy as np
from scipy.integrate import odeint, solve_ivp
import matplotlib.pyplot as plt
from scipy.interpolate import interp1d

xdot_list = []

with open('xdot.txt', 'r') as filehandle:
    filecontents = filehandle.readlines()

    for line in filecontents:
        current_place = line[:-1]
        xdot_list.append([float(v) for v in line.split('\t')])

xdot = np.array(xdot_list, dtype=np.float32) 
print(xdot)



