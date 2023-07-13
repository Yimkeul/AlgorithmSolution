import java.util.*;

public class Main {
	public static void main(String args[]) {
		Scanner sc = new Scanner(System.in);
		
		int arr[] = new int [26]; // 알파벳 갯수는 26자
		
		String s = sc.nextLine();
		s = s.toUpperCase();
		
		int length = s.length();
		int max = 0;
		char result = '?';
		
		for(int i = 0; i < length;i++) {
			arr[s.charAt(i)-65]++;
			if(max <arr[s.charAt(i)-65] ) {
				max = arr[s.charAt(i)-65];
				result = s.charAt(i);
			}else if( max ==arr[s.charAt(i)-65]) {
				result = '?';
			}
		}
		System.out.println(result);
	}	
}
