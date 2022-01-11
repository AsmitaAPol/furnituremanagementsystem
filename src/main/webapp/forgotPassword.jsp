<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <input type="email" name="email" placeholder="Enter mail" required>
   <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
   <select name="securityQuestion"required>
  	<option value="what was your first car?">what was your first car?</option>
  	<option value="what is the name of your pet?">what is the name of your pet?</option>
  	<option value="what elementary school did you attend">what elementary school did you attend</option>
  	<option value="what is the name of the town where you were born?">what is the name of the town where you were born?</option>
  	</select>
  	<input type="text" name="answer" placeholder="Enter answer" required>
  		<input type="password" name="new password" placeholder="Enter new password" required>
  		<input type="submit" value="save">
  		</form>
      <h2><a href="Login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
 <%
 String msg=request.getParameter("msg");
 if("done".equals(msg))
 {
 %>
   
<h1>Password Changed Successfully!</h1>
<%} %>
<h1>Some thing Went Wrong! Try Again !</h1>

    <h2>Furniture Management System</h2>
    <p>The Furniture Management System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>