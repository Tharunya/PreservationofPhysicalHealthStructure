<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>The preservation of physical health structure</TITLE>
<script type="text/javascript">




</script>

<script type="text/javascript" language="javascript" src="datetimepicker.js"></script>
<script type="text/javascript" language="javascript" src="Ajax.js"></script>
<script type="text/javascript" language="javascript">   
function validateForm(Form)
     {
	  
        var msg=document.getElementById("t1").value
		alert("from"+msg);
		if(msg==1)
		{
		document.getElementById("Submit").disable=true;
		alert("Total Bill Should be Paid");
		return false;
		
		}
		
        return true;   
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
  </script>  
<link href="Master.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY bgColor=#e9e9e9 leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<FORM name="Form" 
 action="./PatientDischarge.jsp" 
method=get onSubmit="return validateForm(this)">
 
                  <TABLE cellSpacing=0 cellPadding=0 width=530 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=boldbigblue vAlign=top align=left>Patient Discharge </TD>
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
                                name="RegNo" onBlur="showDischarge(this.value)"><SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD></TR><TR bgcolor="#F0F0F0" class=border_bottom>
                                <TD class=border_left_bottom vAlign=center 
                                align=left width=149><SPAN 
                                class=forms_text>BedAmount</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left colSpan=3 height=29><INPUT 
                                name="Bedamt" 
                                class=bodytext id="Bedamt">                                  <SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                
                                <TR>
                                <TD class=border_bottom align=left colSpan=5 
                                height=15>&nbsp;</TD></TR>
                                <TR>
                                <TD class=border_bottom align=left width=149 
                                bgColor=#eee9f8 height=29><SPAN 
                                class=forms_text>Lab Amount </SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#eee9f8 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#eee9f8 colSpan=3 height=29><SPAN 
                                id=ctl00_ContentPlaceHolder_LblLoginIDErr 
                                style="COLOR: red">
                                  <INPUT 
                                name="Labamt" 
                                class=bodytext id="Labamt">
                                </SPAN>                                  <SPAN 
                                id=ctl00_ContentPlaceHolder_REVEmailID 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR>
                                <TD class=border_bottom align=left 
                                bgColor=#f0f0f0 height=29><SPAN 
                                class=forms_text>Medicine Amount </SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#f0f0f0 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#f0f0f0 colSpan=3 height=15><SPAN 
                                id=ctl00_ContentPlaceHolder_LblLoginIDErr 
                                style="COLOR: red">
                                  <INPUT 
                                name="Medicine" 
                                class=bodytext id="Medicine">
                                </SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_RFVLoginID 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR>
                                <TD class=border_bottom align=left 
                                bgColor=#eee9f8 height=29><SPAN 
                                class=forms_text>Surgery Amount </SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left bgColor=#eee9f8 height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#eee9f8 colSpan=3 height=29><SPAN 
                                id=ctl00_ContentPlaceHolder_LblPwdErr 
                                style="COLOR: red">
                                  <INPUT 
                                name="Surgery" 
                                class=bodytext id="Surgery">
                                </SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_RFVPassword 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR>
                                <TD class=border_bottom align=left 
                                bgColor=#f0f0f0 height=29>
                                <P class=forms_text>OtherTreat Amount </P></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#f0f0f0 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#f0f0f0 colSpan=3 height=15>
                                <P><SPAN 
                                id=ctl00_ContentPlaceHolder_LblPwdErr 
                                style="COLOR: red">
                                  <INPUT 
                                name="OtherTreat" 
                                class=bodytext id="OtherTreat">
		<input type="hidden" value=""  id="t1" name="t1">                              </SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_CVPassword 
                                style="DISPLAY: none; COLOR: red"></SPAN></P></TD></TR>
								
                               
                                </TBODY></TABLE>
                              <div align="center">
                                <INPUT name=submit type=submit class=bodytext id=Submit  value="Submit">
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
