import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int N = Integer.parseInt(br.readLine());

        int A[] = new int[N];
        // List<Integer> B = new ArrayList<>();
        int B[] = new int[N];
        String input[] = br.readLine().split(" ");

        for (int i = 0; i < N; i++) {
            A[i] = Integer.parseInt(input[i]);
        }

        input = br.readLine().split(" ");

        for (int i = 0; i < N; i++) {
            // B.add();
            B[i] = Integer.parseInt(input[i]);
        }

        Integer[] BB = Arrays.stream(B).boxed().toArray(Integer[]::new);
        Arrays.sort(A);
        Arrays.sort(BB, Comparator.reverseOrder());

        int result = 0;
        for (int i = 0; i < N; i++) {
           // System.out.println(A[i] + " " + BB[i]);
            result += A[i] * BB[i];

        }
        System.out.println(result);
    }

}
