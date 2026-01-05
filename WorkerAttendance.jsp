<%@ page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
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
 <li><a class="active" href="AdminFirstPage.jsp">Home</a></li>
  <li><a href="FillWorkerInfo.jsp">Add Worker</a></li>
  <li><a href="EditWorkerInfo.jsp">Edit Worker Info</a></li>
  <li><a href="WorkerAttendance.jsp">Check Worker Attendance</a></li>
  <li><a href="index.jsp">Logout</a></li>
</ul>
            </div>
               
            <div class="login-box">
          <center>
             <form method="POST" action="WorkerAttendance.jsp">
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
                            </tr>
                          
                              
                            <tr>
                                <td>In-time</td>
                                <td>:</td>
                                <td><input type="text" name="inttime" id="pq" placeholder="Enter inttime"></td>
                            </tr>
                            <tr>
                                <td>out time</td>
                                <td>:</td>
                                <td><input type="text" name="outtime" id="p" placeholder="Enter outtime"></td>
                            </tr>
                          
                            
                            <tr>
                                <td><input type="submit" value="In_time" styles="width:180px; height=35px" name="action" id=""></td>
                             
                                <td><input type="submit" value="Out_time" styles="width:180px; height=35px" name="action1" id=""></td>
                                <td> <input type="submit" name="action2" value="back"></td>
                            </tr>
                                </center>
                                </table>
                              
            </fieldset>
        </form>
    </center>
    </body>
</html>
<%

               Statement st = con.createStatement();
               
            DateFormat df1=new SimpleDateFormat("dd/MM/yyyy");
            String Sdate1=df1.format(new Date());
            String name=request.getParameter("uname");
            
            String inttime=request.getParameter("inttime");
            String outtime=request.getParameter("outtime");
            
            String ac=request.getParameter("action");
            String ac1=request.getParameter("action1");
            String ac2=request.getParameter("action2");
             try{
            if(ac.equals("In_time"))
            {
               
                 st.executeUpdate("insert into workerattandance (name,inttime,date) values('"+name+"','"+inttime+"','"+Sdate1+"')");
                   out.println("<script type=\"text/javascript\">");
                                     out.println("alert('timing inserted successfully');");
                                     out.println("location='WorkerAttendance.jsp';");
                                     out.println("</script>");
            
             
            }        
                
                }catch(Exception e)
                {
                    System.out.println("error"+e);
                }
             
             try{
                 if(ac1.equals("Out_time"))
            {
                int id=0;
                String name1="";
                String inttime1="";
                System.out.println("hjhkkbnjnbjbn");
                   ResultSet rs=st.executeQuery("select * from workerattandance where name='"+name+"' and date='"+Sdate1+"'");
            if(rs.next()){
                      id=rs.getInt("id"); 
                      System.out.println("id==="+id);
                      name1=rs.getString("name");
                     inttime1=rs.getString("inttime");
            }
                    String sql5="update workerattandance set id=?,name=?,present=?,inttime=?,outtime=?,date=? where id="+id;
                                         ps = con.prepareStatement(sql5);
                                         ps.setInt(1,id);
                                          ps.setString(2,name1);
                                          ps.setString(3,"P");
                                          ps.setString(4,inttime1);
                                          ps.setString(5,outtime);
                                          ps.setString(6,Sdate1);
                                          
                                         
                                         int i2 = ps.executeUpdate();
                                         System.out.println("i==="+i2);
                                     out.println("<script type=\"text/javascript\">");
                                     out.println("alert('timing inserted successfully');");
                                     out.println("location='WorkerAttendance.jsp';");
                                     out.println("</script>");
            
                }
                  else
                 {
                        out.println("<script type=\"text/javascript\">");
                                     out.println("alert('worker not inn');");
                                     out.println("location='WorkerAttendance.jsp';");
                                     out.println("</script>");
                 }
                }catch(Exception e)
                {
                  //  System.out.println("error"+e);
                }
             try{
                 if(ac2.equals("back"))
                   out.println("<script type=\"text/javascript\">");
                                  
                                     out.println("location='AdminFirstPage.jsp';");
                                     out.println("</script>");
             }catch(Exception e){}

%>