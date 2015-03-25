<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE></TITLE>

<link href="Master.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style3 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 14px;
}
.style4 {font-size: 14px}
.style6 {font-size: 12px; font-family: "Times New Roman", Times, serif; }
-->
</style>
</HEAD>
<BODY bgColor=#e9e9e9 leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">

<%
//int RegNo=2;
int RegNo=Integer.parseInt(request.getParameter("regno"));
		String CaseNo="";
		String PFName="";
		String PLName="";
		String Guardian="";
		String Gender="";
		String Age="";
		int RegistrationFee=0;
		String BloodGroup="";
		String DOR="";
		String TOR="";
		
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection con=DriverManager.getConnection("Jdbc:Odbc:HCS");
			PreparedStatement ps=con.prepareStatement("select * from Patient_Registration where RegNo=?");
			ps.setInt(1,RegNo);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				CaseNo=rs.getString(2);
				PFName=rs.getString(3);
				PLName=rs.getString(4);
				Guardian=rs.getString(5);
				Gender=rs.getString(6);
				Age=rs.getString(7);
				RegistrationFee=rs.getInt(8);
				BloodGroup=rs.getString(9);
				DOR=rs.getString(10);
				TOR=rs.getString(11);
				
				}
		String DieseaseName="";
		String WardType="";
		String WardNo="";
		String IBedNo="";
		String GBedNo="";
		int PayingAmount=0;
		String DOA="";
		String TOA="";
					PreparedStatement ps1=con.prepareStatement("select * from Patient_Admit where RegNo=?");
					ps1.setInt(1,RegNo);
					ResultSet rs1=ps1.executeQuery();
			
				/*
				out.println(DieseaseName);
				out.println(WardType);
				out.println(WardNo);
				out.println(IBedNo);
				out.println(GBedNo);
				out.println(PayingAmount);
				out.println(DOA);
				out.println(TOA);
				*/
				
		int Amount1=0;
		String DOR1="";
		String TOR1="";
		String TName="";
				PreparedStatement ps2=con.prepareStatement("select * from Patient_LabDetails where RegNo=?");
			ps2.setInt(1,RegNo);
			ResultSet rs2=ps2.executeQuery();
			
			
		String SurgeryName="";
		int Amount=0;
		String DOS="";
		String TOS="";
		
				PreparedStatement ps3=con.prepareStatement("select * from Patient_SurgeryDetails where RegNo=?");
				ps3.setInt(1,RegNo);
			ResultSet rs3=ps3.executeQuery();
			while(rs.next())
			{
				SurgeryName=rs3.getString(2);
				Amount=rs3.getInt(3);
				DOS=rs3.getString(4);
				TOS=rs3.getString(5);
				
							
				/*out.println(SurgeryName);
				out.println(Amount);
				out.println(DOS);
				out.println(TOS);*/
				}
		%>		
			



<FORM id=aspnetForm name=aspnetForm 
onsubmit="javascript:return WebForm_OnSubmit();" action=file:///C|/Documents%20and%20Settings/Administrator/Desktop/Registration.aspx 
method=post encType=multipart/form-data>
  <DIV>  </DIV>
  <DIV class=opacity id=MyDIV style="VISIBILITY: hidden"></DIV>
<TABLE id=Table_01 cellSpacing=0 cellPadding=0 width=1000 align=center 
  border=0><TBODY>
  <TR>
    <TD bgColor=#766a63 height=28>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" align=right border=0>
        <TBODY>
        <TR>
          <TD vAlign=center align=right>
            <TABLE valign="middle">
              <TBODY>
              <TR>
                <TD class=WhiteLink vAlign=center align=right><A 
                  class=WhiteLink id=A1 
                  href="">Home</A> 
                  &nbsp;| &nbsp;&nbsp; <A class=WhiteLink id=A3 
                  href="">Site 
                  Map</A> &nbsp;| &nbsp; <A class=WhiteLink id=A7 
                  href="">Contact 
                  Us</A> &nbsp;| &nbsp;Search&nbsp;&nbsp; 
