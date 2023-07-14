

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Stack;

public class Main {
	public static void main(String args[]) throws Exception {
//        BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
//        int n = Integer.parseInt(in.readLine());
//        int[] h = new int[n];
//        Stack<Integer> st = new Stack<Integer>();
//        Stack<Integer> st_num = new Stack<Integer>();
//        long count = 0;
//        for(int i=0;i<n;i++){
//            h[i] = Integer.parseInt(in.readLine());
//            int temp = 1;
//            while(!st.isEmpty()){
//                if(st.peek() <= h[i]){
//                    count += (long)st_num.peek();
//                    if(st.peek() == h[i]){
//                        temp += st_num.peek();
//                    }
//                    st.pop();
//                    st_num.pop();
//                }else{
//                    break;
//                }
//            }
//            if(!st.isEmpty())
//                count+= 1L;
//            st.push(h[i]);
//            st_num.push(temp);
//        }
//        System.out.println(count);

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		int n = Integer.parseInt(br.readLine());

		int array[] = new int[n];

		Stack<Integer> stack = new Stack<Integer>();
		Stack<Integer> st_num = new Stack<Integer>();

		long count = 0;

		for (int i = 0; i < n; i++) {
			array[i] = Integer.parseInt(br.readLine());
			int temp = 1;
			while (!stack.isEmpty()) {
				if (stack.peek() <= array[i]) {
					count += (long) st_num.peek();
					if (stack.peek() == array[i]) {
						temp += st_num.peek();
					}
					stack.pop();
					st_num.pop();
				} else {
					break;
				}
			}

			if (!stack.isEmpty()) {
				count += 1L;
			}

			stack.push(array[i]);
			st_num.push(temp);

		}
		System.out.println(count);

	}
}
