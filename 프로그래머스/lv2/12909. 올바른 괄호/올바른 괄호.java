class Solution {
    boolean solution(String s) {
		boolean answer = true;
		
		int size = s.length();
		
		if(s.charAt(0) == ')' || s.charAt(size-1) == '(') {
			answer = false;
		}
		else {
			int sum = 0;
			int idx = 0;
			int chance = 0;
			for(int i = 1; i <= size-2; i++) {
				
				if(s.charAt(i) == '(') {
					idx = 1;
					sum += idx;
				}else {
					idx = -1;
					sum += idx;
					if(i > 1 && sum < -1) {
						chance += 1;
					}
				}
			}
			
			if( sum != 0 || chance >0) {
				answer = false;
			}else {
				answer = true;
			}
		}
		
		
		
		
		return answer;
    }
}