<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE></TITLE>
<
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
//String DoctorName="sj";
String DoctorName=request.getParameter("DoctorName");
String Specialisation=request.getParameter("Specialisation");
String Spl="";
String Fname="";
String Qualification="";
String Designation="";
String Email="";
String Phone="";
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	 
PreparedStatement ps=con.prepareStatement("Select *from Doctor where Fname=?");
ps.setString(1,DoctorName);
//ps.setString(2,Specialisation);
ResultSet rs=ps.executeQuery();
while(rs.next())
{
 Qualification=rs.getString("Qualification");
 Fname=rs.getString("Fname");
 Email=rs.getString("Email");
 Phone=rs.getString("Phone");
 Designation=rs.getString("Designation");
 Spl=rs.getString("Specialistation");

}
//out.println("Docid"+id);

con.close();

	}
	catch(Exception e)
		{
	out.println(e);
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
            src="Search.gif" width="32" height="22" onclick=search(); 
            type="button"></TD>
        </TR></TBODY></TABLE>
     
    </TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=1000 align=center border=0>
  <TBODY>
  <TR>
    <TD width=234The preservation of physical health structure>Health Care Systems </TD>
    <TD width=766><IMG height=149 
      src="care-new-template_homepage%20copy.jpg" 
      width=766></TD>
  </TR></TBODY></TABLE>


<TABLE width="979" border=0 align=center cellPadding=0 cellSpacing=0>
  <td width="693"><TBODY>
  <TR>
    <TD height=40>
      <TABLE width="979" border=0 align=center cellPadding=0 cellSpacing=0>
  <td width="693"><TBODY>
  <TR>
    <TD height=40>
      <TABLE cellSpacing=0 cellPadding=0 width=990 align=left 
                  border=0>
                    <TBODY>
                    
          <TD width="62" 
                      height=44 align=left vAlign=center class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'"><A 
                        href="FindDoctorF.jsp"><FONT 
                        class=submenulink>FindDoctor</FONT></A> </TD>
          <TD width="116" 
                      height=44 align=left vAlign=center class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'"><A 
                        href="RequestEstimateF.jsp"><FONT 
                        class=submenulink>RequestEstimate</FONT></A> </TD>                
						<TD width="164" 
                      height=44 align=left vAlign=center class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'"><A 
                        href=""><FONT 
                        class=submenulink>HealthLibrary</FONT></A> </TD>    
						<TD width="78" 
                      height=44 align=left vAlign=center class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'"><A 
                        href="index.html"><FONT 
                        class=submenulink>&nbsp;&nbsp;</FONT></A> </TD>                
						<TD width="78" 
                      height=44 align=left vAlign=center class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'"><A 
                        href="index.html"><FONT 
                        class=submenulink>&nbsp;&nbsp;</FONT></A> </TD>                
						<TD width="78" 
                      height=44 align=left vAlign=center class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'"><A 
                        href="index.html"><FONT 
                        class=submenulink>&nbsp;&nbsp;</FONT></A> </TD>     <TD width="78" 
                      height=44 align=left vAlign=center class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'"><A 
                        href="index.html"><FONT 
                        class=submenulink>&nbsp;&nbsp;</FONT></A> </TD>                
						<TD width="78" 
                      height=44 align=left vAlign=center class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'"><A 
                        href="index.html"><FONT 
                        class=submenulink>&nbsp;&nbsp;</FONT></A> </TD>  <TD width="78" 
                      height=44 align=left vAlign=center class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'"><A 
                        href="index.html"><FONT 
                        class=submenulink>&nbsp;&nbsp;</FONT></A> </TD>                
						<TD width="78" 
                      height=44 align=left vAlign=center class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'"><A 
                        href="index.html"><FONT 
                        class=submenulink>&nbsp;&nbsp;</FONT></A> </TD>                
						<TD width="83" 
                      height=44 align=left vAlign=center class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'"><A 
                        href="index.html"><FONT 
                        class=submenulink>&nbsp;&nbsp;</FONT></A> </TD>                
						              
						           
						
						            
						
  
  </TR></TABLE></TD></TR></TBODY></TABLE></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 align=center border=0>
  <TBODY>
  <TR>
    <TD width=10 bgColor=#e4e2e3 height=30>&nbsp;</TD>
    <TD class=bodytext vAlign=center width=952 bgColor=#e4e2e3><td></td>
	<!-- InstanceBeginEditable name="EditRegion2" --><!-- InstanceEndEditable --></TD>
    <TD width=29 bgColor=#e4e2e3></TD></TR></TBODY></TABLE>
<TABLE id=Table2 cellSpacing=0 cellPadding=0 width="100%" bgColor=#e9e9e9 
border=0>
  <TBODY>
  <TR>
    <TD vAlign=top><!-- InstanceBeginEditable name="Body" -->
      
	  <TABLE cellSpacing=0 cellPadding=0 width=1000 align=center bgColor=#ffffff 
      border=0>
        <TBODY>
        <TR>
          <TD style="BACKGROUND-COLOR: #f0f0f0" vAlign=top align=left 
            width=185> <MARQUEE onmouseover=this.stop() onmouseout=this.start() 
                        scrollAmount=1 scrollDelay=60 direction=up width="100%" 
                        height=100%>
                        <P class=bodytext>
                        <UL>
                          <LI>Emergency 
                          <LI>Emergency 
                          <LI> Emergency 
                          <LI>Emergency 
                          <LI>Emergency 
                         
                          <LI>
                          </LI></UL>&nbsp;&nbsp;
                        <P></P></MARQUEE></TD>
          <TD style="WIDTH: 815px" vAlign=top>
            <TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
              <TBODY>
              <TR>
                <TD width=33>&nbsp;</TD>
                <TD height=185>
                  <DIV id=ctl00_ContentPlaceHolder_UpdatePanel1>
                  <DIV align=center><SPAN 
                  id=ctl00_ContentPlaceHolder_LblMsg></SPAN><BR>&nbsp;</DIV>
                  <TABLE cellSpacing=0 cellPadding=0 width=530 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=boldbigblue vAlign=top align=left>DoctorDetails</TD>
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
                              <div align="center">Qualification</div>
                            </div></TD>
                            <TD width=101 height=22 align=left vAlign=top><div align="center" class="style4">
                              <div align="center">Designation</div>
                            </div></TD>
							<TD width=80 height=22 align=left vAlign=top><div align="center" class="style4">
							  <div align="center">Specialistation</div>
							</div></TD>
                            <TD width="64" height=22 align=left vAlign=top><div align="center" class="style4">
                              <div align="center">Email</div>
                            </div></TD>
                            <TD width=81 height=22 align=left vAlign=top><div align="center" class="style4">
                              <div align="center">Phone</div>
                            </div></TD>
							</tr>
                          <TR bgcolor="#F0F0F0">
                            <TD width=101 align=left vAlign=top>
                                    <div align="center" class="style6">
                                          <%out.println(Fname);%>
                                      </div></TD><TD align=middle vAlign=top>
                                    <div align="center" class="style6">
                                            <%out.println(Qualification);%>
                                        </div></TD>
                            <TD width=101 align=left vAlign=top><div align="center" class="style6">
                                      <%out.println(Designation);%>
                                  </div></TD>
							<TD width=80 height=22 align=left vAlign=top><div align="center" class="style6">
							          <%out.println(Spl);%>
							        </div></TD>
							<TD width=80 height=22 align=left vAlign=top><div align="center" class="style6">
							          <%out.println(Email);%>
							        </div></TD>
							<TD width=80 height=22 align=left vAlign=top><div align="center" class="style6">
							          <%out.println(Phone);%>
							        </div></TD>
							
							</tr>
                          <TR>
                            <TD vAlign=top align=left width=101 height=22></TD>
                            <TD vAlign=top align=left height=22>
                              <DIV 
                              id=ctl00_ContentPlaceHolder_ValidationSummary1 
                              style="DISPLAY: none; COLOR: red"></DIV></TD>
                            <TD vAlign=top align=left width=101 
                          height=22></TD>
						  <TD vAlign=top align=left width=80 height=22>&nbsp;</TD>
						  <TD vAlign=top align=left width=80 height=22>&nbsp;</TD>
						  <TD vAlign=top align=left width=80 height=22>&nbsp;</TD>
						  
						  
						  
						  
						  </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV></TD>
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


