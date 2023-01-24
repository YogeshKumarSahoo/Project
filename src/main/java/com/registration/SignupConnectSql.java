package com.registration;

import java.sql.PreparedStatement;
import java.sql.SQLException;


public class SignupConnectSql {
	boolean main(Student s) {
		
		ConnectDB confi = new ConnectDB();
		String query="insert into student(fname,lname,gender,mobile,address,course,email,password) values(?,?,?,?,?,?,?,?)";
		PreparedStatement pst=null;
		int status;
		try {
			pst = confi.Connect().prepareStatement(query);
			pst.setString(1, s.getFirstName());
			pst.setString(2, s.getLastName());
			pst.setString(3, s.getSexr());
			pst.setString(4, s.getPhone());
			pst.setString(5, s.getAddress());
			pst.setString(6, s.getCourse());
			pst.setString(7, s.getMail());
			pst.setString(8, s.getPassword());
			status=pst.executeUpdate();
			if(status>0)
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
