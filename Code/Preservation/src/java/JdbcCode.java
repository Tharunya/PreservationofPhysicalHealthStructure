import java.io.*;
import java.sql.*;
class PatientRegistration
{
	public static void main(String[] args) 
	{
	
	try{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	//PreparedStatement ps=con.prepareStatement("select * from Patient_Registration");
/*	ResultSet rs=ps.executeQuery();
	while(rs.next())
		{
	
	int a=rs.getInt(1);
	String b=rs.getString(2);
		String c=rs.getString(3);
System.out.println("value is"+a);
System.out.println("value is"+b);
System.out.println("value is"+c);*/
//}
PreparedStatement ps=con.prepareStatement("insert into Patient_Registration values (?,?,?,?,?,?,?,?,?,?,?)");
ps.setInt(1,3);
ps.setString(2,"123");
ps.setString(3,"ashish");
ps.setString(4,"kumar");
ps.setString(5,"anil");
ps.setString(6,"male");
ps.setString(7,"23");
ps.setInt(8,500);
ps.setString(9,"a");
ps.setString(10,"3232");
ps.setString(11,"54554");
ps.executeUpdate();
con.close();
System.out.println("inserted");
	}
	catch(Exception e)
		{
	System.out.println(e);
	}
	}
}
