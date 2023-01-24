package com.registration;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class signinConnectSql {
boolean main(Student s) {
		
	ConnectDB confi = new ConnectDB();
	String Query="select * from student where email=? and password=?";
	PreparedStatement pst = null;
	ResultSet rs;
	try {
		pst=confi.Connect().prepareStatement(Query);
		pst.setString(1, s.getMail());
		pst.setString(2, s.getPassword());
		rs=pst.executeQuery();
		if(rs.next())
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	catch (Exception e) {
		e.printStackTrace();		
	}
	
	finally {
		try 
		{
			if(pst!=null)
				pst.close();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
	}
	return false;
	}
}
