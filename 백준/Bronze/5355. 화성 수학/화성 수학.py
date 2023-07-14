def cal(num , giho):
    num = float(num)
    if giho == "@":
        num *=3
    elif giho == "%":
        num+=5
    elif giho =="#":
        num -= 7
    return format(num,'.2f')
        
        
    
T = int(input())
for _ in range(T):
    data = list(input().split(" "))
    num = data[0]
    for i in data:
        num= cal(num,i)
    print(num)
    