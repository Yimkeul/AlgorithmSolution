
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.LinkedList;
import java.util.Queue;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		int n = Integer.parseInt(br.readLine());
		
		Queue<Integer> queue = new LinkedList<>();
		
		for(int i = 1; i <= n;i++ ) {
			queue.add(i);
		}
		
		String list = "";
		
		for(int i = 0; i < n-1;i++) {
			int f = queue.poll();
			list +=(String.valueOf(f)) + " ";
			int sf = queue.peek();
			queue.poll();
			queue.add(sf);
		
		}
		list+=(String.valueOf(queue.poll()));
		System.out.println(list.toString());
		
		
	}
}


/*
 
 1 2 3 4 5 6 7
 for  1
 2 3 4 5 6 7 // 1 // 3 4 5 6 7 2
 4 5 6 7 2 // 1 3 // 5 6 7 2 4
 6 7 2 4 // 1 3 5 // 7 2 4 6
 2 4 6 // 1 3 5 7 // 4 6 2
 6 2 // 1 3 5 7 4 // 2 6 
 6 // 1 3 5 7 4 2 
 ==> 1 3 5 7 4 2 6 
 
 
 
 * */
//