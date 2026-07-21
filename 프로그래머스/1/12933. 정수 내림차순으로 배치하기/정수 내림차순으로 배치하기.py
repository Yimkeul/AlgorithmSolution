def solution(n):
    test = list(str(n))
    
    test = list(reversed(sorted(test)))
    
    test = int(''.join(test))
    
    
    return test