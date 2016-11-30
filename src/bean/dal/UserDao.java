package bean.dal;

import java.sql.*;

import bean.entity.User;

public class UserDao {
	String dburl = "jdbc:mysql://localhost:3306/info";
	String username = "root";
	String password = "root";
	public boolean login(User user) throws SQLException{
		boolean result = false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(dburl, username, password);
			Statement stat = con.createStatement();
			
			String sql = "SELECT * FROM user WHERE username='" + user.getUsername() +"' AND password='" + user.getPassword() +"'";
			ResultSet rs = stat.executeQuery(sql);
			
			if(rs.next()){
				result = true;
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int register(User user) throws SQLException{
		int rs = 0;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(dburl, username, password);
			Statement stat = con.createStatement();
			
			String sql = "INSERT INTO user(username,password,email,phonenumber) values('"+
			user.getUsername()+"','"+user.getPassword()+"','"+user.getEmail()+"','"+user.getPhonenumber()+"')";
			rs = stat.executeUpdate(sql);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return rs;
	}
}
