import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.LinkedList;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String input_1 [] = br.readLine().split(" ");
		int n = Integer.parseInt(input_1[0]);
		int m = Integer.parseInt(input_1[1]);
		
		
		String input_2[] = br.readLine().split(" ");
		int idx [] = new int [input_2.length];
		for(int i  = 0 ; i < input_2.length;i++) {
			idx[i] = Integer.parseInt(input_2[i]);
		}
		
		int cnt = 0;
		
		LinkedList<Integer> deque = new LinkedList<Integer>();
		
		for(int i = 1; i <= n ; i++) {
			deque.offer(i);
		}
		
		for(int i = 0 ; i < m ; i++) {
			int target = deque.indexOf(idx[i]);
			
			int half;
			
			if(deque.size() % 2 == 0) {
				half = deque.size()/2 -1;
			}else {
				half = deque.size()/2;
			}
			
			if(target <= half) {
				
				for(int j = 0 ; j < target;j++) {
					int temp = deque.poll();
					deque.offer(temp);
					cnt++;
				}
				
			}else {
				for(int j = 0; j< deque.size() - target;j++ ) {
					int temp = deque.pollLast();
					deque.offerFirst(temp);
					cnt++;
				}
			}
			
			deque.poll();
		}
		System.out.println(cnt);
	}
}
