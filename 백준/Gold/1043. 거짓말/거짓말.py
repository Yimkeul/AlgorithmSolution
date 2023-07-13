# n , m = list(map(int,input().split(" ")))

# knowPeople = list(map(int,input().split(" ")))
# knowPeople.pop(0)

# cnt = 0
# whole = []
# for i in range(m):
#     inParty = list(map(int,input().split(" ")))
#     inParty.pop(0)
#     whole.append(inParty)
#     setKnowPepple = set(knowPeople)
#     setInParty = set(inParty)
    
#     if((setKnowPepple&setInParty) != set()):
#         knowPeople = list(setKnowPepple|setInParty)
# for inarray in whole:
#     for j in range(len(inarray)):
#         if inarray[j] not in knowPeople:
#             cnt+=1
#             print(inarray[j] , knowPeople)
#             break
# print(cnt)

            
        
import sys
input = sys.stdin.readline

n, m = map(int, input().split())
knowList = set(input().split()[1:])
parties = []

for _ in range(m):
    parties.append(set(input().split()[1:]))

for _ in range(m):
    for party in parties:
        if party & knowList:
            knowList = knowList.union(party)

cnt = 0
for party in parties:
    if party & knowList:
        continue
    cnt += 1

print(cnt)
