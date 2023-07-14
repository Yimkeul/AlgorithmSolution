import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int T = Integer.parseInt(br.readLine());
		
		for(int i =0; i< T; i++) {
			String input[] = br.readLine().split(" ");
			int c = Integer.parseInt(input[0]);
	
			int avg = 0;
			int avg_n =0;
			int total = 0;
			String result = "";
			for(int j = 1; j <= c;j++) {
				total += Integer.parseInt(input[j]);
			}
		
			avg = total/c;
		
			for(int j = 1; j <= c;j++) {
				if(avg<Integer.parseInt(input[j])) {
					avg_n++;
				}
			}
		
			
			result = String.format( "%.3f",(Double.valueOf(avg_n) / Double.valueOf(c))*100);
			
			
			
			System.out.println(result+"%");
			
			
			
		}
	}
}