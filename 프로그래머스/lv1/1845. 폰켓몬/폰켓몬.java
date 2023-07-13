import java.util.HashSet;

public class Solution {
	public int solution(int [] nums) {
		int answer = 0;
		int pick = nums.length/2;
		
		HashSet numset = new HashSet();
		
		
		for(int i = 0; i< nums.length;i++) {
			numset.add(nums[i]);
		}
		
		if(numset.size() > pick) {
			return pick;
		}else {
			return numset.size();
		}
	
		
	}
}