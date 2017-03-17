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
        String HotelId=request.getParameter("HotelId");
		String HotelName=request.getParameter("HotelName");
		String Location=request.getParameter("Location");
        String HotelClass=request.getParameter("HotelClass");
		String Rent=request.getParameter("Rent");
		String ContactNo=request.getParameter("ContactNo");
		String UName=request.getParameter("UName");
		String PhoneNo=request.getParameter("PhoneNo");
		String Email=request.getParameter("Email");
		String Address=request.getParameter("Address");
		String datefrom=request.getParameter("datefrom");
        String dateto=request.getParameter("dateto");
		String Toda=request.getParameter("Toda");
        String Room=request.getParameter("Room");
		String Member=request.getParameter("Member");
		PreparedStatement ps;
        Connection con;
        ResultSet rs= null;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
       
       	ps=con.prepareStatement("insert into BOOK_HOTEL values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1,HotelId);
		ps.setString(2,HotelName);
		ps.setString(3,Location);
		ps.setString(4,HotelClass);
		ps.setString(5,Rent);
		ps.setString(6,ContactNo);
		ps.setString(7,UName);
		ps.setString(8,PhoneNo);
		ps.setString(9,Email);
		ps.setString(10,Address);
		ps.setString(11,datefrom);
		ps.setString(12,dateto);
		ps.setString(13,Toda);
		ps.setString(14,Room);
		ps.setString(15,Member);
		int insertResult = ps.executeUpdate();
        
		session.setAttribute("Rent",Rent);
		session.setAttribute("Room",Room);
		session.setAttribute("Toda",Toda);
		
		if(insertResult!=0)
        {
			response.sendRedirect("hotelbook2.jsp");
		}
    }
	catch(Exception e)
	{
		out.print(e);
	}
%>
</body>
</html>