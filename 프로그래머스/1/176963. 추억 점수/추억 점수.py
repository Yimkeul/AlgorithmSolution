def solution(name, yearning, photo):
    answer = []
    dict = {}
    for i in range(len(name)):
        dict[name[i]] = yearning[i]
    
    for p in photo:
        total = 0
        for i in p:
            total += dict.get(i,0)
        answer.append(total)
        
    
    return answer