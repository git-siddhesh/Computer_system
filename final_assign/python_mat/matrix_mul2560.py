import random
import datetime

t1=datetime.datetime.now()

n=2560

A =[[random.randint(-100,100) for _ in range(n)] for i in range(n)]
B =[[random.randint(-100,100) for _ in range(n)] for i in range(n)]

BT = [[B[j][i] for j in range(n)] for i in range(n)]

result =[[0 for _ in range(n)] for i in range(n)]

t2=datetime.datetime.now();
for i in range(len(A)): 
    for j in range(len(B[0])): 
        for k in range(len(B)):
            result[i][j] += A[i][k] * B[k][j]
t3=datetime.datetime.now()

meat_time = t3-t2
total_time = t3-t1
print(n,meat_time.seconds+meat_time.microseconds*(10**-6),total_time.seconds + total_time.microseconds*(10**-6), )

    

