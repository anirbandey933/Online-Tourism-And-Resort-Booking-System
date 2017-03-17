<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title></title>
</head>

<body>
<%
	try
	{
		String PackageId=request.getParameter("PackageId");
		String Locations=request.getParameter("Locations");
        String Duration=request.getParameter("Duration");
        String Price=request.getParameter("Price");
		String Valid=request.getParameter("Valid");
        Connection con;
        Statement stmt;
		int rn= 0;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
		stmt=con.createStatement();
		rn=stmt.executeUpdate("UPDATE ADD_PACK SET LOCATIONS='"+ Locations +"',DURATION='" + Duration + "',PRICE='" + Price + "',VALID='" + Valid + "' WHERE PACKAGEID='" + PackageId + "'");
		if(rn>0)
		{
%>
			<center>
			<h1>Modified</h1>
			<a href="service1.jsp">Continue</a>
			</center>
<%	
		}
	   	con.close();
       	
    }
	catch(Exception e)
	{
		out.print(e);
	}
%>
</body>
</html>