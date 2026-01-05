<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/LoginPageCss.css" rel="stylesheet" type="text/css"/>
       </head>
    <body>
        
        <header>
                <div class="main">
                <ul>
  <li><a  href="index.jsp">Home</a></li>
  <li><a href="AdminLogin.jsp"> Admin login</a></li>
  <li><a class="active"  href="CustomerLogin.jsp">Customer login</a></li>
  <li><a href="FeedbackForm.jsp">Feedback</a></li>
</ul>
            </div>
        <div class="login-box">
          
            <h1>Admin Login Here</h1>
            <form method="POST" action="AdminLoginData.jsp">
                <p>Login Id</p>
                <input type="text" name="Username" placeholder="Enter Login Id" pattern="^[a-zA-Z0-9_]{2,20}$"  title="Enter username of at least 2 size(can be combination of alphbate digit and Underscore)" >
                <p>Password</p>
                <input type="password" name="Password" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
                <input type="submit" name="action" value="SignIn">
               
               
            </form>
        </div>
        </header>
    </body>
</html>
