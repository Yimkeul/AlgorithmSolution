import java.util.*;
class Solution {
    public int[] solution(int[] arr) {
       
        int min = arr[0];
        for(int i =1 ; i < arr.length; i++){
            min = Math.min(min, arr[i]);
        }
        
        int[] answer = new int[arr.length-1];
        int tmp = 0;
        for(int i =0; i <arr.length;i++){
            if(min == arr[i]){
                continue;
            }
            answer[tmp++] = arr[i];
        }
           if(arr.length <= 1){
            answer = new int[]{-1};
        }
        return answer;
        
    }
}