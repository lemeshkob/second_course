import random
import numpy as np

def ShellSort(A):
    def GetCols(n):
        cols = [1]
        val = 1
        while val < n:
            val = int(val * 2.2)
            cols.insert(0, val)
        return cols

    for h in GetCols(len(A)):
        for i in range(h, len(A)):
            cur = A[i]
            j = i
            while j >= h and A[j - h] > cur:
                A[j] = A[j - h]
                j -= h
            A[j] = cur

def execute():
    arr = np.array([random.random() for i in range(10)])
    print(arr)
    print("sorted:")
    print(ShellSort(arr))

execute()
