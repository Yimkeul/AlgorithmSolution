def solution(myString):
    sp = myString.split('x')
    print(sp)
    answer = []
    for i in sp:
        answer.append(len(i))
        
    
    return answer