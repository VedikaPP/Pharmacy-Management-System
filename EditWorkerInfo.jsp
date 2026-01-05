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
  <li><a href="FillWorkerInfo.jsp">Add Worker</a></li>
  <li><a href="EditWorkerInfo.jsp">Edit Worker Info</a></li>
  <li><a href="WorkerAttendance.jsp">Check Worker Attendance</a></li>
  <li><a href="index.jsp">Logout</a></li>
</ul>
            </div>
               
            <div class="login-box">
          <center>
             <form method="POST" action="EditWorkerInfo.jsp">
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
String sql = "SELECT * FROM workerinfo";
ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery(); 
%>
<p>Select Name :
<select name="uname">
<%
while(rs.next())
{
String fname = rs.getString("name"); 
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
  
               Statement st = con.createStatement();
             String name,desi=null,address=null,cont=null,inttime=null,outtime=null,age=null,adhar=null;
            name=request.getParameter("uname");
            
         
            String ac=request.getParameter("action");
     try
     {
            if(ac.equals("search"))
            {
                  ResultSet rs=st.executeQuery("select * from workerinfo where name='"+name+"' ");
                 
            if(rs.next())
            { 
                  desi=rs.getString("desi");
                  address=rs.getString("address");
                   cont=rs.getString("cont"); 
                   inttime=rs.getString("inttime"); 
                   outtime=rs.getString("outtime"); 
                   age=rs.getString("age");
                   adhar=rs.getString("adhar");
                   
%>
                 <form method="POST" action="EditWorkerInfoData.jsp">
            <fieldset>
                <table>
                    <b><h1 style="color: white">Worker Info</h1><b>
                           <tr>
                                <td>Worker name</td>
                                <td>:</td>
                                <td><input type="text" style="color:white;" value="<%= rs.getString("name") %>" name="name" id="pqr" placeholder="Enter Your name" pattern="^[a-zA-Z\s]{2,15}$"  title="Enter your name of at least 2 characters " required></td>
                            </tr>
                            <tr>
                                <td>Worker Designation</td>
                                <td>:</td>
                                <td><input type="text" name="desi" id="pq" value="<%= rs.getString("desi") %>" placeholder="Enter Your designation" pattern="^[a-zA-Z\s]*{3,}$"  title="Enter your designation f at least 3 characters " required></td>
                            </tr>
                            <tr>
                                <td>Worker Address</td>
                                <td>:</td>
                                <td><input type="text" name="address" id="p" value="<%= rs.getString("address") %>"placeholder="Enter Your Address" pattern="^[a-zA-Z0-9\s]*{3,}$"  title="Enter your address of at least 3 characters " required></td>
                            </tr>
                            <tr>
                                <td>Worker Contact no</td>
                                <td>:</td>
                                <td><input type="text" name="contactNo" id="b" value="<%= rs.getString("cont") %>" placeholder="Enter Your contact no" pattern="[7-9]{1}[0-9]{9}" required></td>
                            </tr>
                            <tr>
                                <td>Fix in time</td>
                                <td>:</td>
                                <td><input type="text" name="inttime" id=""  value="<%= rs.getString("inttime") %>" placeholder="Enter Your in time"  required></td>
                            </tr>
                            <tr>
                                <td>Fix Out time</td>
                                <td>:</td>
                                <td><input type="text" name="outtime" id="" value="<%= rs.getString("outtime") %>"  placeholder="Enter out time" required></td>
                            </tr>
                            <tr>
                                <td>Enter Worker age</td>
                                <td>:</td>
                                <td><input type="text" name="age" id=""  value="<%= rs.getString("age") %>" placeholder="Enter age" min="18" pattern="^[0-9]{2}" required></td>
                            </tr>
                            <tr>
                                <td>Enter worker Adhar card no</td>
                                <td>:</td>
                                <td><input type="text" name="adhar" id=""  value="<%= rs.getString("adhar") %>" placeholder="Enter adhar card no" pattern="^[0-9\s]{12}" required></td>
                            </tr>
                            <tr>
                               
                                <td><input type="submit" value="SEND" styles="width:180px; height=35px" name="action10" id=""></td>
                                <td><input type="submit" value="DELETE" styles="width:180px; height=35px" name="action11" id=""></td>
                               
                                </tr>
                                </center>
                                </table>
            </fieldset>
        </form>
 <% }
              
            }}catch(Exception e){}
           
    %>