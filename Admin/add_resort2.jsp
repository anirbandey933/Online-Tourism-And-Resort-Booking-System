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
		String ResortId=request.getParameter("ResortId");
        String Location=request.getParameter("Location");
		String ResortName=request.getParameter("ResortName");
        String ContactNo=request.getParameter("ContactNo");
		String ResortClass=request.getParameter("ResortClass");
		String Rent=request.getParameter("Rent");
		Connection con;
        Statement stmt;
		int rn= 0;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
		stmt=con.createStatement();
		rn=stmt.executeUpdate("UPDATE ADD_RESORT SET LOCATION='"+ Location +"',RESORTNAME='" + ResortName + "',CONTACTNO='" + ContactNo + "',RESORTCLASS='" + ResortClass + "',RENT='" + Rent + "' WHERE RESORTID='" + ResortId + "'");
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