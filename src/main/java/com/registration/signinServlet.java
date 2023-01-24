package com.registration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class signinServlet
 */
public class signinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String email=request.getParameter("mail");
		String password=request.getParameter("pass");
		
		Student st = new Student();
		signinConnectSql sgin = new signinConnectSql();
		
		st.setMail(email);
		st.setPassword(password);
		
		RequestDispatcher dispatcher=null;
		if(sgin.main(st))
		{
			dispatcher= request.getRequestDispatcher("Dashboard.jsp");
			request.setAttribute("status", "success");
			dispatcher.forward(request, response);
		}
		else
		{
			out.print("Try Again!!!!!");
		}
		
	}

}
