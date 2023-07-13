import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Stack;

public class Main {
	
	
	public static void main(String argsp[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		Stack<Character> stack = new Stack<>();
		
		
		String input = br.readLine();
		
		for(int i = 0 ; i < input.length();i++) {
			if(input.charAt(i) >= 'A' && input.charAt(i)<='Z') {
				System.out.print(input.charAt(i));
			}else if(input.charAt(i) == '(') {
				stack.push(input.charAt(i));
			}else if(input.charAt(i) == ')') {
				while(!stack.isEmpty()) {
					if(stack.peek() == '(') {
						stack.pop();
						break;
					}
					System.out.print(stack.pop());
				}
			}else {
				while(!stack.isEmpty() && comparison(stack.peek())>= comparison(input.charAt(i))) {
					System.out.print(stack.pop());
				}
				stack.push(input.charAt(i));
			}
		}
		
		while(!stack.isEmpty()) {
			System.out.print(stack.pop());
		}
	}

	private static int comparison(Character ch) {
		if(ch == '(') {
			return 0;
		}
		if(ch == '+' || ch == '-') {
			return 1;
		}else {
			return 2;
		}
	
	}
}
