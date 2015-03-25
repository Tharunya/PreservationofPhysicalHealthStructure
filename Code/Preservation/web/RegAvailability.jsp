<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>The preservation of physical health structure</title>
</head>

<body>
<%
		int regno=Integer.parseInt(request.getParameter("qparam"));		
	int a=0;
try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
		PreparedStatement ps=con.prepareStatement("select RegNO from Patient_Registration where RegNo=?");
		ps.setInt(1,regno);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
			{
			a=rs.getInt("RegNO");
			}
			if(a==regno)
			{
			
			out.println("RegNo already exists");
			}
			else
			{
			out.println("Registration Num available");
			}
			//out.println(a);
			//out.println("inserted");
		}
		
	
catch(Exception e)
		{
	out.println(e);
		}
%>

</body>
</html>
