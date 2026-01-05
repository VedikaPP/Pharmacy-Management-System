<%@ page import="java.sql.*"%>
<%
    String nam=request.getParameter("name");
    String desi=request.getParameter("desi");
    String add=request.getParameter("address");
    String cont=request.getParameter("contactNo");
    String inttime=request.getParameter("inttime");
    String outtime=request.getParameter("outtime");
    String age=request.getParameter("age");
    String adhar=request.getParameter("adhar");
   String action=request.getParameter("action");
   
    if(action.equals("SEND"))
    {
         try
        {
       
      
        
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system","root","");
            Statement st=con.createStatement();
            st.executeUpdate("insert into workerInfo values(null,'"+nam+"','"+desi+"','"+add+"','"+cont+"','"+inttime+"','"+outtime+"','"+age+"','"+adhar+"')");
            
             out.println("<script type=\"text/javascript\">");
            out.println("alert('Worker info added to the system');");
             out.println("location='FillWorkerInfo.jsp';");
            out.println("</script>");
       
       
        
    
        }catch(Exception e){
        System.out.println("erro"+e);}
    }
    
%>