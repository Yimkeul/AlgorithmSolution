def solution(data, ext, val_ext, sort_by):
    answer = []
    for c, d, m ,r in data:
        print(c,d,m,r)
        if ext == "code":
            if c < val_ext:
                answer.append([c,d,m,r])
        elif ext == "date":
            if d < val_ext:
                answer.append([c,d,m,r])
        elif ext == "maximum":
            if m < val_ext:
                answer.append([c,d,m,r])
        else:
            if r < val_ext:
                answer.append([c,d,m,r])
    
    
    if sort_by == "code":
        answer.sort(key=lambda x:x[0])
    elif sort_by == "date":
        answer.sort(key=lambda x:x[1])
    elif sort_by == "maximum":
        answer.sort(key=lambda x:x[2])
    else:
        answer.sort(key=lambda x:x[3])
        
    
    print(answer)
    
    
    
    return answer