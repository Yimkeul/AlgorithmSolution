import java.io.BufferedReader;
import java.io.InputStreamReader;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		//문제 조건 
		// n+1개의 I, n개의 O를 찾는 것
		
		int n = Integer.parseInt(br.readLine()); //n의 개수
		
		int m = Integer.parseInt(br.readLine());//input 문자열의 길이
		
		String input = br.readLine();
		
		StringBuilder sample = new StringBuilder();
		
		for(int i = 1; i<= 2*n+1; i++) {
			if(i%2 == 0) {
				sample.append("O");
			}else {
				sample.append("I");
			}
		}
		//System.out.println(sample.toString());
		int range = 2*n+1;
		int answer = 0;
		int len =0;
		for(int i =0; i < m; i++) {
			
			
			if (input.charAt(i) == sample.toString().charAt(len)) {
				len+=1;
			}else {
				if(input.charAt(i) == 'I') {
					len=1;
				}else {
					len =0;
				}
			}
			
			if(len == 2*n+1) {
				answer++;
				len -=2;
			}
			
			
			
			
			
			
			
			
// 답은 맞지만 시간초과 코드			
//			String temp = input.substring(i,range);
//			//System.out.println(temp);
//			range++;
//			
//			
//			if(temp.equals(sample.toString())) {
//				answer++;
//			}
//			
//			if(range > m) {
//				break;
//			}
//			
			
		}
		System.out.println(answer);
		
	}
}
