import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Scanner;
class Queue{
	private int[] queue;
	private int frontIndex = 0;
	private int backIndex = -1;
	
	public Queue() {
		// TODO Auto-generated constructor stub
	}
	Queue(int number){
		queue = new int[number];
	}
	
	public void push(int x) {
		queue[++backIndex] = x;
		
	}
	
	public int size() {
		return backIndex - frontIndex +1;
	}
	
	public boolean isEmpty() {
		if(size() == 0) {
			return true;
		}else {
			return false;
		}
	}
	
	public int pop() {
		if(isEmpty()) {
			return -1;
		}else {
			return queue[frontIndex++];
		}
	}
	
	public int front() {
		if(isEmpty()){
			return -1;
		}else {
			return queue[frontIndex];
		}
		
	}
	
	public int back() {
		if(isEmpty()) {
			return -1;
		}
		else {
			return queue[backIndex];
		}
	}
	
}


public class Main {
	public static void main(String args[]) throws Exception {
	BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	
		int number = Integer.parseInt(br.readLine());
		
		Queue queue = new Queue(number);
		
		for(int i = 0 ; i < number;i++) {
			
			String input[] = br.readLine().split(" ");
			
			String command = input[0];
			switch(command) {
			case "push":
				int x = Integer.parseInt(input[1]);
				queue.push(x);
				break;
				
			case "pop":
				System.out.println(queue.pop());
				break;
			
			case "empty":
				if(queue.isEmpty()) {
					System.out.println(1);
				}else {
					System.out.println(0);
				}
				break;
				
			case "front":
				System.out.println(queue.front());
				break;
				
			case "back":
				System.out.println(queue.back());
				break;
			case "size":
				System.out.println(queue.size());
				break;
			}
			
		}
		
	}
}
