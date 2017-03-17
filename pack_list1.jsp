<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<marquee behavior="alternate" scroll amount="10" onMouseOver="stop()" onMouseOut="start()"><h1>PACKAGE  LIST  IN  YOUR  DESTINATION</h1></marquee>
	<style type="text/css">
#oval{
	background:slateblue;
	color:snow;
	float:left;
	font:normal 18px times new roman;
	line-height:16px;
	height:24px;
	padding-left:11px;
	text-decoration:none;
	width:80px;
	border-radius:60px;
	}
</style>

	</head>
	<body width="1024px" height="500px" background="img/Gallery/incredible_india.jpg">
        <form name="form1" action="pack_list2.jsp" method="post">
        <br/><br/><br/><br/><table align="center">
        <tr>
            <td><h3>Locations:</h3></td>
            <td>
                <select name="Locations">

<%
	try
	{
        Connection con;
        Statement stmt;
		ResultSet rs= null;
       	Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCL","scott","tiger");
       	
		stmt=con.createStatement();
		rs=stmt.executeQuery("SELECT distinct(LOCATIONS) FROM ADD_PACK");
		while(rs.next())
		{
%>
			<option value="<%=rs.getString("LOCATIONS")%>"><%=rs.getString("LOCATIONS")%></option>
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