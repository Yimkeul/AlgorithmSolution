

import java.util.Scanner;

public class Main {
	public static void main(String args[]) {
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		int b = sc.nextInt();
		int c = sc.nextInt();
		int idx = a * b * c;

		String num = String.valueOf(idx);

		int answer[] = new int[10];

		int cnt = 0;
		for (int i = 0; i < 10; i++) {
			cnt = 0;
			for (int j = 0; j < num.length(); j++) {
		
				if (num.charAt(j)-'0' == i) {
					cnt++;
					answer[i] = cnt;
				}
			}

		}
		
		for(int i = 0; i < answer.length;i++) {
			System.out.println(answer[i]);
		}

	}
}
