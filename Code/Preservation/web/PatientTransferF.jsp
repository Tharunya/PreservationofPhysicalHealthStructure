<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>The preservation of physical health structure</TITLE>
<script type="text/javascript">
function callMe()
{
return (RegistrationNo() && presentward() && transferward() && wardnum() && bednum() && payingamt())
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


function presentward()
{
if(document.Form.PWard.value=="0")
{
alert("Enter Present ward");
document.Form.PWard.focus();
return false;
}
return true;
}

function transferward()
{
if(document.Form.Tward.value=="0")
{
alert("Enter transfer ward");
document.Form.Tward.focus();
return false;
}
return true;
}

function wardnum()
{
if(document.Form.WardNo.value=="0")
{
alert("Enter WardNumber");
document.Form.WardNo.focus();
return false;
}
return true;
}


function bednum()
{
if(document.Form.BedNo.value=="0")
{
alert("Enter Bed number");
document.Form.BedNo.focus();
return false;
}
return true;
}

function payingamt()
{
if(document.Form.PAmt.value=="")
{
alert("Enter PAmt");
document.Form.PAmt.focus();
return false;
}
return true;
}
</script>



<BODY bgColor=#e9e9e9 leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<FORM id="Form" name="Form" onSubmit="return callMe()" action="./PatientTransfer.jsp" method=post>
  
                  <TABLE cellSpacing=0 cellPadding=0 width=530 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=boldbigblue vAlign=top align=left>Patient Transfer</TD>
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
                            <TD vAlign=top align=left height=22>Select Transfer Details</TD>
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
                                class=forms_text>RegistrationNo</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#eee9f8 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#eee9f8 colSpan=3 height=29><input name="RegNo" type="text" id="RegNo">
                                  <SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR><TR bgcolor="#F0F0F0" class=border_bottom>
                                <TD class=border_left_bottom vAlign=center 
                                align=left width=149><SPAN 
                                class=forms_text> Present Ward </SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left colSpan=3 height=29><select name="PWard" id="PWard" onFocus="return RegistrationNo()">
                                  <option value="0">--Select--</option>
                                  <option value="1">ICU</option>
                                  <option value="2">General</option>
                                </select>                                  <SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
								<TR bgcolor="#EEE9F8" class=border_bottom>
                                <TD width=149 
                                align=left vAlign=center class=border_left_bottom><SPAN 
                                class=forms_text>Transfer To</SPAN></TD>
                                <TD width=20 
                                height=29 
                                align=left vAlign=top class=border_left_bottom></TD>
                                <TD height=29 colSpan=3 align=left vAlign=center class=border_bottom><select name="Tward" id="Tward" onFocus="return presentward()">
                                  <option value="0">--Select--</option>
                                  <option value="1">ICU</option>
                                  <option value="2">General</option>
                                                                </select>                                  <SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
								</TR>
								<TR bgcolor="#F0F0F0" class=border_bottom>
                                <TD width=149 
                                align=left vAlign=center class=border_left_bottom><SPAN 
                                class=forms_text>Ward No </SPAN></TD>
                                <TD width=20 
                                height=29 
                                align=left vAlign=top class=border_left_bottom></TD>
                                <TD height=29 colSpan=3 align=left vAlign=center class=border_bottom><select name="WardNo" id="WardNo" onFocus="return transferward()">
                                  <option value="0">--Select--</option>
                                  <option value="ICU1">ICU1</option>
                                  <option value="ICU2">ICU2</option>
                                  <option value="ICU3">ICU3</option>
                                  <option value="G1">G1</option>
                                  <option value="G2">G2</option>
                                  <option value="G3">G3</option>
                                                                </select>                                  <SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
								</TR>
								
                                <TR>
                                <TD class=border_bottom align=left colSpan=5 
                                height=15>Fill the paying amount </TD>
                                </TR>
                                <TR class=border_bottom>
                                <TD class=border_left_bottom vAlign=center 
                                align=left width=149 bgColor=#f0f0f0><SPAN 
                                class=forms_text> Bed No </SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#F0F0F0 
                                height=24></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#F0F0F0 colSpan=3 height=24><select name="BedNo" id="BedNo" onFocus="return wardnum()">
                                  <option value="0">--Select--</option>
                                  <option value="1">1</option>
                                  <option value="2">2</option>
                                  <option value="3">3</option>
                                  <option value="4">4</option>
                                  <option value="5">5</option>
                                  <option value="6">6</option>
                                  <option value="7">7</option>
                                  <option value="8">8</option>
                                  <option value="9">9</option>
                                  <option value="10">10</option>
                                  <option value="11">11</option>
                                  <option value="12">12</option>
                                  <option value="13">13</option>
                                  <option value="14">14</option>
                                  <option value="15">15</option>
                                  <option value="16">16</option>
                                  <option value="17">17</option>
                                  <option value="18">18</option>
                                  <option value="19">19</option>
                                  <option value="20">20</option>
                                  <option value="21">21</option>
                                  <option value="22">22</option>
                                  <option value="23">23</option>
                                  <option value="24">24</option>
                                  <option value="25">25</option>
                                  <option value="26">26</option>
                                  <option value="27">27</option>
                                  <option value="28">28</option>
                                  <option value="29">29</option>
                                  <option value="30">30</option>
                                                                </select>                                  <SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR>
                                <TD class=border_bottom align=left width=149 
                                bgColor=#eee9f8 height=24><SPAN 
                                class=forms_text>Paying Amount </SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#eee9f8 
                                height=24></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#eee9f8 colSpan=3 height=24><input name="PAmt" type="text" id="PAmt" onFocus="return bednum()">                                  
                                <SPAN 
                                id=ctl00_ContentPlaceHolder_REVEmailID 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
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
