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
    String UName = request.getParameter("UName");    
    String Email = request.getParameter("Email");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
    Statement stmt = con.createStatement();
    ResultSet rs;

    rs = stmt.executeQuery("select * from BOOK_HOTEL where UNAME='" + UName + "' and EMAIL='" + Email + "'");
    if(rs.next()) {
		
        response.sendRedirect("HStatus2.jsp?UName="+UName+"&Email="+Email+"&submit=Submit");
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
</p>

</body>
</html>		