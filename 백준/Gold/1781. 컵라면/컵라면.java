import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.PriorityQueue;
import java.util.StringTokenizer;
class Homework implements Comparable<Homework> {
    int date;
    int ramen;

    public Homework(int date, int ramen) {
        this.date = date;
        this.ramen = ramen;
    }

    @Override
    public int compareTo(Homework o) {
        return this.date - o.date;
    }
}
public class Main {
    public static void main(String[] args) throws IOException {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine());
        ArrayList<Homework> hwList = new ArrayList<>();
        PriorityQueue<Integer> pq = new PriorityQueue<>();

        for (int i = 0; i < n; i++) {
            StringTokenizer st = new StringTokenizer(br.readLine());
            int date = Integer.parseInt(st.nextToken());
            int ramen = Integer.parseInt(st.nextToken());
            hwList.add(new Homework(date, ramen));
        }
        Collections.sort(hwList);
//        for(int i=0;i<hwList.size();i++)
//            System.out.println(hwList.get(i).date);

        long sum = 0;
        for (int i = 0; i < n; i++) {
            int deadLine = hwList.get(i).date;
            int ramen = hwList.get(i).ramen;
            pq.add(ramen);
            while (!pq.isEmpty() && pq.size() > deadLine) pq.poll();
        }
        while (!pq.isEmpty())
            sum += pq.poll();
        System.out.println(sum);
    }
}