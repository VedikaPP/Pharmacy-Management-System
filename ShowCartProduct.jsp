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
  <li><a  class="active" href="ShowCartProduct.jsp"> Check Cart</a></li>
  <li><a   href="Buy.jsp">Buy</a></li>
  <li><a href="index.jsp">log out</a></li>
</ul>
            </div>
               
                  
            <h1>Welcome to <%= session.getAttribute("UName") %>
                  
        <div class="login-box">
	<%
	Blob image = null;

	Connection con = null;

	byte[] imgData = null;

	String deviceName = null;

	int deviceId = 0,size=0;

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
             
			//image = rs.getBlob("image"); 
			//deviceName = rs.getString("UName");
			id= rs.getString("id");
			//String id = deviceName + deviceId;
			qty = rs.getString("pname");
                       // price=rs.getString("Srate");
			//imgData = image.getBytes(1, (int) image.length());
                       //encodedString = Base64.getEncoder().encodeToString(imgData);                    
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
		<div class="column" style="background-color:transparent;height:15%;width:25%;" id=<%=id%>>
                   
			 <form action="DeleteProductFromCart.jsp" method="post">  
 <h5 style="margin-top:1px;">
                      
     Product Name<input type="text"readonly="readonly" style="height:50px;width: 170px;border:none;background: transparent" name="pname" value="<% out.println(qty);%>"></h6>
                   
                             <input type="submit" name="action" value="delete" style="margin-top: -500px">
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