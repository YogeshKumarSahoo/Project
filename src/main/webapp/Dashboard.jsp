<%@page import="com.registration.ConnectDB"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Dashboard</title>
		<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

		<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		-->
		
		<!-- CSS only -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
		<link rel="stylesheet" href="CSS/style.css">
		<!-- JavaScript Bundle with Popper -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	</head>
	<body>
		<center><h1>Student's Database</h1></center><br>
					<div class="container">
						<table class="table">
						  <thead class="thead-dark">
							<tr>
								<th>sID</th>
								<th>FirstName</th>
								<th>LastName</th>
								<th>Gender</th>
								<th>Ph. no.</th>
								<th>Address</th>
								<th>Course</th>
								<th>Email</th>
							</tr>
						</thead>
						<tbody>
							<%
							Statement stmt;
							ResultSet rs;
							ConnectDB confi = new ConnectDB();
							String query="select * from student;";
							stmt=confi.Connect().createStatement();
							rs=stmt.executeQuery(query);
							while(rs.next())
							{
								out.print("<tr>"+
											"<th>"+rs.getInt(1)+"</th>"+
											"<td>"+rs.getString(2)+"</td>"+
											"<td>"+rs.getString(3)+"</td>"+
											"<td>"+rs.getString(4)+"</td>"+
											"<td>"+rs.getString(5)+"</td>"+
											"<td>"+rs.getString(6)+"</td>"+
											"<td>"+rs.getString(7)+"</td>"+
											"<td>"+rs.getString(8)+"</td>"+
										"</tr>");
							}
							%>
						</tbody>
					</table>
				</div>
			
	</body>
</html>