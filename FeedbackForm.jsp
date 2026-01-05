
<%@ page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>JSP Page</title>
       <link href="css/feedb.css" rel="stylesheet" type="text/css"/>
        </head>
    <body>
           <header>
         
                  <ul>
  <li><a class="active" href="index.jsp">Home</a></li>
  <li><a href="AdminLogin.jsp"> Admin login</a></li>
  <li><a href="CustomerLogin.jsp">Customer login</a></li>
  <li><a href="FeedbackForm.jsp">Feedback</a></li>
  <li><a href="DispWebsiteReview.jsp">Check Review</a></li>
</ul>
                    
                </ul>
               
            </div>
                     <br><br><br><br>
                   <div class="login-box">
          <center>
              
        <form method="POST" action="FeedbackData.jsp">
           
            <fieldset>
           
                <table>
                    <b><h1>Feedback</h1><b>
                         
                            <tr>
                                <td>Customer Name</td>
                                <td>:</td>
                                <td><input type="text" name="name" id="pqr" placeholder="Enter Your name" pattern="^[a-zA-Z\s]{2,30}$"  title="Enter 2 character name " required></td>
                            </tr>
                            <tr>
                                <td>Email</td>
                                <td>:</td>
                                <td><input type="text" name="email" id="pq" placeholder="Enter Your Email id" pattern="[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required></td>
                            </tr>
                            
                            <tr>
                                <td>Contact no</td>
                                <td>:</td>
                                <td><input type="text" name="contactNo" id="b" placeholder="Enter Your contact no" pattern="[7-9]{1}[0-9]{9}" 
       title="Phone number with 7-9 and remaing 9 digit with 0-9" required></td>
                            </tr>
                            <tr>
                                <td>Suggestion/Problem</td>
                                <td>:</td>
                                <td><textarea rows="5" cols="41" name="suggestion" id="" placeholder="Enter Your suggestion" pattern="^[a-zA-Z0-9\s]{2,150}$"  title="Enter data at least 2 values " required></textarea></td>
                            </tr>
                           
                            <tr>
                                <td>Remark</td>
                                <td>:</td>
                                <td><input type="text" name="remark" id="h" placeholder="Enter Your Remark" pattern="^[a-zA-Z0-9\s]{1,15}$"  title="Enter at least 1 digit remark" required></td>
                            </tr>
                            <tr>
                                <td ><input type="submit" value="SEND" styles="width:180px; height=35px" name="action" id="" style="margin-left: 100%"></td>
                              
                                </tr>
                                </center>
                                </table>
            </fieldset>
        </form>
    </center>
    </body>
</html>
