import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		
		String input [] = br.readLine().split(" ");
		
		int N = Integer.parseInt(input[0]);
		int L = Integer.parseInt(input[1]);
		
		
		input = br.readLine().split(" ");
		
		int arr [] = new int[input.length];
		
		for(int i = 0 ; i < arr.length;i++) {
			arr[i] = Integer.parseInt(input[i]);
		}
		
		Arrays.sort(arr);
		
	
		int result =0;
		for(int i = 0; i<N;i++) {
	//		if(i == N-1) {
	//			result ++;
	//			System.out.println("이거 돌까?");
	//			continue;
	//		}
		
			int hole = arr[i++];
		
			while(N>i) {
				
				if(arr[i] - hole <= L-1) {
					i++;
					
				}else {
					break;
				}
				
			}
			result++;
			i--;
		
		}
		System.out.println(result);
	}
}
