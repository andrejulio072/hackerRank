#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#
def miniMaxSum(arr):
        minn = arr[0]
        maxx = arr[0]
        summ = 0
        for i in range(0,5):
            if arr[i] > maxx:
             maxx = arr[i]

            if arr[i] < minn:
             minn = arr[i]
            summ=summ+arr[i]
        print(summ-maxx,summ-minn)

if __name__ == '__main__':

    arr = list(map(int, input().rstrip().split()))

    miniMaxSum(arr)
