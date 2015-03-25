<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>The preservation of physical health structure</title>
</head>

<body>
<%
try{

String DocId=request.getParameter("DocId");
String FirstName=request.getParameter("FirstName");
String LastName=request.getParameter("LastName");
String JoinDate=request.getParameter("JoinDate");
String mail=request.getParameter("mail1");
String PhoneNo=request.getParameter("PhoneNo");
String Qualification=request.getParameter("Qualification");
String Designation=request.getParameter("Designation");
String Specialisation=request.getParameter("Specialisation");
String WorkingHours=request.getParameter("WorkingHours");
String DStatus=request.getParameter("DStatus");
String UserName=request.getParameter("UserName");
String Password=request.getParameter("Password");


Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
PreparedStatement ps=con.prepareStatement("INSERT INTO Doctor values(?,?,?,?,?,?,?,?,?,?,?,?,?)"); 
 ps.setString(1,DocId);
 ps.setString(2,FirstName);
 ps.setString(3,LastName);
 ps.setString(4,JoinDate);
ps.setString(5,mail);
ps.setString(6,PhoneNo);
ps.setString(7,Qualification);
ps.setString(8,Designation);
ps.setString(9,Specialisation);
ps.setString(10,WorkingHours);
ps.setString(11,DStatus);
ps.setString(12,UserName);
ps.setString(13,Password);
ps.executeUpdate();
con.close();
System.out.println("hiiiiii");
		session.setAttribute("msg","Doctor Registered Successfully");
		 %><jsp:forward page="ResultPage.jsp" /><%
	}
	catch(Exception e)
		{
	out.println(e);
	}






%>
</body>
</html>
