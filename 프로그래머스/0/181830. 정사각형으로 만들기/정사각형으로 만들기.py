def check_common_size(arr):
    col = 0
    row = len(arr)
    for i in arr:
        if col < len(i):
            col = len(i)
    return max(col,row)

def append_last_col(arr, cnt):
    new_arr = arr
    for _ in range(cnt):
        new_arr.append(0)
    return new_arr
    
    
def append_last_row(arr, n, cnt):
    new_arr = arr
    zero_arr = [0] * n
    for _ in range(cnt):
        new_arr.append(zero_arr)
    
    return new_arr
    


def solution(arr):
    answer = arr
    cs = check_common_size(arr)
    
    for i in answer:
        if len(i) < cs:
            i = append_last_col(i, cs - len(i))
    
    if len(answer) < cs:
        answer = append_last_row(answer, cs, cs - len(answer))
    
    
    return answer