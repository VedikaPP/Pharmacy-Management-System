<!DOCTYPE html>
<html>
<head>
    <link href="css/LoginPageCss.css" rel="stylesheet" type="text/css"/>
</head>
<body>
  <header>
<ul>
  <li><a  href="#home">Home</a></li>
  <li><a href="AdminLogin.jsp"> Admin login</a></li>
  <li><a class="active"  href="CustomerLogin.jsp">Customer login</a></li>
  <li><a href="FeedbackForm.jsp">Feedback</a></li>
</ul>
<div class="login-box">
           <h1>Customer Login Here</h1>
            <form method="POST" action="CustomerLoginData.jsp">
                <p>Email Id</p>
                <input type="text" name="Username" placeholder="Enter Login Id" pattern="[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"  title="Enter username of at least 7 size(can be combination of alphbate digit and Underscore)" >
                <p>Password</p>
                <input type="password" name="Password" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
                <input type="submit" name="action" value="SignIn">
                <input type="submit" name="action1" value="Signup">
            </form>
</div>
    </header>
</body>
</html>