</TD>
              </TR></TBODY></TABLE></TD>
          <TD width=100><INPUT id=txtSearch name=txtSearch></TD>
          <TD align=left><IMG 
            src="Search.gif" width="32" height="22"  
            type="button"></TD>
        </TR></TBODY></TABLE>
     
    </TD></TR></TBODY></TABLE>

                  <TABLE cellSpacing=0 cellPadding=0 width=530 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=boldbigblue vAlign=top align=left>Patient Details </TD>
					  
                    </TR>
                    <TR>
                      <TD vAlign=top align=left height=15></TD></TR>
                    <TR>
                      <TD vAlign=top align=left>
                        <TABLE class=table_formss cellSpacing=0 cellPadding=0 
                        width=900 align=center border=0>
                          <TBODY>
                          <TR bgcolor="#eee9f8">
                            <TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">RegNo</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">Name</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">Guardian</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">Gender</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">Age</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">RegistrationFee</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">BloodGroup</div></TD>
                            <TD width="101" height=22 align=left vAlign=top><div align="center" class="style3">
                              <div align="center">Date</div>
                            </div></TD>
                            <TD width=101 height=22 align=left vAlign=top><div align="center" class="style4">
                              <div align="center">Time</div>
                            </div></TD>
							
							</tr>
                          <TR bgcolor="#F0F0F0">
                            <TD width=101 align=left vAlign=top>
                                    <div align="center" class="style6">				<%out.println(RegNo);%></div></TD>
									<TD width=101 align=left vAlign=top>
                                    <div align="center" class="style6"><%out.println(PFName);%></div></TD><TD align=middle vAlign=top>
									
                                    <div align="center" class="style6"><%out.println(Guardian);%></div></TD>
                            <TD width=101 align=left vAlign=top><div align="center" class="style6"><%out.println(Gender);%>
                                  </div></TD><TD width=101 align=left vAlign=top><div align="center" class="style6"><%out.println(Age);%>
                                  </div></TD><TD width=101 align=left vAlign=top><div align="center" class="style6"><%out.println(RegistrationFee);%>
                                  </div></TD><TD width=101 align=left vAlign=top><div align="center" class="style6"><%out.println(BloodGroup);%>
                                  </div></TD><TD width=101 align=left vAlign=top><div align="center" class="style6"><%out.println(DOR);%>
                                  </div></TD><TD width=101 align=left vAlign=top><div align="center" class="style6"><%out.println(TOR);%>
                                  </div></TD>
							
							
							</tr>
                          <TR>
                            
						  
						  </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV></TD>
                <TD width=33>&nbsp;</TD></TR><TR>
                <TD width=33>&nbsp;</TD>
                <TD height=185>
                  <DIV id=ctl00_ContentPlaceHolder_UpdatePanel1>
                  <DIV align=center><SPAN 
                  id=ctl00_ContentPlaceHolder_LblMsg></SPAN><BR></DIV>
                  <TABLE cellSpacing=0 cellPadding=0 width=530 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=boldbigblue vAlign=top align=left>Transfer Details</TD>
                    </TR>
                    <TR>
                      <TD vAlign=top align=left height=15></TD></TR>
                    <TR>
                      <TD vAlign=top align=left>
                        <TABLE class=table_formss cellSpacing=0 cellPadding=0 
                        width=900 align=center border=0>
                          <TBODY>
                          <TR bgcolor="#eee9f8">
                            <TD width=101 height=22 align=left vAlign=top class="style3"><div align="center"> DieseaseName</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center"> WardType</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center"> WardNo</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center"> IBedNo</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center"> GBedNo</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center"> AmountPaid</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center"> Date</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center"> Time</div></TD>
                           
                            
							</tr>
							
							<%
							while(rs1.next())
			{
				DieseaseName=rs1.getString(2);
				WardType=rs1.getString(3);
				WardNo=rs1.getString(4);
				IBedNo=rs1.getString(5);
				GBedNo=rs1.getString(6);
				PayingAmount=rs1.getInt(7);
				DOA=rs1.getString(8);
				TOA=rs1.getString(9);
				%>
                          <TR bgcolor="#F0F0F0">
                            <TD width=101 align=left vAlign=top><div align="center" class="style6"><%out.println(DieseaseName);%></div></TD>
							<TD align=middle vAlign=top><div align="center" class="style6"> <%out.println(WardType);%></div></TD>
							<TD width=101 align=left vAlign=top><div align="center" class="style6">  <%out.println(WardNo);%></div></TD>
							<TD align=middle vAlign=top><div align="center" class="style6"><%out.println(IBedNo);%> </div></TD>
							<TD width=101 align=left vAlign=top> <div align="center" class="style6"> <%out.println(GBedNo);%> </div></TD>
							<TD align=middle vAlign=top><div align="center" class="style6"> <%out.println(PayingAmount);%></div></TD>
                            <TD width=101 align=left vAlign=top> <div align="center" class="style6"> <%out.println(DOA);%></div></TD>
							<TD width=101 align=left vAlign=top> <div align="center" class="style6"> <%out.println(TOA);%></div></TD>
</tr>
							
							
							<%}%>
							
                          <TR>
                            <TD vAlign=top align=left width=101 height=22></TD>
                            <TD vAlign=top align=left height=22>
                              <DIV 
                              id=ctl00_ContentPlaceHolder_ValidationSummary1 
                              style="DISPLAY: none; COLOR: red"></DIV></TD>
                            
						  
						  </TR></TBODY></TABLE></TD></TR></TBODY></TABLE><TR>
						  
               
			   <!------------------Third table starts here---------------------------------->
			    
				
				<TABLE cellSpacing=0 cellPadding=0 width=530 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=boldbigblue vAlign=top align=left>Lab&amp;Surgery Details </TD>
                    </TR>
                    <TR>
                      <TD vAlign=top align=left height=15></TD></TR>
                    <TR>
                      <TD vAlign=top align=left>
                        <TABLE class=table_formss cellSpacing=0 cellPadding=0 
                        width=800 align=center border=0>
                          <TBODY>
                          <TR bgcolor="#eee9f8">
                            <TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">Name</div></TD>
                           <TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">Name</div></TD>
						   <TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">Date</div></TD>
						    <TD width="101" height=22 align=left vAlign=top><div align="center" class="style3">
                              <div align="center">Time</div>
                            </div></TD>
                            
							</tr>
							
							<!-- Patient lab and surgery details-->
							<% while(rs2.next())
			{
				Amount1=rs2.getInt(3);
				DOR1=rs2.getString(4);
				TOR1=rs2.getString(5);
				TName=rs2.getString(2);
				%>
				
				
                          <TR bgcolor="#F0F0F0">
                            <TD width=101 align=left vAlign=top> <div align="center" class="style6"><%out.println(TName);%> </div></TD>
							 <TD width=101 align=left vAlign=top> <div align="center" class="style6"><%out.println(Amount1);%> </div></TD>
							  <TD width=101 align=left vAlign=top> <div align="center" class="style6"> <%out.println(DOR1);%></div></TD>
							<TD align=middle vAlign=top><div align="center" class="style6"><%out.println(TOR1);%> </div></TD>
                            
							<%}%>
							</tr>
							<% while(rs3.next())
			{
				SurgeryName=rs3.getString(2);
				Amount=rs3.getInt(3);
				DOS=rs3.getString(4);
				TOS=rs3.getString(5);
				%>
							 <TR bgcolor="#F0F0F0">
                            <TD width=101 align=left vAlign=top> <div align="center" class="style6"><%out.println(SurgeryName);%> </div></TD>
							 <TD width=101 align=left vAlign=top> <div align="center" class="style6"><%out.println(Amount);%> </div></TD>
							  <TD width=101 align=left vAlign=top> <div align="center" class="style6"> <%out.println(DOS);%></div></TD>
							<TD align=middle vAlign=top><div align="center" class="style6"><%out.println(TOS);%> </div></TD>
                            
							<%}%>
							</tr>
				
				
                          <TR>
                            <TD vAlign=top align=left width=101 height=22></TD>
							                            <TD vAlign=top align=left width=101 height=22></TD>

                            <TD vAlign=top align=left height=22>
                              <DIV 
                              id=ctl00_ContentPlaceHolder_ValidationSummary1 
                              style="DISPLAY: none; COLOR: red"></DIV></TD>
                            
						  
						  </TR></TBODY></TABLE></TD></TR></TBODY></TABLE><TR>
                <TD width=33></TD></TR></DIV>
                  </TD>
				
                <TD width=33>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
                <TD width=33>&nbsp;</TD></TR></TD>
                <TD width=33>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width=1000 align=center>
        <TBODY>
        <TR>
          <TD>
            <TABLE cellSpacing=0 cellPadding=0 width=1000 align=center 
              border=0><TBODY>
              <TR>
                <TD height=77 align=left vAlign=top>
                  <TABLE cellSpacing=0 cellPadding=0 width=1030 border=0>
                      <TBODY>
                      <TR>
                        <TD bgColor=#aa94dd height=28 class="WhiteLink"><font size="3"><marquee behavior="scroll" direction="left">Hospitality,Service ,Excellence</marquee> </font></TD></TR>
                      <TR>
                        <TD bgColor=#e9e9e9 
                height=49>&nbsp;</TD></TR></TBODY>
                  </TABLE></TD>
                </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>


</FORM>
<%

			con.close();
		}

		catch(Exception e)
		{
			out.println(e);
		}
%>

</BODY></HTML>


