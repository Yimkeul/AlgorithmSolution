import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st = new StringTokenizer(br.readLine());
        int n = Integer.parseInt(st.nextToken());
        int m = Integer.parseInt(st.nextToken());

        int data[] = new int[n];
        st = new StringTokenizer(br.readLine());

        for (int i = 0; i < n; i++) {
            data[i] = Integer.parseInt(st.nextToken());
        }
        int result = search(data, n, m);

        System.out.println(result);
    }

    private static int search(int[] data, int n, int m) {
        int result = 0;
        // ArrayList<Integer> list = new ArrayList<>();
        for (int i = 0; i < n - 2; i++) {
            for (int j = i + 1; j < n - 1; j++) {
                for (int k = j + 1; k < n; k++) {
                    int temp = data[i] + data[j] + data[k];
                    if (m == temp) {
                        return temp;
                    }
                    if (result < temp && temp < m) {
                    result = temp;
                    }
                    // if (temp < m) {
                    //     list.add(temp);
                    // }
                }
            }
        }
        // Collections.sort(list);
        // Collections.reverse(list);
        // result = list.get(0);
        return result;
    }
}
