import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String input[] = br.readLine().split(" " );
		
		long n = Long.parseLong(input[0]); //갯수
		long l = Long.parseLong(input[1]); 
		long w = Long.parseLong(input[2]);
		long h = Long.parseLong(input[3]);
		
		double low =0;
		double high;
		
		high = Math.max(l, Math.max(w, h));
		
		
		for(int i = 0; i < 10000; i++) {
			double mid = (low+high)/2;
			if((long)(l/mid) * (long)(w/mid)*(long)(h/mid) >=n) low =mid;
			else high = mid;
		}
		System.out.println(low);
	}
}
