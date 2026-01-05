
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
                    <li class="active"><a href="UnivercityFirstPage.jsp">Back</a></li>
                    
                </ul>
               
            </div>
          <center>
              <form method="get" action="CheckFeedbackByUniversity.jsp">

                  
                            
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
     
      <th>Name</th><th>Email Id</th><th>Contact no</th><th>Suggestion/problem</th><th>Remark</th>
  <%
while(rs.next())
{%>
      <tr>
                          <td style="color: white"><%=rs.getString("Name")%></td><td style="white"><%=rs.getString("Email")%></td><td style="color: white"><%=rs.getString("ContactNo")%></td><td style="color: white"><%=rs.getString("Suggestion")%></td><td style="color: white"><%=rs.getString("remark")%></td>
                                              </tr>
  
<%
                     }}catch(Exception e1e){}%>
</table>
                        
     
  