<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>Health Care Sytem</TITLE>


<script type="text/javascript" language="javascript" src="Ajax.js"></script>
<script type="text/javascript" language="javascript" src="datetimepicker.js"></script>
<link href="Master.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY bgColor=#e9e9e9 leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<FORM  name= "Form" onSubmit="return callMe()"
 action="./DoctorProfile.jsp"
method=post>

                  <TABLE cellSpacing=0 cellPadding=0 width=530 align=center
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=boldbigblue vAlign=top align=left>Doctor Profile </TD>
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
                                class=forms_text>DocId</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top
                                align=left width=20 bgColor=#eee9f8
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left
                                bgColor=#eee9f8 colSpan=3 height=29><INPUT
                                class=bodytext
                                name="DocId" onBlur="checkDocId(this.value)"><SPAN
                                id=ctl00_ContentPlaceHolder_RFVName
                                style="DISPLAY: none; COLOR: red"></SPAN><label id="showdoc"></label><SPAN
                                id=ctl00_ContentPlaceHolder_REVName
                                style="DISPLAY: none; COLOR: red"></SPAN></TD></TR>
                                <TR>
                                <TD class=border_bottom align=left colSpan=5
                                height=15>&nbsp;</TD></TR>
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
                                name="FirstName" onFocus="return docid()"><SPAN
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
                                name="LastName" onFocus="return Fname()">
                                  <SPAN
                                id=ctl00_ContentPlaceHolder_REVEmailID
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
								  <TR bgcolor="#F0F0F0">
                                <TD class=border_bottom align=left width=149 height=29><SPAN
                                class=forms_text>JoinDate</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top
                                align=left width=20
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left colSpan=3 height=29><INPUT
                                class=bodytext
                                name="JoinDate" onFocus="return Lname()">
