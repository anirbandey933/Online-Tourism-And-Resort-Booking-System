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
        String ContactNo=request.getParameter("ContactNo");
		String Address=request.getParameter("Address");
        String AdminId=request.getParameter("AdminId");
		String Password=request.getParameter("Password");
        PreparedStatement ps;
        Connection con;
        ResultSet rs= null;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
       	ps=con.prepareStatement("insert into ADMIN_REGISTER values(?,?,?,?,?,?)");
		ps.setString(1,Name);
		ps.setString(2,Email);
		ps.setString(3,ContactNo);
		ps.setString(4,Address);
		ps.setString(5,AdminId);
		ps.setString(6,Password);
        int insertResult = ps.executeUpdate();
        if(insertResult!=0)
        {
			response.sendRedirect("successfullyregistered1.html");
		}
    }
	catch(Exception e)
	{
		out.print(e);
	}
%>
         
</body>
</html>