<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*"  errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>Payment Section</title>
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
<body   background=img/Gallery/nature.jpg;>
<form name="form1" action="pack_book3.jsp" method="post">
<div style="width:auto; height:60px;">
<marquee behavior="alternate" scroll amount="5" onMouseOver="stop()" onMouseOut="start()"><h1>WELCOME TO PAYMENT SECTION</h1></marquee>
</div>
<br/><br/>
<div style="width:auto; height:250px;">
<center>
<h2>Please Fill-up For Booking</h2>
</center>
<%
	try
	{
	 String UName=(String)session.getAttribute("UName");
	 String Price=(String)session.getAttribute("Price");
	 String Member=(String)session.getAttribute("Member");
	 
	 double Total=Double.valueOf(Price)*Double.valueOf(Member);	
	 
	 
%>
<table align="center" width=1200 border="3" bgcolor="gold" cellspacing="4" cellpadding="2">
	<tr>
    	<td align="center">
        	<br/>Total Amount(RS):
        </td>
	    <td align="center">
        	<br/><input type="number" name="Amount" value="<%=Total%>" readonly>
        </td>
		<td align="center">
        	<br/>UserName:
        </td>
    	<td align="center">
        	<br/><input type="text" name="UName" value="<%=UName%>" readonly>
        </td>
    
    </tr>
	
	<tr>
		<td align="center">
        	<br/>Card Holder Name:
        </td>
        <td align="center">
        	<br/><input type="text" name="CardHolderName" required>
        </td>
		<td align="center">
        	<br/>Card No.:
        </td>
	    <td align="center">
        	<br/><input type="password" name="CardNo" required>
        </td>
     </tr>
     <tr>
		<td align="center">
        	<br/>Bank:
        </td>
        <td align="center">
  			<br/><input type="text" name="Bank" required>      
        </td>
        <td align="center">
        	<br/>Branch:
        </td>
        <td align="center">
  			<br/><input type="text" name="Branch" required>      
        </td>
	</tr>
	<tr>
	<td align="center" colspan="3"><br/><input id="oval1" type="submit" name="submit" value="Book"></td>
	<td align="center" colspan="3"><br/><input id="square" type="submit" name="cancel" value="Cancel"></td>
	</tr>	
</table>
<%
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
