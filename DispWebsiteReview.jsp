
<%@ page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link href="css/LoginPageCss.css" rel="stylesheet" type="text/css"/>
        
        <title>JSP Page</title>
        </head>
    <body>
           <header>
            <div class="main">
                <ul>
                <ul>
  <li><a class="active" href="index.jsp">Home</a></li>
  <li><a href="AdminLogin.jsp"> Admin login</a></li>
  <li><a href="CustomerLogin.jsp">Customer login</a></li>
  <li><a href="FeedbackForm.jsp">Feedback</a></li>
  <li><a href="DispWebsiteReview.jsp">Check Review</a></li>
</ul>
                    
                </ul>
               
            </div>
          <center>
              <form method="get" >

                  
                            
                           <%
Connection con = null;
PreparedStatement ps = null;
  try
{
   
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system", "root", "");
    
String sql = "SELECT * FROM feedbackform";
ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery(); 
%><table border="1" class="login-box">
     
      <th>Name</th><th>Suggestion/problem</th><th>Remark</th>
  <%
while(rs.next())
{%>
      <tr>
                          <td style="color: white"><%=rs.getString("Name")%></td><td style="color: white"><%=rs.getString("Suggestion")%></td><td style="color: white"><%=rs.getString("remark")%></td>
                                              </tr>
  
<%
                     }}catch(Exception e1e){}%>
</table>
                        
     
  