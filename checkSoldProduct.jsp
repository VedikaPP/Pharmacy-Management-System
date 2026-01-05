
<%@ page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <link href="css/LoginPageCss.css" rel="stylesheet" type="text/css"/>
    
    </head>
    <body>
            <header>
                <div class="main">
      <ul>
  <li><a  href="AdminFirstPage.jsp">Home</a></li>
  <li><a href="CheckProductRequestToSold.jsp">Check Product to Deliver</a></li>
  <li><a class="active" href="checkSoldProduct.jsp">Check Sold Product</a></li>
  <li><a href="index.jsp">Logout</a></li>
</ul>
            </div>
          <center>
              <form method="get" action="checkSoldProduct.jsp">
            <fieldset>
                <table>
                    <b><h1></h1><b>
                            
                           <%
Connection con = null;
PreparedStatement ps = null;
  DateFormat df1=new SimpleDateFormat("dd/MM/yy");
            String Sdate1=df1.format(new Date());
            System.out.println("date="+Sdate1);
            String Status="deliver";
try
{
    int a=0;
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pharmacy_system", "root", "");

String sql = "SELECT * FROM checkproducttodeliver where Status='"+Status+"'";
ps = con.prepareStatement(sql);
ResultSet rs = ps.executeQuery(); 
%><table border="1" class="login-box">
      <th>Product Name</th><th>Customer Name</th><th>Mobile no</th><th>Address</th>
  <%
while(rs.next())
{%>
                      <tr>
                         <td style="color: oldlace"><%=rs.getString("pname")%></td><td style="color: oldlace"><%=rs.getString("Customer_Name")%></td><td style="color: oldlace"><%=rs.getString("mobile")%></td><td style="color: oldlace"><%=rs.getString("address")%></td>
                                              </tr>
         <% int z=rs.getInt("price");     
              a=a+z;
System.out.println("a"+a);
%>


<%

}
%><% 
/*
System.out.println("hiiii");
String sql1 = "SELECT serialno FROM billamount ";
String sql2 = "SELECT serialNo FROM solddata where Sdate='"+Sdate1+"'";
PreparedStatement ps1 = null;
PreparedStatement ps2 = null;
ps1 = con.prepareStatement(sql1);
ps2 = con.prepareStatement(sql2);
ResultSet rs1 = ps1.executeQuery(); 

int i=0;
String a1[]=new String[500];
String b1[]=new String[500];
System.out.println("byee");
while(rs1.next())
{
    
   a1[i]=rs1.getString("serialno") ;
   System.out.println("First arrat====="+a1[i]);
 i++;
}
int k=0;
int m=0;
ResultSet rs2 = ps2.executeQuery(); 
while(rs2.next())
{
    System.out.println("CYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY");
   b1[k]=rs2.getString("serialNo") ;
    System.out.println("Second arrat====="+b1[k]);
 k++;
}
  System.out.println(" a1           b1");
for (i=0;i<100;i++)
{
    System.out.println(a1[i]+"         "+b1[i]);
}
/*for(int i1=0;i1<50;i1++)
{
for(int j=0;j<=50;j++)
{
if(a1[i1].equals(b1[j]))
{
m++;
}
}

}*/

%>


Total sold item amount is <input type="text" value="<%out.println(a);%>" disabled>
</table>
 <%
}
catch(SQLException sqe)
{ 
//out.println(sqe);
}
%>
                        
     
  