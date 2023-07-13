def solution(targets):
    answer = 0
    targets.sort(key=lambda x:x[1])
    target = 0
    for i in targets:
        if (target <= i[0]):
            answer +=1
            target = i[1]
    return answer