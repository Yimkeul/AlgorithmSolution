import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		int n = Integer.parseInt(br.readLine());
		HashMap<String, Integer> map = new HashMap<>();
		int ans = 0;
		
		for(int i = 0 ; i< n ; i++) {
			String input = br.readLine();
			map.put(input, i);
		}
		
		int out [] = new int [n];
		
		for(int i = 0 ; i< n ; i++) {
			String input = br.readLine();
			out[i]  = map.get(input);
		}
		
		//n == 4
		
		for(int i = 0 ; i < n-1;i++) {
			for(int j = i+1; j<n;j++) {
				if(out[i] > out[j]) {
					ans++;
					break;
				}
			}
		}
		
		for(String s : map.keySet()) {
			//.out.println(s + " : " + map.get(s));
		}
		for(int i = 0; i< n; i++) {
			//System.out.println(out[i]);
		}
		System.out.println(ans);
		
	}
}