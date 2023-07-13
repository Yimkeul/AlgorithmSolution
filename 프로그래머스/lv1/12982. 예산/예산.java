import java.util.*;

class Solution {
    public int solution(int[] d, int budget) {
        int answer = 0;
        Arrays.sort(d);
        int i = 0;
        while(budget >= d[i]){
            answer++;
            budget-=d[i];
            i++;
            if(i == d.length){
                break;
           
            }
        }
        return answer;
    }
}

/*
import java.util.*;
class Solution {
    public int solution(int[] d, int budget) {
        int answer = 0;
        Arrays.sort(d);
         //d = 부서별 신청한 금액 담긴 배열
        // budget = 부서별 신청한 금액
        int i= 0;
        while(budget >= d[i]){
            answer++;
            budget-=d[i];
            i++;
            if(i == d.length){
                break;
            }
        }
        return answer;
    }
}*/