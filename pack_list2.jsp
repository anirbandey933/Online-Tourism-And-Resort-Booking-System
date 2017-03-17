<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<%
	String Locations=request.getParameter("Locations");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>Details Of HOTELS</title>
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

<body background="img/Gallery/tourism_heading.png">
<div style="width:auto; height:150px;">
<center>
<h1>Hotel Details In Your Destination & Booking Section</h1>
</center>
<form name="form1" action="pack_book.jsp" method="post">
        <table align="center">
        <tr>
            <td><h3>PackageId:</h3></td>
            <td>
                <select name="PackageId">
				<%
	try
	{
        Connection con;
        Statement stmt;
		ResultSet rs= null;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
       	
		stmt=con.createStatement();
		rs=stmt.executeQuery("SELECT PACKAGEID FROM ADD_PACK WHERE LOCATIONS='" + Locations + "'");
		while(rs.next())
		{
%>
			<option value="<%=rs.getString("PACKAGEID")%>"><%=rs.getString("PACKAGEID")%></option>
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
		rs=stmt.executeQuery("SELECT PACKAGEID,LOCATIONS,DURATION,PRICE,VALID FROM ADD_PACK WHERE LOCATIONS='" + Locations + "'");
		while(rs.next())
		{
%>
<table align="center" width="1320" border="3" bordercolor="gold" bgcolor="slateblue" cellspacing="6" cellpadding="6">
	<tr>
    	<td align="center">
        	<br/><Strong>Package Id:</Strong>
        </td>
        <td align="center">
        	<br/><input type="text" name="PackageId" value=<%=rs.getString("PACKAGEID")%> readonly>
        </td>
		<td align="center">
        	<br/><Strong>Locations:</Strong>
        </td>
        <td align="center">
        	<br/><input type="text" name="Locations" value=<%=rs.getString("LOCATIONS")%> readonly>
        </td>
		</tr>
		<tr>
		<td align="center">
        	<br/><Strong>Duration:</Strong>
        </td>
        <td align="center">
  			<br/><input type="text" name="Duration" value=<%=rs.getString("DURATION")%>  readonly>      
        </td>
		<td align="center">
        	<br/><Strong>Price(RS):</Strong>
        </td>
        <td align="center">
  			<br/><input type="number" name="Price" value=<%=rs.getString("PRICE")%>  readonly>      
        </td>
       	<td align="center">
        	<br/><Strong>Valid:</Strong>
        </td>
        <td align="center">
  			<br/><input type="text" name="Valid"  value=<%=rs.getString("VALID")%>  readonly>      
        </td>
    </tr>
	<tr>
	</tr>
	<tr>
	<td align="center" colspan="6" bgcolor="orange"><Strong>NEXT PACKAGE DETAILS IS BELOW</Strong></td>
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
