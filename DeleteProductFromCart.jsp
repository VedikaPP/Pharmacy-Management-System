<%@ page import="java.sql.*"%>
<%
    String pname=request.getParameter("pname");
    System.out.println("pname="+pname);
    String UName=(String)session.getAttribute("UName");
     System.out.println("UName="+UName);
   
    String action=request.getParameter("action");
    System.out.println("action="+action);
    try
        {
    if(action.equals("delete"))
    {
        System.out.println("hi1");
                Class.forName("com.mysql.jdbc.Driver");
                System.out.println("hi2");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system","root","");
            System.out.println("hi3");
            Statement st=con.createStatement();
            System.out.println("hi4");
            // session.setAttribute("UName",UName);
           System.out.println("hi5");
           int i=st.executeUpdate("DELETE FROM additemtocart WHERE pname='"+pname+"' and UName='"+UName+"'");   
           System.out.println("hi6");
           System.out.println("i="+i);
             out.println("<script type=\"text/javascript\">");
            out.println("alert('Data Deleted Successfully!');");
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
         //   out.println(e);
        }
      
    


%>