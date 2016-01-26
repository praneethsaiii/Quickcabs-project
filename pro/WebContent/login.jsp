
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
p{position:absolute;left:50px;top:30px;}
.button{background-color:yellow;width:100px;height:30px;font-size:15px;}
</style>
<script type="text/javascript">
function checkForm(form)
 {
 if(form.user.value == "")
 {
 alert("Error: Username cannot be blank!"); 
form.user.focus(); 
return false; 
}
 re = /^\w+$/; 
if(!re.test(form.user.value))
 {
 alert("Error: Username must contain only letters, numbers and underscores!"); 
form.user.focus(); 
return false;
 }
 if(form.pwd1.value != "" && form.pwd1.value !=null)
{
if(form.pwd1.value.length < 6)
 {
 alert("Error: Password must contain at least six characters!"); 
form.pwd1.focus(); 
return false; 
}
 if(form.pwd1.value == form.username.value)
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
<body bgcolor="#FBEA54" align="center" font="green"><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<a href="home.jsp" target="_self"><p><img src="title.jpg" width="320px" height="180px"></p></a>
<form onsubmit="return checkForm(this);" name="form" action="logincheck.jsp">
<fieldset align="center">
<legend>LOGIN PAGE </legend>
USERNAME:&nbsp;<input type="text" name="user" size="15" PLACEHOLDER="username" required><br><br>
PASSWORD:&nbsp;<input type="password" name="pwd1" size="15" placeholder="password" required><br><br>
<input type="submit" class="button" name="b1" value="Log In">&nbsp;&nbsp;
<input type="reset" name="b2" class="button" value="Reset">&nbsp;&nbsp;
<a href="forgot.jsp"><h4>Forgot your password?</h4></a>
</fieldset>
</form>
</fieldset>
</body>
</html>

