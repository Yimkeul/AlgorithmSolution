import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class Main {
	static List<String> list = new ArrayList<>();
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	
		while(true) {
			int cnt = Integer.parseInt(br.readLine());
			if(cnt == 0) {
				break;
			}else {
				for(int i = 0; i < cnt; i++) {
					
					String input = br.readLine();
					list.add(input);
					Collections.sort(list, new Comparator<String>() {
						public int compare(String o1, String o2) {
							if(o1.toLowerCase().equals(o2.toLowerCase())) {
								return 0;
							}
							return o1.toLowerCase().compareTo(o2.toLowerCase());
						}
					});
					
				}

				System.out.println(list.get(0));
                list.removeAll(list);
			}
		}
		
	}
}
