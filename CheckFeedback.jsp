<%@ page import="java.sql.*"%>
<link href="css/AcceptFeedbackCSS.css" rel="stylesheet" type="text/css"/>
<%@ page import="java.util.*"%>

           <%
   
       ResultSet rs;
   
    int n=0;
    
   //if(a.equals("1st")||b.equals("2nd")|| c.equals("3rd")||d.equals("4th")||e.equals("5th")||f.equals("6th")||g.equals("7th")||h.equals("8th")||i.equals("9th")||j.equals("10th"))
   //{
                       try
                    {
                       
                               
                     Class.forName("com.mysql.jdbc.Driver");
                     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system","root","");
                      Statement st=con.createStatement();
                  
                      rs=st.executeQuery("select * from feedbackform");
                     //out.println(n); 
                      %>  <center><table border="1" >
                          
           <tr>    
       <th>Serial No</th>
       <th>Name</th>
       <th>Email</th>
       
       <th>Contact No</th>
       <th>Suggestion</th>
      
       <th>Remark</th>
           </tr>    
                      
                  <%     while(rs.next()){%>
                       
      
                    <tr>
                
                    </tr>
                          
                           
                        
                    <tr><td><%=rs.getInt(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
                     
                      
                    </tr>
                          
                          
                              
           
                           
    <!--<form method="post" action="quepaper.jsp">
        <fieldset>
            <table>
                <center>
                <tr>
                    <td><input type="submit" name="a" value="1st"></td>
                    <td><input type="submit" name="b" value="2nd"></td>
                    <td><input type="submit" name="c" value="3rd"></td>
                    <td><input type="submit" name="d" value="4th"></td>
                    <td><input type="submit" name="e" value="5th"></td>
                    <td><input type="submit" name=f" value="6th"></td>
                    <td><input type="submit" name="g" value="7th"></td>
                    <td><input type="submit" name="h" value="8th"></td>
                    <td><input type="submit" name="i" value="9th"></td>
                    <td><input type="submit" name="j" value="10th"></td>
                </center>
                </tr>
         </table>
         </fieldset>
    </form>-->
 
                             <% }
                 
                   }catch(Exception e1)
                    {}//}
                       
   
 
                       %>
                  
                         </table>
                       
                      </center>