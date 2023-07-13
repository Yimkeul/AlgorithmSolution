import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        String input[] = br.readLine().split(" ");
        int length = input.length;
        if(length>0){
            if(input[0].equals("")){
                length -=1;
            }        
        }
        System.out.println(length);

    }
}
