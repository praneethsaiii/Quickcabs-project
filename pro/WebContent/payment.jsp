<%-- 
    Document   : payment
    Created on : 24 Apr, 2015, 10:16:50 PM
    Author     : praneethsai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
	<head>
	<style>
	.button{background-color:red;width:150px;height:50px;font-size:20px;}
	z{position:absolute;top:600px;}
	</style>
<script type="text/javascript">
function valid()
{
if( document.form1.f.value == "select" )
   {
     alert( "Please choose your card type" );

     return false;
   }
   
   var x=document.forms["form1"]["card"].value;
if (x==null || x=="")
{
alert("card number must be filled out");
document.form1.card.focus();
return false;
}

var x=document.forms["form1"]["cname"].value;
if (x==null || x=="")
{
alert("name on the must be filled out");
document.form1.cname.focus();
return false;
}
if( document.form1.exp.value == "select" )
   {
     alert( "Please provide your expiry month" );

     return false;
   }
   if( document.form1.year.value == "select" )
   {
     alert( "Please choose your expiry year" );

     return false;
   }
  var x=document.forms["form1"]["cvv"].value;
if (x==null || x=="")
{
alert("Cvv must be filled out");
document.form1.cvv.focus();
return false;
}
  
   else
   {
alert("transaction completed successfully");
}
return (true);
}
</script>
	<title>make payment</title>
              <link type="text/css" rel="stylesheet" href="style.css">
	</head>
<body background="w8.jpg" bgcolor="yellow">
<a href=home.jsp>
<img src="title.jpg" width="350px" height="180px" ></a>
 <form name="form1" onsubmit=" return valid()" action="home.jsp">              
<center> 
<h1><font color="bgcolor="yellow"">Please Fill Your Payment Details Here </h1><br>      
<table >
<tr><td><font size=5 color="bgcolor="#1A2421"">Choose your card type:</td>
<td><select name="f">
<option value="select">selectcard</option>
<option>citi debit card
<option>master card debit cards(all banks)
<option>sbi maestrocard
<option>other maestro cards
<option>visa debit cards(all banks)
</select></td></tr>
 <tr> <td align="right"><font size=5 color="bgcolor="#1A2421"" >Card number:</td><td><input type="text" name="card" required></td></tr>   
<tr> <td align="right"><font size=5 color="bgcolor="#1A2421"" >Name on card:</td><td><input type="text" name="cname" required ></td></tr>   
<tr><td align="right"><font size=5 color="bgcolor="#1A2421"">Expiry month:</td>
<td><select name="exp">
<option value="select" required>select</option>
<option>1
<option>2
<option>3
<option>4
<option>5
<option>6
<option>7
<option>8
<option>9
<option>10
<option>11
<option>12

</select>
<tr><td align="right"><font size=5 color=" bgcolor="#1A2421"" >Expiry year:</td>
<td><select name="year" required>
<option value="select">select</option>
<option>2013
<option>2014
<option>2015
<option>2016
<option>2017
<option>2018
<option>2019
<option>2020
<option>2021
<option>2022
<option>2023
<option>2024
<option>2025
<option>2026
<option>2027
</select>
    <tr> <td align="right"><font size=3 color="bgcolor="#1A2421"">CVV:</td><td><input type="text" name="cvv" required></td></tr>   
<tr><td align="right"><input type="submit" name="submit" value="Make payment" class="button" ></td></tr>
</table>
</center>
</form>
</body>
