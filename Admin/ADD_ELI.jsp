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
		
		PreparedStatement ps;
        Connection con;
        ResultSet rs= null;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
       
       	ps=con.prepareStatement("insert into ADD_EL values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,Location);
		ps.setString(2,PoliceStationName);
		ps.setString(3,PContactNo);
		ps.setString(4,FirebrigadeName);
		ps.setString(5,FContactNo);
		ps.setString(6,HospitalName);
		ps.setString(7,HContactNo);
		ps.setString(8,RestaurantName);
		ps.setString(9,RContactNo);
		ps.setString(10,MultiplexName);
		ps.setString(11,MContactNo);
		ps.setString(12,SpaCenterName);
		ps.setString(13,SContactNo);
		
        int insertResult = ps.executeUpdate();
        if(insertResult!=0)
        {
			response.sendRedirect("successfullyadded.html");
		}
    }
	catch(Exception e)
	{
		out.print(e);
	}
%>
         
</body>
</html>