
<%@ page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
 <li><a class="active" href="AdminFirstPage.jsp">Home</a></li>
  <li><a href="FillWorkerInfo.jsp">Add Worker</a></li>
  <li><a href="EditWorkerInfo.jsp">Edit Worker Info</a></li>
  <li><a href="WorkerAttendance.jsp">Check Worker Attendance</a></li>
  <li><a href="index.jsp">Logout</a></li>
</ul>
               
            </div>
               <div class="login-box">
          <center>
              <form method="POST" action="FillWorkerInfoData.jsp">
            <fieldset>
                <table>
                    <b><h1>Worker Info</h1><b>
                           <tr>
                                <td>Worker name</td>
                                <td>:</td>
                                <td><input type="text" name="name" id="pqr" placeholder="Enter Your name" pattern="^[a-zA-Z\s]{2,15}$"  title="Enter your name of at least 2 characters " required></td>
                            </tr>
                            <tr>
                                <td>Worker Designation</td>
                                <td>:</td>
                                <td><input type="text" name="desi" id="pq" placeholder="Enter Your designation" pattern="^[a-zA-Z\s]*{3,}$"  title="Enter your designation f at least 3 characters " required></td>
                            </tr>
                            <tr>
                                <td>Worker Address</td>
                                <td>:</td>
                                <td><input type="text" name="address" id="p" placeholder="Enter Your Address" pattern="^[a-zA-Z0-9\s]*{3,}$"  title="Enter your address of at least 3 characters " required></td>
                            </tr>
                            <tr>
                                <td>Worker Contact no</td>
                                <td>:</td>
                                <td><input type="text" name="contactNo" id="b" placeholder="Enter Your contact no" pattern="[7-9]{1}[0-9]{9}" required></td>
                            </tr>
                            <tr>
                                <td>Fix in time</td>
                                <td>:</td>
                                <td><input type="text" name="inttime" id="" placeholder="Enter Your in time"  required></td>
                            </tr>
                            <tr>
                                <td>Fix Out time</td>
                                <td>:</td>
                                <td><input type="text" name="outtime" id="" placeholder="Enter out time" required></td>
                            </tr>
                            <tr>
                                <td>Enter Worker age</td>
                                <td>:</td>
                                <td><input type="text" name="age" id="" placeholder="Enter age" min="18" pattern="^[0-9]{2}" required></td>
                            </tr>
                            <tr>
                                <td>Enter worker Adhar card no</td>
                                <td>:</td>
                                <td><input type="text" name="adhar" id="" placeholder="Enter adhar card no" pattern="^[0-9\s]{12}" required></td>
                            </tr>
                            <tr>
                               
                                <td><input type="submit" value="SEND" styles="width:180px; height=35px" name="action" id=""></td>
                               
                                </tr>
                                </center>
                                </table>
            </fieldset>
        </form>
    </center>
    </body>
</html>
