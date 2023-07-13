import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.LinkedList;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		StringBuilder sb = new StringBuilder();
		int n = Integer.parseInt(br.readLine());

		String input[] = br.readLine().split(" ");

		LinkedList<Dot> li = new LinkedList<Dot> ();
		for(int i = 0; i < n; i++) {
			int v = Integer.parseInt(input[i]);
			li.add(new Dot(i+1,v));
		}
		int now = 0; int val = 0;
		for(int i =0 ; i< n; i++) {
			if(val >0 ) {
				for(int j = 0; j < val-1;j++) {
					++now;
					if(now >= li.size()) {
						now = 0;
					}
				}
				
			}else if(val < 0) {
				val *=-1;
				for(int j = 0; j < val; j++) {
					--now;
					if(now < 0 ) {
						now = li.size()-1;
					}
				}
			}
			Dot d = li.get(now);
			val = d.value;
			sb.append(d.num + " ");
			li.remove(now);
			if(now == li.size()) {
				now = 0;
			}
		}

		System.out.println(sb.toString());
	}
	public static class Dot{
		int num , value;
		Dot(int n , int v ){
			this.num = n;
			this.value = v;
		}
	}
}
