<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script type="text/javascript">
<!--
var image1=new Image()
image1.src="1.jpg"
var image2=new Image()
image2.src="2.jpg"
var image3=new Image()
image3.src="3.jpg"
//-->
</script>
<style>
*{
margin:0px;
padding:0px;

}
#up{
	width:100%;height:30px;background-color:#9f9d9b;
	}

	ul#menu1{
		list-style-type:none;
		float:right;
		margin-right:20px;
		padding-bottom:8px

		}
		ul#menu1 li{
			float:left;
			border-left:1px solid #d5d3d3;
			margin-left:5px;
          padding:5px;
			}
			ul#menu1 li a{
				text-decoration:none;
				color:white;

				}
				#header{
					background:url(health.jpg) no-repeat;
					border:0px solid #c3d7f3;

										}
					ul#menu2{
						list-style-type:none;
						font-family:Arial, Helvetica, sans-serif;
						font-size:14px;

						}
						ul#menu2 li{
							float:left;
							padding:10px;
							border-left:1px solid #d5d3d3;
							margin-left:8px;
							}
							ul#menu2 li a{
							text-decoration:none;
							color:#567cfa;

							}
							ul#menu2 li a:hover{
							text-decoration:none;
								color:#b2c2f7;
							}
							#left1,#right1{
								height:500px;
								margin-top:3px;

								}
								#left1{
									width:300px;
									background-color:#f9f9f9;
									float:left;
									}
									#right1{
								width:703px;

									float:right;

									}
									#headermain{
										margin-top:3px;
										}
										table {
											padding-left:25px;

font-size: 10pt;

height:100px;


}
#form{

	}
#border {

border: 2px solid white;

background: #aedef9;

padding: 15px;

margin:150px;
margin-left:170px;
margin-top:70px;
width: 300px;

}
input{
	margin-bottom:4px;
	padding-bottom:5px;
	}

				ul#aside{
					list-style-type:none;
				font-family:Arial, Helvetica, sans-serif;
					padding:40px;

					}
					ul#aside li{

						border-bottom:1px solid #ebeaea;
						margin-bottom:15px;
						}
					ul#aside li a{

						text-decoration:none;
						color:#5680f8;
						}
							ul#aside li a:hover{
								color:#8fa0f8;

						padding-left20px;

						}
</style>
</head>

<body>
<div id="main">
<div id="up">
<ul id="menu1">
<li><a href="index.jsp">Home</a></li>
<li><a href="#">sitemap</a></li>
<li><a href="RequestEstimateF.jsp">services</a></li>
<li><a href="#">contactus</a></li>



</ul>
</div><!--up-->
<div style="clear:both;"></div>
<div id="marquee" style="width:100%;height:40px;background-color:#7a98fa;margin-top:-7px;">
<marquee scrollamount="5"  style="padding:8px;"><i style="color:white;letter-space:2px;" ><b>The preservation of physical health structure......<b></i></marquee>
</div>
<div style="clear:both;"></div>
<div id="submain">
<div id="headermain">
<div id="leftheader" style="width:290px;height:220px;float:left;margin-left:8px; margin-top:3px;">

<img src="1.jpg" name="slide" width="290" height="220" />
<script>
<!--
//variable that will increment through the images
var step=1
function slideit(){
//if browser does not support the image object, exit.
if (!document.images)
return
document.images.slide.src=eval("image"+step+".src")
if (step<3)
step++
else
step=1
//call function "slideit()" every 2.5 seconds
setTimeout("slideit()",1000)
}
slideit()
//-->
</script>

</div><!--left header-->
<div id="header" style="width:700px;height:220px; float:right;margin-left:7px;margin-top:3px;"></div>
</div><!--headermain-->
<div style="clear:both;"></div>
<div id="nav" style="width:100%;height:40px;background-color:#f9f9f9;">
<ul id="menu2">
<li><a href="PatientRegF.jsp" target="body">Registration</a></li>
<li><a href="PatientAdmitF.jsp" target="body">Admit</a></li>
<li><a href="BillPaymentF.jsp" target="body">Bill payment</a></li>
<li><a href="PatientlabSurgeryForm.jsp" target="body">Lab&surgery</a></li>

<li><a href="PatientTransferF.jsp" target="body">Transfer</a></li>
<li><a href="PatientDetailsF.jsp" target="body">Patent details</a></li>
<li><a href="PatientDischargeF.jsp" target="body">Discharge</a></li>
<li><a href="VerifyCharges.jsp" target="body">Charges</a></li>




</ul>
</div><!--nav-->
<div style="clear:both;"></div>

<div id="content">
<div id="left1" >

<ul id="aside">
<li><a href="ChangeEmployeePasswordF.jsp" target="body" style="font-style:normal;">Change password</a></li>
<li><a href="EmployeeEditProfileF.jsp" target="body" style="font-style:normal;">Edit profile</a></li>
<li><a href="ViewDoctorScheduleF.jsp" target="body" style="font-style:normal;">View shedule</a></li>
<li><a href="TestReportF.jsp" target="body" style="font-style:normal;">Genarate text report</a></li>
<li><a href="ViewTestreport.jsp" target="body" style="font-style:normal;">View text report</a></li>


</ul>

</div>
<div id="right1">
<iframe src="employee homee.html"  frameborder="2" name="body" style="overflow:scroll;height:680px; width:703px;border:2px solid lightblue;">hji</iframe>

</div>

</div><!--content-->
<div style="clear:both;"></div>
<div id="footer" style="width:100%;height:20px;background-color:#7a98fa;margin-top:185px;">
<p style="color:white;text-align:center;"><b>Copyrights@2013.. www.datapointinfo.com</b></p>
</div>
</div><!--submain-->
</div><!--main-->
</body>
</html>
