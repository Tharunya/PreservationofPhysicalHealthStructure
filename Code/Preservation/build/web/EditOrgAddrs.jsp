<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<%

String code=request.getParameter("OrganisationCode");
String name=request.getParameter("OrganisationName");
String addr1=request.getParameter("AddressLine1");
String addr2=request.getParameter("AddressLine2");


	try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	
PreparedStatement ps=con.prepareStatement("UPDATE OrgCodeAddrs set code=?, name=?, addr1=?, addr2=?");
ps.setString(1,code);
ps.setString(2,name);
ps.setString(3,addr1);
ps.setString(4,addr2);
//ps.setString(5,"100");

ps.executeUpdate();
con.close();
		session.setAttribute("msg","Profile Changed Successfully");
		 %><jsp:forward page="ResultPage.jsp" /><%

	}
	catch(Exception e)
		{
	out.println(e);
	}
%>
</body>
</html>
