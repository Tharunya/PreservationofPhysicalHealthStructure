<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
String Wtype=request.getParameter("Wtype");
String wardno=request.getParameter("wardno");
String bedno=request.getParameter("bedno");
String status="";
if(Wtype.equals("1"))
{
	PreparedStatement ps=con.prepareStatement("select *from ICUBeds where WardNo=? and IBedNo=? ");
	ps.setString(1,wardno);
		ps.setString(2,bedno);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
	 status=rs.getString("Filled");
	
	}
	if(status.equals("0"))
	{
	out.println("Bed available");
	}
	else
	{
	out.println("Not available");
	}
}
else
{

PreparedStatement ps1=con.prepareStatement("select *from GeneralBeds where WardNo=? and GBedNo=? ");
	ps1.setString(1,wardno);
	ps1.setString(2,bedno);
	ResultSet rs=ps1.executeQuery();
	while(rs.next())
	{
	 status=rs.getString("Filled");
	
	}
	if(status.equals("0"))
	{
	out.println("Bed available");
	}
	else
	{
	out.println("Not available");
	}

}







%>
</body>
</html>
