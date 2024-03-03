<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Data</title>

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
<h1>Librarys Books Management System</h1>
<a href="/">home</a>
<a href="/addbook">Add Books</a>
<a href="/viewallbooks">View All Librarys Books</a>
</center>

<div class="container">
    <form:form action="/update" method="post">
    <h1 align="center" >Edit Books</h1>
        <table class="form-table">
            <tr>
                <td>BookID:</td>
                <td><form:input path="bookID"/></td>
            </tr>
            <tr>
                <td>BookISBN_NUMBER:</td>
                <td><form:input path="bookISBN_NUMBER"/></td>
            </tr>
            <tr>
                <td>BookTitle:</td>
                <td><form:input path="bookTitle"/></td>
            </tr>
            <tr>
                <td>AuthorName:</td>
                <td><form:input path="authorName"/></td>
            </tr>
            <tr>
                <td>Status:</td>
                <td><form:input path="status"/></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><form:input path="price"/></td>
            </tr>
            <tr>
                <td>PublicationName:</td>
                <td><form:input path="publicationName"/></td>
            </tr>
        </table>
        <div class="form-submit">
            <input type="submit" value="Save">
        </div>
    </form:form>
</div>
</body>
</html>
