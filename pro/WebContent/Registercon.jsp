<%@ page import ="java.sql.*" %>
<%
String t=request.getParameter("user");
String n=request.getParameter("EMail");
String cn=request.getParameter("gender");
String pos=request.getParameter("mobile");
String req=request.getParameter("pwd1");
String req1=request.getParameter("pwd2");
Connection con=null;
Statement st=null;
ResultSet res=null;
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:system/lenovo@localhost");
st=con.createStatement();
int x=st.executeUpdate("insert into newuser1(uname,email,gender,mobile,pwd1,pwd2) values('"+t+"','"+n+"','"+cn+"','"+pos+"','"+req+"','"+req1+"')"); 
if(x>0)
{
	response.sendRedirect("login.jsp");
}
else
{
	
	%>
	<html>
	<body>
	<h3>"Invalid credentials <a href='register.jsp'>try again</a>"</h3>
	</body>
	</html>
<%
}
%>
