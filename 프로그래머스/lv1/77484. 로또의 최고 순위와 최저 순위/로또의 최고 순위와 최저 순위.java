import java.util.*;
class Solution {
	public int[] solution(int[] lottos, int[] win_nums) {
		int[] answer = new int[2]; // 최고 최저 저장

		// 최저는 win과 lottos 비교했을때 같은 갯수 저장하면 될듯
		// 최고는 비교했을때 의 같은 갯수 + 0의 갯수일듯?
		List<Integer> lotto = new ArrayList<Integer>();
		List<Integer> win = new ArrayList<Integer>();
		int cnt_zero = 0;

		for (int i = 0; i < lottos.length; i++) {
			lotto.add(lottos[i]);
			if (lottos[i] == 0) {
				cnt_zero++;
			}
		}

		for (int i = 0; i < win_nums.length; i++) {
			win.add(win_nums[i]);
		}

		lotto.retainAll(win);
		int high = cnt_zero + lotto.size();
		int low = lotto.size();
		answer[0] = check_score(high);
		answer[1] = check_score(low);		
		
//		System.out.println(high + "  " + low);
//		System.out.println(answer[0] + "  " + answer[1]);
		return answer;
	}

	private int check_score(int num) {
		int score=0;
		switch (num) {
		case 0: {
			score = 6;
			break;
		}
		case 1: {
			score = 6;
			break;
		}
		case 2: {
			score = 5;
			break;
		}
		case 3: {
			score = 4;
			break;
		}
		case 4: {
			score = 3;
			break;
		}
		case 5: {
			score = 2;break;
		}
		case 6: {
			score = 1;break;
		}

		}
//		System.out.println(num);
//		System.out.println(score);
		return score;
	}
}