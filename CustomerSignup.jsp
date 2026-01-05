<!DOCTYPE html>
<html>
<head>
    <link href="css/signupcss.css" rel="stylesheet" type="text/css"/>
</head>
<body>
  <header>
             <ul>
  <li><a  href="#home">Home</a></li>
  <li><a href="AdminLogin.jsp">Admin login</a></li>
  <li><a class="active"  href="CustomerLogin.jsp">Customer login</a></li>
  <li><a href="FeedbackForm.jsp">Feedback</a></li>
</ul>
     
  

     <div class="login-box">
           
          
            <h1>Customer Sign Up </h1>
            <form action="CustomerSignupData.jsp" method="POST">
                <p>Customer Name</p>
                <input type="text" style="color:white" name="name" placeholder="Enter Customer Name" pattern="[A-Za-z ]{2,}" title="Enter name and name should ne at least 2 alphabate" required>
                <p>User Name</p>
                <input type="text" style="color:white" name="username" placeholder="Enter User Name" pattern="[A-Za-z0-9_.@ ]{3,}" title="Enter name and name should be at least 3 alphabate, _.@ symbol allowed" required>
                <p>Email</p>
                <input type="text" style="color:white" name="email" id="pq" placeholder="Enter Your Email id" pattern="[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
                <p>Password</p>
                <input type="password" style="color:white" name="Password" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"  required>
                <input type="password" style="color:white" name="Password1" placeholder="Enter Confirm password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"   required>
                <input type="submit" name="action" value="SignUp">
              <input type="submit" name="action1" value="Signin">
            </form>
        </div>
    </header>
</body>
</html>
