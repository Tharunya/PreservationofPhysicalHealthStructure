




// This program has been cheked for general to icu transfer and need to check the icu to genral


import java.sql.*;
class PatientTransfer1  
{
	public static void main(String[] args) 
	{
	
try{
	//storing the values of from and to
	String fromwardtype="";
	String towardtype="2";

	String fromwardno="";
	String towardno="G1";
	
	String fromBedno="";
	String toBedno="1";
	
	String RegNo="1";
	
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:HCS");
	
	//getting the patient admission details of the given registration number
	PreparedStatement ps=con.prepareStatement("select * from Patient_Admit where RegNo=RegNo");
	ResultSet rs=ps.executeQuery();
	while(rs.next())
		{
			
			fromwardtype=rs.getString("WardType");
			//checking if the ward type is equaal to ICU
System.out.println("after getting val");
System.out.println(fromwardtype);
		if(fromwardtype.equals("1"))
			{
			//Transfer of patient from General ward to ICUward
						//getting the ICU details
					fromwardno=rs.getString("WardNo");
					fromBedno=rs.getString("IBedNo");
			

			//updating the Patientadmit table with ICU information
			PreparedStatement ps1=con.prepareStatement("update Patient_Admit set WardNo=?,IBedNo=?,WardType=?,GBedNo=?");
			ps1.setString(1,towardno);
			ps1.setString(2,toBedno);
			ps1.setString(3,towardtype);
			ps1.setString(4,"NA");
			ps1.executeUpdate();
			System.out.println("updated admit tabel with ICU information");
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
		{/*
						//Transfer of patient from Generalward to ICU ward

			//gettin the General details
			fromwardno=rs.getString("WardNo");
			fromBedno=rs.getString("GBedNo");
			System.out.println("this is else part"+fromwardno);

			//updating the patientadmit table withe generala infromation
			PreparedStatement ps3=con.prepareStatement("update Patient_Admit set WardNo=?,IBedNo=?,WardType=?,GBedNo=? ");
			ps3.setString(1,towardno);
			ps3.setString(2,toBedno);
			ps3.setString(3,towardtype);
			ps3.setString(4,"NA");
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
					
		*/
		System.out.println("hai");
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
