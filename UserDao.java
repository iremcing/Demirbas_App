package com.demirbasUygulama.DBconnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.demirbasUygulama.Entity.User;

public class UserDao {

	private String jdbcUrl = "jdbc:mysql://localhost:3306/demirbas?useSSL=false";
	private String jdbcUserName = "root";
	private String jdbcPassword = "sedat1323";
	
	
	private static final String INSERT_USERS_SQL = "INSERT INTO kullanicideneme" + " (adi, soyadi, parola) VALUES " +
			"(?, ?, ?);";
	
	private static final String SELECT_USERS_BY_ID = "SELECT  adi, soyadi, parola from kullanicideneme where adi = ?";
	private static final String SELECT_ALL_USERS = "select * from kullanicideneme";
	private static final String DELETE_USERS_SQL = "DELETE from kullanicideneme where kullaniciID = ?;";
	private static final String UPDATE_USERS_SQL = "UPDATE kullanicideneme set adi=?, soyadi=?, parola=? where adi=?;";
	
	
	
	public UserDao() {}
	
	protected Connection getConnection() {
		Connection myCon = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			myCon = DriverManager.getConnection(jdbcUrl, jdbcUserName, jdbcPassword);
		}
		catch(SQLException sqlExc) {
			sqlExc.printStackTrace();
		}
		catch(ClassNotFoundException cnfExc) {
			cnfExc.printStackTrace();
		}
		return myCon;
	}
	
	
	
	public void insertUser(User user) throws SQLException{
		System.out.println(INSERT_USERS_SQL);
		
		try {
			Connection myCon = getConnection();
			PreparedStatement pStmt = myCon.prepareStatement(INSERT_USERS_SQL);
			
			pStmt.setString(2, user.getAd());
			pStmt.setString(3, user.getSoyad());
			pStmt.setString(5, user.getParola());
			
			
			System.out.println(pStmt);
			pStmt.executeUpdate();
		}
		catch(SQLException e) {
			printSQLException(e);
		}
	}
	
	
	public User selectUser(int id) {
		User user = null;
		
		try {
			Connection myCon = getConnection();
			PreparedStatement pStmt = myCon.prepareStatement(SELECT_USERS_BY_ID);
			
			pStmt.setInt(1, id);
			System.out.println(pStmt);
			
			ResultSet rs = pStmt.executeQuery();
			
			while(rs.next()) {
				String ad = rs.getString("adi");
				String soyad = rs.getString("soyad");
				String email = rs.getString("email");
				user = new User(ad, soyad, email);
			}
		}
		catch(SQLException e) {
			printSQLException(e);
		}
		return user;
	}
	
	
	public List <User> selectAllUsers(){
		List<User> users = new ArrayList<>();
		
		
		try {
			Connection myCon = getConnection();
			PreparedStatement pStmt = myCon.prepareStatement(SELECT_ALL_USERS);
			
			System.out.println(pStmt);
			
			ResultSet rs = pStmt.executeQuery();
			
			while(rs.next()) {
				String ad = rs.getString("ad");
				String soyad = rs.getString("soyad");
				String parola = rs.getString("parola");
				users.add(new User(ad, soyad, parola));
			}
		}
		catch(SQLException e) {
			printSQLException(e);
		}
		return users;
	}
	
	
	
	public boolean deleteUser(int id) throws SQLException{
		boolean rowDeleted;
		try
			(Connection myCon = getConnection();
			PreparedStatement pStmt = myCon.prepareStatement(DELETE_USERS_SQL);)
			{
			pStmt.setInt(1, id);
			rowDeleted = pStmt.executeUpdate() > 0;
		}
		return rowDeleted;
	}
	
	
	
	public boolean updateUser(User user) throws SQLException{
		boolean rowUpdate;
		try 
			(Connection myCon = getConnection();
			PreparedStatement pStmt = myCon.prepareStatement(UPDATE_USERS_SQL);)
			{	
			pStmt.setString(2, user.getAd());
			pStmt.setString(3, user.getSoyad());
			pStmt.setString(5, user.getParola());
			
			rowUpdate = pStmt.executeUpdate() > 0;
		}
		
		return rowUpdate;
	}
	
	
	
	
	 private void printSQLException(SQLException ex) {
	        for (Throwable e: ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	                System.err.println("Message: " + e.getMessage());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
	        }
	    }
	
	
}
