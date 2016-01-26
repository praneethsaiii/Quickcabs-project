<%-- 
    Document   : home
    Created on : 24 Apr, 2015, 10:13:38 PM
    Author     : praneethsai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
#div6{position:absolute;top:1220px;background-color:yellow;width:1490px;height:90px;border:1px solid;}
#div1{
position:absolute;
width:1490px;
height:180px;
border:1px;
background-color:#FBEA54;}
#div2{position:absolute;width:1490px;height:90px;background-color:yellow;top:200px;}
#div3{position:absolute;width:570px;height:600px;top:300px;left:100px;border:1px solid;}
#div4{position:absolute;width:1490px;height:300px;top:920px;border:1px solid;background-color:orange;}
img{right:50px;}
#div5{position:absolute;right:50px;width:500px;height:550px;top:300px;}
x{position:absolute;top:90px;left:1000px;font-size:20px;cursor:hand;}
y{position:absolute;top:90px;left:1150px;font-size:20px;cursor:hand;}
z{position:absolute;top:540px;left:230px;}
w{position:absolute;top:90px;left:800px;font-size:20px;cursor:hand;}
h{font-size:20px;;float:right;}
.button{background-color:yellow;width:150px;height:50px;font-size:20px;}
</style>
<script type="text/javascript">
function checkForm(form)
{
if ( ( form1.o[0].checked == false ) &&( form1.o[1].checked == false ))
{
alert ( "Please choose your mode of trip" );
return false;
}
if(form1.city.value=="select"){
alert("Please select pickup area ");
return false;
}else{
return true;
}

if(form1.city1.value=="select"){
alert("Please select drop area ");
return false;
}else{
return true;
}
}
</script>
</head>
<body>
<div id="div5">
<marquee scrollamount="15" behavior="scroll">
<img src="slide.jpg" width="500px height="500px">
<img src="slide1.jpg" width="500px height="500px">
<img src="slide2.jpg" width="500px height="500px">
</marquee>
</div>
<div id="div1">
<a href=home.jsp>
<img src="title.jpg" width="350px" height="180px" ></a>
&nbsp;
<a href="login.jsp" target="_self"><x>LOGIN</x></a>
<a href="register.jsp" target="_self"><y>REGISTER</y></a>
<a href="about.jsp" target="_self"><w>ABOUT US</w></a>
</div>
<div id="div2">
<h1 align="center">EASIEST WAY TO BOOK A CAB</h1>
</div>
<div id="div3">
<table border="1">
<tr><td><a href="home.jsp" target="_self"><img src="local.png" width="300px" height="150px"></a></td>
<td><a href="air.jsp" target="_self"><img src="air.jpg" width="250px" height="150px"></a></td></tr>
</table>
<table><tr><form name="form1" onsubmit="return checkForm(this);" action="payment.jsp">
<h2>I want a car for<br> <br><input type="radio" name="o" value="Round Trip">Round Trip&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="o" value="One Way Trip">One Way Trip</h2></tr></table>
<table><tr><td><h2>Pickup Area &nbsp;<select name="city" value="select a City">Select a City
<option value="select">select</option>
<option value="Mumbai">Mumbai
<option value="Bengaluru">Bengaluru
<option value="Chennai">Chennai
<option value="Delhi">Delhi</select></h2></td>&nbsp;&nbsp;&nbsp;&nbsp;
<td><h2>Drop Area&nbsp;<select name="city1" value="select a City">
<option value="select">select</option>
<option value="Mumbai">Mumbai
<option value="Bengaluru">Bengaluru
<option value="Chennai">Chennai
<option value="Delhi">Delhi</select></h2></td></tr>
<br><tr><td></td></tr><tr><td><h2>Date of journey&nbsp;&nbsp;&nbsp;
<input type="Date" name="date" required></h2></td></tr>
<br><tr><td></td></tr><tr><td><h2>Pickup Time&nbsp;&nbsp;&nbsp;
<input type="Time" name="time" required></h2></td></tr>
</table>
<z><input type="submit" class="button" value="Find My Taxi" name="book"></z></form>
</div>
<div id="div4">
<h1 align="center">Book a Cab with quick cabs<h1>
<pre> <h>         -> You can book airport taxis, city cabs, local hire/rental cabs as well as outstation cabs.
         -> We have 1000s of cabs in each city ensuring we have a cab available when you book through us.
         -> We have served 3,000,000+ taxi rides. We have substantial experience in the cab business to deliver what it takes.
         -> Our rates are cheaper than most radio taxis. We also have flat rates for airport cabs in some cities.
         -> You can book a cab either online, through our mobile site, our apps or by calling us at 60606060.
	 -> Book now and pay later. We don't need you to make a payment when you book a cab online!
         -> Multiple car types to choose from - Indica, Sedans, AC cabs, Non-AC cabs - for your travel.
         -> You can book premium cabs like BMW, Mercedes and Jaguar too, through us.</h></pre>
</div>
<div id="div6">
<img src="visa.png" width="110px" height="80px" align="right">
<img src="mastercard.png"width="110px" height="80px"align="right">
<img src="norton.png" width="110px" height="80px" align="right">
</div>
</body>
</html>
