import java.util.Scanner;

public class Main {
	public static void main(String args[]) throws Exception {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		System.out.println(factorial(n));
	}

	private static int factorial(int n) {
		if(n <= 1) {
			return 1;
		}else {
			return n*factorial(n-1);
		}
		
	}
}
