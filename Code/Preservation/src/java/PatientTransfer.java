import java.io.*;
import java.sql.*;
class PatientTransfer
{
	public static void main(String[] args)
	{

try{
	//storing the values of from and to
	String fromwardtype="";
	String towardtype="1";

	String fromwardno="";
	String towardno="ICU1";

	String fromBedno="";
	String toBedno="1";

	String RegNo="1";

	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");


	PreparedStatement ps=con.prepareStatement("select * from Patient_Admit where RegNo=RegNo");
	ResultSet rs=ps.executeQuery();

	while(rs.next())
		{
			fromwardtype=rs.getString("WardType");

		if(fromwardtype.equals("1"))
			{
			//transfer of patient from icu to general
			fromwardno=rs.getString("WardNo");
			fromBedno=rs.getString("IBedNo");
		System.out.println(towardtype);
				System.out.println(toBedno);

			// updating admit table with general information
			PreparedStatement ps1=con.prepareStatement("update Patient_Admit set WardNo=?,IBedNo=?,WardType=?,GBedNo=? where RegNo=? ");
			ps1.setString(1,towardno);
			ps1.setString(2,"NA");
			ps1.setString(3,towardtype);
			ps1.setString(4,toBedno);
			ps1.setString(5,RegNo);
			ps1.executeUpdate();

			//updating the ICUBeds for making the bed free
					PreparedStatement ps2=con.prepareStatement("update ICUBeds set Filled=0 where IBedNo=? and WardNo=?");
					ps2.setString(1,fromBedno);
					ps2.setString(2,fromwardno);
					ps2.executeUpdate();
					System.out.println("updated ICUbeds table ");

			//updating generalbeds tabel for allocating the bed
					PreparedStatement ps22=con.prepareStatement("update GeneralBeds set Filled=1 where GBedNo=? and WardNo=?");
					ps22.setString(1,toBedno);
					ps22.setString(2,towardno);
					ps22.executeUpdate();
					System.out.println("updated generalbeds table and allocated bed ");


			}

		else
		{

//Transfer of patient from Generalward to ICU ward

			//gettin the General details
			fromwardno=rs.getString("WardNo");
			fromBedno=rs.getString("GBedNo");
PreparedStatement ps3=con.prepareStatement("update Patient_Admit set WardNo=?,IBedNo=?,WardType=?,GBedNo=? where RegNo=? ");
			ps3.setString(1,towardno);
			ps3.setString(2,toBedno);
			ps3.setString(3,towardtype);
			ps3.setString(4,"NA");
			ps3.setString(5,RegNo);
			ps3.executeUpdate();
			System.out.println("updated admit tabel with icu information");

//updating the GeneralBeds tabel for making the bed free
					PreparedStatement ps4=con.prepareStatement("update GeneralBeds set Filled=0 where GBedNo=? and WardNo=?");
					ps4.setString(1,fromBedno);
					ps4.setString(2,fromwardno);
					ps4.executeUpdate();
			System.out.println("updated General beds by deallocating the bed");

//updating icubeds tabel for allocating the bed
					PreparedStatement ps44=con.prepareStatement("update ICUBeds set Filled=1 where IBedNo=? and WardNo=?");
					ps44.setString(1,toBedno);
					ps44.setString(2,towardno);
					ps44.executeUpdate();
					System.out.println("updated ICUbeds table and allocated bed ");



		}



		}
		con.close();

	}
	catch(Exception e)
		{
		System.out.println(e);

		}


	}
}
