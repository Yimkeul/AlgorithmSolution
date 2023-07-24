def isPalin(arr) :
    half = len(arr)//2    
    head = []
    tail = []
    for i in range(half):
        head.append(arr[i])
    if (len(arr)%2 == 0):
        half -= 1
    for i in range(len(arr)-1, half,-1):
        tail.append(arr[i])
    if (head == tail):
        print("yes")
    else:
        print("no")


while True:
    num = list(input())
    if len(num) == 1 and num[0]=="0":
        break
    isPalin(num)
