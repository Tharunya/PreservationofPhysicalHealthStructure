<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<%
int Schid=Integer.parseInt(request.getParameter("ScheduleId"));
int DocId=Integer.parseInt(request.getParameter("DoctorId"));
String Date=request.getParameter("Date");
String Time=request.getParameter("Time");
String SStatus=request.getParameter("Status");

	try{	
	
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	
PreparedStatement ps=con.prepareStatement("insert into Schedule values (?,?,?,?,?)");
ps.setInt(1,Schid);
ps.setInt(2,DocId);
ps.setString(3,Date);
ps.setString(4,Time);
ps.setString(5,SStatus);

ps.executeUpdate();
con.close();
		session.setAttribute("msg","Schedule Updated Successfully");
		 %><jsp:forward page="ResultPage.jsp" /><%

	}
	catch(Exception e)
		{
	out.println(e);
	}






%>
</body>
</html>
