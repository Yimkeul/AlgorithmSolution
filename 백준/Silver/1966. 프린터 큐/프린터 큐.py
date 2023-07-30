from collections import deque

def find_print_order(N, M, arr):
    queue = deque(enumerate(arr))  # 문서의 인덱스와 중요도를 함께 저장한 큐 생성
    print_order = 0  # 인쇄 순서
    while queue:
        doc_index, doc_priority = queue.popleft()  # 가장 앞에 있는 문서 정보를 가져옴
        # 큐에 있는 다른 문서들 중 현재 문서보다 중요도가 높은 문서가 있는지 확인
        if any(doc_priority < priority for _, priority in queue):
            # 있으면, 해당 문서를 큐의 가장 뒤로 옮김
            queue.append((doc_index, doc_priority))
        else:
            # 없으면, 현재 문서를 인쇄하고 목표 문서인지 확인
            print_order += 1
            if doc_index == M:
                return print_order

T = int(input())  # 테스트케이스 수 입력

for _ in range(T):
    N, M = map(int, input().split())  # 문서 개수와 목표 문서의 인덱스 입력
    arr = list(map(int, input().split()))  # 문서의 중요도 입력
    result = find_print_order(N, M, arr)  # 목표 문서의 인쇄 순서를 계산
    print(result)  # 결과 출력
