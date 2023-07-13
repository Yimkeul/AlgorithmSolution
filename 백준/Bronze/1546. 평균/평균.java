import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int n = Integer.parseInt(br.readLine());
        double arr[] = new double[n];
        String input[] = br.readLine().split(" ");

        for (int i = 0; i < n; i++) {
            arr[i] = Double.parseDouble(input[i]);
        }
        Arrays.sort(arr);
        double max = arr[n - 1];

        double sum = 0;
        for (int i = 0; i < n; i++) {
            sum += arr[i] / max * 100;
        }
        System.out.println(sum / n);

    }
}
