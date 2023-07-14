import java.util.*;
public class Main {
	public static void main(String args[]) {

		Scanner sc = new Scanner(System.in);

		int N = sc.nextInt(); // 기존 배열의 크기( n*n)
		int K = sc.nextInt(); // 증가시킬 배열의 크기

		int arr[][] = new int[N][N]; // 이중배열

		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				arr[i][j] = sc.nextInt();

			}
		}

		int uparr[][] = new int[N*K][N*K];
		
		
		
		
		/*
		 * up(arr[0][0]~ arr[1][1]) = arr[0][0]
		 * 
		 * 
		 * 
		 * */
		
		
		int cnt_x = 0;
		int cnt_y=0;
		int cntx = 1;
		int cnty=1;
		
		
		
		
		
		for (int i = 0; i < uparr.length ; i++) {		
			for (int j = 0; j < uparr[i].length; j++) {
					
					uparr[i][j] = arr[cnt_x][cnt_y];
								
					if(j == (K*cnty)-1) {
						cnty++;
						cnt_y++;
					}
					//System.out.println("j값 : " + j + " cnty값 : " + cnty + " cnt_y값 : " + cnt_y);
				System.out.print(uparr[i][j] + " ");
				if (j == uparr[i].length - 1) {
					System.out.println("");
					cnty=1;
					cnt_y=0;
				}
				
			}

//			System.out.println("i값 : " + i + "cnt값 : " + cnt);
			if(i==(K*cntx)-1) {
				cntx++;
				cnt_x++;
	//			System.out.println("x 기준점 변경");
			}
			
		}

	}

}
