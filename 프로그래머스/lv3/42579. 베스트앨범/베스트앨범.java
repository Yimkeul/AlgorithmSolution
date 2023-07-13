import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.TreeMap;

public class Solution {
	public int[] solution(String[] genres, int[] plays) {
		

		Map<Integer, String> gmap = new HashMap<Integer, String>();
		Map<Integer, Integer> pmap = new HashMap<Integer, Integer>();

		for (int i = 0; i < genres.length; i++) {
			if (!gmap.containsKey(i)) {
				gmap.put(i, genres[i]);
			}

			if (!pmap.containsKey(i)) {
				pmap.put(i, plays[i]);
			}
		}

		HashSet<String> gset = new HashSet<String>();

		Map<Integer, String> total = new HashMap<Integer, String>();

		for (int i = 0; i < genres.length; i++) {
			gset.add(genres[i]);
		}

		for (String x : gset) {
			int cnt = 0;
			for (int i = 0; i < gmap.size(); i++) {
				if (gmap.get(i).equals(x)) {
					cnt += pmap.get(i);
				}
			}
			total.put(cnt, x);
		}

		TreeMap sort = new TreeMap(total);
		String[] sortGenre = new String[gset.size()];

		int idx = 0;

		for (Object o : sort.keySet()) {
			sortGenre[idx] = sort.get(o).toString();
			idx++;
		}

		ArrayList<Integer> findex = new ArrayList<Integer>();
		for (int i = sortGenre.length - 1; i >= 0; i--) {
			int count = 0;

			for (int p1 : gmap.keySet()) {
				if (sortGenre[i].equals(gmap.get(p1))) {
					count++;
				}

			}
			int[] temp = new int[count];
			int k = 0;
			for (int p2 : gmap.keySet()) {
				if (sortGenre[i].equals(gmap.get(p2))) {
					temp[k] = pmap.get(p2);
					k++;
				}
			}
			if (temp.length != 1) {
				Arrays.sort(temp);
				for (int j = temp.length - 1; j >= temp.length - 2; j--) {
					for (int p : pmap.keySet()) {
						if (temp[j] == pmap.get(p)) {
							findex.add(p);
							pmap.put(p, 0);
							break;
						}
					}
				}
			}else{
                for(int p : pmap.keySet()){
                    if(temp[0] == pmap.get(p)){
                        findex.add(p);
                        pmap.put(p, 0);
                        break;
                    }
                }                
            }

		}

	      
        int[] answer = new int[findex.size()];
        
        for(int i = 0; i < findex.size(); i++){
            answer[i] = findex.get(i);
        }
		return answer;
	}
}