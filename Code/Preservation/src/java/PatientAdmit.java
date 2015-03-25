
import java.io.*;
import java.sql.*;
class PatientAdmit
{
	public static void main(String[] args) 
	{
	
	try{
String wardtype="2";
String wardno="G1";
String bedno="1";
int regno=1;String desiese="Paralysis";String payingamt;String DOA;String TOA;
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	PreparedStatement ps=con.prepareStatement("insert into Patient_Admit values (?,?,?,?,?,?,?,?,?)");
	ps.setInt(1,regno);
	ps.setString(2,desiese);
	
	ps.setString(3,wardtype);
	if(wardtype.equals("1"))
		{
		//patient admits in to icu ward
	ps.setString(4,"ICU1");
	ps.setString(5,"1");
	ps.setString(6,"NA");
	//allocating the bed at icu
	PreparedStatement ps1=con.prepareStatement("update ICUBeds set Filled=1 where WardNo='"+wardno+"' and IBedNo='"+bedno+"'");
	ps1.executeUpdate();        
		}
		else
		{
			//patient admits in to genralward
	ps.setString(4,"G1");
	ps.setString(5,"NA");
	ps.setString(6,"1");
	//allocating the general bed
		PreparedStatement ps2=con.prepareStatement("update GeneralBeds set Filled=1 where WardNo=? and GBedNo=?");
		ps2.setString(1,wardno);
		ps2.setString(2,bedno);
		ps2.executeUpdate();   
		}
	
	ps.setInt(7,2300);
	ps.setString(8,"2432");
	ps.setString(9,"2323");
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
