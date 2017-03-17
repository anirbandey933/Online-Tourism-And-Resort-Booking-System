<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>

<%
	String Location=request.getParameter("Location");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>MODIFY ELI</title>

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
<form name="form1" action="MOD_ELI2.jsp" method="post">
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
		rs=stmt.executeQuery("SELECT * FROM ADD_EL WHERE LOCATION='" + Location + "'");
		while(rs.next())
		{
%>

<table align="center">
	<tr>
    	<td>
        	<br/>Location:
        </td>
        <td>
        	<br/><input type="text" name="Location" value=<%=rs.getString("Location")%> readonly>
        </td>
    </tr>
	<td>
        	<br/>PoliceStationName:
        </td>
        <td>
        	<br/><input type="text" name="PoliceStationName" placeholder="Enter PoliceStationName" value=<%=rs.getString("PoliceStationName")%>>
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>ContactNo:
        </td>
        <td>
        	<br/><input type="text" name="PContactNo" placeholder="ContactNo" value=<%=rs.getString("PContactNo")%>>
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>FirebrigadeName:
        </td>
        <td>
  			<br/><input type="text" name="FirebrigadeName" placeholder="FirebrigadeName" value=<%=rs.getString("FirebrigadeName")%>>     
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>ContactNo:
        </td>
        <td>
        	<br/><input type="text" name="FContactNo" placeholder="ContactNo" value=<%=rs.getString("FContactNo")%>>
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>HospitalName:
        </td>
        <td>
  			<br/><input type="text" name="HospitalName" placeholder="HospitalName" value=<%=rs.getString("HospitalName")%>>      
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>ContactNo:
        </td>
        <td>
  			<br/><input type="text" name="HContactNo" placeholder="ContactNo" value=<%=rs.getString("HContactNo")%>>      
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>RestaurantName:
        </td>
        <td>
  			<br/><input type="text" name="RestaurantName" placeholder="RestaurantName" value=<%=rs.getString("RestaurantName")%>>      
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>ContactNo:
        </td>
        <td>
  			<br/><input type="text" name="RContactNo" placeholder="ContactNo" value=<%=rs.getString("RContactNo")%>>      
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>MultiplexName:
        </td>
        <td>
  			<br/><input type="text" name="MultiplexName" placeholder="MultiplexName" value=<%=rs.getString("MultiplexName")%>>      
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>ContactNo:
        </td>
        <td>
  			<br/><input type="text" name="MContactNo" placeholder="ContactNo" value=<%=rs.getString("MContactNo")%>>      
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>SpaCenterName:
        </td>
        <td>
  			<br/><input type="text" name="SpaCenterName" placeholder="SpaCenterName" value=<%=rs.getString("SpaCenterName")%>>      
        </td>
    </tr>
    <tr>
    	<td>
        	<br/>ContactNo:
        </td>
        <td>
  			<br/><input type="text" name="SContactNo" placeholder="ContactNo" value=<%=rs.getString("SContactNo")%>>      
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
