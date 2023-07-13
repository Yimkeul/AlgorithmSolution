import java.util.*;

public class Solution {
	public int[] solution(long n) {

		String trans = String.valueOf(n);

		String[] sp = trans.split("");

		ArrayList lst = new ArrayList();
		int t = 0;
		for (int i = 0; i < sp.length; i++) {
			t = Integer.parseInt(sp[i]);

			lst.add(t);
		}

		int[] answer = new int[sp.length];

		Collections.reverse(lst);

		for (int i = 0; i < sp.length; i++) {
			answer[i] = (int) lst.get(i);
		}
       
       for(int i =0; i< answer.length;i++) {
    	   System.out.println(answer[i]);
       }

		return answer;
	}
}