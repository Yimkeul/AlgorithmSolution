import java.util.*;

public class Solution {
	public String[] solution(String[] record) {

		List<String> List = new ArrayList<String>();
		Map<String, String> idmap = new HashMap<>();
		
		for(String str : record) {
			StringTokenizer token = new StringTokenizer(str);
			String cmd = token.nextToken();
			if(cmd.equals("Enter")||cmd.equals("Change")) {
				String id = token.nextToken();
				String name = token.nextToken();
				idmap.put(id, name);
			}
		}

		for(String str : record) {
			StringTokenizer token = new StringTokenizer(str);
			String cmd = token.nextToken();
			if(cmd.equals("Enter")) {
				String id = token.nextToken();
				List.add(idmap.get(id)+"님이 들어왔습니다.");
				
			}else if(cmd.equals("Leave")) {
				String id = token.nextToken();
				List.add(idmap.get(id)+"님이 나갔습니다.");
				
			}
		}
		
		String[] answer = new String[List.size()];
		List.toArray(answer);
		
		
		
		return answer;
	}
}