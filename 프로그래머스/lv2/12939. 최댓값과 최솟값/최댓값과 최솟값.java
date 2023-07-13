import java.util.*;
class Solution {
    public String solution(String s) {
        String answer = "";
        String [] temp=s.split(" ");
        int num;
        int []change = new int [temp.length];
        for(int i = 0; i < change.length; i++) {
			num = Integer.parseInt(temp[i]);
			change[i] = num;
			// System.out.println("change["+i+"] : "+change[i] );
		}
		Arrays.sort(change);
        answer = change[0]+" "+change[change.length-1];
        return answer;
    }
}