<a href="javascript:NewCal('JoinDate','yyyymmdd')"><img src="images/cal.gif" width="16" height="16" border="0" alt="Pick a date" ></a>                                  <SPAN
                                id=ctl00_ContentPlaceHolder_REVEmailID
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>  <TR>
                                <TD class=border_bottom align=left width=149
                                bgColor=#eee9f8 height=29><SPAN
                                class=forms_text>E-mail</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top
                                align=left width=20 bgColor=#eee9f8
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left
                                bgColor=#eee9f8 colSpan=3 height=29><INPUT
                                name="mail1"
                                class=bodytext id="mail1" onFocus="return jdate()">
                                  <SPAN
                                id=ctl00_ContentPlaceHolder_REVEmailID
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR><TR bgcolor="#F0F0F0">
                                <TD class=border_bottom align=left height=29><SPAN
                                class=forms_text>PhoneNo</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top
                                align=left height=29></TD>
                                <TD class=border_bottom vAlign=center align=left colSpan=3 height=29><SPAN
                                id=ctl00_ContentPlaceHolder_LblPwdErr
                                style="COLOR: red">
                                  <INPUT
                                class=bodytext
                                name="PhoneNo" onFocus="return mail()">
                                </SPAN><SPAN
                                id=ctl00_ContentPlaceHolder_RFVPassword
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR bgcolor="#EEE9F8" class=border_bottom>
                                <TD class=border_bottom align=left height=29><SPAN
                                class=forms_text>Qualification</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top
                                align=left width=20
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left colSpan=3 height=15><SPAN
                                id=ctl00_ContentPlaceHolder_LblPwdErr
                                style="COLOR: red">
                                  <INPUT
                                class=bodytext
                                name="Qualification" onFocus="return phno()">
                                </SPAN> </TD>
                                </TR>

                                <TR>
                                <TD class=border_bottom align=left colSpan=5
                                height=15>&nbsp;</TD></TR>
                                <TR>
                                <TD class=border_bottom align=left width=149
                                bgColor=#eee9f8 height=29><SPAN
                                class=forms_text>Designation</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top
                                align=left width=20 bgColor=#eee9f8
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left
                                bgColor=#eee9f8 colSpan=3 height=29><INPUT
                                class=bodytext
                                name="Designation" onFocus="return qualification()">
                                  <SPAN
                                id=ctl00_ContentPlaceHolder_REVEmailID
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR>
                                <TD class=border_bottom align=left
                                bgColor=#f0f0f0 height=29><SPAN
                                class=forms_text>Specialisation</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top
                                align=left width=20 bgColor=#f0f0f0
                                height=29></TD>
                                <TD class=border_bottom vAlign=center align=left
                                bgColor=#f0f0f0 colSpan=3 height=15><SPAN
                                id=ctl00_ContentPlaceHolder_LblLoginIDErr
                                style="COLOR: red">
                                <select name="Specialisation" id="Specialisation" onFocus="return desgntn()">
                                  <option value="0">--select--</option>
								<OPTION
                                value="Anesthesiology">Anesthesiology</OPTION>
								<OPTION value="Bio-Chemistry">Bio-Chemistry</OPTION>
								<OPTION value="Cardio Thoracic Surgery">Cardio Thoracic Surgery</OPTION>
                                <OPTION value="Cardiology">Cardiology</OPTION>
								 <OPTION value="Chest Physician">Chest Physician</OPTION>
								 <OPTION value="Critical Care">Critical Care</OPTION>

								<OPTION  value="Dermatology">Dermatology</OPTION>
								<OPTION  value="Diabetology">Diabetology</OPTION>
								 <OPTION  value="Dietary Services">Dietary Services</OPTION>
								<OPTION   value="Emergency Medicine">Emergency Medicine</OPTION>
								 <OPTION  value="Endocrinology">Endocrinology</OPTION>
								  <OPTION value="Endoscopy">Endoscopy</OPTION>
								  <OPTION value="ENT">ENT</OPTION>

                                <OPTION value="Gastro-Enterology">Gastro-Enterology</OPTION>
                                <OPTION value="Gastrointestinal Medicine">GastrointestinalMedicine</OPTION>
								<OPTION value="General Medicine">General Medicine</OPTION>
								<OPTION value="General Surgery">General Surgery</OPTION>
								 <OPTION value="Geriatrics">Geriatrics</OPTION>
								 <OPTION value="Gynecology">Gynecology</OPTION>
								<OPTION  value="Haematology">Haematology</OPTION>
								<OPTION  value="Internal Medicine">Internal Medicine</OPTION>
								 <OPTION value="Interventional Radiology">Interventional Radiology</OPTION>
                                <OPTION value="Laparoscopic Surgery">Laparoscopic Surgery</OPTION>
                                <OPTION value="Medical Oncology">Medical Oncology</OPTION>
                                <OPTION value="Micro-Biology">Micro-Biology</OPTION>
								<OPTION  value="Nephrology">Nephrology</OPTION>
								<OPTION  value="Neurology">Neurology</OPTION>
								 <OPTION value="Neuro-Surgery">Neuro-Surgery</OPTION>
								 <OPTION  value="Nuclear Medicine">Nuclear Medicine</OPTION>
								<OPTION  value="Obstetrics & Gynecology">Obstetrics & Gynecology</OPTION>
                                <OPTION value="Ophthalmology">Ophthalmology</OPTION>
								 <OPTION value="Orthopedics">Orthopedics</OPTION>
								 <OPTION  value="Pathology">Pathology</OPTION>
								 <OPTION   value="Pediatric Cardiology">Pediatric Cardiology</OPTION>
								 <OPTION value="Pediatric Surgery">Pediatric Surgery</OPTION>
								  <OPTION value="Pediatrics">Pediatrics</OPTION>
								   <OPTION  value="Physicians">Physicians</OPTION>
								    <OPTION value="Physiotherapy">Physiotherapy</OPTION>
                                </select>
</SPAN><SPAN
                                id=ctl00_ContentPlaceHolder_RFVLoginID
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR>
                                <TR>
                                <TD class=border_bottom align=left
                                bgColor=#eee9f8 height=29><SPAN
                                class=forms_text>WorkingHours</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top
                                align=left bgColor=#eee9f8 height=29></TD>
                                <TD class=border_bottom vAlign=center align=left
                                bgColor=#eee9f8 colSpan=3 height=29><SPAN
                                id=ctl00_ContentPlaceHolder_LblPwdErr
                                style="COLOR: red">
                                  <INPUT
                                class=bodytext
                                name="WorkingHours" onFocus="return spcl()">
                                </SPAN><SPAN
                                id=ctl00_ContentPlaceHolder_RFVPassword
                                style="DISPLAY: none; COLOR: red"></SPAN></TD>
                                </TR><TR bgcolor="#F0F0F0">
                                <TD class=border_bottom align=left height=29><SPAN
                                class=forms_text>DStatus</SPAN></TD>
                                <TD class=border_left_bottom vAlign=top
                                align=left height=29></TD>
                                <TD class=border_bottom vAlign=center align=left colSpan=3 height=29><SPAN
                                id=ctl00_ContentPlaceHolder_LblPwdErr
                                style="COLOR: red">
                                  <INPUT
                                class=bodytext
                                name="DStatus" onFocus="return whrs()">
                                </SPAN><SPAN
                                id=ctl00_ContentPlaceHolder_RFVPassword
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
