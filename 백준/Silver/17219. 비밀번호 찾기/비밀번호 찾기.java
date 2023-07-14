import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		String input [] = br.readLine().split(" ");
		
		int a = Integer.parseInt(input[0]);
		int b = Integer.parseInt(input[1]);
		
		Map<String, String> map =new HashMap<String, String>();
		
		
		while(a-->0) {
			input = br.readLine().split(" ");
			String site = input[0];
			String password = input[1];
			map.put(site, password);
			
			
		}
		while(b-->0) {
			String s = br.readLine();
			System.out.println(map.get(s));
		}
	}
}
