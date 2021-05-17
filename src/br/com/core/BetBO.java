package br.com.core;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;


public class BetBO {
private BetDAO betDAO = new BetDAO();
	
	
	public boolean addBet(BetModel bet) {
		return betDAO.addBet(bet);
	}
	
	public List<BetModel> listBets() {
		return betDAO.listBets();
	}
	
	public boolean deleteBet(int id) {
		return betDAO.deleteBet(id);
	}
	
	//TODO COLOCAR METODOS NO LUGAR ADEQUADO
	public static String generateBetContent(String betType){
		String betContent = "";
		ArrayList<Integer> intList = new ArrayList<Integer>();
		ArrayList<String> stringList = new ArrayList<String>();
		
		switch (betType) {
			case "MEGA-SENA":
		        for (int i=1; i<61; i++) {
		        	intList.add(i);
		        }
		        
		        Collections.shuffle(intList);
		        for(int i = 0; i < 6; i++) {
		        	stringList.add(Integer.toString(intList.get(i)));
		        }
		        
		        betContent = String.join(" ", stringList);
		        
				break;
				
			case "QUINA":
				for (int i=1; i<81; i++) {
		        	intList.add(i);
		        }
		        
		        Collections.shuffle(intList);
		        for(int i = 0; i < 15; i++) {
		        	stringList.add(Integer.toString(intList.get(i)));
		        }
		        
		        betContent = String.join(" ", stringList);
				break;
				
			case "LOTOFACIL":
				for (int i=1; i<26; i++) {
		        	intList.add(i);
		        }
		        
		        Collections.shuffle(intList);
		    
		        for(int i = 0; i < 20; i++) {
		        	stringList.add(Integer.toString(intList.get(i)));
		        }
		        
		        betContent = String.join(" ", stringList);
			break;
		}
		
		return betContent;
	}
	
	public static ArrayList<String> stringToArrayList(String betContent) {
		ArrayList<String> myList = new ArrayList<String>(Arrays.asList(betContent.split(" ")));
		return myList;
	}
} 



