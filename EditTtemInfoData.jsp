<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>  
<%   String ac1=request.getParameter("action10");
String ac11=request.getParameter("action11");
System.out.println("Action==="+ac1);
   String   Name=request.getParameter("name");
                  System.out.println("Name="+Name);
            String      ShopName=request.getParameter("sname");
                  System.out.println("ShopName="+ShopName);
            String       ShopContactNo=request.getParameter("psno"); 
                   System.out.println("ShopContactNo="+ShopContactNo);
            String       Color=request.getParameter("color");
                   System.out.println("Color="+Color);
             String      Qty=request.getParameter("qty"); 
                   System.out.println("Qty="+Qty);
             String      Pprate=request.getParameter("pprate");
                   System.out.println("Pprate="+Pprate);
             String      Gst=request.getParameter("gst");
                   System.out.println("Gst="+Gst);
             String       Srate=request.getParameter("srate"); 
                    System.out.println("Srate="+Srate);
              String     Pdate=request.getParameter("pdate");
                   System.out.println("Pdate="+Pdate);
                  String myloc=request.getParameter("myimg"); 
      
             Connection con=null;
          PreparedStatement ps2=null;
          PreparedStatement pstmt = null; 
          try
          {
                     
	FileInputStream fis=null; 
              
    //   File image= new File("D:\\"+myloc); 
              Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system", "root", "");
                 if(ac1.equals("SEND"))
            {
               
           
                    String sql5="update items set Name=?, ShopName=?, ShopContactNo=?, Color=?, Qty=?, Pprate=?, Gst=?, Srate=?, Pdate=? where Name='"+Name+"'";
                                         ps2 = con.prepareStatement(sql5);
                                         ps2.setString(1,Name);
                                          ps2.setString(2,ShopName);
                                          ps2.setString(3,ShopContactNo);
                                          ps2.setString(4,Color);
                                          ps2.setString(5,Qty);
                                          ps2.setString(6,Pprate);
                                          ps2.setString(7,Gst);
                                          ps2.setString(8,Srate);
                                           ps2.setString(9,Pdate);
                                          //fis=new FileInputStream(image); 
                 	//ps2.setBinaryStream(10, (InputStream) fis, (int) (image.length())); 
                          //                  ps2.setString(10,myloc);
                                     int i2 = ps2.executeUpdate();
                                     System.out.println("i==="+i2);
                                     out.println("<script type=\"text/javascript\">");
                                     out.println("alert('data inserted successfully');");
                                     out.println("location='EditITeam.jsp';");
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
                  System.out.println("error"+e);
                }
          
            try
          {
              Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system", "root", "");
                 if(ac11.equals("DELETE"))
            {
                 String sql5="DELETE FROM items WHERE Name=?";
       PreparedStatement st=con.prepareStatement(sql5);
 st.setString(1, Name);
 int i=st.executeUpdate();
                  
                                       
                                     System.out.println("i==="+i);
                                     out.println("<script type=\"text/javascript\">");
                                     out.println("alert('data deleted successfully');");
                                     out.println("location='EditITeam.jsp';");
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