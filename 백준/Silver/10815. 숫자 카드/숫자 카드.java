import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
	static int n,m;
	static int arr[];
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		
		
		n = Integer.parseInt(br.readLine());
		 arr = new int [n];
		 String input_1 [] = br.readLine().split(" ");
		 
		for(int i = 0; i < n ; i++) {
			arr[i] = Integer.parseInt(input_1[i]);
		}
		Arrays.sort(arr);
		
		m = Integer.parseInt(br.readLine());
		String input_2 [] = br.readLine().split(" ");
		 
		
		for(int i = 0 ; i < m; i++) {
			int num = Integer.parseInt(input_2[i]);
			if(binarySearch(num)) {
				System.out.print("1 ");
				
			}else {
				System.out.print("0 " );
			}
		}
		
	}

	public static boolean binarySearch(int num) {
		
		int left = 0;
		int right = n-1;
		while(left <= right) {
			int midindex = (left + right)/2;
			int mid = arr[midindex];
			if(num < mid) {
				right = midindex -1;
			}else if(num > mid) {
				left = midindex +1;
			}
			else return true;
		}
		return false;
	}
}