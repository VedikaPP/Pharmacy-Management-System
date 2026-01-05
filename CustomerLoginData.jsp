<%@ page import="java.sql.*"%>
<%
    
    String ac=request.getParameter("action");
    String ac1=request.getParameter("action1");
      String un=request.getParameter("Username");
        String pwd=request.getParameter("Password");
  
        try
        {
              if(ac.equals("SignIn"))
             {
                   ResultSet rs,rs1;
                   Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system","root","");
                    Statement st=con.createStatement();
                        System.out.println("uname="+un);
                     System.out.println("pass="+pwd);
                     rs=st.executeQuery("select * from customerinfo where email='"+un+"' and pass='"+pwd+"'");
                    System.out.println("rs="+rs);
                      if(rs.next())
                             {
                                 System.out.println("hiiiiii");
                               session.setAttribute("UName",un);
                            out.println("<script type=\"text/javascript\">");
                            out.println("location='CustomerFirstPage.jsp';");
                            out.println("</script>");
                              }
                            
                             //out.println("<script type=\"text/javascript\">");
                              //out.println("alert('Login successfully');");
                               //out.println("location='quepaper.jsp';");
                                 //out.println("</script>");
                               //}
                       
                             else
                               {
                                  out.println("<script type=\"text/javascript\">");
                                  out.println("alert('Username and Password donot match');");
                                  out.println("location='CustomerLogin.jsp';");
                                  out.println("</script>");
                                }
    
                          
    
        }}
       catch(Exception e)
        {
          //  out.println(e);
        }
    
     try
     {
    
        if(ac1.equals("Signup"))
       {
           out.println("<script type=\"text/javascript\">");
        out.println("location='CustomerSignup.jsp';");
       out.println("</script>");
       }
     }catch(Exception e)
     {
     }
   
  
        
        
        
    
    
    
    
%>
  