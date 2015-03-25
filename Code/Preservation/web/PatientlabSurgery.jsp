<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.Enumeration"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>The preservation of physical health structure</title>
</head>

<body>

<%

Connection con=null;
PreparedStatement ps=null;
PreparedStatement ps1=null;
PreparedStatement ps2=null;
PreparedStatement ps3=null;
try{


	java.util.Date d=new java.util.Date();
int cd=d.getDate();
int cm=d.getMonth()+1;     //month value starts from 0  
int cy=d.getYear()+1900;   //year value is minused from 1900
Date dor=Date.valueOf(cy+"-"+cm+"-"+cd);
int chr=d.getHours();
int cmin=d.getMinutes();
int csec=d.getSeconds();
Time tor=Time.valueOf(chr+":"+cmin+":"+csec);


int regno=Integer.parseInt(request.getParameter("regno"));

String pname="";
int amount=0;

ResultSet rs=null;
ResultSet rs1=null;


	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con=DriverManager.getConnection("jdbc:odbc:HCS");

Enumeration e=request.getParameterNames();
while(e.hasMoreElements())
{

	pname=""+e.nextElement();
	
	if(pname.equals("regno"))
	{ }
	else
	{
	//out.println(pname);
	//out.println("hhhhh");
	ps=con.prepareStatement("select * from Lab_Charges where TName=?");
	    ps.setString(1,pname);
		rs=ps.executeQuery();
		//out.println("hssshhhh");
				if(rs.next())
				{	
				//out.println("kkkkkkkkkkkkkkk"+rs.getString("TName"));  
				//out.println("helloooo");
				String test_name=rs.getString("TName"); 
				//out.println("***********"+pname+"(((<br>");
				//out.println("pname"+pname);
					if(pname.equals(test_name))
							{
									
									//out.println("jjj");
									//out.println("<h3>"+ff+"<h3>");
							   amount=rs.getInt("Amount");
							//   out.println(amount);
							   ps1=con.prepareStatement("insert into Patient_LabDetails values(?,?,?,?,?)");
							   ps1.setInt(1,regno);
							   ps1.setString(2,pname);
							   ps1.setInt(3,amount);
							   ps1.setDate(4,dor);
							   ps1.setTime(5,tor);
							   ps1.executeUpdate(); 
							}
				}

	ps2=con.prepareStatement("select * from Surgery_Charges where Name='"+pname+"'");
	    rs1=ps2.executeQuery();
	    if(rs1.next())
	    {	    	
		    if(pname.equals( rs1.getString("Name") ))
		    		{
	    	           amount=rs1.getInt("Amount");
		               ps3=con.prepareStatement("insert into Patient_SurgeryDetails values(?,?,?,?,?)");
					   ps3.setInt(1,regno);
					   ps3.setString(2,pname);
					   ps3.setInt(3,amount);
					    ps3.setDate(4,dor);
						 ps3.setTime(5,tor);
					   ps3.executeUpdate(); 		               
		    		}
	    }
	}
}

con.close();
		session.setAttribute("msg","Patient Lab&Surgery Details Are Updated Successfully");
		 %><jsp:forward page="ResultPage.jsp" /><%

}
catch(Exception e)
{out.println(e);}



%>
</body>
</html>
