class Solution
{	
    	public int solution(int n, int a, int b) {
		int answer = 0;// 일단 냅두자

		while (n != 0) {
			System.out.println("n : "+n + " a : "+a+" b : " + b);
			if ( (a%2==0 && a == b + 1) || (b%2==0 && b == a + 1)) {
				answer++;
				//System.out.println("조건만족");
				break;
			}
			if (a % 2 == 0) {
				a = a / 2;
			} else {
				a = (a / 2) + 1;
			}
			if (b % 2 == 0) {
				b = b / 2;
			} else {
				b = (b / 2) + 1;
			}
			answer++;
			n = n / 2;
		
		}
		return answer;
	}

    
}