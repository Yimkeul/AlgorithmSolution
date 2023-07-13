public class Solution {
	public int solution(int[] arr) {
		int answer = cld(arr[0],arr[1]);
		for(int i = 2; i < arr.length;i++) {
			answer = cld(answer, arr[i]);
		}
		return answer;

	}

	public int gcd(int a, int b) {
		while (b != 0) {
			int n = a % b;
			a = b;
			b = n;
		}

		return a;

	}
	
	public int cld(int a, int b) {
		return (a*b)/gcd(a,b);
	}
}