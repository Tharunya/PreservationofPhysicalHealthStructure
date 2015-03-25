<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>The preservation of physical health structure</title>
</head>

<body>
<%

String uname=request.getParameter("uname");
String cpass=request.getParameter("CurrentPassword");
String newpass=request.getParameter("NewPassword");
String conpass=request.getParameter("ConfirmPassword");
String password="";
out.println(uname);
out.println(cpass);
out.println(newpass);
out.println(conpass);
out.println(" ");
	try{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	
PreparedStatement ps=con.prepareStatement("select Password from Doctor where UserName=?");
ps.setString(1,uname);

ResultSet rs=ps.executeQuery();

while(rs.next())
{
password=rs.getString("Password");
}

if(newpass.equals(conpass))
{
		if(cpass.equals(password))
		{
		PreparedStatement ps1=con.prepareStatement("Update Doctor set Password=? where UserName=?");
		ps1.setString(1,newpass);
		ps1.setString(2,uname);
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
	out.println(e);
	}


%>
</body>
</html>
