<%-- 
    Document   : register
    Created on : 24 Apr, 2015, 10:14:28 PM
    Author     : praneethsai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   
<title>signup</title>
<style>
#div1{
position:absolute;
top:100px;
left:700px;
width:400px;
height:500px;
border:1px solid;
background-color:grey;
}
p{position:absolute;left:280px;top:40px;}
x{position:absolute;left:50px;top:40px;}
.button{background-color:yellow;width:150px;height:50px;font-size:20px;}
</style>
<script type="text/javascript">
function valid()
{
 
   var emailID = document.rform.EMail.value;
   atpos = emailID.indexOf("@");
   dotpos = emailID.lastIndexOf(".");
   if (atpos < 1 || ( dotpos - atpos < 2 )) 
   {
       alert("Please enter correct email ID")
       document.rform.EMail.value="";
       document.rform.EMail.focus() ;
       return false;
   }
return(true);
}
function checkForm(rform)
 {
var x=document.forms["rform"]["EMail"].value;
if( document.rform.EMail.value == "" )
   {
     alert( "Please provide your Email!" );
     document.rform.EMail.focus() ;
     return false;
   }else{
     // Put extra check for data format
     var ret = valid();
     if( ret == false )
     {
          return false;
     }
}
var phoneno= /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;  
  if(rform.mobile.value.match(phoneno))  
        {  
      return true;  
        }  
      else  
        {  
        alert("not a valid mobile number");  
        return false;  
        }  
 var str2=document.forms["rform"]["user"].value;
if(str2 == "")
 {
 alert("Error: User name cannot be blank!"); 
form.user.focus(); 
return false; 
}
if(rform.pwd1.value != "" && rform.pwd1.value == rform.pwd2.value)
 { 
if(rform.pwd1.value.length < 6)
 {
 alert("Error: Password must contain at least six characters!"); 
rform.pwd1.focus(); 
return false; 
}
 re = /[0-9]/;
 if(!re.test(rform.pwd1.value))
 {
 alert("Error: password must contain at least one number (0-9)!"); 
rform.pwd1.focus();
 return false; 
}
 re = /[a-z]/; 
if(!re.test(rform.pwd1.value))
 {
 alert("Error: password must contain at least one lowercase letter (a-z)!"); 
rform.pwd1.focus(); 
return false;
 } 
re = /[A-Z]/; 
if(!re.test(rform.pwd1.value)) 
{
 alert("Error: password must contain at least one uppercase letter (A-Z)!");
 rform.pwd1.focus();
 return false;
 }
 }
 else 
{ 
alert("Error: Please check that you've entered and confirmed your password!"); 
rform.pwd1.focus();
 return false; 
} 
return true; 
}
</script>
</head>
<body align="center">
<a href="login.jsp" target="_self"><p><img src="logo3.jpg" width="200px" height="200px"></p></a>
<a href="home.jsp" target="_self"><x><img src="title.jpg" width="200px" height="150px"></x></a>
<div id="div1">
<br><br>
<h1>SIGN UP</h1>
<form name="rform" action="Registercon.jsp" method="post" onsubmit="return checkForm(this);">
<table align="CENTER">
<tr><td> </td><td></td></tr><tr><td> </td><td></td></tr>
<tr><td>Username:</td>
<td><input type="text" name="user" placeholder="user name" size="20" required></td></tr>
<tr><td> </td><td></td></tr><tr><td> </td><td></td></tr>
<tr><td>Email:</td>
<td><input type="text" name="EMail" placeholder="Email" size="20" required></tr></td>
<tr><td> </td><td></td></tr><tr><td> </td><td></td></tr>
<tr><td>Gender:</td>
<td><select name="gender">
<option value="select">..select..</option>
<option value="male">Male
<option value="female">Female
<option value="other">Other</form></td></tr>
<tr><td> </td><td></td></tr><tr><td> </td><td></td></tr>
<tr><td>Mobile number:</td>
<td><input type="text" name="mobile" size="10" placeholder="mobile number" required></tr></td>
<tr><td> </td><td></td></tr><tr><td> </td><td></td></tr>
<tr><td>Password:</td>
<td><input type="password" name="pwd1" size="20" placeholder="password" required></tr></td>
<tr><td> </td><td></td></tr><tr><td> </td><td></td></tr>
<tr><td> Confirm Password:</td>
<td><input type="password" name="pwd2" size="20" placeholder="confirm password" required></tr></td>
</table><br><br>
<pre>
  <input type="submit" value="Submit" class="button" name="register">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Reset" class="button" value="reset" name="clear"></pre>
 </form> </div>
</body>
</html> 