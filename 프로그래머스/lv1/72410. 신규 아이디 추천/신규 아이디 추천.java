import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
class Solution {
	public String solution(String new_id) {
		String answer = "";
		StringBuilder sb= new StringBuilder();
		//1번 작업
		String first_work = new_id.toLowerCase();
		//System.out.println("1st : " + first_work);
		
        
        
		
		//2번 작업
		//a~z : 97~122 -> char x - 'a' --> 0~ 25
		List<Character> list = new ArrayList<Character>();
		int length = first_work.length();
		for(int i = 0; i < length;i++) {
			char temp = first_work.charAt(i);
			if((temp -'a' >=0 && temp -'a'<26) || temp == '-' || temp =='_' || temp =='.'||(temp-'0'>=0&& temp-'0'<=9)) {
				list.add(temp);
			}
			
		}
		Iterator iter = list.iterator();
		while(iter.hasNext()) {
			sb.append(iter.next());
		}
		String second_work = sb.toString();
		//test second_work
		//System.out.println("2nd : "+second_work);
	
		
		//3번 작업
		Deque<Character> deque = new LinkedList<Character>();

		for(int i = 0; i < second_work.length();i++) {
			char input = list.get(i);
			
			if(!deque.isEmpty() && (deque.getLast() == input) && input == '.') {
				deque.removeLast();
			}
			deque.addLast(input);
		}
		
		
		
		//System.out.println("3rd : " + thrid_work);
		
		//3번까지 list 사용
		//이후에는 새로 리스트에다가 값 넣기
		list.clear();
		
		//4번 
		//3번에 있던 deque를 사용함
		if(!deque.isEmpty()&&deque.getFirst() == '.') {
			deque.removeFirst();
		}
		if(!deque.isEmpty()&&deque.getLast() == '.') {
			deque.removeLast();
		}
		sb = new StringBuilder();
		while(!deque.isEmpty()) {
			sb.append(deque.poll());
		}
		String fourth_work = sb.toString();

		//System.out.println("4th : " + fourth_work);
		
		
		
		//5번
		sb = new StringBuilder();
		
		if(fourth_work.length()==0) {
			sb.append("a");
		}else {
			sb.append(fourth_work);
		}
		String fifth_work = sb.toString();
		//System.out.println("5th : " + fifth_work);
		
		//6번
		String sixth_work = "";
		if(fifth_work.length() >= 16) {
		 sixth_work = fourth_work.substring(0,15);
		}else {
			sixth_work = fifth_work;
		}
		
		if(sixth_work.charAt(sixth_work.length()-1) == '.') {
			sixth_work = sixth_work.substring(0,14);
		}
		//System.out.println("6th : " + sixth_work);
		
		//7번
		char last  = ' ';
		String seventh_work = sixth_work;
		if(seventh_work.length()<=2) {
			last = seventh_work.charAt(seventh_work.length()-1);
			//check
			//System.out.println("더해야할거 : "+last);
		}
		while(seventh_work.length() <3) {
			
			seventh_work +=last;
		}
		//System.out.println("7th : " + seventh_work);
		
		answer = seventh_work;
		return answer;
	}
}