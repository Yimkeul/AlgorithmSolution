def getss(time):
    times = list(map(int,time.split(":"))) 
    return times[0] * 60 + times[1]

def getms(time):
    mm = time//60
    ss = time%60
    cm = ""
    cs = ""
    
    if mm < 10:
        cm = "0"+str(mm)
    else:
        cm = str(mm)
    
    if ss == 0:
        cs = "00"
    elif ss < 10:
        cs = "0"+str(ss)
    else:
        cs = str(ss)
        
    return cm + ":" + cs

def c_next(time, video_len):
    video = getss(video_len)
    next = getss(time) + 10
    return getms(video) if video - next < 10 else getms(next)
    
def c_prev(time):
    prev = getss(time) - 10
    return getms(prev) if prev > 10 else "00:00"

def is_opening(time, s, e):
    now = getss(time)
    op_s = getss(s)
    op_e = getss(e)
    if op_s <= now <= op_e:
        return e
    else:
        return time
    
    

def solution(video_len, pos, op_start, op_end, commands):
    answer = pos
    for c in commands:
        answer = is_opening(answer, op_start, op_end)
        if c == "next":
            answer = c_next(answer, video_len)
        else:
            answer = c_prev(answer)
        answer = is_opening(answer, op_start, op_end)
    
    return answer