
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class Main {

	static int[] parent;
	static int[] cnt;

	public static void main(String args[]) throws Exception {

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		int T = Integer.parseInt(br.readLine()); // 테스트케이스 수

		int f;
		
		while (T-- > 0) {
			f = Integer.parseInt(br.readLine()); // 친구 관계 수
			Map<String, Integer> map = new HashMap<String, Integer>();
			parent = new int[f*2];
			cnt = new int[f*2];
			Arrays.fill(cnt, 1);
			
			int idx = 0;
			while (f-- > 0) {
				String input[] = br.readLine().split(" ");
				String name = input[0];
				String friend = input[1];
				
				if (!map.containsKey(name)) {
					parent[idx] = idx;
					map.put(name, idx++);
				}
				if(!map.containsKey(friend)) {
					parent[idx]= idx;
					map.put(friend, idx++);
				}
				
				//union으로 연결
				union(map.get(name), map.get(friend));
				
				//find하며 저장된 cnt값을 출력
				System.out.println(cnt[find(map.get(friend))]);
			}

		}

	}

	private static int find(int a) {
		// TODO Auto-generated method stub
		
		//더 이상 부모가 없음
		if(parent[a] == a){
			return a;
		} 
		
		//부모로 이동
		return parent[a]=find(parent[a]);
	}

	private static void union(int a, int b) {
		// TODO Auto-generated method stub
		
		//최상위 부모 찾기
		int parentA = find(a);
		int parentB = find(b);
		//같다면 이미 연결되어 있는 노드
		if(parentA == parentB) {
			return;
		}
		parent[parentB] = parentA; //a 밑에 b가 들어감
		cnt[parentA] += cnt[parentB]; //b가 추가 됐으므로 cnt[a] 갱신
		
	}
}
