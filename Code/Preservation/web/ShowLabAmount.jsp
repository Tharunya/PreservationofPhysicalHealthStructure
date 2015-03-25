<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>    

<%
try{
		String responseText=new String("");        	
		int regno=Integer.parseInt(request.getParameter("qparam"));		
		//int regno=81031001;		
		double amount0=0,amount1=0;
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:odbc:HCS");		
		Statement st=con.createStatement();
		
		ResultSet rs0=st.executeQuery("SELECT * FROM Patient_LabDetails WHERE RegNo="+regno);				
		while(rs0.next())
		{
			amount0+=rs0.getDouble("Amount");
		}
		
		
		// for lab paid
		
		ResultSet rs1=st.executeQuery("SELECT * FROM Patient_Bill WHERE RegNo="+regno+" AND BillType='2'");
		while(rs1.next())
		{	
			amount1+=rs1.getDouble("PaidAmount");				
		}	
		
	   	
		
		
		
		out.println(+amount0+","+amount1+","+(amount0-amount1)+",");
  	    con.close();        
 } 
 catch(Exception e)
	{
		out.println("Error "+e.getMessage());
		
	}
	
%>

