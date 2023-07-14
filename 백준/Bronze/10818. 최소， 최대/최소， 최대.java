
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		int n = Integer.parseInt(br.readLine());
		
		int arr [] = new int [n];
		
		String line []= br.readLine().split(" ");
		for(int i =0 ; i< n; i++) {
			arr[i] = Integer.parseInt(line[i]);
		}
		
		
		int min = arr[0];
		int max = arr[0];
		for(int i =1 ; i <n;i++) {
			if(min < arr[i]) {
				min = arr[i];
			}
			if(max > arr[i]) {
				max = arr[i];
			}
		}
		
		System.out.println(max + " " +min);
		
	}
}
