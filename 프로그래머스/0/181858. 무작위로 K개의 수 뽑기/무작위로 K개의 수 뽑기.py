def solution(arr, k):
    answer = []
    for i in arr:
        if i in answer:
            continue
        else:
            answer.append(i)
            
    
    answer = answer[:k]
    
    while len(answer) < k:
        answer.append(-1)
    
    return answer