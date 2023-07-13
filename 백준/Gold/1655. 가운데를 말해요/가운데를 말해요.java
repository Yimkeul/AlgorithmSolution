import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Collections;
import java.util.PriorityQueue;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		StringBuilder sb = new StringBuilder();
//		
//		PriorityQueue<Integer> min = new PriorityQueue<Integer>(new Comparator<Integer>() {
//
//			@Override
//			public int compare(Integer o1, Integer o2) {
//				// TODO Auto-generated method stub
//				return o1-o2;
//			}
//		});
		
//		PriorityQueue<Integer> max = new PriorityQueue<Integer>(new Comparator<Integer>() {
//
//			@Override
//			public int compare(Integer o1, Integer o2) {
//				// TODO Auto-generated method stub
//				return o2-o1;
//			}
//		});

		PriorityQueue<Integer> min = new PriorityQueue<Integer>();
		
		PriorityQueue<Integer> max = new PriorityQueue<Integer>(Collections.reverseOrder());
		
		int n = Integer.parseInt(br.readLine());
		
		for(int i = 0; i< n; i++) {
			int num = Integer.parseInt(br.readLine());
			
			if(min.size() == max.size()) {
				max.offer(num);
			}else {
				min.offer(num);
			}
			
			if(!min.isEmpty() && !max.isEmpty()) {
				if(min.peek()<max.peek()) {
					int tmp = min.poll();
					min.offer(max.poll());
					max.offer(tmp);
				}
			}
			sb.append(max.peek() + "\n");
			
		}
		
		System.out.println(sb);
	}
}
