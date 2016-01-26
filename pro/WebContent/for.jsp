<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String Newpassword = request.getParameter("pwd1");
String user = request.getParameter("user");
String email = request.getParameter("EMail");


Connection con = null;
Statement st = null;
String emailid = "";
int id = 0;
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection("jdbc:oracle:thin:system/lenovo@localhost");
st = con.createStatement();
ResultSet rs = st.executeQuery("select * from Newuser1 where email= '"+ email +"'");
if (rs.next()) { 
emailid = rs.getString("email");
} 
if (emailid.equals(email)) {
st = con.createStatement();
int i = st.executeUpdate("update Newuser1 set pwd1='"+ Newpassword + "' where email='"+ email +"'");
response.sendRedirect("login.jsp");
st.close();
con.close();
} else {
out.println("username or emailid doesn't match");
response.sendRedirect("forgot.jsp");
}
} catch (Exception e) {
out.println(e);
}
%>