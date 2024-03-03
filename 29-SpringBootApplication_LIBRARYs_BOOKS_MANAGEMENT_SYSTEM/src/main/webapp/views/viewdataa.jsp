<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Data</title>
<style type="text/css">

 body {
    font-family: Arial, sans-serif;
   
  }
  
  h1 {
    color: red;
  }
  
  center {
    margin-top: 20px;
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
  }</style>
</head>
<body>
 <center>
<h1>Library Books Management System</h1>
<a href="/">home</a>
<a href="/addbook">Add bOOK</a>
<a href="/viewallbooks">View Book in Library</a>
</center>

  <h1 style="color:green" align="center"> All Books in Library </h1>
 
  <center>
      <table align="center" border="1" width="600px" style="background-color: #D3D3D3; border-collapse: collapse;">
  <tr>
    <th style="padding: 10px;">BookID</th>
    <th style="padding: 10px;">BookISBN_NUMBER</th>
    <th style="padding: 10px;">BookTitle</th>
    <th style="padding: 10px;">AuthorName</th>
    <th style="padding: 10px;">Status</th>
    <th style="padding: 10px;">Price</th>
    <th style="padding: 10px;">PublicationName</th>
    <th style="padding: 10px;">Delete</th>
    <th style="padding: 10px;">Edit</th>
  </tr>
  
  <c:forEach var="books" items="${books}">
    <tr>
         <td style="padding: 10px;">${books.bookID}</td>
      <td style="padding: 10px;">${books.bookISBN_NUMBER}</td>
      <td style="padding: 10px;">${books.bookTitle}</td>
      <td style="padding: 10px;">${books.authorName}</td>
      <td style="padding: 10px;">${books.status}</td>
      <td style="padding: 10px;">${books.price}</td>
      <td style="padding: 10px;">${books.publicationName}</td>
      
      <td style="padding: 10px;"><a href="/delete/${books.bookID}" style="text-decoration: none; color:red">Delete</a></td>
      <td style="padding: 10px;"><a href="/edit/${books.bookID}" style="text-decoration: none;color:green">Edit</a></td>
    </tr>
  </c:forEach>
 </table>

  </center>
</body>
</html>
