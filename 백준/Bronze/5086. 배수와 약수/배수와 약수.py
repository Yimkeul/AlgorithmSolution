while True:
    a, b = list(map(int,input().split(" ")))

    if (a == 0) and (b == 0):
        break
    elif a % b == 0 :
        print("multiple")
    elif a % b != 0:
        if b % a == 0:
            print("factor")
        elif (b%a !=0):
            print("neither")