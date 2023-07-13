import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		Set<String> set = new HashSet<>();
		
		int n = Integer.parseInt(br.readLine());
		for (int i = 0; i < n; i++) {
			String word = br.readLine();
			set.add(word);
		}
		List<String> list = new ArrayList<String>(set);
		
//		Iterator iter_s = set.iterator();
		
//		while(iter_s.hasNext()) {
//			list.add((String) iter_s.next());
//		}
//		
		
		
		
		Collections.sort(list , new Comparator<String>() {
			public int compare(String s1, String s2) {
				int s1_l = s1.length();
				int s2_l = s2.length();
				if(s1_l == s2_l) {
					return s1.compareTo(s2);
				}
				return s1_l - s2_l;
			}
		});
		
		Iterator iter = list.iterator();
		while(iter.hasNext()) {
			System.out.println(iter.next());
		}
		
	}
}
