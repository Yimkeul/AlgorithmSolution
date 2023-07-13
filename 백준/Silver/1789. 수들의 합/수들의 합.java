import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        long n = Long.parseLong(br.readLine());
        long s = 1;
        while (s * (s + 1) / 2 <= n) {
            s++;
        }
        System.out.println(s - 1);
    }
}
