import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Stack;
public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		
		int n = Integer.parseInt(br.readLine());
		int count = 0;
		for(int i = 0; i < n ; i++) {
			String input = br.readLine();

			Stack <Character> stack = new Stack<>();
			for(int j = 0; j < input.length();j++) {
				if(!stack.isEmpty() && stack.peek() == input.charAt(j)) {
					stack.pop();
				}else {
					stack.push(input.charAt(j));
				}
			}if(stack.size()==0) {
				count++;
			}
		}
		
		
		System.out.println(count);
	}
}
