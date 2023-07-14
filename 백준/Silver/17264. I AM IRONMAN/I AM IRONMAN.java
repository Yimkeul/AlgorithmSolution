

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String input [] = br.readLine().split(" ");
		int n = Integer.parseInt(input[0]);
		int p  = Integer.parseInt(input[1]);
		
		input = br.readLine().split(" ");
		int w = Integer.parseInt(input[0]);
		int l = Integer.parseInt(input[1]);
		int g= Integer.parseInt(input[2]);
		
		HashMap<String, String> hash = new HashMap<String, String>();
		
		
		for(int i =0 ; i< p;i++) {
			input = br.readLine().split(" ");
			String name = input[0];	
			String state = input[1];
			hash.put(name, state);
			
			
		}
		int score = 0;
		boolean flag = false;
		
		for(int i=0; i< n;i++) {
			String who = br.readLine();
			if(hash.containsKey(who)&& hash.get(who).equals("W")) {
				score += w;
			}else {
				score-=l;
			}
			if(score <0) {
				score = 0;
			}
			if(score>=g) {
				System.out.println("I AM NOT IRONMAN!!");
				flag = true;
				break;
			}
	
		}
		if(flag==false) {
			System.out.println("I AM IRONMAN!!");
		}
	}
}
