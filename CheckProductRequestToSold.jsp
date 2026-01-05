<%@page import="java.util.Base64"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
    <link href="css/insertproduct.css" rel="stylesheet" type="text/css"/>
  
   <!-- <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/> -->

<style>
* {
	box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
	float: left;
	width: 25%;
	//padding: 10px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}
/* Style the buttons */
.btn {
	border: none;
	outline: none;
	padding: 12px 16px;
	background-color: #f1f1f1;
	cursor: pointer;
}

.btn:hover {
	background-color: #ddd;
}

.btn.active {
	background-color: #666;
	color: white;
}

</style>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/checksoldproductcss.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        
        <header>
                <div class="main">
      <ul>
  <li><a class="active" href="AdminFirstPage.jsp">Home</a></li>
  <li><a href="CheckProductRequestToSold.jsp">Check Product to Deliver</a></li>
  <li><a href="checkSoldProduct.jsp">Check Sold Product</a></li>
  <li><a href="index.jsp">Logout</a></li>
</ul>
            </div>
               
                 
 
    
	<%
	Blob image = null;

	Connection con = null;

	byte[] imgData = null;

	String deviceName = null,id=null;

	int deviceId = 0,size=0;

	String qty = null,pname=null,price=null,Customer_Name=null,address=null,mobile=null,Status=null,Transactiontype=null,transactionno=null;

	Statement stmt = null,stmt1=null;

	ResultSet rs = null,rs1=null;
        String encodedString=null;
	try {

		Class.forName("com.mysql.jdbc.Driver");

		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system", "root", "");

		stmt = con.createStatement();
                String s="Under Review";
		rs = stmt.executeQuery("select * from checkproducttodeliver where Status='"+s+"'");
		int i = 0;
                stmt1=con.createStatement();
                rs1=stmt1.executeQuery("select count(*) from items");
                if(rs1!=null)
                {
                    rs1.last();
                    size=rs1.getRow();
                }
                stmt1.close();
		while (rs.next()) {
             
                        id=rs.getString("id");
			pname=rs.getString("pname");
			 price=rs.getString("price"); 
                         Customer_Name=rs.getString("Customer_Name");
                         address=rs.getString("address");
                         mobile=rs.getString("mobile");
                         Status=rs.getString("Status");
                         Transactiontype=rs.getString("Transactiontype");
                         transactionno=rs.getString("transactionno");
                       // String str=new String(imgData); 
			if (i == 0) {
	%>
        <br><br><br><br>
	<div class="row">
		<%
		} else if (i % 4 == 0 && i !=size-1) {
		%>
                <br> <br></div>
        <div class="row"  >
		<%
		}
		%>
		<div class="column" style="background-color:transparent;height:15%;width:35%;">
                   
                    <form action="DeliverProduct.jsp" method="post">  <br><br>
                       <br><h5 style="margin-top:1px;"> Request id<input type="text"  style="font-family: cursive;height:50px;width: 200px;border:none;background: transparent" name="id" value="<%= id %>"></h5 >
                        <br><h5 style="margin-top:-70px;"> product name<input type="text"  style="font-family: cursive;height:50px;width: 200px;border:none;background: transparent" name="pname" value="<%= pname %>"></h5 >
                       <br><h5  style="margin-top:-70px;"> price<input type="text"  style="font-family: cursive;height:50px;width: 200px;border:none;background: transparent" name="price" value="<%= price %>"></h5 >
                       <br><h5  style="margin-top:-60px;">  Customer_Name<input type="text"  style="font-family: cursive;width: 200px;border:none;background: transparent"  name="Customer_Name" value="<%= Customer_Name %>"></h5 >
                        <br><h5  style="margin-top:-50px;">  address<input type="text"  style="font-family: cursive;width:200px;border:none;background: transparent"  name="address" value="<%= address%>"></h5 >
			 <br><h5  style="margin-top:-50px;">  mobile<input type="text"  style="font-family: cursive;width: 200px;border:none;background: transparent"  name="mobile" value="<%= mobile%>"></h5 >
                        <br><h5  style="margin-top:-50px;">  Status<input type="text"  style="font-family: cursive;width:200px;border:none;background: transparent"  name="Status" value="<%= Status%>"></h5 >
			 <br><h5  style="margin-top:-50px;">  Transaction type<input type="text"  style="font-family: cursive;width: 200px;border:none;background: transparent"  name="Transactiontype" value="<%= Transactiontype%>"></h5 >
                        <br><h5  style="margin-top:-50px;">  transaction no<input type="text"  style="font-family: cursive;width:200px;border:none;background: transparent"  name="transactionno" value="<%= transactionno%>"></h5 >
					
                         </br>
                        <input type="submit" name="action" value="deliver">
                    </form>
		</div>
		<%
                    i++;
		if (i == size-1) {
		%>
	</div>
	<%
	}
                
	%>
	<%
	
	}
                

	// display the image

	} catch (Exception e) {

	out.println("Unable To Display image");

	out.println("Image Display Error=" + e.getMessage());

	return;

	} finally {

	try {

	rs.close();

	stmt.close();

	con.close();

	} catch (SQLException e) {

	e.printStackTrace();

	}

	}
        %></div>
	<script type="text/javascript">
		// Get the elements with class="column"
		var elements = document.getElementsByClassName("column");

		// Declare a loop variable
		var i;

		// List View
		function listView() {
			for (i = 0; i < elements.length; i++) {
				elements[i].style.width = "100%";
			}
		}

		// Grid View
		function gridView() {
			for (i = 0; i < elements.length; i++) {
				elements[i].style.width = "25%";
			}
		}
	</script>
        </header>
</body>

</html>