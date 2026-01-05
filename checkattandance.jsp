
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
  <li><a class="active" href="AdminFirstPage.jsp">Home</a></li>
  <li><a href="AddItems.jsp"> Add Items</a></li>
  <li><a href="FillWorkerInfo.jsp">Fill Worker Information</a></li>
  <li><a href="WorkerAttendance.jsp">Worker Attendance</a></li>
 
  <li><a href="index.jsp">Logout</a></li>
</ul>  
</ul>
            </div>
        <div class="login-box">
          
       
                
          <center>
              <form method="POST" action="checkattandance.jsp">
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
<p style="color: black">Select Name :
<select name="uname">
<%
while(rs.next())
{
int id=rs.getInt("id");
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
                            </tr>
                          
             
      
    </table>
<input type="submit" name="action" value="check">
      
 <% try
        {
            String name=request.getParameter("uname");
            //int n=Integer.parseInt(name);
            String sdate=request.getParameter("sdate");
            String edate=request.getParameter("edate");
            String ac=request.getParameter("action");
            System.out.println("name=="+name);
            System.out.println("sdate=="+sdate);
            System.out.println("edate=="+edate);
            
          //  Class.forName("com.mysql.jdbc.Driver");
          //  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/homecaredata","root","");
            Statement st=con.createStatement();
            if(ac.equals("check"))
            {
                   System.out.println("hiijhgfhjii");
            ResultSet rs1=st.executeQuery("select * from workerattandance where name='"+name+"'");
            //date between '"+sdate+"' and '"+edate+"'
          while(rs1.next()){
               System.out.println("hiiii"+rs1.getString("inttime"));
               %>

                <table border="1">
                    <th>int-time</th><th>out-time</th><th>Date</th>
                      <tr>
                          <td style="color: oldlace"><%=rs1.getString("inttime")%></td><td style="color: oldlace"><%=rs1.getString("outtime")%></td><td style="color: oldlace"><%=rs1.getString("date")%></td>
                                              </tr>
                                             </table>

               
               <%
                          }}
            else
            {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Username and Password donot match');");
            out.println("location='index.jsp';");
            out.println("</script>");
        }
        }catch(Exception e)
        {
            System.out.println("error"+e);
        }
            %>