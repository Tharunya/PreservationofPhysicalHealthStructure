// JavaScript Document
function checkEmpid(empid)

  { 
//alert(empid);
  xmlHttp=CreateXmlHttpObject()

  if (xmlHttp==null)

  {

  alert ("Browser does not support HTTP Request")

  return

  } 
  if(empid!="")
  {
  var req=empid
  
  var url="EmpAvailability.jsp"

  url=url+"?qparam="+req
  
  url=url+"&sid="+Math.random()

  xmlHttp.onreadystatechange=stateChanged14

  xmlHttp.open("GET",url,true)

  xmlHttp.send(null)
  }
  }

function stateChanged14() 

  { 

  	if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")

  	{	 
//alert(a);

document.getElementById("showempid").innerHTML=xmlHttp.responseText

  	} 

  }





//---------------------------------------------------------------
function checkSchdId(schid)

  { 
alert(schid);
  xmlHttp=CreateXmlHttpObject()

  if (xmlHttp==null)

  {

  alert ("Browser does not support HTTP Request")

  return

  } 
  
  var req=schid
  
  var url="SchidAvailability.jsp"

  url=url+"?qparam="+req
  
  url=url+"&sid="+Math.random()

  xmlHttp.onreadystatechange=stateChanged13

  xmlHttp.open("GET",url,true)

  xmlHttp.send(null)

  }

function stateChanged13() 

  { 

  	if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")

  	{	 
//alert(a);
 


document.getElementById("showsch").innerHTML=xmlHttp.responseText
	 

  	} 

  }











//-------------------------------------------------------
function checkDocId(docid)

  { 
//alert(docid);
  xmlHttp=CreateXmlHttpObject()

  if (xmlHttp==null)

  {

  alert ("Browser does not support HTTP Request")

  return

  } 
  if(docid!="")
  {
  var req=docid
  
  var url="CheckDocid.jsp"

  url=url+"?qparam="+req
  
  url=url+"&sid="+Math.random()

  xmlHttp.onreadystatechange=stateChanged12

  xmlHttp.open("GET",url,true)

  xmlHttp.send(null)
  }
  }

function stateChanged12() 

  { 

  	if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")

  	{	 
//alert(a);
 


document.getElementById("showdoc").innerHTML=xmlHttp.responseText
	 

  	} 

  }




//--------------------------------------------------------
function checkReg(regno)

  { 
//alert(regno);
  xmlHttp=CreateXmlHttpObject()

  if (xmlHttp==null)

  {

  alert ("Browser does not support HTTP Request")

  return

  } 
  if(regno!="")
  {
  var req=regno
  
  var url="RegAvailability.jsp"

  url=url+"?qparam="+req
  
  url=url+"&sid="+Math.random()

  xmlHttp.onreadystatechange=stateChanged11

  xmlHttp.open("GET",url,true)

  xmlHttp.send(null)
  }
  }

function stateChanged11() 

  { 

  	if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")

  	{	 
//alert(a);

document.getElementById("show").innerHTML=xmlHttp.responseText

  	} 

  }











//----------------------------------------------
function showDischarge(regno)

  { 
  //alert(regno);
  xmlHttp=CreateXmlHttpObject()

  if (xmlHttp==null)

  {

  alert ("Browser does not support HTTP Request")

  return

  } 
  
  var req=regno
  
  var url="ShowDischarge.jsp"

  url=url+"?qparam="+req
  
  url=url+"&sid="+Math.random()

  xmlHttp.onreadystatechange=stateChanged1

  xmlHttp.open("GET",url,true)

  xmlHttp.send(null)

  }

function stateChanged1() 

  { 

  	if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")

  	{	 
var a=xmlHttp.responseText.split(",")

//alert(a);
document.getElementById("Bedamt").value=a[0]

document.getElementById("Labamt").value=a[1]
document.getElementById("Medicine").value=a[2]
document.getElementById("Surgery").value=a[3]
document.getElementById("OtherTreat").value=a[4]

if(a[0]!=b)
document.getElementById("t1").value=1;

if(a[1]!=b)
document.getElementById("t1").value=1;

if(a[2]==b)
document.getElementById("t1").value=1;

if(a[3]==b)
document.getElementById("t1").value=1;

if(a[4]!=b)
document.getElementById("t1").value=1;


//  		document.getElementById("showtotal").innerHTML=xmlHttp.responseText

  	} 

  }



function showSurgeryAmount(regno)

  { 
  //alert(regno);
  xmlHttp=CreateXmlHttpObject()

  if (xmlHttp==null)

  {

  alert ("Browser does not support HTTP Request")

  return

  } 
  
  var req=regno
  
  var url="ShowSurgeryAmount.jsp"

  url=url+"?qparam="+req
  
  url=url+"&sid="+Math.random()

  xmlHttp.onreadystatechange=stateChanged10

  xmlHttp.open("GET",url,true)

  xmlHttp.send(null)

  }

function stateChanged10() 

  { 

  	if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")

  	{	 
var a=xmlHttp.responseText.split(",")
//alert(a);
document.getElementById("Actualamt").value=a[0]
document.getElementById("Paidamt").value=a[1]
document.getElementById("Dueamt").value=a[2]

//  		document.getElementById("showtotal").innerHTML=xmlHttp.responseText

  	} 

  }




//----------------------------------------------------------------------------
function showLabAmount(regno)

  { 
  //alert(regno);
  xmlHttp=CreateXmlHttpObject()

  if (xmlHttp==null)

  {

  alert ("Browser does not support HTTP Request")

  return

  } 
  
  var req=regno
  
  var url="ShowLabAmount.jsp"

  url=url+"?qparam="+req
  
  url=url+"&sid="+Math.random()

  xmlHttp.onreadystatechange=stateChanged9

  xmlHttp.open("GET",url,true)

  xmlHttp.send(null)

  }

function stateChanged9() 

  { 

  	if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")

  	{	 
var a=xmlHttp.responseText.split(",")
alert(a);
document.getElementById("Actualamt").value=a[0]
document.getElementById("Paidamt").value=a[1]
document.getElementById("Dueamt").value=a[2]

  		//document.getElementById("showtotal").innerHTML=xmlHttp.responseText

  	} 

  }




//--------------------------------------------------------------------

function showBedAmount(regno)

  { 
//  alert(regno);
  xmlHttp=CreateXmlHttpObject()

  if (xmlHttp==null)

  {

  alert ("Browser does not support HTTP Request")

  return

  } 
  
  var req=regno
  
  var url="ShowBedAmount.jsp"

  url=url+"?qparam="+req
  
  url=url+"&sid="+Math.random()

  xmlHttp.onreadystatechange=stateChanged6

  xmlHttp.open("GET",url,true)

  xmlHttp.send(null)

  }

function stateChanged6() 

  { 

  	if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")

  	{	 
var a=xmlHttp.responseText.split(",")
//alert(a);
document.getElementById("Actualamt").value=a[0]
document.getElementById("Paidamt").value=a[1]
document.getElementById("Dueamt").value=a[2]
  		//document.getElementById("showtotal").innerHTML=xmlHttp.responseText

  	} 

  }
  
  //--------------------------------------------------------------------------------
function CreateXmlHttpObject()

  { 

  var objXMLHttp=null

  if (window.XMLHttpRequest)

  {

  objXMLHttp=new XMLHttpRequest()

  }

  else if (window.ActiveXObject)

  {

  objXMLHttp=new ActiveXObject("Microsoft.XMLHTTP")

  }

  return objXMLHttp

  }



