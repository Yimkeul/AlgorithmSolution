

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.PriorityQueue;

class jual{
	int m ;
	int v;
	public jual(int m, int v) {
		this.m = m;
		this.v = v;
	}
}

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String input [] = br.readLine().split(" ");
		
		int n = Integer.parseInt(input[0]);
		int k = Integer.parseInt(input[1]);
		List<jual> list = new ArrayList<>();
		for(int i =0; i<n;i++) {
			input = br.readLine().split(" ");
			int m = Integer.parseInt(input[0]);
			int v = Integer.parseInt(input[1]);
			list.add(new jual(m,v));
		}
		
		Collections.sort(list, new Comparator<jual>() {
			public int compare(jual o1, jual o2) {
				if(o1.m == o2.m) {
					return o2.v - o1.v;
				}
				return o1.m- o2.m;
			}
		});
		
		PriorityQueue<Integer> pq = new PriorityQueue<>(Collections.reverseOrder());
		// 1 65
		// 2 99
		// 5 23
		List<Long> ll = new ArrayList<>(); 
		for(int i =0; i< k ;i++) {
			long c = Long.parseLong(br.readLine());
			ll.add(c);
		}
		//가방무게 오름차순정렬
		Collections.sort(ll);
		//System.out.println(ll.toString());
		
		// 2
		// 10
		long answer = 0;
		for(int i =0, j = 0; i < k;i++) {
			while(j < n && list.get(j).m <= ll.get(i) ) {
				pq.add(list.get(j).v);
				j++;
			}
			if(!pq.isEmpty()) {
				answer+=pq.poll();
			}
		}
//		System.out.println(pq.toString());
//		
//		while(!pq.isEmpty()) {
//			answer+= pq.poll();
//		}
		
		System.out.println(answer);
		
	}
}
