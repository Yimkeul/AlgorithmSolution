import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		String size[] = br.readLine().split(" ");
		int A_size = Integer.parseInt(size[0]);
		int B_size = Integer.parseInt(size[1]);

		String input_A[] = br.readLine().split(" ");
		int A_arr[] = new int[A_size];

		for (int i = 0; i < A_size; i++) {
			A_arr[i] = Integer.parseInt(input_A[i]);
		}

		String input_B[] = br.readLine().split(" ");
		int B_arr[] = new int[B_size];

		for (int j = 0; j < B_size; j++) {
			B_arr[j] = Integer.parseInt(input_B[j]);
		}

		int left = 0;
		int right = 0;
		StringBuilder sb = new StringBuilder();
		while (!(left == A_size || right == B_size)) {
			if (A_arr[left] <= B_arr[right]) {
				sb.append(A_arr[left] + " ");
				left++;
			} else {
				sb.append(B_arr[right] + " ");
				right++;
			}
		}
		if (left == A_size) {
			for (int i = right; i < B_size; i++) {
				sb.append(B_arr[i] + " ");
			}
		}
		if (right == B_size) {
			for (int i = left; i < A_size; i++) {
				sb.append(A_arr[i] + " ");
			}
		}

		System.out.println(sb.toString().trim());

	}
}
