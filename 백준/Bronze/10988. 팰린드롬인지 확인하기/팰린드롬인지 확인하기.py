word = list(input())
state = 0
for i in range(len(word)//2):
    # print(word[i], word[-(i+1)])
    if word[i] == word[-(i+1)]:
        continue
    else:
        state +=1

if state > 0 :
    print(0)
else:
    print(1)
    