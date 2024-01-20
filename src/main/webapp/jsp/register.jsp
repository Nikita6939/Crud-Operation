<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Form</title>
<style>
  body {
    font-family: Arial, sans-serif;
  }
  .container {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }
  input[type="text"], input[type="email"], input[type="password"], input[type="tel"], textarea {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
  }
  button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  button:hover {
    background-color: #45a049;
  }
  a{
    text-decoration: none;
    color: white;
  }
  #button{
    margin-top: 10px;
    padding-left: 30px;
  }
</style>
</head>
<body>
  <div class="container">
    <h2>Registration Form</h2>
    <form action="register" method="post">
      <label for="firstName">Name</label>
      <input type="text" id="firstName" name="Name" required>
      
      
      
      <label for="email">Email</label>
      <input type="email" id="email" name="Email" required>
      
      <label for="password">Password</label>
      <input type="password" id="password" name="Password" required>
      
      <label for="mobile">Mobile Number</label>
      <input type="tel" id="mobile" name="MobileNo" required>
      
      <label for="address">Address</label>
      <textarea id="address" name="Address" required></textarea>
      
      <button type="submit">Submit</button>
      
    </form>

      
  </div>
</body>
</html>