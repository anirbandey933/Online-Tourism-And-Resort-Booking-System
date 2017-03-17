<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<%
	String UName=request.getParameter("UName");
	String Email=request.getParameter("Email");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>Status</title>
	<style type="text/css">
#oval{
	background:blue;
	color:snow;
	float:center;
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

<body>
<form name="form1" action="RCancel.jsp" method="post">
<center>
<h1>YOUR BOOKING DETAILS</h1>
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
		rs=stmt.executeQuery("select * from BOOK_RESORT where UNAME='" + UName + "' and EMAIL='" + Email + "'");
		while(rs.next())
		{
%>
<table align="center" width="1320" border="3" bordercolor="white" bgcolor="violet" cellspacing="4" cellpadding="4">
	<tr>
    	<td align="center">
        	<br/>Resort Id:
        </td>
	    <td align="center">
        	<br/><input type="text" name="HotelId" value=<%=rs.getString("RESORTID")%> readonly>
        </td>
		<td align="center">
        	<br/>Resort Name:
        </td>
        <td align="center">
        	<br/><input type="text" name="HotelName" value=<%=rs.getString("RESORTNAME")%> readonly>
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
        	<br/>ResortClass:
        </td>
        <td align="center">
  			<br/><input type="text" name="HotelClass" value=<%=rs.getString("RESORTCLASS")%>  readonly>      
        </td>
		<td align="center">
        	<br/>Rent/Day(RS):
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
		<td align="center">
        	<br/>User Name:
        </td>
        <td align="center">
  			<br/><input type="text" name="UName" value=<%=rs.getString("UNAME")%>  readonly>
        </td>
		<td align="center">
        	<br/>Phone No.:
        </td>
        <td align="center">
  			<br/><input type="number" name="PhoneNo" value=<%=rs.getString("PHONENO")%>  readonly>
        </td>
		<td align="center">
        	<br/>Email Id:
        </td>
        <td align="center">
  			<br/><input type="text"  name="Email" value=<%=rs.getString("EMAIL")%>  readonly>
        </td>
	</tr>
	<tr>	
		<td align="center">
        	<br/>Address:
        </td>
        <td align="center">
  			<br/><input type="text" name="Address" value=<%=rs.getString("ADDRESS")%>  readonly> 
        </td>
		<td align="center">
        	<br/>Starting Date:
        </td>
        <td align="center">
  			<br/><input type="text" name="datefrom" value=<%=rs.getString("DATEFROM")%>  readonly>
        </td>
		<td align="center">
        	<br/>Ending Date:
        </td>
	    <td align="center">
  			<br/><input type="text" name="dateto" value=<%=rs.getString("DATETO")%>  readonly>
        </td>
	</tr>
	<tr>	
		<td align="center">
        	<br/>Total Days:
        </td>
        <td align="center">
  			<br/><input type="number" name="Toda" value=<%=rs.getString("TODA")%>  readonly>
        </td>
		<td align="center">
        	<br/>No.Of Rooms :
        </td>
        <td align="center">
  			<br/><input type="number" name="Room" value=<%=rs.getString("ROOM")%>  readonly>
        </td>
		<td align="center">
        	<br/>No.Of Members :
        </td>
        <td align="center">
  			<br/><input type="number" name="Member" value=<%=rs.getString("MEMBER")%>  readonly>
        </td>
	</tr>
</table>
<center>
<input id="oval" type="submit" name="cancel" value="cancel">
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
</div>
</form>
</body>
</html>
