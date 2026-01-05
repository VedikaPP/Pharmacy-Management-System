<%@page import="com.sun.xml.internal.bind.CycleRecoverable.Context"%> 
<%@page import="java.io.InputStream"%> 
<%@page import="java.io.FileInputStream"%> 
<%@page import="java.io.File"%> 
<%@page import="java.sql.DriverManager"%> 
<%@page import="java.sql.ResultSet"%> 
<%@page import="java.sql.PreparedStatement"%> 
<%@page import="java.sql.Connection"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Insert an Image into MySQL Database</title> 
    </head> 
    <body> 
         <%
//PreparedStatement pstmt = null;
//ResultSet rs=null;
int count;
String url="jdbc:mysql://localhost:3306/pharmacy_system"; 
//String item=request.getParameter("item");
String name=request.getParameter("name");
String sname=request.getParameter("sname");
String psno=request.getParameter("psno");
String color=request.getParameter("color");
String qty=request.getParameter("qty");
String pprate=request.getParameter("pprate");
String gst=request.getParameter("gst");
String status="A";
String myloc=request.getParameter("myimg"); 
System.out.println("locatiob="+myloc);
String srate=request.getParameter("srate");
String pdate=request.getParameter("pdate");
String ac=request.getParameter("action");
String ac1=request.getParameter("action1");

	Connection conn=null; 
	PreparedStatement pstmt = null; 
	ResultSet rs=null; 
	FileInputStream fis=null; 
try{
     
    
                     Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(url, "root", ""); 
                
       File image= new File("D:\\"+myloc); 
if(ac.equals("store"))
{
  //  System.out.println("item=="+item);
    System.out.println("name=="+name);
    System.out.println("sname=="+sname);
    System.out.println("psno=="+psno);
    System.out.println("color=="+color);
    System.out.println("qty=="+qty);
    System.out.println("pprate=="+pprate);
    System.out.println("gst=="+gst);
    System.out.println("srate=="+srate);
    System.out.println("pdate=="+pdate);
    System.out.println("action"+ac);
   
    int to=Integer.parseInt(pprate)+Integer.parseInt(gst);
    int finalAmount=Integer.parseInt(srate);
    System.out.println(finalAmount);
    System.out.println(to);
    if(finalAmount>to)
    {
      
        System.out.println("hiiiiiiiii"+image);
 pstmt = conn.prepareStatement("insert into items( Name, ShopName, ShopContactNo, Color, Qty, Pprate, Gst, Srate, Pdate, Available, Sdate, image) " + "values(?,?,?,?,?,?,?,?,?,?,?,?)");       
	
               pstmt.setString(1, name); 
               System.out.println("Name="+name);
                pstmt.setString(2, sname);
                 System.out.println("sName="+sname);
                 pstmt.setString(3, psno);
                  System.out.println("psno="+psno);
                 pstmt.setString(4, color);
                  System.out.println("color="+color);
                 pstmt.setString(5, qty);
                  System.out.println("qty="+qty);
                 pstmt.setString(6, pprate);
                  System.out.println("pprate="+pprate);
                pstmt.setString(7, gst);
                 System.out.println("gst="+gst);
                pstmt.setString(8, srate);
                 System.out.println("srate="+srate);
                pstmt.setString(9, pdate);
                 System.out.println("pdate="+pdate);
                pstmt.setString(10,status);
                 System.out.println("status="+status);
                 pstmt.setString(11, "0");
                  	fis=new FileInputStream(image); 
                 	pstmt.setBinaryStream(12, (InputStream) fis, (int) (image.length())); 
                int count1 = pstmt.executeUpdate(); 
                 System.out.println("count1="+count1);
		if(count1>0) 
		{ 
	
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('Inserted data Successfully');");
                        out.println("location='AddItems.jsp';");
                        out.println("</script>");

    }
    else
    {
      out.println("<script type=\"text/javascript\">");
                        out.println("alert('Cant insert data Because product dont have any profit');");
                        out.println("location='insertinfo.jsp';");
                        out.println("</script>");

    }
    }   }}
catch(Exception ex)
{
System.out.println(ex);
}finally{ 
		try{ 
			if(rs!=null){ 
				rs.close(); 
				rs= null; 
			} 
			if(pstmt !=null) 
			{ 
				pstmt.close(); 
				pstmt=null; 
			} 
			if(conn!=null) 
			{ 
				conn.close(); 
				conn=null; 
			} 
				
		} 
		catch(Exception e) 
		{ 
			e.printStackTrace(); 
		} 
	} 
try
{
    if(ac1.equals("back"))
    {
            out.println("<script type=\"text/javascript\">");
                        out.println("alert('Inserted data Successfully');");
                        out.println("location='AdminFirstPage.jsp';");
                        out.println("</script>");
    }
  
}catch(Exception e)
{
    //System.out.println(e);
}

%>
  