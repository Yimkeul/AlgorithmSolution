import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Map;
import java.util.TreeMap;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
	
		Map<String, Integer> map = new TreeMap<String, Integer> ();
		
		String name = "";
		int sum  = 0;

		while((name = br.readLine())!=null) {
			
				if(!map.containsKey(name)) {
					map.put(name, 1);
				}else {
					map.put(name, map.get(name)+1);
				}	
				sum++;
		}
		
		
		for(String t: map.keySet()) {
			double tt = ((double)map.get(t)/sum*100);
			System.out.println( t + " " + String.format("%.4f", tt));
			
		}
	}
}
