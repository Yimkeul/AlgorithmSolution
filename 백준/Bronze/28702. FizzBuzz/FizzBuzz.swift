func fizzBuzz() {
        var n = 0
        for i in (1...3).reversed() {
            let x = readLine()!
            if !["Fizz", "Buzz", "FizzBuzz"].contains(x) {
                if let num = Int(x) {
                    n = num + i
                }
            }
        }
        
        let result = (n % 3 == 0 ? "Fizz" : "") + (n % 5 == 0 ? "Buzz" : "")
        print(result.isEmpty ? "\(n)" : result)
    }

    fizzBuzz()