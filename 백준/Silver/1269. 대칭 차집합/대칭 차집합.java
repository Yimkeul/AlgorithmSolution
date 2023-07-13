import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashSet;
import java.util.Set;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String input [] = br.readLine().split(" ");
		int a = Integer.parseInt(input[0]);
		int b = Integer.parseInt(input[1]);
		
		Set<Integer> set_a = new HashSet<Integer>();
		Set<Integer> set_b = new HashSet<Integer>();
		
		
		input = br.readLine().split(" ");
		
		for(int i = 0; i < a ; i++) {
			set_a.add(Integer.parseInt(input[i]));
		}
		
		input = br.readLine().split(" ");
		for(int i = 0; i < b ; i++) {
			set_b.add(Integer.parseInt(input[i]));
		}
		
		br.close();
	
		Set<Integer> clone_a = new HashSet<Integer>();
		clone_a.addAll(set_a);
		clone_a.removeAll(set_b);
		int size_a = clone_a.size();
		//System.out.println(size_a);
		Set<Integer> clone_b = new HashSet<Integer>();
		clone_b.addAll(set_b);
		clone_b.removeAll(set_a);
		int size_b = clone_b.size();
		//System.out.println(size_b);
		int answer = size_a + size_b;
		System.out.println(answer);
		
		
	}
}