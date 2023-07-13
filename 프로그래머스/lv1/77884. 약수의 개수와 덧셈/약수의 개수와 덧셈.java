class Solution {
    public int solution(int left, int right) {
   	int answer = 0;
		int range = right - left + 1;
		int arr [] = new int [range];
		
		for(int i = 0; i < range; i++) {
			arr[i] = left++;
		
		}
		
		for(int i = 0; i < arr.length;i++) {
			int cnt = 0;
			for(int j =1; j <= arr[i];j++) {
				if(arr[i] % j == 0) {
					cnt++;
				}
			}
			if(cnt%2==0) {
				answer += arr[i];
			}else {
				answer -=arr[i];
			}
			
		}
		
		
		
		return answer;
    }
}