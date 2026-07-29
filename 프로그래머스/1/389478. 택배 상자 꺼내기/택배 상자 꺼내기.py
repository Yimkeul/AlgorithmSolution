def solution(n, w, num):
    answer = 0
    heigh = n//w + 1
    x = 1
    graph = []
    
    
    for i in range(heigh):
        t = [] 
        for j in range(w):
            if x <= n:
                t.append(x)
                x += 1
            else:
                t.append(0)
        if i % 2 == 0:
            graph.append(t)
        else:
            t.reverse()
            graph.append(t)
            
    
        
    for i in range(heigh):    
        for j in range(w):
            if graph[i][j] == num:
                d = i
                while d < heigh and graph[d][j]:
                    answer += 1
                    d += 1
            
            
    
    
    return answer