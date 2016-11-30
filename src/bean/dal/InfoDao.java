package bean.dal;

import java.sql.*;
import java.util.*;

import bean.entity.Info;

public class InfoDao {
	
	String dburl = "jdbc:mysql://localhost:3306/info";
	String username = "root";
	String password = "root";
	
	public boolean publish(Info info) throws ClassNotFoundException, SQLException{
		boolean result = false;
		Connection conn = null;
		Statement stat = null;
		//加载驱动
		Class.forName("com.mysql.jdbc.Driver");
		//链接
		conn = DriverManager.getConnection(dburl,username,password);
		//声明
		stat = conn.createStatement();
		//更新数据
		String sql = "INSERT INTO info(title, author, publishtime, infotype, content) values('" +
		info.getTitle()+"','"+info.getAuthor()+"','"+info.getPublishtime()+"','"+info.getInfotype()+"','"+info.getContent()+"')";
		System.out.println(sql);
		int i = stat.executeUpdate(sql);
		if(i == 1) result = true;
		stat.close();
		return result;
		
	}
	
	public Info getInfoById(int id) throws ClassNotFoundException, SQLException{
		Info info = new Info();
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(dburl, username, password);
		Statement st = conn.createStatement();
		String sql = "SELECT * FROM info WHERE id=" + id;
		
		System.out.println(sql);
		ResultSet rs = st.executeQuery(sql);
		if(rs.next()){
			info.setId(rs.getInt("id"));
			info.setAuthor(rs.getString("author"));
			info.setInfotype(rs.getString("infotype"));
			info.setPublishtime(rs.getString("publishtime"));
			info.setContent(rs.getString("content"));
			info.setTitle(rs.getString("title"));
		}
		st.close();
		return info;
	}
	
	public boolean delete(int id) throws SQLException, ClassNotFoundException{
		boolean rs = false;
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(dburl, username, password);
		Statement st = conn.createStatement();
		String sql = "DELETE FROM info WHERE id=" + id;
		
		System.out.println(sql);
		int result = st.executeUpdate(sql);
		if(result == 1) rs = true;
		st.close();
		return rs;
	}
	
	public boolean modify(Info info) throws SQLException, ClassNotFoundException{
		boolean result = true;
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(dburl, username, password);
		String sql = "UPDATE info SET title='"
				+info.getTitle()+"', author='"
				+info.getAuthor()+"', infotype='"
				+info.getInfotype()+"', publishtime='"
				+info.getPublishtime()+"', content='"
				+info.getContent()+"' where id="
				+info.getId()+";";
		Statement pst = conn.createStatement();
		System.out.println(sql);
		int i = pst.executeUpdate(sql);
		if(i != 1) result = false;
		pst.close();
		return result;
	}
	
	public List<Info> getInfoByInfotype(String infotype, int pageid, int pagesize) throws ClassNotFoundException, SQLException{
		ArrayList<Info> list = new ArrayList<Info>();
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(dburl, username, password);
		Statement st = conn.createStatement();
		String sql = "SELECT * FROM info WHERE infotype='" +infotype+ "' LIMIT "+ (pageid - 1)*pagesize + "," +pagesize;
		System.out.println(sql);
		ResultSet rs = st.executeQuery(sql);
		while(rs.next()){
			Info info = new Info();
			
			info.setId(rs.getInt("id"));
			info.setTitle(rs.getString("title"));
			info.setAuthor(rs.getString("author"));
			info.setPublishtime(rs.getString("publishtime"));
			info.setInfotype(rs.getString("infotype"));
			info.setContent(rs.getString("content"));
			
			list.add(info);
		}
		st.close();
		return list;
	}
}
