import java.io.*;
import java.util.*;

class xy{
    int x ;
    int y;
    public xy(int x, int y){
        this.x = x;
        this.y = y;
    }
}

public class Main{
    public static void main(String args[]) throws Exception{
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine());
       
        List<xy> list = new ArrayList<>();
        
        for(int i = 0; i < n ; i++){
            String input [] =br.readLine().split(" ");
            int x = Integer.parseInt(input[0]);
            int y = Integer.parseInt(input[1]);
            list.add(new xy(x,y));
        }
        
        Collections.sort(list, new Comparator<xy>(){
           public int compare(xy o1, xy o2){
               if(o1.x==o2.x){
                   return o1.y - o2.y;
               }
               return o1.x - o2.x;
           } 
        });
        
        Iterator iter = list.iterator();
        while(iter.hasNext()){
            xy a = (xy) iter.next();
            System.out.println(a.x + " " + a.y);
        }
    }
}