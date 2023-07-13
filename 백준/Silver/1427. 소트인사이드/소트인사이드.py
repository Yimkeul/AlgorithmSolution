data = input()
aa =[]
for i in data:
    aa.append(int(i))

for i in range(len(aa)):
    Max = i
    for j in range(i+1, len(aa)):
        if aa[j] > aa[Max]:
            Max = j
    if aa[i] < aa[Max]:
        aa[i] , aa[Max] = aa[Max] , aa[i]

for i in aa:
    print(i,end='')