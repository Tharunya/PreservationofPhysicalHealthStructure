<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="javax.servlet.http.*"%>

<%

try{
String usertype=request.getParameter("utype");
String uname=request.getParameter("uname");
//int emp=Integer.parseInt(request.getParameter("empno"));
String password=request.getParameter("pass");
String u="";
String p="";
System.out.println("usertype"+usertype);
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");

	if(usertype.equals("Admin"))
	
	{
	PreparedStatement ps=con.prepareStatement("select *from Administrator");
	ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
			u=rs.getString("UserName");
			p=rs.getString("Password");
			}
				if(uname.equals(u)&& password.equals(p))


			{
			session.setAttribute("usertype",usertype);
			session.setAttribute("uname",uname);
                        //session.setAttribute("empno",emp);
%>		
  <jsp:forward page="AdminWelcome.jsp" />
		<%		}
				else
				{
				out.println("Invalid User");
				}
		
	}
	else if(usertype.equals("Employee"))
	{
	
	PreparedStatement ps1=con.prepareStatement("select *from Employee where EmpUserName=? ");
	ps1.setString(1,uname);
	ResultSet rs1=ps1.executeQuery();
			while(rs1.next())
			{
			u=rs1.getString("EmpUserName");
			p=rs1.getString("Password");
			}
				if(uname.equals(u)&& password.equals(p))
				{
		session.setAttribute("usertype",usertype);
		session.setAttribute("uname",uname);
				%>
				
				<jsp:forward page="EmployeeWelcome.jsp" />
				
				<% 
				}
				else
				{
				out.println("Invalid User");
				}
	
	}
	
	else if(usertype.equals("Doctor"))
	{
	
	PreparedStatement ps=con.prepareStatement("select *from Doctor where UserName=?");
	ps.setString(1,uname);
	ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
			u=rs.getString("UserName");
			p=rs.getString("Password");
			}
				if(uname.equals(u)&& password.equals(p))
				{
				
		session.setAttribute("usertype",usertype);
		session.setAttribute("uname",uname);
				%>
				
				<jsp:forward page="DocWelcome.jsp" />
				
				<%
				}
				else
				{
				out.println("Invalid User");
				}
	
	}
	
	else{
	%><jsp:forward page="index.jsp"/><%}
	
	con.close();
}
	
	
	
	catch(Exception e)
		{
            e.printStackTrace();
		out.println(e);
		}
	
%>
