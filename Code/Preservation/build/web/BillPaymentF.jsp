<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>The preservation of physical health structure</TITLE>
<script type="text/javascript">

function callMe()
{
return (RegistrationNo() && Billtype())
}

function RegistrationNo()
{
if(document.BillPayment.RegNo.value=="")
{
alert("Enter registration number");
document.BillPayment.RegNo.focus();
return false;
}
return true;
}

function Billtype()
{
if(document.BillPayment.Billtype.value=="0")
{
alert("Enter BillType");
document.BillPayment.Billtype.focus();
return false;
}
return true;
}

</script>
<script type="text/javascript" language="javascript" src="datetimepicker.js"></script> 
<script type="text/javascript" language="javascript" src="Ajax.js"></script>
<script type="text/javascript" language="javascript">
function CalAmount(RegNo,type)
{
if(type.value==1)
showBedAmount(RegNo);

if(type.value==2)
showLabAmount(RegNo);

if(type.value==4)
showSurgeryAmount(RegNo);
if(type.value==3)
{
document.BillPayment.Paidamt.value=0;
document.BillPayment.Actualamt.value="";
document.BillPayment.Dueamt.value="";
}
if(type.value==5)
{
document.BillPayment.Paidamt.value=0;
document.BillPayment.Actualamt.value="";
document.BillPayment.Dueamt.value="";
}


}


</script>
<BODY bgColor=#e9e9e9 leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">

<FORM id="Form"  name="BillPayment" onSubmit="return callMe()"
 action="./PatientBillPayment1.jsp" 
method=get>
                  <TABLE cellSpacing=0 cellPadding=0 width=530 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=boldbigblue vAlign=top align=left>Patient Bill</TD>
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
                                name="RegNo"><SPAN 
                                id=ctl00_ContentPlaceHolder_RFVName 
                                style="DISPLAY: none; COLOR: red"></SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_REVName 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD></TR><TR bgcolor="#F0F0F0" class=border_bottom>
                                <TD class=border_left_bottom vAlign=center 
                                align=left width=149><SPAN 
                                class=forms_text>Billtype</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left colSpan=3 height=29><select name="Billtype" id="Billtype" onChange="CalAmount(document.BillPayment.RegNo.value,this)" onFocus="return RegistrationNo()">
                                  <option value="0" selected>--Select--</option>
                                  <option value="1" >BedCharge</option>
                                  <option value="2">LabReport</option>
                                  <option value="3">Medicine</option>
                                  <option value="4">Surgery</option>
                                  <option value="5">OtherTreatment</option>
                                 
                                </select>       <div id="showtotal"></div>                           <SPAN 
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
                                class=forms_text>Actual Amount </SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#eee9f8 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#eee9f8 colSpan=3 height=29><SPAN 
                                id=ctl00_ContentPlaceHolder_LblLoginIDErr 
                                style="COLOR: red">
                                  <INPUT 
                                name="Actualamt" 
                                class=bodytext id="Actualamt">
                                </SPAN>                                  <SPAN 
                                id=ctl00_ContentPlaceHolder_REVEmailID 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR>
                                <TD class=border_bottom align=left 
                                bgColor=#f0f0f0 height=29><SPAN 
                                class=forms_text>Paid Amount </SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#f0f0f0 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#f0f0f0 colSpan=3 height=15><SPAN 
                                id=ctl00_ContentPlaceHolder_LblLoginIDErr 
                                style="COLOR: red">
                                  <INPUT 
                                name="Paidamt" 
                                class=bodytext id="Paidamt" readonly>
                                </SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_RFVLoginID 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR>
                                <TD class=border_bottom align=left 
                                bgColor=#eee9f8 height=29><SPAN 
                                class=forms_text>Due Amount </SPAN></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left bgColor=#eee9f8 height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#eee9f8 colSpan=3 height=29><SPAN 
                                id=ctl00_ContentPlaceHolder_LblPwdErr 
                                style="COLOR: red">
                                  <INPUT 
                                name="Dueamt" 
                                class=bodytext id="Dueamt" readonly>
                                </SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_RFVPassword 
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR>
                                <TD class=border_bottom align=left 
                                bgColor=#f0f0f0 height=29>
                                <P class=forms_text>Paying Amount </P></TD>
                                <TD class=border_left_bottom vAlign=top 
                                align=left width=20 bgColor=#f0f0f0 
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left 
                                bgColor=#f0f0f0 colSpan=3 height=15>
                                <P><SPAN 
                                id=ctl00_ContentPlaceHolder_LblPwdErr 
                                style="COLOR: red">
                                  <INPUT 
                                name="Payingamt" 
                                class=bodytext id="Payingamt">
                                </SPAN><SPAN 
                                id=ctl00_ContentPlaceHolder_CVPassword 
                                style="DISPLAY: none; COLOR: red"></SPAN></P></TD></TR>
								</div>
                               
                                </TBODY></TABLE>
                              <div align="center">
                                <INPUT class=bodytext id=ctl00_ContentPlaceHolder_BtnSignUP onclick='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("ctl00$ContentPlaceHolder$BtnSignUP", "", true, "", "", false, false))' type=submit value="Submit">
								<INPUT class=bodytext id=ctl00_ContentPlaceHolder_BtnSignUP onclick='javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions("ctl00$ContentPlaceHolder$BtnSignUP", "", true, "", "", false, false))' type=reset value="Reset">
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

