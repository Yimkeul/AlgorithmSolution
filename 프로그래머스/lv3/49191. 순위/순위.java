import java.util.*;

public class Solution {
	public int solution(int n, int[][] results) {
		int answer = 0;
		ArrayList<Player> players = new ArrayList<Player>();
		
		//n 갯수만큼 플레이어 생성(0번째는 사용x)
		for (int i = 0; i <= n; i++) {
			players.add(new Player(i));
		}
		//각각 리스트에 결과 삽입
		for (int[] result : results) {
			players.get(result[0]).win.add(result[1]); // 이긴 기록 추가
			players.get(result[1]).lose.add(result[0]); // 진 기록 추가

		}
		for (int depth = 0; depth < n; depth++) { // 한번더 depth가 한번더 들어갈 수 있기 때문n번 반복하게 설정
			for (int i = 1; i <= n; i++) {
				Player player = players.get(i); // 현재 플레이어

				HashSet<Integer> winSet = new HashSet<>();//자신이 이긴 플레이어면 그 플레이어가 이긴 사람들도 모구 이김

				for (Integer win : player.win) {//현재 플레이어가 이길 리스트들
					for (Integer w : players.get(win).win) { // 현재 플레이어가 이긴 플레이어의 이긴 리스트들
						winSet.add(w);
					}
				}
				player.win.addAll(winSet); //추가

				HashSet<Integer> loseSet = new HashSet<>();//자신이 진 플레이어면 그 플레이어가 진 사람들도 모두 짐
				for (Integer lose : player.lose) {//현재 플레이어가 진 리스트들
					for (Integer l : players.get(lose).lose) {//현재 플레이어가 진 플레이어의 진 리스트들
						loseSet.add(l);
					}
				}
				player.lose.addAll(loseSet);//추가

			}
		}

		for (Player player : players) {
			int size = player.win.size() + player.lose.size();
			
			if(size == n-1) {
				answer++;
			}
		}

		return answer;
	}
}

class Player {
	int code;
	HashSet<Integer> win = new HashSet<>();
	HashSet<Integer> lose = new HashSet<>();
		public Player(int code) {
			this.code = code;
			
		}
}