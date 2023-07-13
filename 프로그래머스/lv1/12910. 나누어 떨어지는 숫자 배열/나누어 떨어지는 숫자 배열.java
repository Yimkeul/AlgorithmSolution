import java.util.*;

class Solution {
    public int[] solution(int[] arr, int divisor) {
        int[] answer = {};
        int cnt = 0; // answer의 배열 크기 설정 변수
        for(int i = 0; i <arr.length;i++){
            if(arr[i]%divisor==0){
                cnt++;
            }
        }
        
            answer = new int[cnt];// answer 배열 크기 설정 완료
  
          for(int j = 0; j < answer.length;j++){
               for(int i = 0; i <arr.length;i++ ){    
                   if(arr[i]%divisor==0){
                   answer[j]=arr[i];     
                       j++; 
               }
            }
        }
        Arrays.sort(answer);
        
        
           //예3번처리
                if(answer.length==0){
                    cnt=1;
                    answer = new int[cnt];
                    answer[0] = (-1);
                }
        //Arrays.sort(answer);
        return answer;
    }
}