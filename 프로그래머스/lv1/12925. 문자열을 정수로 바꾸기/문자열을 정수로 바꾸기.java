class Solution {
    public int solution(String s) {
        int answer = 0;
        if(0<s.length() && s.length()<6){
        answer = Integer.parseInt(s);       
    }
        return answer;
    }
}