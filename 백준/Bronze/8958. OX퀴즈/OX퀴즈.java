import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		int T = Integer.parseInt(br.readLine());
		
		for(int i = 0; i < T; i++) {
			String input[] = br.readLine().split("");
			int c = 0;
			int result = 0;
			for(int j = 0; j< input.length;j++) {
				if(input[j].equals("O")) {
					c++;
					result +=c;
				}else {
					c =0;
				}
			}
			System.out.println(result);
		}
	}
}
