<%@page import="java.util.Base64"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/checkMedicine.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        </head>
    <body>
           <header>
            <div class="main">
                <ul>
   <ul>
 <li><a class="active" href="AdminFirstPage.jsp">Home</a></li>

  <li><a href="AddItems.jsp">Add Items</a></li>
 <li><a href="CheckAllInsertedItems.jsp">Check Items</a></li>
  <li><a href="EditITeam.jsp">Edit Items</a></li>
  <li><a href="index.jsp">Logout</a></li>
</ul>
            </div>
               
            <div class="login-box">
          <center>
             <form method="POST" action="EditITeam.jsp">
            <fieldset>
                <table>
                    <b><h1></h1><b>
                            
                           <%
                            
Connection con = null;
PreparedStatement ps = null;
try
{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system", "root", "");
String sql = "SELECT * FROM items";
ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery(); 
%>
<p>Select Name :
<select name="uname">
<%
while(rs.next())
{
String fname = rs.getString("Name"); 
%>
<option value="<%=fname %>"><%=fname %></option>
<%
}
%>
</select>
</p>
<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>
                                    
                                </td>
                              
                                <td><input type="submit" value="search" styles="width:180px; height=35px" name="action" id=""></td>
                           
                             
                                </center>
                                </table>
                              
            </fieldset>
        </form>
    </center>
    </body>
</html>
<%
  Blob image = null;


	byte[] imgData = null;
               Statement st = con.createStatement();
             String name,desi=null,address=null,cont=null,inttime=null,outtime=null,age=null,adhar=null;
            name=request.getParameter("uname");
             String encodedString=null;
         String Name,ShopName,ShopContactNo,Color,Qty,Pprate,Gst,Srate,Pdate,Sdate;
         
            String ac=request.getParameter("action");
     try
     {
            if(ac.equals("search"))
            {
                  ResultSet rs=st.executeQuery("select * from items where Name='"+name+"' ");
                 
            if(rs.next())
            { 
                  Name=rs.getString("Name");
                  System.out.println("Name="+Name);
                  ShopName=rs.getString("ShopName");
                  System.out.println("ShopName="+ShopName);
                   ShopContactNo=rs.getString("ShopContactNo"); 
                   System.out.println("ShopContactNo="+ShopContactNo);
                   Color=rs.getString("Color");
                   System.out.println("Color="+Color);
                   Qty=rs.getString("Qty"); 
                   System.out.println("Qty="+Qty);
                   Pprate=rs.getString("Pprate");
                   System.out.println("Pprate="+Pprate);
                   Gst=rs.getString("Gst");
                   System.out.println("Gst="+Gst);
                    Srate=rs.getString("Srate"); 
                    System.out.println("Srate="+Srate);
                   Pdate=rs.getString("Pdate");
                   System.out.println("Pdate="+Pdate);
                   image = rs.getBlob("image");
                  imgData = image.getBytes(1, (int) image.length());
                     encodedString = Base64.getEncoder().encodeToString(imgData);  
                      // System.out.println("encodingString="+encodedString);
%>
<form method="POST" action="EditTtemInfoData.jsp" style="height: 1000px">
            <fieldset>
               <fieldset>
                <table>
                    <b><h1>Insert Data</h1><b>
                            
                         
                            <tr>
                                <td style="color:white">Enter Product name</td>
                                <td>:</td>
                                <td><input type="text" name="name" value="<%= rs.getString("Name")%>"  placeholder="Enter Product name" required></td>
                            </tr>
                            <tr>
                                <td style="color:white">Enter Purchasing Shop name</td>
                                <td>:</td>
                                <td><input type="text" name="sname" value="<%= rs.getString("ShopName")%>"  placeholder="Enter Purchasing shop name" required></td>
                            </tr>
                            <tr>
                                <td style="color:white">Purchasing Shop Contact no</td>
                                <td>:</td>
                                <td><input type="text" name="psno"value="<%= rs.getString("ShopContactNo")%>"placeholder="Enter Purchasing shop contact no" pattern="[7-9]{1}[0-9]{9}" 
       title="Phone number with 7-9 and remaing 9 digit with 0-9"  required></td>
                            </tr>
                            <tr>
                                <td style="color:white">product Color</td>
                                <td>:</td>
                                <td><select name="color" value="<%= rs.getString("Color")%>">
                                            <option value="red">red</option>
                                            <option value="goldon">gold</option>
                                            <option value="black">black</option>
                                            <option value="wooden">Wooden</option>
                                            <option value="white">white</option>
                                            <option value="green">green</option>
                                            <option value="silver">silver</option>
                                             <option value="rose sold">rose gold</option>
                                             <option value="glass">glass</option>
                                             <option value="pink">pink</option>
                                             <option value="brown">brown</option>
                                           
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td style="color:white">Quantity</td>
                                <td>:</td>
                                <td><input type="text" name="qty" value="<%= rs.getString("Qty")%>"  placeholder="Enter product quantity " pattern="[0-9]{1,}" title="Enter at least 1 digit " required></td>
                            </tr>
                            <tr>
                                <td style="color:white">Purchasing Price</td>
                                <td>:</td>
                                <td><input type="text" name="pprate" value="<%= rs.getString("Pprate")%>"  placeholder="Enter Purchasing rate" pattern="[0-9]{1,}" title="Enter at least 1 digit " required></td>
                            </tr>
                            <tr>
                                <td style="color:white">GST</td>
                                <td>:</td>
                                <td><input type="text" name="gst" value="<%= rs.getString("Gst")%>"  placeholder="Enter GST amount" pattern="[0-9]{1,}" title="Enter at least 1 digit " required></td>
                            </tr>
                            <tr>
                                <td style="color:white">Selling price</td>
                                <td>:</td>
                        <td><input type="text" name="srate" value="<%= rs.getString("Srate")%>"  placeholder="Enter selling Price" pattern="[0-9]{1,}" title="Enter at least 1 digit " required></td>
                            </tr>
                             <tr>
                                <td style="color:white">purchasing date</td>
                                <td>:</td>
                        <td><input type="date" name="pdate"  value="<%= rs.getString("Pdate")%>" placeholder="Enter selling Price" pattern="[0-9]{1,}" title="Enter at least 1 digit " required></td>
                             </tr>
                               <tr>
                                <td style="color:white">Select Image</td>
                                <td>:</td>
                                   <td>   <img width="170" height="170" name="myimg" style="margin-top:-50px;" src="data:image/jpg;base64,<%= encodedString %>">
                      </td>
                </tr>
                             <tr>
                                <td><input type="submit" name="action10" value="SEND"></td>
                                <td>:</td>
                              
                                 <td><input type="submit" name="action11" value="DELETE"></td>
                            </tr>
                                </center>
                                </table>
            </fieldset>
            </fieldset>
        </form>
 <% }
              
            }}catch(Exception e){}
           
    %>