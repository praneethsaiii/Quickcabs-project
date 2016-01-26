<%@ page import ="java.sql.*" %>
<%
String userid=request.getParameter("user");
String password=request.getParameter("pwd1");
Connection con=null;
Statement st=null;
ResultSet rs=null;
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:system/lenovo@localhost");
st=con.createStatement();
rs = st.executeQuery("select * from Newuser1 where uname='" + userid + "' and pwd1='" + password + "'");
if(rs.next())
{
	response.sendRedirect("home.jsp");
	
}
else
{
	
	%>
	<html>
	<body>
	<h3>"Invalid credentials <a href='login.jsp'>try again</a>"</h3>
	</body>
	</html>
<%
}
%>