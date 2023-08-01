_ = int(input())
apt = list(input())

cnt = 0
sum = 0
for i in apt:
    sum += ord(i)%32 * 31 ** cnt
    cnt += 1
print(sum)
    

    