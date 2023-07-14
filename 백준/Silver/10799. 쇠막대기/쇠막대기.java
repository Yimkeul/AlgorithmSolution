import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Stack;

//쇠막대기 with Stack
public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		Stack<Integer> stack = new Stack<>();
		int count = 0;
		String s = br.readLine();

		for(int i = 0; i < s.length();i++) {
			if(s.substring(i, i+1).equals("(")) {
				stack.push(i);
			}else {
				if(stack.peek() == i-1) {
					//System.out.println("ss"+stack.peek());
					stack.pop();
					count+=stack.size();
				}else {
					//System.out.println("dd"+stack.peek());
					stack.pop();
					count++;
				}
			}
			//System.out.println("test  i : "  + (i+1) + " test : " + s.charAt(i)+ " " + "test count : " +count);
		}
		System.out.println(count);
	}
}
