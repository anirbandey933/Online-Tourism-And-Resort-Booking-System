<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<marquee behavior="alternate" scroll amount="10" onMouseOver="stop()" onMouseOut="start()"><h1>RESORT  LIST  IN  YOUR  DESTINATION</h1></marquee>
	<style type="text/css">
#oval{
	background:slateblue;
	color:snow;
	float:left;
	font:normal 15px tahoma;
	line-height:16px;
	height:24px;
	padding-left:11px;
	text-decoration:none;
	width:70px;
	border-radius:60px;
	}
</style>

	</head>
	<body background="img/Gallery/17.jpg">
        <form name="form1" action="resortlist2.jsp" method="post">
        <table align="center">
        <tr>
            <td><h3>Location:</h3></td>
            <td>
                <select name="Location">

<%
	try
	{
        Connection con;
        Statement stmt;
		ResultSet rs= null;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
       	
		stmt=con.createStatement();
		rs=stmt.executeQuery("SELECT distinct(LOCATION) FROM ADD_RESORT");
		while(rs.next())
		{
%>
			<option value="<%=rs.getString("LOCATION")%>"><%=rs.getString("LOCATION")%></option>
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
				<td><input id="oval" type="submit" name="submit" value="Submit"></td>
			</tr>
			</table>	
		</form>
	</body>

</html>