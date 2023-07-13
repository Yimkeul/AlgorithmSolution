import java.util.*;
class Solution {
    public int[] solution(int[] answers) {
        int [] st1 = {1,2,3,4,5};
        int [] st2 = {2,1,2,3,2,4,2,5};
        int [] st3 = {3,3,1,1,2,2,4,4,5,5};
        
        int [] check = new int[3];
        
        for(int i = 0; i<answers.length;i++){
            if(answers[i] == st1[i%5]){
                check[0]++;
            }
            if(answers[i] == st2[i%8]){
                check[1]++;
            }
            if(answers[i] == st3[i%10]){
                check[2]++;
            }
        }
        
        int win = check[0];
        for(int i = 0; i <check.length;i++){
            if(win < check[i]){
                win = check[i];
            }
        }
        List<Integer> ww = new ArrayList<>();
        
        for(int i = 0; i < check.length;i++){
            if(win==check[i]){
                ww.add(i);
            }
        }
        
        int[] answer = {};
        answer = new int[ww.size()];
        
        for(int i = 0; i < ww.size();i++){
            answer[i] = ww.get(i)+1;
        }
        return answer;
    }
}