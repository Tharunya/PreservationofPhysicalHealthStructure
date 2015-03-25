<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<%
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
String mail=request.getParameter("mail");

	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	
PreparedStatement ps=con.prepareStatement("update Administrator set FName=? ,LName=? ,DOB=?,Designation=?,Addr1=?,Addr2=?,District=?,State=?,Country=?,Mobile=?,EmailId=?");
ps.setString(1,FName);
ps.setString(2,LName);
ps.setString(3,DOB);
ps.setString(4,Designation);
ps.setString(5,AddressLine1);
ps.setString(6,AddressLine2);
ps.setString(7,District);
ps.setString(8,State);
ps.setString(9,Country);
ps.setString(10,MobileNo);
ps.setString(11,mail);

//ps.setString(14,UserType);
ps.executeUpdate();
con.close();
		session.setAttribute("msg","Profile Updated Successfully");
		 %><jsp:forward page="ResultPage.jsp" /><%


	}
	catch(Exception e)
		{
	out.println(e);
	}
%>
</body>
</html>
