<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><LINK 
href="file:///C|/Documents%20and%20Settings/Administrator/Desktop/Registration%20%20Patients%20&%20Visitors%20%20CARE%20Hospitals_files/Master.css" 
type=text/css rel=stylesheet>
<title>Untitled Document</title>
</head>

<body>
<%
String utype=(String)session.getAttribute("usertype");
if(utype.equals("Admin"))
{
%>
<TABLE cellSpacing=0 cellPadding=0 width=185 align=center 
            border=0>
              <TBODY>
              <TR>
                <TD>
                  <TABLE cellSpacing=0 cellPadding=0 width=150 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="DoctorRegistrationF.jsp"><FONT 
                        class=submenulink>Doctor Registration</FONT></A> </TD></TR>
						<TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="EmployeeRegistrationF.jsp"><FONT 
                        class=submenulink>Employee Registration</FONT></A> </TD></TR>
						<TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="ChangeAdminPasswordF.jsp"><FONT 
                        class=submenulink>Change Password</FONT></A> </TD></TR>
                    <TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="DeleteEmplyeeF.jsp"><FONT 
                        class=submenulink>Delete Employee</FONT></A> </TD></TR>
                    <TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="DeleteDoctorF.jsp"><FONT 
                        class=submenulink>Delete Doctor</FONT></A> </TD></TR>
                    <TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="AdminEditProfileF.jsp"><FONT 
                        class=submenulink>Edit Profile</FONT></A> </TD></TR>
						<TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="EditOrgAddrsF.jsp"><FONT 
                        class=submenulink>Edit Organisation Profile</FONT></A> </TD></TR>
                    <TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="DoctorDetailsF.jsp"><FONT 
                        class=submenulink>View Doctor Details</FONT></A> </TD></TR>
                    
                    <TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="EmployeeDetailsF.jsp"><FONT 
                        class=submenulink>View Employee Details</FONT></A> </TD></TR>
                    <TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="logout.jsp"><FONT 
                        class=submenulink>Logout</FONT></A> </TD></TR>
                    </TBODY></TABLE></TD></TR></TBODY></TABLE>
<% 
}
else if(utype.equals("Employee"))
{
%>
<TABLE cellSpacing=0 cellPadding=0 width=185 align=center 
            border=0>
              <TBODY>
              <TR>
                <TD>
                  <TABLE cellSpacing=0 cellPadding=0 width=150 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="ChangeEmployeePasswordF.jsp"><FONT 
                        class=submenulink>Change Password</FONT></A> </TD></TR>
                    <TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="EmployeeEditProfileF.jsp"><FONT 
                        class=submenulink>Edit Profile</FONT></A> </TD></TR>
						<TR>
                     <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="ViewDoctorScheduleF.jsp"><FONT 
                        class=submenulink>View Schedule</FONT></A> </TD></TR>
						<TR>
                     <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="TestReportF.jsp"><FONT 
                        class=submenulink>Generate TestReport</FONT></A> </TD></TR>
<TR>
                     <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="ViewTestreport.jsp"><FONT 
                        class=submenulink>View TestReport</FONT></A> </TD></TR>


                    <TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="logout.jsp"><FONT 
                        class=submenulink>Logout</FONT></A> </TD></TR>
                    </TBODY></TABLE></TD></TR></TBODY></TABLE>
<%
}
else if(utype.equals("Doctor"))
{
%>
<TABLE cellSpacing=0 cellPadding=0 width=185 align=center 
            border=0>
              <TBODY>
              <TR>
                <TD>
                  <TABLE cellSpacing=0 cellPadding=0 width=150 align=center 
                  border=0>
                    <TBODY>
                    <TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="ChangeDoctorPasswordF.jsp"><FONT 
                        class=submenulink>ChangePassword</FONT></A> </TD></TR>
				    <TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="EditDoctorProfileF.jsp"><FONT 
                        class=submenulink>Edit Profile</FONT></A> </TD></TR>
						<TR>
					<TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="PatientTreatmentF.jsp"><FONT 
                        class=submenulink>PatientTreatment</FONT></A> </TD></TR>
						<TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="ViewTreatment.jsp"><FONT 
                        class=submenulink>View Treatment</FONT></A> </TD></TR>
                    <TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="DocScheduleF.jsp"><FONT 
                        class=submenulink>Update Schedule</FONT></A> </TD></TR>
                    
					<TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="ViewDoctorScheduleF.jsp"><FONT 
                        class=submenulink>View Schedule</FONT></A> </TD></TR>
					
					<TR>
                      <TD class=contbox onmouseover="className='hoverbox'" 
                      onmouseout="className='contbox'" vAlign=center align=left 
                      height=24><A 
                        href="logout.jsp"><FONT 
                        class=submenulink>Logout</FONT></A> </TD></TR>
                    </TBODY></TABLE></TD></TR></TBODY></TABLE>
<%
}
else{}
%>
</body>
</html>
