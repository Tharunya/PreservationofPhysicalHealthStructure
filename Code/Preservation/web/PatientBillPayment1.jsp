<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link href="scripts/sheet.css" type="text/css" rel="stylesheet"/>  
</head>
<body>
<%
int regno=Integer.parseInt(request.getParameter("RegNo"));
String billtype=request.getParameter("Billtype");
double totamt=Double.parseDouble(request.getParameter("Actualamt"));
double amount=Double.parseDouble(request.getParameter("Payingamt"));


	java.util.Date d=new java.util.Date();
int cd=d.getDate();
int cm=d.getMonth()+1;     //month value starts from 0  
int cy=d.getYear()+1900;   //year value is minused from 1900
Date dop=Date.valueOf(cy+"-"+cm+"-"+cd);
int chr=d.getHours();
int cmin=d.getMinutes();
int csec=d.getSeconds();
Time top=Time.valueOf(chr+":"+cmin+":"+csec);
Connection conn=null;
Statement st=null;
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver").newInstance();
	conn=DriverManager.getConnection("jdbc:odbc:HCS");
	st=conn.createStatement();
	st.executeUpdate("INSERT INTO Patient_Bill VALUES("+regno+",'"+billtype+"',"+totamt+","+amount+",'"+dop+"','"+top+"');");
   conn.close();
   		session.setAttribute("msg","Selected Bills Have Paid Successfully");
		 %><jsp:forward page="ResultPage.jsp" /><%

}
catch(Exception e)
{
out.println(e);
}


%>


</body>
</html>