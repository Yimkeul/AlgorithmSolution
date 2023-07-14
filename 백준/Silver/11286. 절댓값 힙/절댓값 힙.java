
import java.io.*;
import java.util.*;
import java.util.Comparator;
public class Main {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int N = sc.nextInt();
				
		PriorityQueue queue = new PriorityQueue<>(new Comparator<Integer>() {

			public int compare(Integer o1, Integer o2) {
				// TODO Auto-generated method stub
				Integer n = Math.abs(o1);
				Integer m = Math.abs(o2);
				
				if(n<m) {
					return -1;
				}else if(n>m) {
					return 1;
				}else {
					if(o1<o2) {
						return -1;
					}else if(o1>o2) {
						return 1;
					}else {
						return 0;
					}
				}
			}
		});
		
		for(int i = 0 ; i <N ;i++) {
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
