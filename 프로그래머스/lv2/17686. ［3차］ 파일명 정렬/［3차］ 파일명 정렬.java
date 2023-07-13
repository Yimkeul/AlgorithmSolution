import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/*
 소스 파일 저장소에 저장된 파일명은 100 글자 이내로, 
 영문 대소문자, 숫자, 공백(" "), 마침표("."), 빼기 부호("-")
 파일명은 영문자로 시작하며, 숫자를 하나 이상 포함하고 있다.
 HEAD : 숫자가 아닌 문자로 이루어져 있으며 최소한 한글자 이상
 NUMBER : 한글자~최대 다섯글자 사이의 연속된 숫자, 앞쪽에 0이 올수 있다. 0~99999의 숫자로, 00000 or 0101 가능 
 TAIL : 숫자가 다시 나타날 수 있으며, 아무 글자도 없을 수 있다.
 
 */

/*
 정렬 기준
 HEAD : 사전순 대소문자 구분 X EX) MUZI muzi MuZi ==같은 순서
 NUMBER : 012 == 12 //  9 < 10 < 0011 < 012 < 13 < 014
 나머지 입력 순서
 */

class split_file{
	String HEAD;
	String NUMBER;
	String TAIL;
	public  split_file(String HEAD, String NUMBER, String TAIL) {
		this.HEAD = HEAD;
		this.NUMBER = NUMBER;
		this.TAIL = TAIL;
	}
}


class Solution{
	public String[] solution(String[] files) {
		String[] answer = new String[files.length];
		
		int arr_size = files.length;
		
		List <split_file> list = new ArrayList<>();
		for(int i = 0; i< arr_size; i++) {
			boolean next_num = false;
			boolean next_tail = false;
				
			StringBuilder HEAD = new StringBuilder();
			StringBuilder NUMBER = new StringBuilder();
			String tail = "";
			int cnt = 0;
			
			String tmp_c = files[i].toLowerCase();//변화
			//0~25
			for(int j = 0 ; j < files[i].length();j++) {
				char tmp = tmp_c.charAt(j); //한글자씩 
				char origin = files[i].charAt(j);
				if(next_num == false &&next_tail == false&& ((tmp - 'a' >=0 && tmp -'a' <=25)|| tmp =='-'||tmp==' ' ||tmp == '.')) {
					HEAD.append(origin);
					cnt++;
					
				}else {
					next_num = true;
				}
				
				
				if(next_num = true&&	next_tail == false&& (tmp -'0' >=0 && tmp -'0' <=9)) {
					String p = NUMBER.toString();
					//System.out.println("test p : "+p + " " + p.length() + " " + cnt);
					if(p.length()<5) {
						NUMBER.append(origin);
						cnt++;	
					}else {
						next_tail=true;
					}
						
				}else {
					next_tail = true;
				}
				
				if(next_tail = true && cnt <= j) {
					tail = files[i].substring(cnt);
				}
				
			}
			
			list.add(new split_file(HEAD.toString(), NUMBER.toString(), tail));
			
			Collections.sort(list, new Comparator<split_file>() {

				@Override
				public int compare(split_file o1, split_file o2) {
					// TODO Auto-generated method stub
					
					
					if(o1.HEAD.toLowerCase().equals(o2.HEAD.toLowerCase())) {
						int num1 = Integer.parseInt(o1.NUMBER);
						int num2 = Integer.parseInt(o2.NUMBER);
						if(num1 == num2) {
							return 0;
						}
						return num1 - num2;
						
					}
					
					return o1.HEAD.toLowerCase().compareTo(o2.HEAD.toLowerCase());

				}
			});

		}
		
		
		Iterator iter = list.iterator();
		int idx = 0;
		while(iter.hasNext()	) {
		
			split_file sf = (split_file) iter.next();
		
			answer[idx] = sf.HEAD+ sf.NUMBER+sf.TAIL;
			//System.out.println(sf.NUMBER.length());
			//System.out.println(answer[idx]);
			idx++;
		}
		return answer;
	}
}