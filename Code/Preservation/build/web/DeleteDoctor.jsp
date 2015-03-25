x<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
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


int docid=Integer.parseInt(request.getParameter("docid"));
String UserName=request.getParameter("UserName");
String PassWord=request.getParameter("PassWord");
String conpass=request.getParameter("conpass");
String Duname="";
String Dpass="";
int count=0;


	try{
	
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	
	PreparedStatement ps2=con.prepareStatement("select *from Doctor where DocId=? and UserName=? ");
	ps2.setInt(1,docid);
	ps2.setString(2,UserName);

	ResultSet rs=ps2.executeQuery();
	while(rs.next())
	{
	count++;
	Duname=rs.getString("UserName");
	Dpass=rs.getString("Password");
	}
	if(count==0)
	{
session.setAttribute("msg","Doctor does not exist With Such Information Please Check And Try Again");
		 %><jsp:forward page="ResultPage.jsp" /><%

	//out.println("Employee does not exist");
	}
	if(Duname.equals(UserName)&& Dpass.equals(PassWord))
	{
	if(count!=0)
	{
PreparedStatement ps=con.prepareStatement("delete *from Doctor where DocId=? and UserName=?");
ps.setInt(1,docid);
ps.setString(2,UserName);
ps.executeUpdate();

//out.println(EmpUserName);
PreparedStatement ps1=con.prepareStatement("insert into Deleteuser values(?,?,?,?,?)");
ps1.setString(1,UserName);
ps1.setString(2,PassWord);
ps1.setDate(3,dod);
ps1.setInt(4,docid);
ps1.setString(5,"Doctor");
ps1.executeUpdate();
con.close();
		session.setAttribute("msg","Doctor Deleted Successfully");
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
				
	out.println(e);
	}






%>
</body>
</html>
