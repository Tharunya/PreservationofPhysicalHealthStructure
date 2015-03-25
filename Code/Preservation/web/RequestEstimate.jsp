<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<%
String FirstName=request.getParameter("FirstName");
String LastName=request.getParameter("LastName");
String DOB=request.getParameter("DOB");
String Gender=request.getParameter("Gender");
String Age=request.getParameter("Age");
String FullName=request.getParameter("FullName");
String Address=request.getParameter("Address");
String City=request.getParameter("City");
String State=request.getParameter("State");
String Country=request.getParameter("Country");
String TelephoneNo=request.getParameter("TelephoneNo");
String Fax=request.getParameter("Fax");
String MailID=request.getParameter("MailID");
String Condition=request.getParameter("Condition");
String UploadReports=request.getParameter("UploadReports");
String FName=request.getParameter("FName");
String Mail=request.getParameter("Mail");
String ServiceEstimate=request.getParameter("ServiceEstimate");
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	
PreparedStatement ps=con.prepareStatement("insert into Request values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,FirstName);
ps.setString(2,LastName);
ps.setString(3,DOB);
ps.setString(4,Gender);
ps.setString(5,Age);
ps.setString(6,FullName);
ps.setString(7,Address);
ps.setString(8,City);
ps.setString(9,State);
ps.setString(10,Country);
ps.setString(11,TelephoneNo);
ps.setString(12,Fax);
ps.setString(13,MailID);
ps.setString(14,Condition);
ps.setString(15,UploadReports);
ps.setString(16,FName);
ps.setString(17,Mail);
ps.setString(18,ServiceEstimate);
ps.executeUpdate();
con.close();
		session.setAttribute("msg","Request Successfull");
		 %><jsp:forward page="ResultPage.jsp" /><%


	}
	catch(Exception e)
		{
	out.println(e);
	}
%>
</body>
</html>
