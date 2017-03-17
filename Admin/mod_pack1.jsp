<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<%
	String packageid=request.getParameter("packageid");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>MODIFY PACKAGE</title>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="service1.jsp" class="page-scroll">Home</a></li>
		  </ul>
        </div>
      </div>
    </nav>

</head>

<body>
<body background="img/Gallery/02.jpg">
<form name="form1" action="mod_pack2.jsp" method="post">
<center>
<h3>Fill-Up To Modify Details</h3>
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
		rs=stmt.executeQuery("SELECT * FROM ADD_PACK WHERE PACKAGEID='" + packageid + "'");
		while(rs.next())
		{
%>

<table align="center">
	<tr>
    	<td>
        	<br/>PackageId:
        </td>
        <td>
        	<br/><input type="text" name="PackageId" value=<%=rs.getString("PackageID")%> readonly>
        </td>
    </tr>
	<td>
        	<br/>Locations:
        </td>
        <td>
        	<br/><input type="text" name="Locations" placeholder="Enter Locations" value=<%=rs.getString("LOCATIONS")%>>
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>Duration:
        </td>
        <td>
        	<br/><input type="text" name="Duration" placeholder="Duration" value=<%=rs.getString("Duration")%>>
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>Price:
        </td>
        <td>
  			<br/><input type="number" name="Price" placeholder="Price" value=<%=rs.getString("PRICE")%>>     
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>ValidTill:
        </td>
        <td>
        	<br/><input type="text" name="Valid" placeholder="Valid" value=<%=rs.getString("VALID")%>>
        </td>
    </tr>
    
</table><br/>
	<center>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit"  name="Submit"  value="MODIFY">&nbsp;&nbsp;&nbsp;<input type="reset" name="cancel" value="Cancel">
	</center>
</form>

<%         
		}
	   	con.close();
       	
    }
	catch(Exception e)
	{
		out.print(e);
	}
%>

</body>
</html>
