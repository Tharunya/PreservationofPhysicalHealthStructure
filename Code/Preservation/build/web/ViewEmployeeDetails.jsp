<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<META><LINK 
href="file:///C|/Documents%20and%20Settings/Administrator/Desktop/Registration%20%20Patients%20&%20Visitors%20%20CARE%20Hospitals_files/Master.css" 
type=text/css rel=stylesheet>

<LINK 
href="file:///C|/Documents%20and%20Settings/Administrator/Desktop/Registration%20%20Patients%20&%20Visitors%20%20CARE%20Hospitals_files/SpryTabbedPanels.css" 
type=text/css rel=stylesheet>

<META http-equiv=imagetoolbar content=no>
<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
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
int Empno=Integer.parseInt(request.getParameter("empid"));
		String EFname="";
		String ELname="";
		String DOB="";
		String Designation="";
		String Addr1="";
		String Addr2="";
		String District="";
		String State="";
		String Country="";
		String Mobile="";
		
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection con=DriverManager.getConnection("Jdbc:Odbc:HCS");
			PreparedStatement ps=con.prepareStatement("select * from Employee where Empno=?");
			ps.setInt(1,Empno);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				EFname=rs.getString(2);
				ELname=rs.getString(3);
				DOB=rs.getString(4);
				Designation=rs.getString(5);
				Addr1=rs.getString(6);
				Addr2=rs.getString(7);
				District=rs.getString(8);
				State=rs.getString(9);
				Country=rs.getString(10);
				Mobile=rs.getString(11);
							
			}
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
                        width=900 align=center border=0>
                          <TBODY>
                          <TR bgcolor="#eee9f8">
                            <TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">FName</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">LName</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">DOB</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">Designation</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">Addr1</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">Addr2</div></TD>
							<TD width=101 height=22 align=left vAlign=top class="style3"><div align="center">District</div></TD>
                            <TD width="101" height=22 align=left vAlign=top><div align="center" class="style3">
                              <div align="center">State</div>
                            </div></TD>
                            <TD width=101 height=22 align=left vAlign=top><div align="center" class="style4">
                              <div align="center">Country</div>
                            </div></TD> <TD width=101 height=22 align=left vAlign=top><div align="center" class="style4">
                              <div align="center">Mobile</div>
                            </div></TD>
							
							</tr>
                          <TR bgcolor="#F0F0F0">
                            <TD width=101 align=left vAlign=top><div align="center" class="style6"><%out.println(EFname);%></div></TD>
									<TD width=101 align=left vAlign=top> <div align="center" class="style6"><% out.println(ELname);%></div></TD>
									<TD align=middle vAlign=top> <div align="center" class="style6"><%out.println(DOB); %></div></TD>
                            		<TD width=101 align=left vAlign=top><div align="center" class="style6"><%out.println(Designation);%></div></TD>
									<TD width=101 align=left vAlign=top><div align="center" class="style6"><%out.println(Addr1);%> </div></TD>
									<TD width=101 align=left vAlign=top><div align="center" class="style6"><%out.println(Addr2);%></div></TD>
									<TD width=101 align=left vAlign=top><div align="center" class="style6"><%out.println(District);%></div></TD>
									<TD width=101 align=left vAlign=top><div align="center" class="style6"> <%out.println(State);%> </div></TD>
									<TD width=101 align=left vAlign=top><div align="center" class="style6"> <%out.println(Country);%></div></TD>
									<TD width=101 align=left vAlign=top><div align="center" class="style6"> <%out.println(Mobile);%></div></TD>
							
							
							</tr>
                          <TR>
                            
						  
						  </TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV></TD>
                <TD width=33>&nbsp;</TD></TR><TR>
                <TD width=33>&nbsp;</TD>
                <TD height=185>
                  <DIV id=ctl00_ContentPlaceHolder_UpdatePanel1>
                  <DIV align=center><SPAN 
                  id=ctl00_ContentPlaceHolder_LblMsg></SPAN><BR></DIV>
                  <TR>
						  
               
			   <!------------------Third table starts here---------------------------------->
			    
				
				<TR>
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


