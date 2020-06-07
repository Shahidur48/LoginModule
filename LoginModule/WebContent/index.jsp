<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>loginApp</title>
<style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>

<form action="Login" method="post">
  

  <div class="container">
    <label for="uemail"><b>Enter Email Address</b></label>
    <input pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" type="text" placeholder="Enter Email" name="uemail" required>

    <label for="upass"><b>Password</b></label>
    <input pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
  		title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters"
  		 type="password" placeholder="Enter Password" name="upass" required>

    <button type="submit">Login</button>
   
  </div>

  
</form>

</body>
</html>