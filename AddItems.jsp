
<%@ page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/AddMedicine.css" rel="stylesheet" type="text/css"/>
        
        <title>JSP Page</title>
        </head>
    <body>
           <header>
            <div class="main">
      <ul>
 <li><a class="active" href="AdminFirstPage.jsp">Home</a></li>

  <li><a href="AddItems.jsp">Add Medicine</a></li>
 <li><a href="CheckAllInsertedItems.jsp">Check Medicine</a></li>
  <li><a href="EditITeam.jsp">Edit Medicine</a></li>
  <li><a href="index.jsp">Logout</a></li>
</ul>
            </div>
          <div class="login-box">
          <center>
            
            <form name="form1"  method="post" action="insertDataDatabase.jsp" >
            <fieldset>
                <table>
                    <b><h1>Insert Data</h1><b>
                            
                         
                            <tr>
                                <td>Enter Medicine name</td>
                                <td>:</td>
                                <td><input type="text" name="name"  placeholder="Enter Product name" required></td>
                            </tr>
                            <tr>
                                <td>Enter Purchasing company name</td>
                                <td>:</td>
                                <td><input type="text" name="sname"  placeholder="Enter Purchasing shop name" required></td>
                            </tr>
                            <tr>
                                <td>Purchasing company Contact no</td>
                                <td>:</td>
                                <td><input type="text" name="psno" value="0000000000" placeholder="Enter Purchasing shop contact no" pattern="[7-9]{1}[0-9]{9}" 
       title="Phone number with 7-9 and remaing 9 digit with 0-9"  required></td>
                            </tr>
                            <tr>
                                <td>Medicine Color</td>
                                <td>:</td>
                                <td><select name="color">
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
                                <td>Quantity</td>
                                <td>:</td>
                                <td><input type="text" name="qty"  placeholder="Enter product quantity " pattern="[0-9]{1,}" title="Enter at least 1 digit " required></td>
                            </tr>
                            <tr>
                                <td>Purchasing Price</td>
                                <td>:</td>
                                <td><input type="text" name="pprate"  placeholder="Enter Purchasing rate" pattern="[0-9]{1,}" title="Enter at least 1 digit " required></td>
                            </tr>
                            <tr>
                                <td>GST</td>
                                <td>:</td>
                                <td><input type="text" name="gst"  placeholder="Enter GST amount" pattern="[0-9]{1,}" title="Enter at least 1 digit " required></td>
                            </tr>
                            <tr>
                                <td>Selling price</td>
                                <td>:</td>
                        <td><input type="text" name="srate"  placeholder="Enter selling Price" pattern="[0-9]{1,}" title="Enter at least 1 digit " required></td>
                            </tr>
                             <tr>
                                <td>purchasing date</td>
                                <td>:</td>
                        <td><input type="date" name="pdate"  placeholder="Enter selling Price" pattern="[0-9]{1,}" title="Enter at least 1 digit " required></td>
                             </tr>
                               <tr>
                                <td>Select Image</td>
                                <td>:</td>
                        <td><input type="file" name="myimg"></td>
                </tr>
                             <tr>
                                <td><input type="submit" name="action" value="store"></td>
                                <td>:</td>
                              
                                 <td><input type="submit" name="action1" value="back"></td>
                            </tr>
                                </center>
                                </table>
            </fieldset>
        </form>
    </center>
    </body>
</html>
