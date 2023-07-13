import java.util.*;

public class Solution {
    public int solution(int n) {
        int ans = 0;
	while(true) {
			
		
			if( n%2 ==1) {
				ans++;
			}
			
			else if(n/2==0) {
				
				break;
			}
			n = n/2;
			
		}
	
   

        return ans;
    }
}