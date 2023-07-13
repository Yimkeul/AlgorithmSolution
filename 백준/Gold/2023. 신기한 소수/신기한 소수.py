n = int(input())
def isPrime(num):
    for i in range(2,num//2):
        if num%i == 0:
            return False
    return True    



def DFS(num, jari):
    if jari == n:
        if isPrime(num):
            print(num)

    for i in range(1,10):
        if i%2==0:
            continue
        if isPrime(num*10+i):
            DFS(num*10+i,jari+1)
            


DFS(2,1)
DFS(3,1)
DFS(5,1)
DFS(7,1)
