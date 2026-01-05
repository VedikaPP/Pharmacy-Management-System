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
	padding: 10px;
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
</head>
<body>
	<header style="background-image:linear-gradient(rgba(0,0,0,0.3),rgba(0,0,0,0.3)),url('img/d22.jpg'); position: inherit;height: 150vh;background-size: cover;background-position: center;">
     <div class="main">
                    <ul>
  <li><a href="CustomerFirstPage.jsp">Home</a></li>
  <li><a href="ShowCartProduct.jsp"> Check Cart</a></li>
  <li><a  class="active"  href="Buy.jsp">Buy</a></li>
  <li><a href="index.jsp">log out</a></li>
            </div>
               
                  
            <h1>Welcome to <%= session.getAttribute("UName") %>
                  
        <div class="login-box">
	<%
	Blob image = null;

	Connection con = null;

	byte[] imgData = null;

	String deviceName = null,product_Name=null,Product_prise=null;
	int deviceId = 0,size=0,find_total=0;
        String qty = null,price=null,id=null;
	Statement stmt = null,stmt1=null;
	ResultSet rs = null,rs1=null;
        String encodedString=null;
	try {

		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system", "root", "");
		stmt = con.createStatement();   
		rs = stmt.executeQuery("select * from additemtocart where UName='"+session.getAttribute("UName")+"'");
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
                          product_Name=rs.getString("pname");
                          Product_prise=rs.getString("price");
                          find_total=find_total+Integer.parseInt(Product_prise);
			
		
                       // String str=new String(imgData); 
			if (i == 0) {
	%>
        <br><br><br><br>
	<div class="row">
		<%
		} else if (i % 4 == 0 && i !=size-1) {
		%>
	</div>
	<div class="row"  >
		<%
		}
		%>
		<div class="column" style="background-color:transparent;height:25%;width:25%;" id=<%=id%>>
                   
			   <h5> Product Name<input type="text" readonly="readonly" style="width: 120px;border:none;background: transparent" name="pname" value="<% out.println(product_Name); %>"></h5>
                     <h5> total<input type="text" readonly="readonly" style="width: 100px;border:none;background: transparent" name="prise" value="<% out.println(Product_prise); %>"></h5>
                        
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
        %><br><br><br><br> <br><form action="SellProductInfo.jsp" method="post">  
           
                    </br> <h5> final total<input type="text"  style="width: 100px;border:none;background: transparent" name="total" value="<% out.println(find_total); %>"></h5>
            <h4 style="font-family: cursive;font-size:15px">Account no:-0000000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br>IFSC code:0000<br>Account holder name: xyz<br>PQR bank ltd</h4>		
        <img src="QR.jpg" height="100px width=100px"/>
        <h4 style="font-family: cursive;font-size:15px">Enter Transaction  no&nbsp;<input type="text" name="transactionid">
            <input type="text" hidden="true" name="UName" value="<%= session.getAttribute("UName") %>" >
            <input type="text" hidden="true" name="pname" value="<%= product_Name %>" >
             <input type="text" hidden="true" name="price1" value="<%= Product_prise %>" >
            <br>   Enter Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"  name="name">
                <br>Enter address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="address" >
                <br>Enter mobile no&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="mobile" name="mobile">
                <br><input type="submit" name="action" value="bank" style="width: 300px" value="payment using Bank Details">
               
                 <input type="submit" name="action1" value="QR" style="width: 300px" value="payment using Bank QR Code">
                    </form></div>
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