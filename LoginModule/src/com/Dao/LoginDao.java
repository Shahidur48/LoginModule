package com.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDao {
	
	public boolean loginCheck(String uemail, String uPassword) throws SQLException {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/loginmodule","root","");
			
			Statement stmt = con.createStatement();
			
			ResultSet rs =  stmt.executeQuery("select email,password from users where email = '"+uemail+"' and password ='"+uPassword+"'");
			
			if(rs.next())
			{
				return true;
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
	
	
}
