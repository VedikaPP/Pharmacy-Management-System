<%@ page import="java.sql.*"%>
<%
    String nam=request.getParameter("name");
    String ema=request.getParameter("email");
    String cont=request.getParameter("contactNo");
    String sugg=request.getParameter("suggestion");
    String ream=request.getParameter("remark");
   String action=request.getParameter("action");
    
    if(action.equals("SEND"))
    {
       
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system","root","");
            Statement st=con.createStatement();
            st.executeUpdate("insert into feedbackform values(null,'"+nam+"','"+ema+"','"+cont+"','"+sugg+"','"+ream+"')");
            
             out.println("<script type=\"text/javascript\">");
            out.println("alert('Thank you for your valuable Feedback');");
             out.println("location='index.jsp';");
            out.println("</script>");
        }  
        catch(Exception e)
        {
            out.println(e);
        }
    }
    
    
%>