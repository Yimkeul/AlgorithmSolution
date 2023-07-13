

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		String input [] = br.readLine().split(" ");
		
		int n = Integer.parseInt(input[0]);
		int c = Integer.parseInt(input[1]);
		
		int arr [] = new int [n];
		
		for(int i = 0 ; i < n ; i++) {
			int num = Integer.parseInt(br.readLine());
			arr[i] = num;
		}
		
		Arrays.sort(arr);
		
		int left = 1;
		int right = arr[n-1] - arr[0];
		int d = 0;
		int ans = 0;
		
		while(left <= right) {
			int mid = (left + right) /2;
			int start = arr[0];
			int count = 1;
			for(int i = 0; i< n; i++) {
				d = arr[i] - start;
				if(d >= mid) {
					count ++;
					start = arr[i];
				}
			}
			if(count >= c) {
				ans =mid;
				left = mid+1;
			}else {
				right = mid-1;
			}
		}
		
		System.out.println(ans);
	}
}
