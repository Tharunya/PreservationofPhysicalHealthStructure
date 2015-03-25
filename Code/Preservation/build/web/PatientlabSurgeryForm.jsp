ï»¿
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>The preservation of physical health structure</TITLE>

<script type="text/javascript">


function RegistrationNo()
{
if(document.Form.regno.value=="")
{
alert("Enter registration number");
document.Form.regno.focus();
return false;
}
return true;
}



</script>
<
<BODY bgColor=#e9e9e9 leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<%
int BloodTest=0;
int Ecg=0;
int Uranalysys=0;
int Xray=0;
int Heart=0;
int Kidney=0;
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	PreparedStatement ps=con.prepareStatement("select *from Lab_Charges where TName=?");
	ps.setString(1,"BloodTest");
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
	BloodTest=rs.getInt("Amount");
	
	}
	PreparedStatement ps1=con.prepareStatement("select *from Lab_Charges where TName=?");
	ps1.setString(1,"Ecg");
	ResultSet rs1=ps1.executeQuery();
	while(rs1.next())
	{
	Ecg=rs1.getInt("Amount");
	
	}
PreparedStatement ps2=con.prepareStatement("select *from Lab_Charges where TName=?");
	ps2.setString(1,"Uranalysys");
	ResultSet rs2=ps2.executeQuery();
	while(rs2.next())
	{
	Uranalysys=rs2.getInt("Amount");
	
	}

PreparedStatement ps3=con.prepareStatement("select *from Lab_Charges where TName=?");
	ps3.setString(1,"Xray");
	ResultSet rs3=ps3.executeQuery();
	while(rs3.next())
	{
	Xray=rs3.getInt("Amount");
	
	}
PreparedStatement ps4=con.prepareStatement("select *from Surgery_Charges where Name=?");
	ps4.setString(1,"Heart");
	ResultSet rs4=ps4.executeQuery();
	while(rs4.next())
	{
	Heart=rs4.getInt("Amount");
	
	}
PreparedStatement ps5=con.prepareStatement("select *from Surgery_Charges where Name=?");
	ps5.setString(1,"Kidney");
	ResultSet rs5=ps5.executeQuery();
	while(rs5.next())
	{
	Kidney=rs5.getInt("Amount");
	
	}



%>
<FORM id="form" name="Form" onSubmit="return RegistrationNo()" action="./PatientlabSurgery.jsp" method=get>
  
                  <TABLE cellSpacing=0 cellPadding=0 width=530 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=boldbigblue vAlign=top align=left>Patient Lab&amp;Surgery Details </TD>
                    </TR>
                    <TR>
                      <TD vAlign=top align=left height=15></TD></TR>
                    <TR>
                      <TD vAlign=top align=left>
                        <TABLE class=table_formss cellSpacing=0 cellPadding=0 
                        width=530 align=center border=0>
                          <TBODY>
                          <TR>
                            <TD vAlign=top align=left width=22 height=22></TD>
                            <TD vAlign=top align=left height=22>Check Respective boxes for LabReport </TD>
                            <TD vAlign=top align=left width=22 
height=22></TD></TR>
                          <TR>
                            <TD width=22 height="255" align=left vAlign=top></TD>
                            <TD vAlign=top align=middle>
                              <TABLE width=486 height="219" border=0 
                              align=center cellPadding=0 cellSpacing=0>
                                <TBODY>
								<TR bgcolor="#F0F0F0" class=border_bottom>
                                <TD class=border_left_bottom vAlign=center 
                                align=left width=149><SPAN 
                                class=forms_text> RegNo </SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left colSpan=3 height=29><input name="regno" type="text" id="regno">
                                  <SPAN id=ctl00_ContentPlaceHolder_RFVName  style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR class=border_bottom>
                                <TD class=border_left_bottom vAlign=center 
                                align=left width=149 bgColor=#eee9f8><SPAN 
                                class=forms_text>BloodTest</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#eee9f8 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#eee9f8 colSpan=3 height=29><input type="checkbox" name="BloodTest" value="BloodTest"> <%out.println(BloodTest);%>                                 
                                <SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR><TR bgcolor="#F0F0F0" class=border_bottom>
                                <TD class=border_left_bottom vAlign=center 
                                align=left width=149><SPAN 
                                class=forms_text>ECG Test </SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left colSpan=3 height=29><input name="Ecg" type="checkbox" id="Ecg" value="Ecg">
