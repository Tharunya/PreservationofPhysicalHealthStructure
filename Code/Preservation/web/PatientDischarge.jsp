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
java.util.Date d=new java.util.Date();
int cd=d.getDate();
int cm=d.getMonth()+1;     //month value starts from 0  
int cy=d.getYear()+1900;   //year value is minused from 1900
Date dod=Date.valueOf(cy+"-"+cm+"-"+cd);
int chr=d.getHours();
int cmin=d.getMinutes();
int csec=d.getSeconds();
Time tod=Time.valueOf(chr+":"+cmin+":"+csec);
String wardno="";
String Bedno="";
String wardtype="";
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver").newInstance();
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	PreparedStatement ps=con.prepareStatement("INSERT INTO Patient_DischargeDetails VALUES(?,?,?)");
	ps.setInt(1,regno);
	ps.setDate(2,dod);
	ps.setTime(3,tod);
	ps.executeUpdate();
	PreparedStatement ps1=con.prepareStatement("select * from Patient_Admit where RegNo=regno");
	ResultSet rs=ps1.executeQuery();
	while(rs.next())
		{
wardtype=rs.getString("WardType");	
									if(wardtype.equals("1"))
									{
												
												wardno=rs.getString("WardNo");
												Bedno=rs.getString("IBedNo");
										
																					
												//updating the ICUBeds for making the bed free
												PreparedStatement ps2=con.prepareStatement("update ICUBeds set Filled=0 where IBedNo=? and WardNo=?");
												ps2.setString(1,Bedno);
												ps2.setString(2,wardno);
												ps2.executeUpdate();	
												
										
									}
									else
									{
									
									//gettin the General details
								wardno=rs.getString("WardNo");
								Bedno=rs.getString("GBedNo");
								//updating the GeneralBeds tabel for making the bed free
										
										PreparedStatement ps4=con.prepareStatement("update GeneralBeds set Filled=0 where GBedNo=? and WardNo=?");
										ps4.setString(1,Bedno);
										ps4.setString(2,wardno);
										ps4.executeUpdate();
				
									}
		}
	
		session.setAttribute("msg"," Patient Has Discharged Successfully");
		 %><jsp:forward page="ResultPage.jsp" /><%

}
catch(Exception e)
{
	out.println(e);
}

%>
