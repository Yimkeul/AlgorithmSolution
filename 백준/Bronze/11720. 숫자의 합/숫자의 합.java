import java.util.*;

public class Main {
	public static void main(String args[]) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt(); // 숫자 갯수
		String a = sc.next();
		
		int sum = 0;
		
		for(int i= 0 ; i<n;i++) {
		//	sum += a.charAt(i)-'0';
			sum += Integer.parseInt(a.substring(i, i+1));
			
		}
		
		
		System.out.println(sum);
		
	}
}
