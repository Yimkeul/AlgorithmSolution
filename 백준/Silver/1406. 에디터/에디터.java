import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.LinkedList;
import java.util.ListIterator;

/*
 *  L : 커서를 왼쪽으로 한칸( 맨 앞이면 무시)
 *  D : 커서를 오른쪽으로 한칸( 맨 끝이면 무시)
 *  B : 커서 왼쪽에 있는 문자 삭제 (맨 앞이면 무시_
 *  P $ : $라는 문자를 커서 왼쪽에 추가
 */
public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
		LinkedList<Character> list = new LinkedList<>();

		String input = br.readLine();
		for(int i = 0; i < input.length();i++) {
			list.add(input.charAt(i));
		}
		ListIterator<Character> iter = list.listIterator();
		
		
		while(iter.hasNext()) {
			iter.next();
		}
		
		
		int n = Integer.parseInt(br.readLine());
//		String[] control = new String [2];
		
		
		for (int i = 0; i < n; i++) {
			String command = br.readLine();
			char c = command.charAt(0);
			switch(c) {
			case 'L':
				if(iter.hasPrevious())
					iter.previous();
	
				break;
			case 'D':
				if(iter.hasNext())
					iter.next();
	
				break;
			case 'B':
				//remove()는 next()나 previous()에 의해 반환된 가장 마지막 요소를 리스트에서 제거함
				if(iter.hasPrevious()) {
					iter.previous();
					iter.remove();
				}
				break;
			case 'P':
				char t = command.charAt(2);
				iter.add(t);
	
				break;
			default:
				break;
			}
	
			
			
//			control = br.readLine().split(" ");
//			if(control[0].equals("L")) {
//				if(iter.hasPrevious()) {
//					iter.previous();
//				}
//			}
//			if(control[0].equals("D")) {
//				if(iter.hasNext()) {
//					iter.next();
//				}
//			}
//			if(control[0].equals("B")) {
//				if(iter.hasPrevious()) {
//					iter.previous();
//					iter.remove();
//				}
//			}
//			if(control[0].equals("P")){
//				iter.add(control[1].charAt(0));
//			}
		}
		

		for(Character chr : list) {
			bw.write(chr);
			
		}
		bw.flush();
		bw.close();
		br.close();
		

	}
}
