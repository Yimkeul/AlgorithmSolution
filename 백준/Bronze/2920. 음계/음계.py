def isAscending (arr):
    for i in range(len(arr)-1):
        if arr[i] != arr[i+1] -1:
            return False
    return True

def isDescending (arr):
    for i in range(len(arr)-1):
        if arr[i] -1 != arr [i+1]:
            return False
    return True
        
    
    



arr = list(map(int,input().split()))
if isAscending(arr):
    print("ascending")
elif isDescending(arr):
    print("descending")
else:
    print("mixed")
