<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<%
java.util.Date d=new java.util.Date();
int cd=d.getDate();
int cm=d.getMonth()+1;     //month value starts from 0  
int cy=d.getYear()+1900;   //year value is minused from 1900
Date dod=Date.valueOf(cy+"-"+cm+"-"+cd);
int EmpNo=Integer.parseInt(request.getParameter("EmpNo"));
String EmpUserName=request.getParameter("UserName");
String PassWord=request.getParameter("PassWord");
String conpass=request.getParameter("conpass");
String Duname="";
String Dpass="";


int count=0;
	try{
	
	
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	PreparedStatement ps2=con.prepareStatement("select *from Employee where Empno=? and EmpUserName=?");
	ps2.setInt(1,EmpNo);
	ps2.setString(2,EmpUserName);

	ResultSet rs=ps2.executeQuery();
	while(rs.next())
	{
	count++;
	Duname=rs.getString("EmpUserName");
	Dpass=rs.getString("Password");
	}
	
	
	if(count==0)
	{
session.setAttribute("msg","Employee does not exist With Such Information Please Check And Try Again");
		 %><jsp:forward page="ResultPage.jsp" /><%

	//out.println("Employee does not exist");
	}

	if(Duname.equals(EmpUserName)&& Dpass.equals(PassWord))
		{
	
			if(count!=0)
			{
			PreparedStatement ps=con.prepareStatement("delete *from Employee where Empno=? and EmpUserName=?");
			ps.setInt(1,EmpNo);
			ps.setString(2,EmpUserName);
			ps.executeUpdate();
			
			PreparedStatement ps1=con.prepareStatement("insert into Deleteuser values(?,?,?,?,?)");
			ps1.setString(1,EmpUserName);
			ps1.setString(2,PassWord);
			ps1.setDate(3,dod);
			ps1.setInt(4,EmpNo);
			ps1.setString(5,"Employee");
			ps1.executeUpdate();
			con.close();

			session.setAttribute("msg","Employee Deleted Successfully");
					 %><jsp:forward page="ResultPage.jsp" /><%
			
			}
	}

	else
	{
		session.setAttribute("msg","Enter Valid UserName And PassWord");
		 %><jsp:forward page="ResultPage.jsp" /><%

	}
}
	catch(Exception e)
		{
				session.setAttribute("msg","Error on page please try again");
		 %><%

	out.println(e);
	}






%>
</body>
</html>
