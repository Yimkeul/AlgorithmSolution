def whereMyRoom (h, w, n):
    str_floor = ""
    str_room = ""

    floor = n%h
    room = n//h + 1

    if floor == 0:
        floor = h
        room = n//h
    if room < 10 :
        str_room +="0"
        str_room += str(room)
    else:
        str_room = str(room)
    str_floor = str(floor)
    return str_floor+str_room

T = int(input())
for _ in range(T):
    H,W,N = map(int,input().split())
    print(whereMyRoom(H,W,N))
    