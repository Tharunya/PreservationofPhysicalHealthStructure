<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<BODY bgColor=#e9e9e9 leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<%

String Wtype="";
String Ward="";
double Charges=0.0;
String TName="";
String SName="";
int SAmount=0;
int Amount=0;
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	 
PreparedStatement ps=con.prepareStatement("Select *from WardBed_Charges ");
ResultSet rs=ps.executeQuery();

PreparedStatement ps1=con.prepareStatement("Select *from Lab_Charges ");
ResultSet rs1=ps1.executeQuery();

PreparedStatement ps2=con.prepareStatement("Select *from Surgery_Charges ");
ResultSet rs2=ps2.executeQuery();

%>
<FORM id=aspnetForm name=aspnetForm 
onsubmit="javascript:return WebForm_OnSubmit();" action=file:///C|/Documents%20and%20Settings/Administrator/Desktop/Registration.aspx 
method=post encType=multipart/form-data>
  
                  <TABLE cellSpacing=0 cellPadding=0 width=530 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=boldbigblue vAlign=top align=left>Ward Charges </TD>
					  
                    </TR>
                    <TR>
                      <TD vAlign=top align=left height=15></TD></TR>
                    <TR>
                      <TD vAlign=top align=left>
                        <TABLE class=table_formss cellSpacing=0 cellPadding=0 
                        width=557 align=center border=0>
                          <TBODY>
                          <TR bgcolor="#eee9f8">
                            <TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">WardType</div></TD>
                            <TD width="101" height=22 align=left vAlign=top><div align="center" class="style3">
                              <div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WardName</div>
                            </div></TD>
                            <TD width=101 height=22 align=left vAlign=top><div align="center" class="style4">
                              <div align="center">Charges</div>
                            </div></TD>
							<% while(rs.next())
							{
							 Ward=rs.getString("Ward");
							 Wtype=rs.getString("WardType");
							 Charges=rs.getDouble("BedCharges");
							 %>
							
							
							</tr>
                          <TR bgcolor="#F0F0F0">
                            <TD width=101 align=left vAlign=top>
                                    <div align="center" class="style6">
                                      <%out.println(Wtype);%>  
                                      </div></TD><TD align=middle vAlign=top>
                                   
                                        <div align="center">
                                            <%out.println(Ward);%>  
                                        </div></TD>
                            <TD width=101 align=left vAlign=top><div align="center" class="style6">
                              <%out.println(Charges);%> 
                              </div></TD>
							
							
							</tr>
                          <%}%>
						  <TR>
                            <TD vAlign=top align=left width=101 height=22></TD>
                            <TD vAlign=top align=left height=22>
                              <DIV 
                              id=ctl00_ContentPlaceHolder_ValidationSummary1 
                              style="DISPLAY: none; COLOR: red"></DIV></TD>
                            <TD vAlign=top align=left width=101 
                          height=22></TD>
						  
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
                      <TD class=boldbigblue vAlign=top align=left>Lab Charges</TD>
                    </TR>
                    <TR>
                      <TD vAlign=top align=left height=15></TD></TR>
                    <TR>
                      <TD vAlign=top align=left>
                        <TABLE class=table_formss cellSpacing=0 cellPadding=0 
                        width=557 align=center border=0>
                          <TBODY>
                          <TR bgcolor="#eee9f8">
                            <TD width=101 height=22 align=left vAlign=top class="style3"><div align="center"> Name </div></TD>
                            <TD width="101" height=22 align=left vAlign=top class="style3"><div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Amount</div></TD>
                            
							</tr>
                        <%while(rs1.next())
{
 TName=rs1.getString("TName");
 Amount=rs1.getInt("Amount");
 %>
 

						  <TR bgcolor="#F0F0F0">
                            <TD width=101 align=left vAlign=top>
                                    <div align="center" class="style6">
                                      <%out.println(TName);%> 
                                      </div></TD><TD align=middle vAlign=top>
                                    <div align="center" class="style6">                  
                                      <%out.println(Amount);%>   
                                      </div></TD>
                            
							
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
                      <TD class=boldbigblue vAlign=top align=left>Surgery Charges</TD>
                    </TR>
                    <TR>
                      <TD vAlign=top align=left height=15></TD></TR>
                    <TR>
                      <TD vAlign=top align=left>
                        <TABLE class=table_formss cellSpacing=0 cellPadding=0 
                        width=557 align=center border=0>
                          <TBODY>
                          <TR bgcolor="#eee9f8">
                            <TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">Name</div></TD>
                            <TD width="101" height=22 align=left vAlign=top><div align="center" class="style3">
                              <div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Amount</div>
                            </div></TD>
                            
							</tr>
							<%
							while(rs2.next())
{
 SName=rs2.getString("Name");
 SAmount=rs2.getInt("Amount");
 %>

                          <TR bgcolor="#F0F0F0">
                            <TD width=101 align=left vAlign=top>
                                    <div align="center" class="style6"><%out.println(SName);%></div></TD><TD align=middle vAlign=top>
                                    <div align="center" class="style6"> <%out.println(SAmount);%> </div></TD>
                            
							
							</tr>
							<%}%>
                          <TR>
                            <TD vAlign=top align=left width=101 height=22></TD>
                            <TD vAlign=top align=left height=22>
                              <DIV 
                              id=ctl00_ContentPlaceHolder_ValidationSummary1 
                              style="DISPLAY: none; COLOR: red"></DIV></TD>
                            
						  
						  </TR></TBODY></TABLE></TD></TR></TBODY></TABLE><TR>
                <TD width=33></TD></TR></DIV>
                  </TD>
				
                <TD width=33>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD>
                <TD width=33>&nbsp;</TD></TR></DIV></TD>
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


</FORM></BODY></HTML>


<%
con.close();

	}
	catch(Exception e)
		{
	out.println(e);
	}
%>
