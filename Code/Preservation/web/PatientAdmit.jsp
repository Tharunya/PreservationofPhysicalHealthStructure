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
Date doa=Date.valueOf(cy+"-"+cm+"-"+cd);
int chr=d.getHours();
int cmin=d.getMinutes();
int csec=d.getSeconds();
Time toa=Time.valueOf(chr+":"+cmin+":"+csec);

	
	
String wardtype=request.getParameter("Wtype");
String wardno=request.getParameter("Wno");
String bedno=request.getParameter("BedNo");
String Pamt=request.getParameter("Pamt");
int regno=Integer.parseInt(request.getParameter("RegNo"));
String desiese=request.getParameter("Dname");
int payingamt=Integer.parseInt(request.getParameter("Pamt"));
//String DOA=cd+"-"+cm+"-"+cy;
//String TOA=chr+"."+cmin;
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	PreparedStatement ps=con.prepareStatement("insert into Patient_Admit values (?,?,?,?,?,?,?,?,?)");
	ps.setInt(1,regno);
	ps.setString(2,desiese);
	
	ps.setString(3,wardtype);
	if(wardtype.equals("1"))
		{
		//patient admits in to icu ward
	ps.setString(4,wardno);
	ps.setString(5,bedno);
	ps.setString(6,"NA");
	//allocating the bed at icu
	PreparedStatement ps1=con.prepareStatement("update ICUBeds set Filled=1 where WardNo='"+wardno+"' and IBedNo='"+bedno+"'");
	ps1.executeUpdate();        
		}
		else
		{
			//patient admits in to genralward
	ps.setString(4,wardno);
	ps.setString(5,"NA");
	ps.setString(6,bedno);
	//allocating the general bed
		PreparedStatement ps2=con.prepareStatement("update GeneralBeds set Filled=1 where WardNo=? and GBedNo=?");
		ps2.setString(1,wardno);
		ps2.setString(2,bedno);
		ps2.executeUpdate();   
		}
	
	ps.setInt(7,payingamt);
	ps.setDate(8,doa);
	ps.setTime(9,toa);
	ps.executeUpdate();



	con.close();
		session.setAttribute("msg","Patient Admitted Successfully");
		 %><jsp:forward page="ResultPage.jsp" /><%
	}
	catch(Exception e)
		{
		out.println(e);
	}









%>
</body>
</html>