<SCRIPT LANGUAGE="JavaScript"> 
var xmlHttp=getHTTPObject(); 
function getHTTPObject()
{
        var xmlHttp;
       
        if(window.ActiveXObject)
        {
            try
            {
          
                xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
                
            }
            catch(e) 
            {
                xmlHttp=false;
            }
        }
        if(window.XMLHttpRequest)
        {
            try
            {
                xmlHttp=new XMLHttpRequest(); 
            }
            catch(e)
            {
                xmlHttp=false;
            }
        }
        if(!xmlHttp)
        { 
            alert("Error creating the XMLHttpRequest Object");
        }
        else
        {
            return xmlHttp;
        }
}

function callMe1()
{

var rand=Math.random()

//alert(document.getElementById('payid').value+document.getElementById('paytype').value);
var value=document.getElementById('Billtype').value;
var RegNo=document.getElementById('RegNo').value;
if(value.equals(BedCharge))
{
var url="ShowBed.jsp?RegNo="+document.getElementById('RegNo').value+"&random="+rand;
//alert(url);
xmlHttp.open("GET",url,false)
xmlHttp.onreadystatechange=handleHttpResponse1; 
xmlHttp.send(null);

}
else if(value.equals(LabReport))
{

var url="CheckLogin.jsp?uname="+document.getElementById('uname').value+"&utype="+document.getElementById('utype').value+"&pass="+document.getElementById('pass').value+"&random="+rand;
//alert(url);
xmlHttp.open("GET",url,false)
xmlHttp.onreadystatechange=handleHttpResponse2; 
xmlHttp.send(null);


}
else if(value.equals(Medicine))
{
var url="CheckLogin.jsp?uname="+document.getElementById('uname').value+"&utype="+document.getElementById('utype').value+"&pass="+document.getElementById('pass').value+"&random="+rand;
//alert(url);
xmlHttp.open("GET",url,false)
xmlHttp.onreadystatechange=handleHttpResponse3; 
xmlHttp.send(null);



}
else if(value.equals(Surgery))
{
var url="CheckLogin.jsp?uname="+document.getElementById('uname').value+"&utype="+document.getElementById('utype').value+"&pass="+document.getElementById('pass').value+"&random="+rand;
//alert(url);
xmlHttp.open("GET",url,false)
xmlHttp.onreadystatechange=handleHttpResponse4; 
xmlHttp.send(null);



}
else if(value.equals(OtherTreament))
{
var url="CheckLogin.jsp?uname="+document.getElementById('uname').value+"&utype="+document.getElementById('utype').value+"&pass="+document.getElementById('pass').value+"&random="+rand;
//alert(url);
xmlHttp.open("GET",url,false)
xmlHttp.onreadystatechange=handleHttpResponse5; 
xmlHttp.send(null);



}
else if(value.equals(RegistrationFee))
{
var url="CheckLogin.jsp?uname="+document.getElementById('uname').value+"&utype="+document.getElementById('utype').value+"&pass="+document.getElementById('pass').value+"&random="+rand;
//alert(url);
xmlHttp.open("GET",url,false)
xmlHttp.onreadystatechange=handleHttpResponse6; 
xmlHttp.send(null);



}
else{}


}

function handleHttpResponse1()
{      
                  
		var text=xmlHttp.responseText;
		var ele=document.getElementById('show')
		ele.innerHTML="<h3>"+text+"</h3>"
		//sdocument.write(text);
		 
}
function handleHttpResponse2()
{      
                  
		var text=xmlHttp.responseText;
		var ele=document.getElementById('show')
		ele.innerHTML="<h3>"+text+"</h3>"
		//sdocument.write(text);
		 
}
function handleHttpResponse3()
{      
                  
		var text=xmlHttp.responseText;
		var ele=document.getElementById('show')
		ele.innerHTML="<h3>"+text+"</h3>"
		//sdocument.write(text);
		 
}
function handleHttpResponse4()
{      
                  
		var text=xmlHttp.responseText;
		var ele=document.getElementById('show')
		ele.innerHTML="<h3>"+text+"</h3>"
		//sdocument.write(text);
		 
}
function handleHttpResponse5()
{      
                  
		var text=xmlHttp.responseText;
		var ele=document.getElementById('show')
		ele.innerHTML="<h3>"+text+"</h3>"
		//sdocument.write(text);
		 
}
function handleHttpResponse6()
{      
                  
		var text=xmlHttp.responseText;
		var ele=document.getElementById('show')
		ele.innerHTML="<h3>"+text+"</h3>"
		//sdocument.write(text);
		 
}


</script>  


</FORM></BODY></HTML>