<%out.println(Ecg);%>                                <SPAN id=ctl00_ContentPlaceHolder_RFVName  style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
								<TR bgcolor="#EEE9F8" class=border_bottom>
                                <TD width=149 
                                align=left vAlign=center class=border_left_bottom><SPAN 
                                class=forms_text>Uranalysis</SPAN></TD>
                                <TD width=20 
                                height=29 
                                align=left vAlign=top class=border_left_bottom></TD>
                                <TD height=29 colSpan=3 align=left vAlign=center class=border_bottom><input name="Uranalysys" type="checkbox" id="Uranalysys"  value="Uranalysys"> <%out.println(Uranalysys);%>                                 
                                <SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
								</TR>
								<TR bgcolor="#F0F0F0" class=border_bottom>
                                <TD width=149 
                                align=left vAlign=center class=border_left_bottom><SPAN 
                                class=forms_text>XRay</SPAN></TD>
                                <TD width=20 
                                height=29 
                                align=left vAlign=top class=border_left_bottom></TD>
                                <TD height=29 colSpan=3 align=left vAlign=center class=border_bottom><input name="Xray" type="checkbox" id="Xray" value="Xray"> <%out.println(Xray);%>                                 
                                <SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
								</TR>
								
                                <TR>
                                <TD class=border_bottom align=left colSpan=5 
                                height=15>Check Respective Box For Surgery </TD>
                                </TR>
                                <TR class=border_bottom>
                                <TD class=border_left_bottom vAlign=center 
                                align=left width=149 bgColor=#f0f0f0><SPAN 
                                class=forms_text> Heart</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#F0F0F0 
                                height=24></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#F0F0F0 colSpan=3 height=24><input name="Heart" type="checkbox" id="Heart" value="Heart"> <%out.println(Heart);%>                                 
                                <SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR>
                                <TD class=border_bottom align=left width=149 
                                bgColor=#eee9f8 height=24><SPAN 
                                class=forms_text>Kidney </SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#eee9f8 
                                height=24></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#eee9f8 colSpan=3 height=24><input type="checkbox" name="Kidney" value="Kdiney" id="Kidney"> <%out.println(Kidney);%>                                 
                                <SPAN 
                                id=ctl00_ContentPlaceHolder_REVEmailID 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR class=border_bottom>
                                <TD class=border_left_bottom vAlign=center 
                                align=left width=149 bgColor=#f0f0f0><SPAN 
                                class=forms_text> </SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#F0F0F0 
                                height=24></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#F0F0F0 colSpan=3 height=24>				                                    <SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
								
                               
                                </TBODY></TABLE>
                              
							  <div align="center">
                                <INPUT class=bodytext id=ctl00_ContentPlaceHolder_BtnSignUP onclick='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("ctl00$ContentPlaceHolder$BtnSignUP", "", true, "", "", false, false))' type=submit value="Submit" name=submit>
								<INPUT class=bodytext id=ctl00_ContentPlaceHolder_BtnSignUP onclick='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("ctl00$ContentPlaceHolder$BtnSignUP", "", true, "", "", false, false))' type=reset value="Reset" name=reset>
                              </div></TD>
                            <TD vAlign=top align=left width=22></TD></TR>
                          <TR>
                            <TD vAlign=top align=left width=22 height=22></TD>
                            <TD vAlign=top align=left height=22>
                              <DIV 
                              id=ctl00_ContentPlaceHolder_ValidationSummary1 
                              style="DISPLAY: none; COLOR: red"></DIV></TD>
                            <TD vAlign=top align=left width=22 
                          height=22></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV></TD>
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
                        <TD bgColor=#aa94dd height=28>&nbsp;                          </TD></TR>
                      <TR>
                        <TD bgColor=#e9e9e9 
                height=49>&nbsp;</TD></TR></TBODY>
                  </TABLE></TD>
                </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>


</FORM></BODY></HTML>
