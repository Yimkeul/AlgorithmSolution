import java.util.LinkedList;
import java.util.Queue;

public class Solution {
    public int solution(int bridge_length, int weight, int[] truck_weights) {
        int answer = 0;
        
        Queue<Integer> qq = new LinkedList<>();
        
        int max = 0;
        
        for(int w : truck_weights) {
        	while(true) {
        		if(qq.isEmpty()) {
        			qq.offer(w);
        			max += w;
        			answer++;
        			break;
        		}else if( qq.size() == bridge_length) {
        			max -= qq.poll();
        		}
        		else {
        			if(max + w > weight) {
        				qq.offer(0);
        				answer++;
        				
        			}else {
        				qq.offer(w);
        				max+=w;
        				answer++;
        				break;
        			}
        		}
        	}
        	
        	
        }
        
        return answer + bridge_length;
    }
}