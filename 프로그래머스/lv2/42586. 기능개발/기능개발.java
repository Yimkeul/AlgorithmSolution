import java.util.LinkedList;
import java.util.List;
import java.util.Queue;


public class Solution {
	public int[] solution(int [] progreesses, int[] speed) {
		
		Queue<Integer> queue= new LinkedList<>();
		
		for(int i =0; i < progreesses.length;i++) {
			
			if((100-progreesses[i])%speed[i] >0) {
				queue.add( ((100-progreesses[i])/speed[i]) +1);
				
			}else {
				queue.add((100-progreesses[i])/speed[i]);
			}
			
			
		}
		
		System.out.println(queue.toString());
		
		List<Integer> q_ans = new LinkedList<>();
		int cnt = 1;
		int start = queue.poll();
		while(!queue.isEmpty()) {
			int index = queue.poll();
			if(start>=index) {
				cnt++;
			}else {
				q_ans.add(cnt);
				cnt=1;
				start = index;
			}
		}
		q_ans.add(cnt);
		
		int[] answer= new int [q_ans.size()]; 
		for(int i =0; i< q_ans.size();i++) {
			answer[i] = q_ans.get(i);
//			System.out.println(answer[i]);
		}
		
		return answer;
	}
}