T  = int(input())
for _ in range(T):
    N = int(input())
    dict = {}
    for _ in range(N):
        name , litter = list(input().split(" "))
        dict[name] = int(litter)
    sorted_dict = sorted(dict.items(), key = lambda item : item[1] , reverse=True)
    # print(list(sorted_dict.keys())[0])
    # print(sorted_dict[0].keys())
    # print(type(sorted_dict))
    print(sorted_dict[0][0])
