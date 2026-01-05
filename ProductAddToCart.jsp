<%@ page import="java.sql.*"%>
<%
    String pname=request.getParameter("pname");
    System.out.println("pname="+pname);
    String UName=request.getParameter("Username");
     System.out.println("UName="+UName);
    String quantity="1";
     System.out.println("Quantity="+quantity);
    String price1=request.getParameter("price1");
     System.out.println("price="+price1);
    String Status="Add TO CART";
    String action=request.getParameter("addtocart");
    try
        {
    if(action.equals("add to cart"))
    {
                Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system","root","");
            Statement st=con.createStatement();
            st.executeUpdate("insert into additemtocart values(null,'"+UName+"','"+pname+"','"+quantity+"','"+price1+"','"+Status+"')");
              session.setAttribute("UName",UName);
             out.println("<script type=\"text/javascript\">");
            out.println("alert('Added to cart');");
             out.println("location='CustomerFirstPage.jsp';");
            out.println("</script>");
        }  
    else
    {
         out.println("<script type=\"text/javascript\">");
            out.println("alert('password and confirm password should be same');");
             out.println("location='CustomerSignup.jsp';");
            out.println("</script>");
    }}
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