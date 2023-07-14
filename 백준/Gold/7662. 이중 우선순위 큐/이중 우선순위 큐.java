
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.PriorityQueue;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		int t = Integer.parseInt(br.readLine());
		
		for(int i = 1; i<=t; i++) {
			int k = Integer.parseInt(br.readLine());
			Map<Integer,Integer>map = new HashMap<Integer, Integer>();
			PriorityQueue<Integer> minq = new PriorityQueue<Integer>();
			PriorityQueue<Integer> maxq= new PriorityQueue<Integer>(Collections.reverseOrder());
			
			for(int j = 0; j < k;j++) {
				String [] input = br.readLine().split(" ");
				char ch = input[0].charAt(0);
				int n = Integer.parseInt(input[1]);
				if(ch =='I') {
					map.put(n, map.getOrDefault(n, 0)+1);
					minq.add(n);
					maxq.add(n);
				}else {
					if(map.size() == 0) {
						continue;
					}
						PriorityQueue<Integer> que = n == 1 ? maxq : minq;
						removeMap(que,map);
					
				}
			}
			if(map.size() == 0) {
				System.out.println("EMPTY");
				
			}else {
				int n = removeMap(maxq,map);
				System.out.println(n + " " + (map.size() > 0 ? removeMap(minq,map) : n));
			}
		}
		
		
		
		
	}

	private static int removeMap(PriorityQueue<Integer> que, Map<Integer, Integer> map) {
		int num;
		while(true) {
			num = que.poll();
			int cnt = map.getOrDefault(num, 0);
			
			if(cnt == 0) {
				continue;
			}
			if(cnt ==1) {
				map.remove(num);
			}else {
				map.put(num, cnt-1);
			}
			break;
		}
		return num;
	}

}
