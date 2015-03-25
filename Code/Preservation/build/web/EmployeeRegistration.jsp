<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<%
int EmpNo=Integer.parseInt(request.getParameter("EmpNo"));
String FName=request.getParameter("FName");
String LName=request.getParameter("LName");
String DOB=request.getParameter("DOB");
String Designation=request.getParameter("Designation");
String AddressLine1=request.getParameter("AddressLine1");
String AddressLine2=request.getParameter("AddressLine2");
String District=request.getParameter("District");
String State=request.getParameter("State");
String Country=request.getParameter("Country");
String MobileNo=request.getParameter("MobileNo");
String UserName=request.getParameter("UserName");
String PassWord=request.getParameter("PassWord");
//String UserType=request.getParameter("UserType");
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	
PreparedStatement ps=con.prepareStatement("insert into Employee values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setInt(1,EmpNo);
ps.setString(2,FName);
ps.setString(3,LName);
ps.setString(4,DOB);
ps.setString(5,Designation);
ps.setString(6,AddressLine1);
ps.setString(7,AddressLine2);
ps.setString(8,District);
ps.setString(9,State);
ps.setString(10,Country);
ps.setString(11,MobileNo);
ps.setString(12,UserName);
ps.setString(13,PassWord);
//ps.setString(14,UserType);
ps.executeUpdate();
con.close();
		session.setAttribute("msg","Employee Registered Successfully");
		 %><jsp:forward page="ResultPage.jsp" /><%


	}
	catch(Exception e)
		{
	out.println(e);
	}
%>
</body>
</html>
