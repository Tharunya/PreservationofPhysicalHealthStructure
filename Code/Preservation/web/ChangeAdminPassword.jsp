<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% HttpSession my=request.getSession();%>
<%
if(my.isNew()) 
{
	%>	
	   <jsp:forward page="index.html" />
	<%
}	
else
{	
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<%

String adminname=request.getParameter("uname");
String cpass=request.getParameter("CurrentPassword");
String newpass=request.getParameter("NewPassword");
String confirmpass=request.getParameter("ConfirmPassword");
String password="";

	try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	
PreparedStatement ps=con.prepareStatement("select Password from Administrator where UserName=?");
ps.setString(1,adminname);

ResultSet rs=ps.executeQuery();

while(rs.next())
{
password=rs.getString("Password");
}

if(newpass.equals(confirmpass))
{
		if(cpass.equals(password))
		{
		PreparedStatement ps1=con.prepareStatement("Update Administrator set Password=? where UserName=?");
		ps1.setString(1,newpass);
		ps1.setString(2,adminname);
		ps1.executeUpdate();
		session.setAttribute("msg","Password has been Changed Successfully");
		 %><jsp:forward page="ResultPage.jsp" /><%
		
		
		}
		else
		{
		session.setAttribute("msg","Entered Invalid Current Password Please Check And Try Again");
		 %><jsp:forward page="ResultPage.jsp" /><%
		
		}
}
else
{
		session.setAttribute("msg","New Password And ConfirmPassword Is Not Matched");
		 %><jsp:forward page="ResultPage.jsp" /><%
}
}

	catch(Exception e)
		{
				session.setAttribute("msg","Error in Page try again");
				out.println(e);
		 %><jsp:forward page="ResultPage.jsp" /><%

	out.println(e);
	}




%>

</body>
</html>
<%

}
%>