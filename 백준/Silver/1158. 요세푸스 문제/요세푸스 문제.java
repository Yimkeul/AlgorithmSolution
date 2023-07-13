import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.LinkedList;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		StringBuilder sb = new StringBuilder();
		
		String input [] = br.readLine().split(" ");
		int n = Integer.parseInt(input[0]);
		int k = Integer.parseInt(input[1]);
		
		LinkedList<Integer> list = new LinkedList<>();
		
		
		//값 설정
		for(int i = 1; i <= n;i++) {
		
			list.add(i);
		}
		sb.append("<");
		
		while(!list.isEmpty()) {
//			System.out.println("확인용 while: "+list.get(0) );
//			System.out.println("//////////////////////////");
			for(int i = 0; i < k;i++) {
//				System.out.println("확인용 : "+list.get(0) + " i는 " +i);
				if(i == k-1) {
					int a = list.remove();
					if(list.size() == 0) {
						sb.append(a);
					}else {
						sb.append(a + ", ");
					}
				}else {
					list.add(list.remove());
				}
				
			}
		}
		sb.append(">");
		br.close();
		
		System.out.println(sb.toString());
	}
}
