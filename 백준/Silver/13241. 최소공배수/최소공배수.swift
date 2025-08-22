import Foundation



  let AB = readLine()!.split { $0 == " " }.map { Int($0)! }
  let (A, B) = (AB[0], AB[1])
  print(lcm(A, B))


// 최대공약수
func gcd(_ a: Int, _ b: Int) -> Int {
  if b == 0 {
    return a
  } else {
    return gcd(b, a % b)
  }
}

// 최소 공배수
// ab = gcd(a,b) * lcm(a,b)
// lcm(a,b) = ab / gcd(a,b)
func lcm(_ a: Int, _ b: Int) -> Int {
  return a * b / gcd(a, b)
}
