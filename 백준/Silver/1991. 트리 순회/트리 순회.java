import java.io.*;
import java.util.*;

class Node {
    char data;
    Node left;
    Node right;

    public Node(char data) {
        this.data = data;
    }
}

class Tree {
    Node root;

    public void add(char data, char left, char right){
        if (root == null){
            if(data!='.'){
                root = new Node(data);
            }
        if (left !='.'){
            root.left = new Node(left);
        }
        
        if (right !='.'){
            root.right = new Node(right);
        }

        }else{
            search(root, data, left, right);
        }

    }
    private void search(Node root, char data, char left, char right) {
        if(root == null){
            return;
        }else if(root.data == data){
            if(left!='.'){
                root.left = new Node(left);
            }
            if(right!='.'){
                root.right = new Node(right);
            }
        }else{
            search(root.left, data, left, right);
            search(root.right, data, left, right);
        }

    }
    public void preorder(Node root) {
        System.out.print(root.data);
        if (root.left!=null) {
            preorder(root.left);
        }
        if (root.right!=null) {
            preorder(root.right);
        }
    }

    public void inorder(Node root) {
        if (root.left!=null) {
            inorder(root.left);
        }
        System.out.print(root.data);
        if (root.right!=null) {
            inorder(root.right);
        }
    }

    public void postorder(Node root) {
        if (root.left!=null) {
            postorder(root.left);
        }
        if (root.right!=null) {
            postorder(root.right);
        }
        System.out.print(root.data);
    }
}

public class Main {
    public static void main(String[] args) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int N = Integer.parseInt(br.readLine());
        Tree tree = new Tree();

        for (int i = 0; i < N; i++) {
            String[] input = br.readLine().split(" ");
            tree.add(input[0].charAt(0), input[1].charAt(0), input[2].charAt(0));
        }

        tree.preorder(tree.root);
        System.out.println();
        tree.inorder(tree.root);
        System.out.println();
        tree.postorder(tree.root);
        
    }

}
