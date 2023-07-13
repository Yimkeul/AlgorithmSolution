class Solution {
    boolean solution(String s) {
        boolean answer = true;
        String diff = s.toLowerCase();

        int cntP= 0;
        int cntY=0;
        
        for(int i = 0; i < diff.length(); i++){
            if(diff.charAt(i) == 'p'){
                cntP++;
            }
            if(diff.charAt(i) == 'y'){
                cntY++;
            }  
        }
       
        if(cntP==cntY ){
            answer = true;
        }
        if((cntP&cntY) == 0){
            answer= true;
        }
        if(cntP != cntY){
            answer = false;
        }
        return answer;
    }
}