import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Stack;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		int n = Integer.parseInt(br.readLine());
		
		Stack<Integer> stack = new Stack<Integer>();
		
		int answer = 0;
		
		int array [] = new int [n+2];
		
		for(int i = 1; i <= n; i++) {
			array[i] = Integer.parseInt(br.readLine());
		}
		stack.push(0); //초기화

		for(int i = 1 ; i<=n+1;i++) {
		
			while(!stack.isEmpty() && array[stack.peek()] > array[i]) {
				int height = array[stack.peek()];
				stack.pop();
				//System.out.println("test " + i + "  stack.peek : " + stack.peek());
				int width = i - stack.peek() -1;
				answer = Math.max(answer, width*height);
			}
			stack.push(i);
			
		}
		System.out.println(answer);

		
	}
}
