

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashSet;
import java.util.Set;
import java.util.StringTokenizer;

public class Main {
	public static StringTokenizer stk;
	public StringBuilder sb = new StringBuilder();
	public static Set<String> set = new HashSet<String>();
	public static boolean [] visited;
	public static String[] card;
	public static int cnt = 0, n,k;
	
	
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		 n = Integer.parseInt(br.readLine()); //n개의 수 
		 k = Integer.parseInt(br.readLine()); //k개 선택
		
		card = new String[n+1];
		visited = new boolean [n+1];
		for(int i = 1; i <= n; i++) {
			card[i] = br.readLine();
			
		}
		dfs (k, 1, "");
		
		
		System.out.println(set.size());
	}


	private static void dfs(int k, int idx, String s) {
		// TODO Auto-generated method stub
		if(k==0) {
			set.add(s);
			return;
		}
		if( idx > n) {
			return;
		}
		for(int i =1; i <= n ; i++) {
			if(!visited[i]) {
				visited[i] = true;
				dfs(k-1, i , s+ card[i]);
				visited[i] = false;
			}
		}
	}
}
