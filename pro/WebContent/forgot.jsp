<%-- 
    Document   : forgot
    Created on : 24 Apr, 2015, 10:14:15 PM
    Author     : praneethsai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
#div1{position:absolute;width:1349px;height:200px;text-align:center;background-color:#FBEA54;}
x{position:absolute;top:40px;left:500px;}
#div2{position:absolute;width:570px;height:500px;top:230px;left:380px;border:1px solid;}
.button{background-color:yellow;width:150px;height:50px;font-size:20px;}p{position:absolute;top:1px;left:5px;}
</style>
<script type="text/javascript">
function valid()
{
 
   var emailID = document.form.EMail.value;
   atpos = emailID.indexOf("@");
   dotpos = emailID.lastIndexOf(".");
   if (atpos < 1 || ( dotpos - atpos < 2 )) 
   {
       alert("Please enter correct email ID")
       document.form.EMail.value="";
       document.form.EMail.focus() ;
       return false;
   }
return(true);
}
function checkForm(form)
 {
var x=document.forms["form"]["EMail"].value;
if( document.form.EMail.value == "" )
   {
     alert( "Please provide your Email!" );
     document.form.EMail.focus() ;
     return false;
   }else{
     // Put extra check for data format
     var ret = valid();
     if( ret == false )
     {
          return false;
     }
}

 if(form.pwd1.value != "" && form.pwd1.value !=null)
{
if(form.pwd1.value.length < 6)
 {
 alert("Error: Password must contain at least six characters!"); 
form.pwd1.focus(); 
return false; 
}
 if(form.pwd1.value == form.user.value)
 {
 alert("Error: Password must be different from Username!"); 
form.pwd1.focus(); 
return false;
 }
 re = /[0-9]/;
 if(!re.test(form.pwd1.value))
 {
 alert("Error: password must contain at least one number (0-9)!"); 
form.pwd1.focus();
 return false; 
}
 re = /[a-z]/; 
if(!re.test(form.pwd1.value))
 {
 alert("Error: password must contain at least one lowercase letter (a-z)!"); 
form.pwd1.focus(); 
return false;
 } 
re = /[A-Z]/; 
if(!re.test(form.pwd1.value)) 
{
 alert("Error: password must contain at least one uppercase letter (A-Z)!");
 form.pwd1.focus();
 return false;
 }
 }
 else 
{ 
alert("Error: Please check that you've entered and confirmed your password!"); 
form.pwd1.focus();
 return false; 
}
 
return true; 
 }
 </script>
</head>
<body align="center" bgcolor="">
<div id="div1"><a href="login.jsp" target="_self"><p><img src="logo3.jpg" width="200px" height="200px"></p></a>
<h1><x> Forgot your password? </x></h1>
</div>
<div id="div2">
<form name="form" action="for.jsp" onsubmit="return checkForm(this);"><br><br><br><br>
<table><tr><td>
       <h2>Email_id:</td><td><input type="text" name="EMail" size="20" required></h2></td></tr><br><br><tr>
<td><h2>Username:</td><td><input type="text" name="user" size="20" required></h2></td></tr><br><br><tr>
<td><h2>New Password:</td><td><input type="password" name="pwd1" size="20" required></h2></td></tr></table><br><br>
<pre> 
     <input type="submit" value="Submit" class="button" name="ccc">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Reset" class="button" value="reset" name="ccs"></pre>
</form>
</div>
</body></html>