<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>The preservation of physical health structure</TITLE>

<script type="text/javascript">

function EmpId()
{
if(document.EmployeeDetailsForm.empid.value=="")
{
alert("Enter employee id");
document.EmployeeDetailsForm.empid.focus();
return false;
}
return true;
}
</script>
<script type="text/javascript">
//ONLY NUMBERS
//ONLY NUMBERS
function nunber(e)
{
var a=document.EmployeeDetailsForm.id.value;
var unicode=e.charCode? e.charCode : e.keyCode;
if(unicode!=8)
{
if(unicode<48 || unicode>57) 
return false;
}
return true;
}

</script>

<BODY bgColor=#e9e9e9 leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<FORM  name="EmployeeDetailsForm" onSubmit="return EmpId()" action="./ViewEmployeeDetails.jsp"
method=get encType=multipart/form-data>
                  <TABLE cellSpacing=0 cellPadding=0 width=530 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=boldbigblue vAlign=top align=left>Employee Details </TD>
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
                            <TD vAlign=top align=left height=22>Enter the Employee Registration No </TD>
                            <TD vAlign=top align=left width=22 
height=22></TD></TR>
                          <TR>
                            <TD width=22 height="255" align=left vAlign=top></TD>
                            <TD vAlign=top align=middle>
                              <TABLE width=486 height="219" border=0 
                              align=center cellPadding=0 cellSpacing=0>
                                <TBODY>
                                <TR class=border_bottom>
                                <TD class=border_left_bottom vAlign=center 
                                align=left width=149 bgColor=#eee9f8><SPAN 
                                class=forms_text>Employee Id </SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#eee9f8 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#eee9f8 colSpan=3 height=29><input name="empid" type="text" id="empid" onKeyPress="return nunber(event)">
                                  <SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR><TR bgcolor="#FFFFFF" class=border_bottom>
                                <TD width=149 
                                align=left vAlign=center class=border_left_bottom>&nbsp;</TD>
                                <TD width=20 
                                height=29 
                                align=left vAlign=top class=border_left_bottom></TD>
                                <TD height=29 colSpan=3 align=left vAlign=center class=border_bottom>&nbsp;</TD>
                                </TR>
								<TR bgcolor="#FFFFFF" class=border_bottom>
                                <TD width=149 
                                align=left vAlign=center class=border_left_bottom>&nbsp;</TD>
                                <TD width=20 
                                height=29 
                                align=left vAlign=top class=border_left_bottom></TD>
                                <TD height=29 colSpan=3 align=left vAlign=center class=border_bottom>&nbsp;</TD>
								</TR>
								<TR bgcolor="#FFFFFF" class=border_bottom>
                                <TD width=149 
                                align=left vAlign=center class=border_left_bottom>&nbsp;</TD>
                                <TD width=20 
                                height=29 
                                align=left vAlign=top class=border_left_bottom></TD>
                                <TD height=29 colSpan=3 align=left vAlign=center class=border_bottom>&nbsp;</TD>
								</TR>
								
                                <TR bgcolor="#FFFFFF">
                                <TD 
                                height=15 colSpan=5 align=left class=border_bottom>&nbsp;</TD>
                                </TR>
                                <TR bgcolor="#FFFFFF" class=border_bottom>
                                <TD width=149 
                                align=left vAlign=center class=border_left_bottom>&nbsp;</TD>
                                <TD width=20 
                                height=24 
                                align=left vAlign=top class=border_left_bottom></TD>
                                <TD height=24 colSpan=3 align=left vAlign=center class=border_bottom>&nbsp;</TD>
                                </TR>
                                <TR bgcolor="#FFFFFF">
                                <TD width=149 height=24 align=left class=border_bottom>&nbsp;</TD>
                                <TD width=20 
                                height=24 
                                align=left vAlign=top class=border_left_bottom></TD>
                                <TD height=24 colSpan=3 align=left vAlign=center class=border_bottom>&nbsp;</TD>
                                </TR>
                                
								
                               
                                </TBODY></TABLE>
                              
							  <div align="center">
                                <INPUT class=bodytext id=ctl00_ContentPlaceHolder_BtnSignUP onclick='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("ctl00$ContentPlaceHolder$BtnSignUP", "", true, "", "", false, false))' type=submit value="Submit" name=ctl00$ContentPlaceHolder$BtnSignUP>
								<INPUT class=bodytext id=ctl00_ContentPlaceHolder_BtnSignUP onclick='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("ctl00$ContentPlaceHolder$BtnSignUP", "", true, "", "", false, false))' type=reset value="Reset" name=ctl00$ContentPlaceHolder$BtnSignUP>
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
