# default = 100
# channel = int(input())
# channelArray = []
# for i in map(int,str(channel)):
#     channelArray.append(i)


# _ = input()
# data = list(map(int,input().split(" ")))

# buttonNum = [0,1,2,3,4,5,6,7,8,9]
# canNum = list(set(buttonNum) - set(data))

# diff =[10,10,10,10,10,10,10,10,10,10]
# # diffdic= {}

# diffarray1 = []
# diffarray2 = []

# for i in channelArray:
#     # diffvalue =10
#     min__ = 10
#     min_index = 11
#     max__=0
#     max_index = 11
#     for j in canNum:
#         temp= abs(i-j)
#         if min__ >=temp:
#             min__ =temp
#             min_index = j
#         if max__ <= temp:
#             max__ = temp
#             max_index = j
#         print(f" i : {i}, j: {j}, 차의절대값 {temp}, 작은위치{min_index} , 큰위치{max_index}")
#         diff[j] = temp
    
#     diffarray1.append(min_index)
#     diffarray2.append(max_index)


#         # if (diffvalue >temp):
#         #     diffvalue = temp
#     print('-----------')






#         # print("test",i , j ,"null")
#     # diff.append(diffvalue)
# print(diffarray1)
# print(diffarray2)
# # print(diff)

# # temp =""
# # for i in diff:
# #     temp +=str(i)
# # # print(temp)




# # if(channel ==100):
# #     print(0)
# # else:
# #     # ans = len(channelArray) + sum(diff)
# #     # print("tmep : ", temp , "len " , len(channelArray))
# #     ans = int(temp) + len(channelArray)
# #     print(ans)

# # # print(canNum)

import sys
input = sys.stdin.readline
target = int(input())
n = int(input())
broken = list(map(int, input().split()))

# 현재 채널에서 + 혹은 -만 사용하여 이동하는 경우
min_count = abs(100 - target)

for nums in range(1000001):
    nums = str(nums)
    
    for j in range(len(nums)):
        # 각 숫자가 고장났는지 확인 후, 고장 났으면 break
        if int(nums[j]) in broken:
            break

        # 고장난 숫자 없이 마지막 자리까지 왔다면 min_count 비교 후 업데이트
        elif j == len(nums) - 1:
            min_count = min(min_count, abs(int(nums) - target) + len(nums))

print(min_count)

