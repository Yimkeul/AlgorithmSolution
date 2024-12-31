n = int(input())

ary = set([])

for i in range(n):
    ary.add(input())

newAry = list(ary)
newAry2 = sorted(newAry, key=lambda x: (len(x), x))

for i in newAry2:
    print(i)
