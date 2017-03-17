<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>
<pre>&nbsp;</pre>
<p>
  <%
try{
    String AdminId = request.getParameter("AdminId");    
    String Password = request.getParameter("Password");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from ADMIN_REGISTER where ADMINID='" + AdminId + "' and PASSWORD='" + Password + "'");
    if(rs.next()) {
		
        session.setAttribute("adminid",AdminId);
        response.sendRedirect("service1.jsp");
    } 
	else
		{
		response.sendRedirect("error1.html");
		}
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>
</p>

</body>
</html>