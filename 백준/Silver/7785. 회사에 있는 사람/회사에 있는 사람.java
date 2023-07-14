import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;

public class Main {
	public static void main(String args[]) throws Exception {
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		int n = Integer.parseInt(br.readLine());

		Set<String> member = new HashSet<String>();

		for (int i = 0; i < n; i++) {
			String input[] = br.readLine().split(" ");
			String name = input[0];
			String type = input[1];

			if (type.equals("enter")) {
				member.add(name);
			} else if (type.equals("leave")) {
				member.remove(name);
			}
		}

		List<String> list = new LinkedList<String>(member);

		Collections.sort(list);
		ListIterator iter = list.listIterator(list.size());

		while (iter.hasPrevious()) {
			System.out.println(iter.previous());
		}

	}
}