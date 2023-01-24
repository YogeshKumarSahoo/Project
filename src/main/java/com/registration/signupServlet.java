	package com.registration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class signupServlet
 */

public class signupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String firstName=request.getParameter("fname");
		String lastName=request.getParameter("lname");
		String sex=request.getParameter("Gender");
		String phone=request.getParameter("mob");
		String address=request.getParameter("adrs");
		String course=request.getParameter("course");
		String mail=request.getParameter("email");
		String password=request.getParameter("pass");
		
		Student st = new Student();
		
		st.setFirstName(firstName);
		st.setLastName(lastName);
		st.setSexr(sex);
		st.setPhone(phone);
		st.setAddress(address);
		st.setCourse(course);
		st.setMail(mail);
		st.setPassword(password);
		
		SignupConnectSql Siup = new SignupConnectSql();
		RequestDispatcher dispatcher=null;
		
		if(Siup.main(st))
		{
			dispatcher= request.getRequestDispatcher("index.html");
			request.setAttribute("status", "success");
			dispatcher.forward(request, response);
		}
		else 
		{
			dispatcher= request.getRequestDispatcher("Signup.jsp");
			request.setAttribute("status", "failed");
			dispatcher.forward(request, response);
		}
		
	}

}