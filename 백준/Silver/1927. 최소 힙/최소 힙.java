import java.util.*;


public class Main {
	public static void main(String args[]) {
		Scanner sc = new Scanner(System.in);
		int N = sc.nextInt(); // 입력
		
		Queue<Integer> queue = new PriorityQueue<>(Comparator.naturalOrder());
		
		for(int i = 0 ; i < N; i++) {
			int X = sc.nextInt();
			if(X == 0) {
				if(queue.isEmpty()) {
					System.out.println(0);
				}else {
					System.out.println(queue.poll());
				}
			}else {
				queue.add(X);
			}
		}
	}
}
