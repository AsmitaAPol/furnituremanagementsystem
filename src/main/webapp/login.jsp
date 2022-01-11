<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css"/>

</head>
<body>
<div id='container text-center'>
  <div class='signup'>
  		<form action="loginAction.jsp"method="post">
  		<input type="id"name="id"placeholder="Enter id"required>
  		<input type="name"name="name"placeholder="Enter Name"required>
  		<input type="email" name="email" placeholder="Enter Email" required>
  		<input type="password" name="password" placeholder="Enter Password" required>
  		<input type="submit" value="login">
  		</form>
     
      <h2><a href="@{/signup.jsp}">SignUp</a></h2>
       <h2><a href="@{/forgotPassword.jsp}">Forgot Password?</a></h2>
  </div>
  
  

<h1>Some thing Went Wrong! Try Again !</h1>

    <h2>Furniture Management System</h2>
    <p>The Furniture Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>