import java.util.*;
class Solution {
	
	/*
	 * 배열을 두개를 적어야 하나?
	 * */
	public int solution(int n, int[] money) {
		// case 1 : n = 5 , money[1,2,5] answer = 4
		
		int answer = 0;
		
		int [] dp = new int [n+1]; // 크기설정
		Arrays.sort(money);
		dp[0] = 1;
		for(int i = 0; i < money.length; i++) {
			for(int j = money[i];  j<=n;j++) {
				dp[j] += dp[j-money[i]];
			}
		}
		
		
		
		
		
		
		return dp[n] %1000000007;
	}
}