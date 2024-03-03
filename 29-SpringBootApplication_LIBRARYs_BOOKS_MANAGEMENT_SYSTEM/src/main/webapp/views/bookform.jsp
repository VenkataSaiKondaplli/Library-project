
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>add user</title>
<style>
  body {
    font-family: Arial, sans-serif;
  }
  
  h2 {
    color: red;
  }
  
  form {
    width: 400px;
    margin: 60px auto;
  }
  
  label {
    display: block;
    margin-bottom: 3px;
  }
  
  input[type="text"],
  input[type="email"],
  input[type="password"],
  select {
    width: 100%;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }
  
  input[type="radio"] {
    margin-right: 5px;
  }
  
  input[type="submit"] {
    padding: 10px 20px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 4px;
    cursor: pointer;
  }
  
  input[type="submit"]:hover {
    background-color: #45a049;
  }
  
    body {
    font-family: Arial, sans-serif;
  }
  
  h1 {
    color: red;
  }
  
  center {
    margin-top: 50px;
  }
  
  a {
    display: inline-block;
    padding: 10px 20px;
    background-color: #4CAF50;
    color: #fff;
    text-decoration: none;
    border-radius: 4px;
    margin-right: 10px;
  }
  
  a:hover {
    background-color: yellow;
  }
  
</style>
</head>

<body>
  
  <center>
<h1>Library Books Management System</h1>
<a href="/">home</a>
<a href="/addbook">Add Books</a>
<a href="/viewallbooks">View All Book in library</a>
</center>
 
  <form action="/save" method="post">
  <h2 style="color:red" align="center">Add Books Details</h2>
  <p style="color:green" align="center"> ${books}</p>
    <label for="no">BookID:</label>
    <input type="text" id="no" name="bookID" required><br><br>
    
    <label for="fname">BookISBN_NUMBER:</label>
    <input type="text" id="fname" name="bookISBN_NUMBER" required><br><br>
    
    <label for="lname">BookTitle:</label>
    <input type="text" id="lname" name="bookTitle" required><br><br>
    
    <label for="sub1">AuthorName:</label>
    <input type="text" id="sub1" name="authorName" required><br><br>
    
    <label for="sub1">Status:</label>
    <input type="text" id="sub1" name="status" required><br><br>
    <label for="sub1">Price:</label>
    <input type="text" id="sub1" name="price" required><br><br>
    
    <label for="sub1">PublicationName:</label>
    <input type="text" id="sub1" name="publicationName" required><br><br>
    
      
    <input type="submit" value="addToLibrary">
    
  </form>
</body>
</html>
