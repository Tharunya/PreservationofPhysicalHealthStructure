<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<%
int TRid=Integer.parseInt(request.getParameter("RegistrationNo"));
int Tid=Integer.parseInt(request.getParameter("TreatmentId"));
int Docid=Integer.parseInt(request.getParameter("DoctorId"));
String BloodGroup=request.getParameter("BloodGroup");
String EcgTest=request.getParameter("EcgTest");
String Scanning=request.getParameter("Scanning");
String XrayTest=request.getParameter("XrayTest");
String Status=request.getParameter("Status");
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	
PreparedStatement ps=con.prepareStatement("insert into TestReport values (?,?,?,?,?,?,?,?)");
ps.setInt(1,TRid);
ps.setInt(2,Tid);
ps.setInt(3,Docid);
ps.setString(4,BloodGroup);
ps.setString(5,EcgTest);
ps.setString(6,Scanning);
ps.setString(7,XrayTest);
ps.setString(8,Status);
ps.executeUpdate();
con.close();
		session.setAttribute("msg","Test Report Successfull");
		 %><jsp:forward page="ResultPage.jsp" /><%
	}
	catch(Exception e)
		{
	out.println(e);
	}
%>
</body>
</html>
