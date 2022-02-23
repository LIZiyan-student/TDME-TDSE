### TDME                                     updated 7/1/2001

*****

#### 1D TDME

Use Chev. way to deal with Maxwell fuction.

​		The most important equation :

![Chev.Equ](D:\大学\留学之路\github\code-python-\pic_py\Chev.Equ.png)

​		The initial state of the magnetic field and corresponding conditions:

![Ana.pic](D:\大学\留学之路\github\code-python-\pic_py\Ana.pic.png)

​		The result produced by python codes:

![1D TDME Chev.](D:\大学\留学之路\github\code-python-\pic_py\1D TDME Chev..png)

```fortran
from scipy.optimize import minimize
import matplotlib.pyplot as plt
import scipy.special as spl
import math
import numpy as np
from math import *
from sympy import *  # 用于求导积分等科学计算
from scipy.optimize import minimize
from sympy import *  # 用于求导积分等科学计算
from numpy import *

# def f(x) :
#    x, y = symbols(' x y')  # 引入 x y 变量
#    y = math.exp(-(x-5)**2)
#    return y

sp = 3.0e+8
a = np.zeros(shape=(301,1))
#
# print(a)
i = 0
while i < 301 :
    if (i%2) == 0:  #%表示取余
        a[i] = math.exp(-(i/10-5)**2)
        i = i+1
    else:
        a[i] = -math.exp(-(i/10-5)**2)
        i = i+1
# print(a)
a=flatten(a)


count = 1;H = [] #输入二维矩阵
for i in range(0, 301): #从0开始到60，不包含61
    temp = [[] for _ in range(301)]
    # print(temp)
    # print(type(temp))
    for j in range(0, 301):
        if i == 0:
            if j == 1:
                temp[j]=10
            else:
                temp[j]=0
        elif i>0 and i<300:
            if j==i-1:
                temp[j]=-10
            elif j==i+1:
                temp[j]=10
            else:
                temp[j]=0
        elif i == 300:
            if j==299:
                temp[299]=-10
            else:
                temp[j]=0
    H.append(temp)

#求A1
JF=matrix(-1j*ones((301,301))) #-j矩阵的输入
J=matrix(1j*ones((301,301))) #全j矩阵的输入
A=np.multiply(J,H)
A_abs=abs(A)
A_s=np.sum(A_abs,axis=0)
A1=A_s.max()
# print(A1)

B=A/A1
z=20*A1
print(z)

n=0
while (abs(spl.jv(n,z))>1.0e-13):
    n=n+1
print(n) #The UB of the calculation boundary

print(spl.jv(n,z))
T0=np.mat(np.identity(301))
T1=np.multiply(J,B) #数乘
j2=matrix(2j*ones((301,301)))
T2=np.multiply(j2,np.dot(B,T1))+T0
T=spl.jv(0,z)*T0+2*spl.jv(1,z)*T1+2*spl.jv(2,z)*T2
i = 3
while i < n:
    T0 = T1
    T1 = T2
    T2 = np.multiply(j2,np.dot(B,T1))+T0
    T = T + 2*spl.jv(i,z)*T2
    i = i+1

print(T)
Psi=np.dot(T,a)
Psi=np.real(Psi)
Psi=Psi.tolist() #列表化
# print(Psi)
Psi=flatten(Psi)#躺平化

# 包含每个柱子下标的序列
index = np.linspace(0,30,num = 301 )
index = flatten(index) # 将a拉开使其躺平
# print(index)
index2 = np.linspace(0,30,num = 301 )
index2 = [i + 20 for i in index]
#绘图
fig = plt.figure()
plt.bar(index, a, 0.1, color="blue")
plt.bar(index, Psi, 0.1, color="green")
# plt.xlabel("X-axis")
# plt.ylabel("Y-axis")

plt.legend(['t=0', 't=20'])
plt.title("1D TDME")

plt.show()
plt.savefig("barChart.jpg")



#画柱状图
# fig, ax = plt.subplots(figsize=(10, 7))
# ax.bar(x=index, height=a,width=0.1,color=r)
# ax.set_title("Simple Bar Plot", fontsize=15)
#
# ax.bar(x=index, height=b,width=0.1)
# ax.set_title("Simple Bar Plot", fontsize=15,color=b)
# plt.show()
#
# data2=mat(1j*ones((301,301))) #零矩阵的输入
# print(data2)

```

