<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
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
//String UserName=request.getParameter("UserName");
//String Password=request.getParameter("Password");


Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
PreparedStatement ps=con.prepareStatement("update Doctor set Fname=? ,LName=? ,JoinDate=?,Email=?,Phone=?,Qualification=?,Designation=?,Specialistation=?,WorkingHours=?,DStatus=? where DocId=?"); 
 ps.setString(1,FirstName);
 ps.setString(2,LastName);
 ps.setString(3,JoinDate);
ps.setString(4,mail);
ps.setString(5,PhoneNo);
ps.setString(6,Qualification);
ps.setString(7,Designation);
ps.setString(8,Specialisation);
ps.setString(9,WorkingHours);
ps.setString(10,DStatus);
 ps.setString(11,DocId);

ps.executeUpdate();
con.close();
		session.setAttribute("msg","Doctor Profile updated Successfully");
		 %><jsp:forward page="ResultPage.jsp" /><%
	}
	catch(Exception e)
		{
	out.println(e);
	}






%>
</body>
</html>
