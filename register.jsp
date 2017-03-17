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
        String Name=request.getParameter("Name");
        String Email=request.getParameter("Email");
        String PhoneNo=request.getParameter("PhoneNo");
		String UserId=request.getParameter("UserId");
        String Password=request.getParameter("Password");
        String Message=request.getParameter("Message");
        PreparedStatement ps;
        Connection con;
        ResultSet rs= null;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
       
       	ps=con.prepareStatement("insert into OTRS_REGISTER values(?,?,?,?,?,?)");
		ps.setString(1,Name);
		ps.setString(2,Email);
		ps.setString(3,PhoneNo);
		ps.setString(4,UserId);
		ps.setString(5,Password);
	   	ps.setString(6,Message);
        int insertResult = ps.executeUpdate();
        if(insertResult!=0)
        {
			response.sendRedirect("successfullyregistered.html");
		}
    }
	catch(Exception e)
	{
		out.print(e);
	}
%>
         
</body>
</html>