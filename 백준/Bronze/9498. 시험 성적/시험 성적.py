import sys
readLine = sys.stdin.readline
score = int(readLine())
match score:
    case _ if score >= 90:
        print("A")
    case _ if score >= 80:
        print("B")
    case _ if score >= 70:
        print("C")
    case _ if score >= 60:
        print("D")
    case _:
        print("F")
