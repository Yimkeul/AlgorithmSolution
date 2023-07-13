
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		int n = Integer.parseInt(br.readLine());
		String input[] = br.readLine().split(" ");
		int aa[] = new int[input.length];

		for (int i = 0; i < input.length; i++) {
			aa[i] = Integer.parseInt(input[i]);
		}

		Stack<Integer> st = new Stack<>();
		st.add(1);
		int cnt = 2;

		for (int i = 1; i < n; i++) {

			if (aa[i] == 0) {
				st.add(cnt);
			} else {
				List<Integer> list = new ArrayList<Integer>();

				for (int j = 0; j < aa[i]; j++) {
					list.add(st.pop());
				}

				st.add(cnt);
				for (int j = list.size() - 1; j >= 0; j--) {
					st.add(list.get(j));
				}

			}

			cnt++;

		}


		String b_r = st.toString();

		b_r = b_r.replace("[", "");
		b_r = b_r.replace("]", "");
		b_r = b_r.replaceAll(",", "");
		System.out.println(b_r);

	}
}

/*
 * 0 1 1 3 2
 * 
 * 1 2 1 2 3 1 4 2 3 1 4 2 5 3 1
 * 
 */
