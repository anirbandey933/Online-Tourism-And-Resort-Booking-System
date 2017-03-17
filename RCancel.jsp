<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>
<%
	try
	{
    String UName = request.getParameter("UName");    
    String Email = request.getParameter("Email");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("delete from BOOK_RESORT where UNAME='" + UName + "' and EMAIL='" + Email + "'");
    if(rs.next()) 
	{
		
        response.sendRedirect("index.html");
    } 
	else
		{
		response.sendRedirect("error.html");
		}
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>    
</body>
</html>