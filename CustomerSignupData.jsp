<%@ page import="java.sql.*"%>
<%
    
    String action=request.getParameter("action");
    String name=request.getParameter("name");
    String username=request.getParameter("username");
    String email=request.getParameter("email");
        String pass=request.getParameter("Password");
        String cpass=request.getParameter("Password1");
    out.println("Password="+pass);
        out.println(" confirm Password="+cpass);
    try
        {
    if(action.equals("SignUp"))
    {
       if(pass.equals(cpass))
               {
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system","root","");
            Statement st=con.createStatement();
            st.executeUpdate("insert into customerinfo values('"+username+"','"+name+"','"+email+"','"+pass+"')");
            
             out.println("<script type=\"text/javascript\">");
            out.println("alert('sign up successfully');");
             out.println("location='CustomerLogin.jsp';");
            out.println("</script>");
        }  
    else
    {
         out.println("<script type=\"text/javascript\">");
            out.println("alert('password and confirm password should be same');");
             out.println("location='CustomerSignup.jsp';");
            out.println("</script>");
    }}}
        catch(Exception e)
        {
            out.println(e);
        }
      
    
     String action1=request.getParameter("action1");
try
{
    if(action1.equals("Signin")){
                    out.println("<script type=\"text/javascript\">");
        out.println("location='CustomerLogin.jsp';");
           out.println("</script>");
    }
}catch(Exception e){}
    
    

%>