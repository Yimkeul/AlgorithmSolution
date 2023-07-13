import java.util.*;
class Solution {
    public long solution(long n) {
        long answer = 0;
       int len =  (int)(Math.log10(n)+1);
        String[] str = new String[len];
        str = Long.toString(n).split("");
        
        String tmp = "";
        
        Arrays.sort(str,Collections.reverseOrder());
        for(int i = 0 ; i < len; i++){
            tmp += (long) Integer.parseInt(str[i]);
        }
        answer = Long.parseLong(tmp);
        return answer;
    }
}