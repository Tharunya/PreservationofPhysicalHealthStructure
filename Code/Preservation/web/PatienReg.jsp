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
java.util.Date d=new java.util.Date();
int cd=d.getDate();
int cm=d.getMonth()+1;     //month value starts from 0  
int cy=d.getYear()+1900;   //year value is minused from 1900
Date dor=Date.valueOf(cy+"-"+cm+"-"+cd);
int chr=d.getHours();
int cmin=d.getMinutes();
int csec=d.getSeconds();
Time tor=Time.valueOf(chr+":"+cmin+":"+csec);

int RegNo=Integer.parseInt(request.getParameter("RegNo"));
String CaseNo=request.getParameter("CaseNo");
String Fname=request.getParameter("Fname");
String Lname=request.getParameter("Lname");
String Age=request.getParameter("Age");
String Gender=request.getParameter("Gender");
String GuardianName=request.getParameter("GuardianName");
int RegFee=Integer.parseInt(request.getParameter("RegFee"));
String BloodGroup=request.getParameter("BloodGroup");
//String DOR="444";
//String TOR="87878";
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	
		PreparedStatement ps=con.prepareStatement("insert into Patient_Registration values (?,?,?,?,?,?,?,?,?,?,?)");
	ps.setInt(1,RegNo);
	ps.setString(2,CaseNo);
	ps.setString(3,Fname);
	ps.setString(4,Lname);
	ps.setString(5,Age);
	ps.setString(6,Gender);
	ps.setString(7,GuardianName);
	ps.setInt(8,RegFee);
	ps.setString(9,BloodGroup);
	ps.setDate(10,dor);
	ps.setTime(11,tor);
	ps.executeUpdate();
	con.close();
		session.setAttribute("msg","Patient Registered Successfully");
		 %><jsp:forward page="ResultPage.jsp" /><%
	}
	
	catch(Exception e)
		{
	out.println(e);
	
	}







%>
</body>
</html>
