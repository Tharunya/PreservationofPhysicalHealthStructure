<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<%
    int sid=Integer.parseInt(request.getParameter("qparam"));
	int a=0;

	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
		PreparedStatement ps=con.prepareStatement("select Schid from Schedule Where Schid=?");
		ps.setInt(1,sid);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
			{
			a=rs.getInt("Schid");
			}
			if(a==sid)
			{
			
			out.println("Schid not available");
			}
			else
			{
			out.println("Schid  available");
			}
			
		}
		
	
catch(Exception e)
		{
	out.println(e);
		}
%>

</body>
</html>
