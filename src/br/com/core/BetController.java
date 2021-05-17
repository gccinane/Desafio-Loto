package br.com.core;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.StringUtils;



@WebServlet("/BetController")
public class BetController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BetBO betBO = new BetBO();
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		String action = request.getParameter("action");
		
		if(action == null) {
			List<BetModel> bets = betBO.listBets();
    		request.setAttribute("list", bets);
    		request.getRequestDispatcher("list.jsp").forward(request, response);
    
		} else {
			Integer bet = Integer.parseInt(request.getParameter("betId"));
            betBO.deleteBet(bet);
            request.setAttribute("list", betBO.listBets());
    		request.getRequestDispatcher("list.jsp").forward(request, response);
		}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//TODO receber a opcao selecinada pelo use
		int betQuinaQuantity = 0;
		int betMegaQuantity = 0;
		int betLotoQuantity = 0;
		
		try {
			
			if(!StringUtils.isNullOrEmpty(request.getParameter("megaSena"))) {
				betMegaQuantity = Integer.parseInt(request.getParameter("megaSena"));
				for(int i = 0; i < betMegaQuantity; i++) {
					betBO.addBet(new BetModel("MEGA-SENA", BetBO.generateBetContent("MEGA-SENA"), 0));
				}
			}
			
			if(!StringUtils.isNullOrEmpty(request.getParameter("quina"))) {
				betQuinaQuantity = Integer.parseInt(request.getParameter("quina"));
				for(int i = 0; i < betQuinaQuantity; i++) {
					betBO.addBet(new BetModel("QUINA", BetBO.generateBetContent("QUINA"), 0));
				}
			}
			
			if(!StringUtils.isNullOrEmpty(request.getParameter("loto"))) {
				betLotoQuantity = Integer.parseInt(request.getParameter("loto"));
				for(int i = 0; i < betLotoQuantity; i++) {
					betBO.addBet(new BetModel("LOTOFACIL", BetBO.generateBetContent("LOTOFACIL"), 0));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			
		}
	}	
}


