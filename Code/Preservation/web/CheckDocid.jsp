<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>
<%
		int docid=Integer.parseInt(request.getParameter("qparam"));		
	int a=0;
try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
		PreparedStatement ps=con.prepareStatement("select DocId from Doctor where DocId=?");
		ps.setInt(1,docid);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
			{
			a=rs.getInt("DocId");
			}
			if(a==docid)
			{
			
			out.println("DocId Exists");
			}
			else
			{
			out.println("DocId Does Not Exists");
			}
			
		}
		
	
catch(Exception e)
		{
	out.println(e);
		}
%>

</body>
</html>
