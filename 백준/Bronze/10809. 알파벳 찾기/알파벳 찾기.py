import sys

readLine = sys.stdin.readline
S = readLine().rstrip()
alpha = [-1] * 26
for i in range(len(S)):
    alpha[ord(S[i]) % 97] = i if alpha[ord(S[i]) % 97] == -1 else alpha[ord(S[i]) % 97]
print(*alpha)
