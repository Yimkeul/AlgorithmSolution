

import java.util.Scanner;

public class Main {
	public static void main(String args[]) {
		Scanner sc = new Scanner(System.in);
		
		int n = 9;
		int [] num = new int [n];
		
		for(int i =0; i < n; i++) {
			num[i] = sc.nextInt();
		}
		
		int max = 0;
		int cnt = 0;
		for(int i =0; i< n; i++) {
			
			if(num[i] > max) {
				max= num[i];
				cnt = i+1;
			}
		}
		System.out.println(max);
		System.out.println(cnt);
	}
}
