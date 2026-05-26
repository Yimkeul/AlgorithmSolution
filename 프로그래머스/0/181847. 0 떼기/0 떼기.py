def solution(n_str):
    for i in range(0,len(n_str)):
        if n_str[i] == '0':
            continue
        else:
            print(n_str[i:])
            return n_str[i:]
