package greed;

import java.io.FileReader;
import java.util.Collections;
import java.util.List;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class Greed {
	public long points = 0;
	JSONObject combinations;
	boolean canReplay = true;
	
	public Greed() {
		try {
			JSONParser p = new JSONParser();
			this.combinations = (JSONObject) p.parse(new FileReader("combinations.json"));

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void savePoints(List<Integer> dices) {
		long result = checkCombinations(dices);
		if(result == 0) {
			this.points = 0;
			canReplay = false;
		}
		else 
			this.points += result;	
	}
	
	public long checkCombinations(List<Integer> dices) {
		long result = 0;
		String dicesString = listToString(dices);
		if(combinations.containsKey(dicesString)) {
			result = (long) combinations.get(dicesString);
		}
		System.out.println(dicesString+" : "+result);
		return result;
	}
	
	
	public String listToString(List<Integer> dices) {
		Collections.sort(dices); 
		String result = "";
		for (Integer d: dices){
			result += d.toString();
		}
		System.out.println(result);
		return result;
	}
}
