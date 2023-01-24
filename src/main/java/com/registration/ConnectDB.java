package com.registration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
	public Connection Connect() throws  SQLException, ClassNotFoundException
	{
		String URL,username,password; 
			Class.forName("java.sql.Driver");
			URL="jdbc:mysql://localhost:3306/school";
			username="root";
			password="root";
			return DriverManager.getConnection(URL,username,password);
	}
}
