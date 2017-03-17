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
        String Location=request.getParameter("Location");
		String PoliceStationName=request.getParameter("PoliceStationName");
        String PContactNo=request.getParameter("PContactNo");
		String FirebrigadeName=request.getParameter("FirebrigadeName");
		String FContactNo=request.getParameter("FContactNo");
		String HospitalName=request.getParameter("HospitalName");
		String HContactNo=request.getParameter("HContactNo");
		String RestaurantName=request.getParameter("RestaurantName");
		String RContactNo=request.getParameter("RContactNo");
		String MultiplexName=request.getParameter("MultiplexName");
		String MContactNo=request.getParameter("MContactNo");
		String SpaCenterName=request.getParameter("SpaCenterName");
		String SContactNo=request.getParameter("SContactNo");

		
		
		
		Connection con;
        Statement stmt;
		int rn= 0;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
		stmt=con.createStatement();
		rn=stmt.executeUpdate("UPDATE ADD_EL SET LOCATION='"+ Location +"',POLICESTATIONNAME='" + PoliceStationName + "',PCONTACTNO='" + PContactNo + "',FIREBRIGADENAME='" + FirebrigadeName + "',FCONTACTNO='" + FContactNo + "',HOSPITALNAME='" + HospitalName + "',HCONTACTNO='" + HContactNo + "',RESTAURANTNAME='" + RestaurantName + "',RCONTACTNO='" + RContactNo + "',MULTIPLEXNAME='" + MultiplexName + "',MCONTACTNO='" + MContactNo + "',SPACENTERNAME='" + SpaCenterName + "',SCONTACTNO='" + SContactNo + "' WHERE LOCATION='" + Location + "'");
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