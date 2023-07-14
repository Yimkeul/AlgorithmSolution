import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		StringBuilder sb = new StringBuilder();
		int n = Integer.parseInt(br.readLine());
		Map<Integer, Integer> map = new HashMap<Integer, Integer>();
		String input[] = br.readLine().split(" ");
		
		
		for(int i = 0; i < n ;i++) {
			
			int num = Integer.parseInt(input[i]);
		
			if(map.containsKey(num)) {
				map.put(num, map.get(num)+1);
			}else {
				map.put(num ,  1);
				
			}
			
			
		}
	
		n = Integer.parseInt(br.readLine());
		input = br.readLine().split(" ");
		for(int i = 0 ; i < n ; i++) {
			int num = Integer.parseInt(input[i]);
			if(map.containsKey(num)) {
				sb.append(map.get(num) + " ");
			}else {
				sb.append(0 + " ");
			}
		}
		System.out.println(sb);
	}
}
