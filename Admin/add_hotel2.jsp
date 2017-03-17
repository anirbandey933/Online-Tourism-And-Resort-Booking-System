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
		String HotelId=request.getParameter("HotelId");
		String Location=request.getParameter("Location");
        String HotelName=request.getParameter("HotelName");
        String ContactNo=request.getParameter("ContactNo");
		String HotelClass=request.getParameter("HotelClass");
		String Rent=request.getParameter("Rent");
        Connection con;
        Statement stmt;
		int rn= 0;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
		stmt=con.createStatement();
		rn=stmt.executeUpdate("UPDATE ADD_HOTEL SET LOCATION='"+ Location +"',HOTELNAME='" + HotelName + "',CONTACTNO='" + ContactNo + "',HOTELCLASS='" + HotelClass + "',RENT='" + Rent + "' WHERE HOTELID='" + HotelId + "'");
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