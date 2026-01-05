<%@ page import="java.sql.*"%>
<%
    Statement stmt=null;
    String action=request.getParameter("action");
    String pname=request.getParameter("pname");
    String price=request.getParameter("price1");
    String Customer_Name=request.getParameter("name");
        String address=request.getParameter("address");
        String mobile=request.getParameter("mobile");
          String action1=request.getParameter("action1");
        String UName=(String)session.getAttribute("UName");
        System.out.println("Uname="+UName);
        System.out.println("UName===="+UName);
     String Status="Under Review";
     String Transactiontype1="Bank transfer",Transactiontype2="QR Code";
     String transactionno=request.getParameter("transactionid");
	ResultSet rs = null,rs1=null;
        String deviceName = null,product_Name=null,Product_prise=null;
        int deviceId = 0,size=0,find_total=0,i=0;
         String[] quantity1=new String[100];
         String[] p_name=new String[100];
         String[] P_price=new String[100];
    try
        {
    if(action.equals("bank"))
    {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system","root","");
            Statement st=con.createStatement();
            System.out.println("hello");
            System.out.println("Uname="+UName);
          
                    
            
                 rs=st.executeQuery("select * from additemtocart where UName='"+UName+"'");
                    System.out.println("rs="+rs);
                  
                      while(rs.next())
                             {
                                 System.out.println("i="+i);
                                     
                                   
                         p_name[i]=rs.getString("pname");
                         
                          P_price[i]=rs.getString("price");
                          
                          System.out.println("Product name"+i+" ="+p_name[i]);
                          System.out.println("Product prise"+i+" ="+P_price[i]);
                            UName=rs.getString("UName");
                          quantity1[i]=rs.getString("quantity");
                             Product_prise=rs.getString("price");
                              Product_prise=rs.getString("price");  
                               Product_prise=rs.getString("price");
                              
                         // find_total=find_total+Integer.parseInt(Product_prise);
                        //  st.executeUpdate("insert into CheckProducttodeliver values(null,'"+UName+"','"+product_Name+"','"+Product_prise+"','"+Customer_Name+"','"+address+"','"+mobile+"','"+Status+"','"+Transactiontype1+"','"+transactionno+"')");
         
                          System.out.println("pname="+pname);
                          System.out.println("price="+price);
                          System.out.println("Uname="+UName);
                          System.out.println("Product name="+product_Name);
                          System.out.println("product_prise="+Product_prise);
                          System.out.println("Customer NAme="+Customer_Name);
                          System.out.println("address="+address);
                             System.out.println("mobile="+mobile);
                            System.out.println("Status="+Status);
                            System.out.println("Transactiontype1="+Transactiontype1);
                             System.out.println("transactionno="+transactionno);
                             i++;
	 	}
                      for(int j=0;j<i;j++)
                      {
                       st.executeUpdate("insert into CheckProducttodeliver values(null,'"+UName+"','"+p_name[j]+"','"+P_price[j]+"','"+Customer_Name+"','"+address+"','"+mobile+"','"+Status+"','"+Transactiontype1+"','"+transactionno+"')");
             
                      }
                       for(int j=0;j<i;j++)
                      {
                          System.out.println("Product name"+i+" ="+p_name[j]);
                          System.out.println("Product prise"+i+" ="+P_price[j]);
                          
                      }
            st.executeUpdate("DELETE FROM additemtocart WHERE UName='"+UName+"'");   
            System.out.println("hi6");
           System.out.println("i="+i);
             out.println("<script type=\"text/javascript\">");
            out.println("alert('Item will be deliver');");
             out.println("location='CustomerLogin.jsp';");
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
           //out.println(e);
        }
     
try
{
    if(action1.equals("QR")){
         Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system","root","");
            Statement st=con.createStatement();
                  rs=st.executeQuery("select * from additemtocart where UName='"+UName+"'");
                    System.out.println("rs="+rs);
                  
                      while(rs.next())
                             {
                                 System.out.println("i="+i);
                                     
                                   
                         p_name[i]=rs.getString("pname");
                         
                          P_price[i]=rs.getString("price");
                          
                          System.out.println("Product name"+i+" ="+p_name[i]);
                          System.out.println("Product prise"+i+" ="+P_price[i]);
                            UName=rs.getString("UName");
                          quantity1[i]=rs.getString("quantity");
                             Product_prise=rs.getString("price");
                              Product_prise=rs.getString("price");  
                               Product_prise=rs.getString("price");
                              
                         // find_total=find_total+Integer.parseInt(Product_prise);
                        //  st.executeUpdate("insert into CheckProducttodeliver values(null,'"+UName+"','"+product_Name+"','"+Product_prise+"','"+Customer_Name+"','"+address+"','"+mobile+"','"+Status+"','"+Transactiontype1+"','"+transactionno+"')");
         
                          System.out.println("pname="+pname);
                          System.out.println("price="+price);
                          System.out.println("Uname="+UName);
                          System.out.println("Product name="+product_Name);
                          System.out.println("product_prise="+Product_prise);
                          System.out.println("Customer NAme="+Customer_Name);
                          System.out.println("address="+address);
                             System.out.println("mobile="+mobile);
                            System.out.println("Status="+Status);
                            System.out.println("Transactiontype1="+Transactiontype1);
                             System.out.println("transactionno="+transactionno);
                             i++;
	 	}
                      for(int j=0;j<i;j++)
                      {
                       st.executeUpdate("insert into CheckProducttodeliver values(null,'"+UName+"','"+p_name[j]+"','"+P_price[j]+"','"+Customer_Name+"','"+address+"','"+mobile+"','"+Status+"','"+Transactiontype2+"','"+transactionno+"')");
             
                      }
                       for(int j=0;j<i;j++)
                      {
                          System.out.println("Product name"+i+" ="+p_name[j]);
                          System.out.println("Product prise"+i+" ="+P_price[j]);
                          
                      }
            st.executeUpdate("DELETE FROM additemtocart WHERE UName='"+UName+"'");   
            System.out.println("hi6");
           System.out.println("i="+i);
             out.println("<script type=\"text/javascript\">");
            out.println("alert('Item will be deliver');");
             out.println("location='CustomerLogin.jsp';");
            out.println("</script>");
        }  
    else
    {
         out.println("<script type=\"text/javascript\">");
            out.println("alert('password and confirm password should be same');");
             out.println("location='CustomerSignup.jsp';");
            out.println("</script>");
    }
}
        catch(Exception e)
        {
        //   out.println(e);
        }
        

    

%>