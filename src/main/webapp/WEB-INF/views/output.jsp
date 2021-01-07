<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Output</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>

<h2>Person Message List</h2>
<table>
  <tr>
    <th>글번호</th>
    <th>글쓴이</th>
    <th>내용</th>
  </tr>
  <c:forEach var="i" items="${list}">
  	 <tr>
	    <td>${i.seq}</td>
	    <td>${i.name}</td>
	    <td>${i.message}</td>
  	</tr>
  </c:forEach>
</table>

</body>
</html>