<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<%
	String Location=request.getParameter("Location");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>Details Of Resorts</title>
	<style type="text/css">
#oval{
	background:blue;
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

<body>
<div style="width:auto; height:150px;">
<center>
<h1>Resort Details In Your Destination & Booking Section</h1>
</center>
<form name="form1" action="resortlist3.jsp" method="post">
        <table align="center">
        <tr>
            <td><h3>ResortId:</h3></td>
            <td>
                <select name="ResortId">
				<%
	try
	{
        Connection con;
        Statement stmt;
		ResultSet rs= null;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
       	
		stmt=con.createStatement();
		rs=stmt.executeQuery("SELECT RESORTID FROM ADD_RESORT WHERE LOCATION='" + Location + "'");
		while(rs.next())
		{
%>
			<option value="<%=rs.getString("RESORTID")%>"><%=rs.getString("RESORTID")%></option>
<%         
		}
	   	con.close();
       	
    }
	catch(Exception e)
	{
		out.print(e);
	}
%>

				<option selected="selected">-Select One-</option>
                   </select>
                </td>
				<td><input id="oval" type="submit" name="submit" value="Go"></td>
			</tr>
</table>
</form>
</div>
<br/>
<div style="width:auto; height:auto;">
<%
	try
	{
        Connection con;
        Statement stmt;
		ResultSet rs= null;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
 		stmt=con.createStatement();
		rs=stmt.executeQuery("SELECT * FROM ADD_RESORT WHERE LOCATION='" + Location + "'");
		while(rs.next())
		{
%>
<table align="center" width="1320" border="3" bordercolor="gold" bgcolor="green" cellspacing="6" cellpadding="6">
	<tr>
    	<td align="center">
        	<br/><Strong>Resort Id:</Strong>
        </td>
        <td align="center">
        	<br/><input type="text" name="ResortId" value=<%=rs.getString("ResortId")%> readonly>
        </td>
		<td align="center">
        	<br/><Strong>Resort Name:</Strong>
        </td>
        <td align="center">
        	<br/><input type="text" name="ResortName" value=<%=rs.getString("RESORTNAME")%> readonly>
        </td>
		<td align="center">
        	<br/><Strong>Location:</Strong>
        </td>
        <td align="center">
        	<br/><input type="text" name="Location" value=<%=rs.getString("LOCATION")%> readonly>
        </td>
		</tr>
		<tr>
		<td align="center">
        	<br/><Strong>Resort Class:</Strong>
        </td>
        <td align="center">
  			<br/><input type="text" name="ResortClass" value=<%=rs.getString("RESORTCLASS")%>  readonly>      
        </td>
		<td align="center">
        	<br/><Strong>Rent/Day(RS):</Strong>
        </td>
        <td align="center">
  			<br/><input type="text" name="Rent" value=<%=rs.getString("RENT")%>  readonly>      
        </td>
       	<td align="center">
        	<br/><Strong>ContactNo:</Strong>
        </td>
        <td align="center">
  			<br/><input type="number" name="ContactNo" value=<%=rs.getString("CONTACTNO")%>  readonly>      
        </td>
    </tr>
	<tr>
	</tr>
	<tr>
	<td align="center" colspan="6" bgcolor="slateblue"><Strong>NEXT RESORT DETAILS IS HERE</Strong></td>
	</tr>
</table>
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
</body>
</html>
