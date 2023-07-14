T = int(input())
for i in range(T):
    data = [0,0]
    for j in range(9):
        Y , K = list(map(int,input().split(" ")))
        data[0] +=Y
        data[1] +=K

    if data[0] > data[1]:
        print("Yonsei")
    elif data[0] < data[1]:
        print("Korea")
    else :
        print("Draw")
    # print(data)
