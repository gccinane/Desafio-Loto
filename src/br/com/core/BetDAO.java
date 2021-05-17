package br.com.core;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class BetDAO {
	private Connection connection;
	private PreparedStatement preparedStatement;

	public BetDAO() {
		connection = new ConnectionFactory().getConnection();
	}

	public boolean addBet(BetModel bet) {
		String sql = "INSERT INTO bets(name, content) VALUES(?, ?)";

		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, bet.getName());
			preparedStatement.setString(2, bet.getContent());
			preparedStatement.execute();
			preparedStatement.close();

			return true;
		} catch (Exception e) {
			return false;
		}

	}

	public List<BetModel> listBets() {
		String sql = "SELECT name, content, id FROM bets";
		ArrayList<BetModel> betsList = new ArrayList<BetModel>();

		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.execute();

			ResultSet response = preparedStatement.getResultSet();

			while(response.next()) {
				betsList.add(new BetModel(response.getString("name"), response.getString("content"), response.getInt("id")));
				//TRIM DAS VIRGULAS E RETORNAR 
				System.out.println("Aposta: " + response.getString("name") + "-" + response.getString("content"));
				System.out.println(betsList);

			}
			return betsList;
		} catch (SQLException e) {
			e.printStackTrace();
			return new ArrayList<BetModel>();
		}
	}

	public boolean deleteBet(int id) {
		String sql = "DELETE FROM bets WHERE id = ?";

		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			preparedStatement.execute();
			preparedStatement.close();

			return true;
		} catch (Exception e) {
			return false;
		}
	}
}





