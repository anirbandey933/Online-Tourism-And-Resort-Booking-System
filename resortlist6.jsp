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
        String Amount=request.getParameter("Amount");
		String CardHolderName=request.getParameter("CardHolderName");
        String CardNo=request.getParameter("CardNo");
        String Bank=request.getParameter("Bank");
		PreparedStatement ps;
        Connection con;
        ResultSet rs= null;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
       	ps=con.prepareStatement("insert into RESORT_PAYMENT values(?,?,?,?)");
		ps.setString(1,Amount);
		ps.setString(2,CardHolderName);
		ps.setString(3,CardNo);
		ps.setString(4,Bank);
		int insertResult = ps.executeUpdate();
        if(insertResult!=0)
        {
			response.sendRedirect("resort_book4.html");
		}
    }
	catch(Exception e)
	{
		out.print(e);
	}
%>
         
</body>
</html>