import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int N = Integer.parseInt(br.readLine());
        int result = 0;
        while (N >= 0) {
            if (N % 5 == 0) {
                result += N / 5;
                System.out.println(result);
                break;
            }
            N -= 3;
            result++;

        }

        if (N < 0) {
            System.out.println(-1);
        }

    }
}
