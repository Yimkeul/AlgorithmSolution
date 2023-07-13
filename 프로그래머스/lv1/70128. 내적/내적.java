class Solution {
    public int solution(int[] a, int[] b) {
        int answer = 0;
        
                int arr_length = a.length; //b.length
        
        for(int i =0; i < arr_length;i++) {
        	answer += a[i] * b[i];
        	
        }
        
           
        
        return answer;
    }
}