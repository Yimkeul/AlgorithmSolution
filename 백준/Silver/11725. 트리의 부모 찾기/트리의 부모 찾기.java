import java.io.*;
import java.util.*;

//최단거리 : bfs 깊이 우선 탐색 : 스택 or 재귀
//경로의 특징 저장 : dfs 너비우선탐색 : 큐


//BFS
public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int N = Integer.parseInt(br.readLine());

        ArrayList<ArrayList<Integer>> list = new ArrayList<ArrayList<Integer>>();
        int [] parents = new int[N+1];
        
        for (int i = 0; i <= N+1; i++) {
            list.add(new ArrayList<Integer>());
        }
        for(int i = 1; i<N;i++){
            String input [] = br.readLine().split(" ");
            int a = Integer.parseInt(input[0]);
            int b = Integer.parseInt(input[1]);
            list.get(a).add(b);
            list.get(b).add(a);
        }


        int start = 1;
        bfs(start, list, parents, N);
        printParent(parents);
    }

    private static void printParent(int[] parents) {
        for(int i = 2; i < parents.length; i++){
            System.out.println(parents[i]);
        }
    }

    private static void bfs(int start, ArrayList<ArrayList<Integer>> list, int[] parents, int n) {
    LinkedList<Integer> queue = new LinkedList<>();
    queue.offer(1);

    while(!queue.isEmpty()){
        int parent = queue.poll();
        for(int item : list.get(parent)){
            if(parents[item] == 0 ){
                parents[item] = parent;
                queue.offer(item);
            }
        }
    }
    
    }

}