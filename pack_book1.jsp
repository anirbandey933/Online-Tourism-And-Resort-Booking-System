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
        String PackageId=request.getParameter("PackageId");
		String Locations=request.getParameter("Locations");
		String Duration=request.getParameter("Duration");
        String Price=request.getParameter("Price");
		String Valid=request.getParameter("Valid");
		String UName=request.getParameter("UName");
		String PhoneNo=request.getParameter("PhoneNo");
		String Email=request.getParameter("Email");
		String Address=request.getParameter("Address");
		String Member=request.getParameter("Member");
		PreparedStatement ps;
        Connection con;
        ResultSet rs= null;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
       
       	ps=con.prepareStatement("insert into BOOK_PACKAGE values(?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,PackageId);
		ps.setString(2,Locations);
		ps.setString(3,Duration);
		ps.setString(4,Price);
		ps.setString(5,Valid);
		ps.setString(6,UName);
		ps.setString(7,PhoneNo);
		ps.setString(8,Email);
		ps.setString(9,Address);
		ps.setString(10,Member);
		int insertResult = ps.executeUpdate();
        
		session.setAttribute("UName",UName);
		session.setAttribute("Price",Price);
		session.setAttribute("Member",Member);
		
		if(insertResult!=0)
        {
			response.sendRedirect("pack_book2.jsp");
		}
		else
        {
			out.print("You Need To Provide An Unique UserName!!!");
		}
    }
	catch(Exception e)
	{
		out.print(e);
	}
%>
</body>
</html>