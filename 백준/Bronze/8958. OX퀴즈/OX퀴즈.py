import sys

readLine = sys.stdin.readline

N = int(readLine())
for _ in range(N):
    ox = readLine().rstrip()
    score = [0 for _ in range(len(ox))]
    for i in range(len(ox)):
        if ox[i] == "O":
            score[i] = 1
            if i - 1 >= 0 and ox[i - 1] == "O":
                score[i] = score[i - 1] + 1
    print(sum(score))
