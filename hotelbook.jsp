<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<%
	String HotelId=request.getParameter("HotelId");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>Hotel Booking</title>
	<style type="text/css">
#square{
	background:red;
	color:snow;
	float:left;
	font:normal 17px times new roman;
	line-height:14px;
	height:25px;
	padding-left:18px;
	text-decoration:none;
	width:85px;
	border-radius:75px;
	}
	#oval1{
	background:green;
	color:snow;
	float:left;
	font:normal 17px times new roman;
	line-height:14px;
	height:25px;
	padding-left:18px;
	text-decoration:none;
	width:85px;
	border-radius:75px;
	}
</style>
	    
</head>

<body background="img/Gallery/15.jpg">
<form name="form1" action="hotelbook1.jsp" method="post">
<div style="width:auto; height:80px;">
<marquee behavior="alternate" scroll amount="5" onMouseOver="stop()" onMouseOut="start()"><h1>WELCOME  TO  HOTEL  BOOKING  SECTION</h1></marquee>
</div><br/>
<div style="width:auto; height:150px;">
<center>
<h2>YOUR HOTEL DETAILS</h2>
</center>
<%
	try
	{
        Connection con;
        Statement stmt;
		ResultSet rs= null;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
 		stmt=con.createStatement();
		rs=stmt.executeQuery("SELECT * FROM ADD_HOTEL WHERE HOTELID='" + HotelId + "'");
		while(rs.next())
		{
%>
<table align="center" width=900 border="3" bgcolor="gold" cellspacing="2" cellpadding="2">
	<tr>
    	<td align="center">
        	<br/>Hotel Id:
        </td>
	    <td align="center">
        	<br/><input type="text" name="HotelId" value=<%=rs.getString("HOTELID")%> readonly>
        </td>
		<td align="center">
        	<br/>Hotel Name:
        </td>
        <td align="center">
        	<br/><input type="text" name="HotelName" value=<%=rs.getString("HOTELNAME")%> readonly>
        </td>
		<td align="center">
        	<br/>Location:
        </td>
	    <td align="center">
        	<br/><input type="text" name="Location" value=<%=rs.getString("LOCATION")%> readonly>
        </td>
	</tr>
	</tr>	
		<td align="center">
        	<br/>HotelClass:
        </td>
        <td align="center">
  			<br/><input type="text" name="HotelClass" value=<%=rs.getString("HOTELCLASS")%>  readonly>      
        </td>
		<td align="center">
        	<br/>Rent/Day:
        </td>
        <td align="center">
  			<br/><input type="number" name="Rent" value=<%=rs.getString("RENT")%>  readonly>      
        </td>
	   	<td align="center">
        	<br/>ContactNo:
        </td>
        <td align="center">
  			<br/><input type="number" name="ContactNo" value=<%=rs.getString("CONTACTNO")%>  readonly>      
        </td>
	</tr>
	<tr>
</table>
</div><br/>
<div style="width:auto; height:auto;">
<center>
<h2>USER BOOKING DETAILS</h2>
</center>
<table align="center" width=1200 border="4" bgcolor="orange" cellspacing="3" cellpadding="3">
	<tr>	
		<td align="center">
        	<br/>User Name:
        </td>
        <td align="center">
  			<br/><input type="text" name="UName" required>
        </td>
		<td align="center">
        	<br/>Phone No.:
        </td>
        <td align="center">
  			<br/><input type="number" name="PhoneNo" placeholder="Enter Number" required>
        </td>
		<td align="center">
        	<br/>Email Id:
        </td>
        <td align="center">
  			<br/><input type="text"  name="Email" required>
        </td>
	</tr>
	<tr>	
		<td align="center">
        	<br/>Address:
        </td>
        <td align="center">
  			<br/><textarea name="Address"  rows="2" cols="16" required></textarea>  
        </td>
		<td align="center">
        	<br/>Starting Date:
        </td>
        <td align="center">
  			<br/><input type="text" name="datefrom" required>
        </td>
		<td align="center">
        	<br/>Ending Date:
        </td>
	    <td align="center">
  			<br/><input type="text" name="dateto" required>
        </td>
	</tr>
	<tr>	
		<td align="center">
        	<br/>Total Days:
        </td>
        <td align="center">
  			<br/><input type="number" name="Toda" required>
        </td>
		<td align="center">
        	<br/>No.Of Rooms :
        </td>
        <td align="center">
  			<br/><input type="number" name="Room" required>
        </td>
		<td align="center">
        	<br/>No.Of Members :
        </td>
        <td align="center">
  			<br/><input type="number" name="Member" required>
        </td>
	</tr>
	<tr>
	<td align="center" colspan="2"><br/><input id="oval1" type="submit" name="submit" value="Book"></td>
	<td align="center" colspan="2"><br/><input id="square" type="submit" name="cancel" value="Cancel"></td>
	</tr>	
</table>
</div>
	
<%         
		}
	   	con.close();
       	
    }
	catch(Exception e)
	{
		out.print(e);
	}
%>
</div>
</form>
</body>
</html>
