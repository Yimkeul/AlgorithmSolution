def find(num):
    data = []
    for i in range(1,num):
        if num%i == 0:
            data.append(i)
    return data            
           
        
    

while True:
    n = int(input())
    if n == -1:
        break
    else:
        ary = find(n)
        if sum(ary) != n:
            print(f"{n} is NOT perfect.")
        else:
            _str = ""
            for i in range(len(ary)-1):
                _str += str(ary[i])
                _str += " + "
            _str += str(ary[len(ary)-1])
            print(f"{n} = {_str}")

