class Solution {
    public int solution(int n) {
        //소수 갯수 찾기
        //소수는 1과 자기자신으로만 나누어지는 수
        //n은 입력변수
        
        int answer = 0;
        for(int i =2; i <=n; i ++){
            boolean temp = true;
            for(int j=2 ; j*j<=i; j++){
                if( i%j == 0){
                    temp = false;
                    break;
                }
            }
            if(temp){
                answer++;
            }
        }
        return answer;
    }
}