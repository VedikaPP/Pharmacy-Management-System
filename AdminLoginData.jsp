<%@ page import="java.sql.*"%>
<%
    
    String action=request.getParameter("action");
     try
        {
    if(action.equals("SignIn"))
    {
        String username=request.getParameter("Username");   //Pharma_2023
        String pwd=request.getParameter("Password");        //Pharma@2023
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system","root","");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from ownerlogin where id='"+username+"' and pass='"+pwd+"'");
            if(rs.next()){
                response.sendRedirect("AdminFirstPage.jsp");
                          }
            else
            {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Username and Password does not match');");
            out.println("location='AdminLogin.jsp';");
            out.println("</script>"); 
            }
        }
        }
        catch(Exception e)
        {
         //   out.println(e);
        }
    
     String action1=request.getParameter("action1");
try
{
    if(action1.equals("SignUp")){
                    out.println("<script type=\"text/javascript\">");
        out.println("location='signUp.jsp';");
           out.println("</script>");
    }
}catch(Exception e){}
    
    
    
%>