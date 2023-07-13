class Solution {
	public int solution(int[] absolutes, boolean[] signs) {
		int answer = 0;
		int result [] = new int [absolutes.length];
		
		int length = absolutes.length;
		
		for(int i = 0; i < length; i++) {
			if(signs[i]) {
				result[i] = absolutes[i];
			}else {
				result[i]  = -absolutes[i];
			}
		}
		
		for(int i = 0 ; i< length; i++) {
			answer += result[i];
		}
		
		
		
		
		
		
		
		
		return answer;

	}
}