import sys

readLine = sys.stdin.readline
melody = list(map(int, readLine().split()))

a_c = sorted(melody)
d_c = sorted(melody, reverse=True)

if a_c == melody:
    print("ascending")
elif d_c == melody:
    print("descending")
else:
    print("mixed")
