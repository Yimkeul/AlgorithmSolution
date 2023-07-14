
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;


public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		StringBuilder sb = new StringBuilder();
		int n = Integer.parseInt(br.readLine()); //테스트케이스 수
		
		for(int i = 0; i < n ; i++) {
			int m = Integer.parseInt(br.readLine()); // 의상의 수
			
			Map<String,Integer>	map = new HashMap<String, Integer>();
			
			for(int j = 0; j < m; j++) {
				String input [] = br.readLine().split(" ");
				String name = input[1];//의상의 이름
				
				if(map.containsKey(name)) {
					map.put(name, map.get(name)+1);
				}else {
					map.put(name, 1);
				}
			
		
			}
			
			int result = 1;
			
			for(int val : map.values()) {
				result *= (val+1);
			}
			sb.append(result -1).append("\n");
		}
		
	
	
		System.out.println(sb);
		
	
	}
}
