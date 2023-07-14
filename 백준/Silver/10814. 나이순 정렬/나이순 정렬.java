
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;


class per{
	int age;
	String name;
	public per(int age, String name) {
		this.age = age;
		this.name = name;
	}
}
public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int n = Integer.parseInt(br.readLine());
		List <per> list = new ArrayList<>();
		for(int i = 0 ; i < n ;i++) {
			String input[] = br.readLine().split(" ");
			int age = Integer.parseInt(input[0]);
			String name = input[1];
			list.add(new per(age,name));
			
		}
		
		Collections.sort(list, new Comparator<per>() {
			public int compare(per o1, per o2) {
				if(o1.age == o2.age) {
					
					
					return 0;
					
				}
				return o1.age - o2.age;
			}
		});
		
		Iterator iter = list.iterator();
		while (iter.hasNext()) {
			per p = (per) iter.next();
			
			System.out.println(p.age + " " +p.name);
		}
	}
}
