<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>       
<%
try{
		String responseText=new String("");        	
		int regno=Integer.parseInt(request.getParameter("qparam"));		
		//int regno=81210001;
		double pamount=0,pamt=0,actamount=0,paidamt2=0,actamt3=0,paidamt3=0,paidamt4=0,actamt5=0,paidamt5=0;				
		double iamount=0,gamount=0,icount=0,gcount=0,regfee=0,actregfee=0,labreportamt=0,surreportamt=0;
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
			iamount=rs00.getDouble("BedCharges");		
		}		

		
		ResultSet rs01=st.executeQuery("SELECT * FROM WardBed_Charges WHERE WardType='"+2+"'");
		while(rs01.next())
		{		
			gamount=rs01.getDouble("BedCharges");
		}	
		
			
		  ResultSet rs03=st.executeQuery("SELECT * FROM Patient_Admit WHERE RegNo="+regno);
	        while(rs03.next())
	        {
	        	std=rs03.getDate("DOA");
	        	stdate=std.getDate();
	        	stt=rs03.getTime("TOA");
	        	sthrs=stt.getHours();   
	        	
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
		
		
		double pamount1=0,pamt1=0;
	   	ResultSet rs031=st.executeQuery("SELECT * FROM Patient_Admit WHERE RegNo="+regno);
	   	while(rs031.next())
		{	
			pamount1+=rs031.getDouble("PayingAmount");				
		}
	   	
		
		ResultSet rs04=st.executeQuery("SELECT * FROM Patient_Bill WHERE RegNo="+regno+" AND BillType='1'");
		while(rs04.next())
		{	
			pamt1+=rs04.getDouble("PaidAmount");		
		}		
	   	pamount1+=pamt1;
	   	
	   	
		
	   	ResultSet rs1=st.executeQuery("SELECT * FROM Patient_Bill WHERE RegNo="+regno+" AND BillType='2'");
		while(rs1.next())
		{	
			//actamt2=rs1.getInt("ActualAmount");
			paidamt2+=rs1.getDouble("PaidAmount");
		}	
		
		ResultSet rs11=st.executeQuery("SELECT * FROM Patient_LabDetails WHERE RegNo="+regno);
		while(rs11.next())
		{
			labreportamt+=rs11.getDouble("Amount");
		}
		
		
		ResultSet rs2=st.executeQuery("SELECT * FROM Patient_Bill WHERE RegNo="+regno+" AND BillType='3'");
		while(rs2.next())
		{	
			actamt3+=rs2.getDouble("ActualAmount");
			paidamt3+=rs2.getDouble("PaidAmount");
		}	
		
		
		ResultSet rs3=st.executeQuery("SELECT * FROM Patient_Bill WHERE RegNo="+regno+" AND BillType='4'");
		while(rs3.next())
		{	
			paidamt4+=rs3.getDouble("PaidAmount");
		}
		
		
		ResultSet rs31=st.executeQuery("SELECT * FROM Patient_SurgeryDetails WHERE RegNo="+regno);
		while(rs31.next())
		{	
			surreportamt+=rs31.getDouble("Amount");
		}
		
		ResultSet rs4=st.executeQuery("SELECT * FROM Patient_Bill WHERE RegNo="+regno+" AND BillType='5'");
		while(rs4.next())
		{	
			actamt5+=rs4.getDouble("ActualAmount");
			paidamt5+=rs4.getDouble("PaidAmount");
		}	
		
		
		
/*if(actregfee==regfee)
			responseText+="NoDue";
		else
			responseText+=(actregfee-regfee);
			
			
			responseText+=",";
*/
		
        if(daysamount==pamount1)
			responseText+="NoDue";
		else
			responseText+=(daysamount-pamount1);
			
			responseText+=",";
		
		if(labreportamt==paidamt2)
			responseText+="NoDue";
		else
			responseText+=(labreportamt-paidamt2);
	
        responseText+=",";
		
		if(actamt3==paidamt3)
			responseText+="NoDue";
		else
			responseText+=(actamt3-paidamt3);			
			responseText+=",";
		
		if(surreportamt==paidamt4)
			responseText+="NoDue";
		else
			responseText+=(surreportamt-paidamt4);
			responseText+=",";

		
		if(actamt5==paidamt5)
			responseText+="NoDue";
		else
			responseText+=(actamt5-paidamt5);	

			responseText+=",";

		
		out.println(responseText);
  	    con.close();        
 } 
 catch(Exception e)
	{
		out.println("Error "+e.getMessage());
		
	}
	
%>
