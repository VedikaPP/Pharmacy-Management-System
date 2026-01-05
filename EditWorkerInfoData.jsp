<%@ page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<%   String ac1=request.getParameter("action10");
String ac11=request.getParameter("action11");
System.out.println("Action==="+ac1);
    String name=request.getParameter("name");
      System.out.println("name==="+name);
       String desi=request.getParameter("desi");
       System.out.println("desi==="+desi);
        String address=request.getParameter("address");
        System.out.println("address==="+address);
         String cont=request.getParameter("contactNo");
         System.out.println("cont==="+cont);
         String inttime=request.getParameter("inttime");
         System.out.println("inttime==="+inttime);
         String outtime=request.getParameter("outtime");
         System.out.println("outtime==="+outtime);
           String age=request.getParameter("age");
           System.out.println("age==="+age);
             String adhar=request.getParameter("adhar");
             System.out.println("adhar==="+adhar);
             
             Connection con=null;
          PreparedStatement ps2=null;
          try
          {
              Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system", "root", "");
                 if(ac1.equals("SEND"))
            {
               
           
                    String sql5="update workerinfo set name=?,desi=?,address=?,cont=?,inttime=?,outtime=?,age=?,adhar=? where name='"+name+"'";
                                         ps2 = con.prepareStatement(sql5);
                                         ps2.setString(1,name);
                                          ps2.setString(2,desi);
                                          ps2.setString(3,address);
                                          ps2.setString(4,cont);
                                          ps2.setString(5,inttime);
                                          ps2.setString(6,outtime);
                                          ps2.setString(7,age);
                                          ps2.setString(8,adhar);
                                     int i2 = ps2.executeUpdate();
                                     System.out.println("i==="+i2);
                                     out.println("<script type=\"text/javascript\">");
                                     out.println("alert('data inserted successfully');");
                                     out.println("location='WorkerAttendance.jsp';");
                                     out.println("</script>");
            
                }
                  else
                 {
                        out.println("<script type=\"text/javascript\">");
                                     out.println("alert('worker not inn');");
                                     out.println("location='data not inserted.jsp';");
                                     out.println("</script>");
                             }
                }catch(Exception e)
                {
                  //System.out.println("error"+e);
                }
          
            try
          {
              Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system", "root", "");
                 if(ac11.equals("DELETE"))
            {
                 String sql5="DELETE FROM workerinfo WHERE name=?";
       PreparedStatement st=con.prepareStatement(sql5);
 st.setString(1, name);
 int i=st.executeUpdate();
                  
                                       
                                     System.out.println("i==="+i);
                                     out.println("<script type=\"text/javascript\">");
                                     out.println("alert('data deleted successfully');");
                                     out.println("location='WorkerAttendance.jsp';");
                                     out.println("</script>");
            
                }
                  else
                 {
                        out.println("<script type=\"text/javascript\">");
                                     out.println("alert('worker not inn');");
                                     out.println("location='data not inserted.jsp';");
                                     out.println("</script>");
                             }
                }catch(Exception e)
                {
                  //System.out.println("error"+e);
                }
    %>