<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>    
<%
try{
		String responseText=new String("");        	
		int regno=Integer.parseInt(request.getParameter("qparam"));		
		//int regno=81219001;		
		double iamount=0,gamount=0;
		int icount=0,gcount=0;
		double amount=0,amt=0; 
		
		String wtype="";		
		Date std=Date.valueOf("0000-00-00");   //,gfd=Date.valueOf("0/0/0000"); // icu from date & gen from date
		Time stt=Time.valueOf("00:00:00");
		int fdate=0,fhrs=0,days=0,hrs=0,i=1,thrs=0,tdate=0,stdate=0,sthrs=0;
		double tamount=0,money=0,daysamount=0;
		java.util.Date td=new java.util.Date();
		
		thrs=td.getHours();
		tdate=td.getDate();
		
		
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver").newInstance();
		Connection con = DriverManager.getConnection("jdbc:odbc:HCS");		
		Statement st=con.createStatement();
		
		
		ResultSet rs00=st.executeQuery("SELECT * FROM WardBed_Charges WHERE WardType='"+1+"'");				
		while(rs00.next())
		{
			//out.println("ok");
			iamount=rs00.getDouble("BedCharges");		
		}
		//out.println("iamt="+iamount);

		
		ResultSet rs01=st.executeQuery("SELECT * FROM WardBed_Charges WHERE WardType='"+2+"'");
		while(rs01.next())
		{
			//out.println("ok");			
			gamount=rs01.getDouble("BedCharges");
		}
		//out.println("<br>gamt="+gamount);
		
		
		ResultSet rs02=st.executeQuery("SELECT * FROM Patient_Admit WHERE RegNo="+regno);
		while(rs02.next())
		{	
			wtype=rs02.getString("WardType");
			if(wtype.equals("1"))
			{
				icount++;				
			}
			if(wtype.equals("2"))
			{
				gcount++;
			}
			//amount+=rs2.getInt("PayingAmount");		
		}	
		
		
			
        ResultSet rs03=st.executeQuery("SELECT * FROM Patient_Admit WHERE RegNo="+regno);
        while(rs03.next())
        {
        	std=rs03.getDate("DOA");
			
        	stdate=std.getDate();
        	stt=rs03.getTime("TOA");
        	sthrs=stt.getHours();   
        	
			//out.println(" "+stdate+" " +sthrs+" ");
			
        	days=(fdate-stdate)*-1;
        	hrs=(fhrs-sthrs)*-1;
        	wtype=rs03.getString("WardType");
        	if(wtype.equals("1"))        	
        		tamount=iamount;      		        	
        	if(wtype.equals("2"))
        		tamount=gamount;
        	
        	if(i>=2)
        	{
        		if(days==0 && hrs>=1)
        			days++;
        		else
        		{        	
        		if(days==0)
        			days++;
        		if(hrs>=1)
        			days++;
        		}
        		daysamount+=(days*money);
        		
        	}
        	i++;
        	fdate=stdate;
        	fhrs=sthrs;
        	money=tamount;
        }
		days=(stdate-tdate)*-1;
		hrs=(sthrs-thrs)*-1;
		if(days==0 && hrs>=1)
		{
			days++;
			
		}
		else
		{      
		if(hrs>=1 )
			days++;
		if(days==0)
			days++;  
		}
		
		
		
		daysamount+=(days*tamount); 	
        //out.println(" "+daysamount);
		
        
		//out.println("<br> icoun="+icount);
		//out.println("<br> gcoun="+gcount);
		//iamount=iamount*icount;
		//gamount=gamount*gcount;
	   	//iamount+=gamount;	   	
	   	
	   	
	   	// for paid amount
	   	
	   	ResultSet rs10=st.executeQuery("SELECT * FROM Patient_Admit WHERE RegNo="+regno);
		while(rs10.next())
		{	
			amount+=rs10.getDouble("PayingAmount");		
		}
		
		ResultSet rs11=st.executeQuery("SELECT * FROM Patient_Bill WHERE RegNo="+regno+" AND BillType='1'");
		while(rs11.next())
		{	
			amt+=rs11.getDouble("PaidAmount");		
		}	
		
	   	amount+=amt;
	   	//out.println(" "+amount);
	   	/*responseText+="<table  border='0' cellspacing='1' width='50%' height='18%' align='center' valign='center' bgcolor='#CCE5F4'>";
	   	responseText+="<tr> <td align='left' bgcolor='#FFFFFF' width='15%'> &nbsp; Actual Amount </td> ";
		responseText+="<td align='left' bgcolor='#FFFFFF' width='35%'> &nbsp; <input type='text' name='totamt' value='"+daysamount+"' class='boxborder' readonly='readonly' tabindex='3'> </td> </tr>";
	   	
	   	responseText+="<tr> <td align='left' bgcolor='#FFFFFF' width='15%'> &nbsp; Paid Amount </td>";
		responseText+="<td align='left' bgcolor='#FFFFFF' width='35%'> &nbsp; <input type='text' name='paidamt' value='"+amount+"' class='boxborder' readonly='readonly' tabindex='4'>  </td> </tr>";		

		responseText+="<tr> <td align='left' bgcolor='#FFFFFF' width='15%'> &nbsp; Due Amount </td> ";
		responseText+="<td align='left' bgcolor='#FFFFFF' width='35%'> &nbsp; <input type='text' name='dueamt' value='"+(daysamount-amount)+"' class='boxborder' readonly='readonly' tabindex='5'> </td> </tr> </table>";
*/
//		double c=(daysamount-amount);
		
		//responseText=""+daysamount+","+amount+","+c;
		out.println(+daysamount+","+amount+","+(daysamount-amount)+",");
  	    con.close();        
 } 
 catch(Exception e)
	{
		out.println("Error "+e.getMessage());
		
	}
	
%>
