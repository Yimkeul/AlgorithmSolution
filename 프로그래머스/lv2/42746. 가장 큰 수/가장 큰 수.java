import java.util.*;
class Solution {
    public String solution(int[] numbers) {
        String answer = "";
        String [] num = new String[numbers.length];
        
        for(int i =0; i <num.length;i++){
            num[i] = String.valueOf(numbers[i]);
            
        }
        Arrays.sort(num,new Mycomp());
        if(num[0].equals("0"))
            answer +="0";
        else{
            for(int j = 0; j <num.length;j++){
                answer += num[j];
            
            }
        }
        return answer;
    }
}
class Mycomp implements Comparator<String>{
    public int compare(String o1, String o2){
        return (o2+o1).compareTo(o1+o2);
    }
}