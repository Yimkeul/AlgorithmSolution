import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;


public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br =new BufferedReader (new InputStreamReader(System.in));
		
		Map<Integer,Integer> map_x = new HashMap<Integer, Integer>();
		Map<Integer,Integer> map_y = new HashMap<Integer, Integer>();
		
		
		int n = Integer.parseInt(br.readLine());
		for(int i = 0; i < n ; i++) {
			String input[] = br.readLine().split(" ");
			int x = Integer.parseInt(input[0]);
			int y = Integer.parseInt(input[1]);
			
			if(!map_x.containsKey(x)) {
				map_x.put(x, 1);
			}else {
				map_x.put(x, map_x.get(x)+1);
			}
			
			if(!map_y.containsKey(y)) {
				map_y.put(y, 1);
			}else {
				map_y.put(y, map_y.get(y)+1);
			}
			
			
		}
		
		
		int answer = 0;
		for(Integer i : map_x.keySet()) {
			if(map_x.get(i) > 1) {
				answer++;
			}
		}
		
		for(Integer i : map_y.keySet()) {
			if(map_y.get(i) > 1) {
				answer++;
			}
		}
		
		System.out.println(answer);
	}
}