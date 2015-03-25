<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Untitled Document</title>
</head>

<body>

<div align="right">
  <%


try
{

	java.util.Date d=new java.util.Date();
int cd=d.getDate();
int cm=d.getMonth()+1;     //month value starts from 0  
int cy=d.getYear()+1900;   //year value is minused from 1900
Date dot=Date.valueOf(cy+"-"+cm+"-"+cd);
int chr=d.getHours();
int cmin=d.getMinutes();
int csec=d.getSeconds();
Time tot=Time.valueOf(chr+":"+cmin+":"+csec);

	//storing the values of from and to
String fromwardtype="";
String fromwardno;
String fromBedno;
String desiese="";
int payamt=Integer.parseInt(request.getParameter("PAmt"));;

String towardtype=request.getParameter("Tward");
String towardno=request.getParameter("WardNo");
String toBedno=request.getParameter("BedNo");
int RegNo=Integer.parseInt(request.getParameter("RegNo"));



	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	
	PreparedStatement ps=con.prepareStatement("select * from Patient_Admit where RegNo=RegNo");
	ResultSet rs=ps.executeQuery();
	
	while(rs.next())
		{
fromwardtype=rs.getString("WardType");	
desiese=rs.getString("DieseaseName");

								if(fromwardtype.equals("1"))
									{
												//transfer of patient from icu to general 
												fromwardno=rs.getString("WardNo");
												fromBedno=rs.getString("IBedNo");
										
										 
												// updating admit table with general information
										
												//updating the ICUBeds for making the bed free
												PreparedStatement ps2=con.prepareStatement("update ICUBeds set Filled=0 where IBedNo=? and WardNo=?");
												ps2.setString(1,fromBedno);
												ps2.setString(2,fromwardno);
												ps2.executeUpdate();	
												
										
												//updating generalbeds tabel for allocating the bed
												PreparedStatement ps22=con.prepareStatement("update GeneralBeds set Filled=1 where GBedNo=? and WardNo=?");
												ps22.setString(1,toBedno);
												ps22.setString(2,towardno);
												ps22.executeUpdate();	
												out.println("Patient transferred from icu to general ");
							
									
									}

							else
							{
					
					//Transfer of patient from Generalward to ICU ward
					
								//gettin the General details
								fromwardno=rs.getString("WardNo");
								fromBedno=rs.getString("GBedNo");
					
			
								
					
					//updating the GeneralBeds tabel for making the bed free
										PreparedStatement ps4=con.prepareStatement("update GeneralBeds set Filled=0 where GBedNo=? and WardNo=?");
										ps4.setString(1,fromBedno);
										ps4.setString(2,fromwardno);
											ps4.executeUpdate();
					
					
					//updating icubeds tabel for allocating the bed
										PreparedStatement ps44=con.prepareStatement("update ICUBeds set Filled=1 where IBedNo=? and WardNo=?");
										ps44.setString(1,toBedno);
										ps44.setString(2,towardno);
										ps44.executeUpdate();	
					out.println("Patient transferred from  general to icu ");
					
					
					
								}
		
	
	
		}	





						if(fromwardtype.equals("1"))
							{
					PreparedStatement ps1=con.prepareStatement("insert into Patient_Admit values (?,?,?,?,?,?,?,?,?)");
							ps1.setInt(1,RegNo);
							ps1.setString(2,desiese);	
							ps1.setString(3,towardtype);
							ps1.setString(4,towardno);
							ps1.setString(5,"NA");
							ps1.setString(6,toBedno);
							ps1.setInt(7,payamt);
							ps1.setDate(8,dot);
							ps1.setTime(9,tot);
							ps1.executeUpdate();
							}
						else
							{
							PreparedStatement ps11=con.prepareStatement("insert into Patient_Admit values (?,?,?,?,?,?,?,?,?)");
							ps11.setInt(1,RegNo);
							ps11.setString(2,desiese);	
							ps11.setString(3,towardtype);
							ps11.setString(4,towardno);
							ps11.setString(5,toBedno);
							ps11.setString(6,"NA");
							ps11.setInt(7,payamt);
							ps11.setDate(8,dot);
							ps11.setTime(9,tot);
							ps11.executeUpdate();
				
				
				
							}
		
		con.close();
	 		session.setAttribute("msg","Patient Transferred Successfully");
		 %><jsp:forward page="ResultPage.jsp" /><%

	}
	catch(Exception e)	
		{
		out.println(e); 
		}

%>
  </div>
</body>
</html>
