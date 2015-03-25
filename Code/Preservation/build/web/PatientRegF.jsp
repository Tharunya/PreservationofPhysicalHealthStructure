<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE></TITLE>
<script type="text/javascript">
function callMe()
{
return (RegistrationNo() && caseno() && fname() && lname() && age() && gender() && Gname() && regfee() && Bgroup())
}

function RegistrationNo()
{
if(document.Form.RegNo.value=="")
{
alert("Enter registration number");
document.Form.RegNo.focus();
return false;
}
return true;
}


function caseno()
{
if(document.Form.CaseNo.value=="")
{
alert("Enter case number");
document.Form.CaseNo.focus();
return false;
}
return true;
}


function fname()
{
if(document.Form.Fname.value=="")
{
alert("Enter FirstName");
document.Form.Fname.focus();
return false;
}
return true;
}


function lname()
{
if(document.Form.Lname.value=="")
{
alert("Enter LastName");
document.Form.Lname.focus();
return false;
}
return true;
}


function age()
{
if(document.Form.Age.value=="")
{
alert("Enter Age");
document.Form.Age.focus();
return false;
}
return true;
}



function gender()
{
if(document.Form.Gender.value=="1")
{
alert("Enter Gender");
document.Form.Gender.focus();
return false;
}
return true;
}



function Gname()
{
if(document.Form.GuardianName.value=="")
{
alert("Enter GuardianName");
document.Form.GuardianName.focus();
return false;
}
return true;
}



function regfee()
{
if(document.Form.RegFee.value=="")
{
alert("Enter Registration Fee");
document.Form.RegFee.focus();
return false;
}
return true;
}


function Bgroup()
{
if(document.Form.BloodGroup.value=="")
{
alert("Enter BloodGroup Fee");
document.Form.BloodGroup.focus();
return false;
}
return true;
}

</script>




<BODY bgColor=#e9e9e9 leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<FORM id="form" name="Form" onSubmit="return callMe()"
 action="./PatienReg.jsp" 
method=get>
                  <TABLE cellSpacing=0 cellPadding=0 width=530 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=boldbigblue vAlign=top align=left>Patient Registration </TD>
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
                            <TD vAlign=top align=left height=22></TD>
                            <TD vAlign=top align=left width=22 
height=22></TD></TR>
                          <TR>
                            <TD vAlign=top align=left width=22></TD>
                            <TD vAlign=top align=middle>
                              <TABLE width=486 height="326" border=0 
                              align=center cellPadding=0 cellSpacing=0>
                                <TBODY>
                                <TR class=border_bottom>
                                <TD class=border_left_bottom vAlign=center 
                                align=left width=149 bgColor=#eee9f8><SPAN 
                                class=forms_text>RegistrationNo</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#eee9f8 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#eee9f8 colSpan=3 height=29><INPUT 
                                class=bodytext 
                                name="RegNo" onBlur="checkReg(this.value)"><SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><label id="show"></label><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD></TR><TR bgcolor="#F0F0F0" class=border_bottom>
                                <TD class=border_left_bottom vAlign=center 
                                align=left width=149><SPAN 
                                class=forms_text>CaseNo</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left colSpan=3 height=29><INPUT 
                                class=bodytext 
                                name="CaseNo" onFocus="return RegistrationNo()"><SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD></TR>
                                <TR>
                                <TD class=border_bottom align=left colSpan=5 
                                height=15>Ex.Krishna-1</TD></TR>
                                <TR class=border_bottom>
                                <TD class=border_left_bottom vAlign=center 
                                align=left width=149 bgColor=#f0f0f0><SPAN 
                                class=forms_text>FirstName</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#F0F0F0 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#F0F0F0 colSpan=3 height=29><INPUT 
                                class=bodytext 
                                name="Fname" onFocus="return caseno()"><SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR>
                                <TD class=border_bottom align=left width=149 
                                bgColor=#eee9f8 height=29><SPAN 
                                class=forms_text>LastName</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#eee9f8 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#eee9f8 colSpan=3 height=29><INPUT 
                                class=bodytext 
                                name="Lname" onFocus="return fname()">
                                  <SPAN 
                                id=ctl00_ContentPlaceHolder_REVEmailID 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR class=border_bottom>
                                <TD class=border_bottom align=left 
                                bgColor=#f0f0f0 height=29><SPAN 
                                class=forms_text>Age</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#f0f0f0 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#f0f0f0 colSpan=3 height=15><INPUT 
                                class=bodytext 
                                name="Age" onFocus="return lname()"> </TD>
                                </TR>
                                <TR>
                                <TD class=border_bottom align=left colSpan=5 
                                height=15>&nbsp;</TD></TR>
                                <TR>
                                <TD class=border_bottom align=left width=149 
                                bgColor=#eee9f8 height=29><SPAN 
                                class=forms_text>Gender</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#eee9f8 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#eee9f8 colSpan=3 height=29><select name="Gender" onFocus="return age()">
                                  <option value="1">--Select--</option>
                                  <option value="Male">Male</option>
                                  <option value="Female">Female</option>
                                </select>                                  <SPAN 
                                id=ctl00_ContentPlaceHolder_REVEmailID 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR>
                                <TD class=border_bottom align=left 
                                bgColor=#f0f0f0 height=29><SPAN 
                                class=forms_text>GuardianName</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#f0f0f0 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#f0f0f0 colSpan=3 height=15><SPAN 
                                id=ctl00_ContentPlaceHolder_LblLoginIDErr 
                                style="COLOR: red">
                                  <INPUT 
                                class=bodytext 
                                name="GuardianName" onFocus="return gender()">
                                </SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_RFVLoginID 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR>
                                <TD class=border_bottom align=left 
                                bgColor=#eee9f8 height=29><SPAN 
                                class=forms_text>RegistrationFee</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left bgColor=#eee9f8 height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#eee9f8 colSpan=3 height=29><SPAN 
                                id=ctl00_ContentPlaceHolder_LblPwdErr 
                                style="COLOR: red">
                                  <INPUT 
                                class=bodytext 
                                name="RegFee" onFocus="return Gname()">
                                </SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_RFVPassword 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR>
                                <TD class=border_bottom align=left 
                                bgColor=#f0f0f0 height=29>
                                <P class=forms_text>BloodGroup</P></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#f0f0f0 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#f0f0f0 colSpan=3 height=15>
                                <P><SPAN 
                                id=ctl00_ContentPlaceHolder_LblPwdErr 
                                style="COLOR: red">
                                  <INPUT 
                                class=bodytext 
                                name="BloodGroup" onFocus="return regfee()">
                                </SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_CVPassword 
                                style="DISPLAY: none; COLOR: red"></SPAN></P></TD></TR>
								
                               
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
