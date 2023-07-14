import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String input[] = br.readLine().split(" ");
		int n = Integer.parseInt(input[0]);

		int m = Integer.parseInt(input[1]);

		Map<String, Set<String>> map = new TreeMap<String, Set<String>>();

		// 입력
		while (n-- > 0) {
			String group = br.readLine();
			int member = Integer.parseInt(br.readLine());
			Set<String> set = new TreeSet<String>();
			for (int i = 0; i < member; i++) {
				String name = br.readLine();
				set.add(name);
			}
			if (!map.containsKey(group)) {
				map.put(group, set);
			}
		}
		// 질문
		while (m-- > 0) {
			String quiz = br.readLine();
			int type = Integer.parseInt(br.readLine());
			if (type == 1) { // 이름이 들어가면 그룹을 출력

				for (String s : map.keySet()) {
					Iterator iter = map.get(s).iterator();
					if (map.get(s).contains(quiz)) {
						System.out.println(s);
					}

				}
			} else {// 그룹이 입력되면 멤버 출력
				for (String s : map.keySet()) {
					if (s.equals(quiz)) {
						Iterator iter = map.get(s).iterator();
						while (iter.hasNext()) {
							System.out.println(iter.next());
						}
					}

				}
			}
		}

	}
}