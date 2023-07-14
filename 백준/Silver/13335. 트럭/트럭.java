
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.LinkedList;
import java.util.Queue;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String ii = br.readLine();
		String input [] = ii.split(" ");
		
		int n = Integer.parseInt(input[0]);
		int w = Integer.parseInt(input[1]);
		int l = Integer.parseInt(input[2]);
		
		input = br.readLine().split(" ");
		Queue<Integer> queue = new LinkedList<>();
		int truck[] = new int [n];
		
		for(int i = 0; i < n ; i++) {
			truck[i] = Integer.parseInt(input[i]);
		}
		
		int time = 0;
		int weight = 0;
		for(int i = 0; i< n ; i++) {
			while(true) {
				if(queue.isEmpty()) {
					queue.add(truck[i]);
					time++;
					weight+=truck[i]	;
					break;
				}else if(queue.size() == w) {
					weight-= queue.remove();
				}else {
					if(weight + truck[i] > l) {
						queue.add(0);
						time++;
					}else {
						queue.add(truck[i]);
						time++;
						weight+=truck[i];
						break;
					}
				}
			}
		}
		System.out.println(time+w);
	}
}
