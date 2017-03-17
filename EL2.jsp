<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<%
	String Location=request.getParameter("Location");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>EL</title>
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
<center>
<h1>Emegency & Localinfo Details In Your Destination</h1>
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
		rs=stmt.executeQuery("SELECT * FROM ADD_EL WHERE LOCATION='" + Location + "'");
		while(rs.next())
		{
%>
<table align="center" width="1320" border="3" bordercolor="white" bgcolor="orange" cellspacing="4" cellpadding="4">
	<tr>
    	<td align="center" colspan="2">
        	<br/><Strong>Location:</Strong>
        </td>
        <td align="center" colspan="2">
        	<br/><input type="text" name="Location" value=<%=rs.getString("LOCATION")%> readonly>
        </td>
	<tr>
	<tr>	
		<td align="center">
        	<br/><Strong>PoliceStationName:</Strong>
        </td>
        <td align="center">
        	<br/><input type="text" name="PoliceStationName" value=<%=rs.getString("POLICESTATIONNAME")%> readonly>
        </td>
		<td align="center">
        	<br/><Strong>PSContactNo:</Strong>
        </td>
        <td align="center">
        	<br/><input type="number" name="PContactNo" value=<%=rs.getString("PCONTACTNO")%> readonly>
        </td>
	</tr>
		<tr>
		<td align="center">
        	<br/><Strong>FirebrigadeName:</Strong>
        </td>
        <td align="center">
  			<br/><input type="text" name="FirebrigadeName" value=<%=rs.getString("FIREBRIGADENAME")%>  readonly>      
        </td>
		<td align="center">
        	<br/><Strong>FContactNo:</Strong>
        </td>
        <td align="center">
  			<br/><input type="number" name="Rent" value=<%=rs.getString("FCONTACTNO")%>  readonly>      
        </td>
	</tr>
	<tr>	
       	<td align="center">
        	<br/><Strong>HospitalName:</Strong>
        </td>
        <td align="center">
  			<br/><input type="text" name="HospitalName"  value=<%=rs.getString("HOSPITALNAME")%>  readonly>      
        </td>
		<td align="center">
        	<br/><strong>HContactNo:</strong>
        </td>
        <td align="center">
  			<br/><input type="number" name="HContactNo" value=<%=rs.getString("HCONTACTNO")%>  readonly>      
        </td>
    </tr>
	<tr>
	<td align="center">
        	<br/><strong>RestaurantName:</strong>
        </td>
        <td align="center">
        	<br/><input type="text" name="RestaurantName" value=<%=rs.getString("RESTAURANTNAME")%>  readonly>
        </td>
        	<td align="center">
        	<br/><strong>RContactNo:</strong>
        </td>
        <td align="center">
  			<br/><input type="number" name="RContactNo" value=<%=rs.getString("RCONTACTNO")%>  readonly>      
        </td>
    </tr>
	<tr>
	<td align="center">
        	<br/><strong>MultiplexName:</strong>
        </td>
        <td align="center">
        	<br/><input type="text" name="MultiplexName" value=<%=rs.getString("MULTIPLEXNAME")%>  readonly>
        </td>
       	<td align="center">
        	<br/><strong>MContactNo:</strong>
        </td>
        <td align="center">
  			<br/><input type="number" name="MContactNo" value=<%=rs.getString("MCONTACTNO")%>  readonly>      
        </td>
    </tr>
	<tr>
    	<td align="center">
        	<br/><strong>SpaCenterName:</strong>
        </td>
        <td align="center">
        	<br/><input type="text" name="SpaCenterName" value=<%=rs.getString("SPACENTERNAME")%>  readonly>
        </td>
       	<td align="center">
        	<br/><strong>SContactNo:</strong>
        </td>
        <td align="center">
  			<br/><input type="number" name="SContactNo" value=<%=rs.getString("SCONTACTNO")%>  readonly>      
        </td>
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
