import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String input [] = br.readLine().split(" ");
		int n = Integer.parseInt(input[0]);
		int m = Integer.parseInt(input[1]);
		
		Set<String> no_listen = new HashSet<String>();
		Set<String> no_look = new HashSet<String>();
		
		for(int i = 0 ; i< n;i++) {
			no_listen.add(br.readLine());
		}
		for(int j = 0 ; j <m;j++) {
			no_look.add(br.readLine());
		}
		
		Set<String> x_man = new TreeSet<String>();
		x_man.addAll(no_listen);
		x_man.retainAll(no_look);
		System.out.println(x_man.size());
//		System.out.println(x_man);
//		
		Iterator iter = x_man.iterator();
		while(iter.hasNext()) {
			System.out.println(iter.next());
		}
	}	
}
