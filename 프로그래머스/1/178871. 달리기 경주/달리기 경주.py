def solution(players, callings):

    
    map = {}
    for i, p in enumerate(players):
        map[p] = i
        
    for c in callings:
        idx = map[c]
        prev = players[idx-1]
        players[idx-1], players[idx] = players[idx], players[idx-1]
        
        map[c] -= 1
        map[prev] += 1
        
    return players