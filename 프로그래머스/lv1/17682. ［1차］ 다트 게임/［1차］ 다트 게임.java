class Solution {
    public int solution(String dartResult) {
    int answer_arr[] = new int[3];
        int idx = 0, intCnt= 0;
        
        for(int i =0; i <dartResult.length();i++){
            char dartChar = dartResult.charAt(i);
            int dartInt = Character.getNumericValue(dartChar);
            if(dartInt >= 0 && dartInt <=10){
                if(dartInt ==1){
                    if(Character.getNumericValue(dartResult.charAt(i+1))==0){
                        dartInt = 10;
                        i++;
                    }
                }
                answer_arr[idx] = dartInt;
                intCnt++;
                
                
                
                
            }else{
                switch(dartChar){
                    case 'S' :
                        answer_arr[idx] = (int)Math.pow(answer_arr[idx],1);
                        idx++;
                        break;
                           case 'D' :
                        answer_arr[idx] = (int)Math.pow(answer_arr[idx],2);
                        idx++;
                        break;
                           case 'T' :
                        answer_arr[idx] = (int)Math.pow(answer_arr[idx],3);
                        idx++;
                        break;
                           case '*' :
                        idx = idx-2 <0?0:idx-2;
                        while(idx < intCnt){
                            answer_arr[idx] = answer_arr[idx]*2;
                        idx++;
                        }
                        
                        break;
                         case'#' :
                            answer_arr[idx-1]= answer_arr[idx-1]*(-1);
                        break;
                }
            }
        }
        return answer_arr[0]+answer_arr[1]+answer_arr[2];
    }
}