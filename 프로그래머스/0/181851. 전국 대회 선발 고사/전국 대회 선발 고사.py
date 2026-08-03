def solution(rank, attendance):
    arr = []
    for i in range(len(attendance)):
        if attendance[i] == True:
            arr.append((i,rank[i]))
        
    arr.sort(key = lambda x : x[1])
    answer = 0
    
    
            
                       
            
    answer = 10000*arr[0][0] + 100*arr[1][0] + arr[2][0]
    return answer