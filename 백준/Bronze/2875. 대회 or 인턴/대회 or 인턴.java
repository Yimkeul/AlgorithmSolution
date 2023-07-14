import java.util.*;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);

		int N = sc.nextInt();
		int M = sc.nextInt();
		int K = sc.nextInt();

		int team = 0;
		while (N >= 2 && M >= 1 && N + M >= 3 + K) {
			N -= 2;
			M -= 1;
			team++;
		}

		System.out.println(team);
		
	}

}
