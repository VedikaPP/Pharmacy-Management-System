<%@ page import="java.sql.*"%>
<%
    
    String action=request.getParameter("action");
    String id=request.getParameter("id");
    String pname=request.getParameter("pname");
    System.out.println("Action="+action);
    System.out.println("id="+id);
    System.out.println("pname="+pname);
   String Status="deliver",id1=null;
   int qty=0;
    try
        {
    if(action.equals("deliver"))
    {
             
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system","root","");
            Statement st=con.createStatement();
            PreparedStatement ps=null,ps1=null;
          String sql="Update checkproducttodeliver set Status=? where id="+id;
            ps = con.prepareStatement(sql);
            ps.setString(1,Status);
            int i = ps.executeUpdate();
            
            ResultSet rs=st.executeQuery("select * from items where Name='"+pname+"'");
            if(rs.next()){
                       
               qty=Integer.parseInt(rs.getString("Qty"));
               id1=rs.getString("id");
                          }
             qty=qty-1;
             String quantity=Integer.toString(qty);
              String sql1="Update items set Qty=? where id='"+id1+"'";
ps1 = con.prepareStatement(sql1);
ps1.setString(1,quantity);
int i1 = ps1.executeUpdate();
             out.println("<script type=\"text/javascript\">");
            out.println("alert('deliver');");
             out.println("location='CheckProductRequestToSold.jsp';");
            out.println("</script>"); 
        }  
    else
    {
         out.println("<script type=\"text/javascript\">");
            out.println("alert('something went wrong');");
             out.println("location='CheckProductRequestToSold.jsp';");
            out.println("</script>");
    }}
        catch(Exception e)
        {
            //out.println(e);
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