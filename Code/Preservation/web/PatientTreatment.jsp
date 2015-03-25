<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<%
int Pid=Integer.parseInt(request.getParameter("RegistrationNo"));
int Tid=Integer.parseInt(request.getParameter("TreatmentId"));
int Docid=Integer.parseInt(request.getParameter("DoctorId"));
String Diesease=request.getParameter("Diesease");
String Medicine=request.getParameter("Medicine");
String FeedBack=request.getParameter("FeedBack");
String Status=request.getParameter("Status");
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	
PreparedStatement ps=con.prepareStatement("insert into Treatment values (?,?,?,?,?,?,?)");
ps.setInt(1,Tid);
ps.setInt(2,Pid);
ps.setInt(3,Docid);
ps.setString(4,Diesease);
ps.setString(5,Medicine);
ps.setString(6,FeedBack);
ps.setString(7,Status);
ps.executeUpdate();
con.close();
		session.setAttribute("msg","Patient Treatment Successfull");
		 %><jsp:forward page="ResultPage.jsp" /><%
	}
	catch(Exception e)
		{
	out.println(e);
	}
%>
</body>
</html>
