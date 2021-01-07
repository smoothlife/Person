<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Output</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
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
	    <td><input type="text" id="msg${i.seq}" value="${i.message}"></td>
	    <td><button type="button" id="btn-update" value="${i.seq}" data-message="${i.message}">수정</button></td>
	    <td><button type="button" id="btn-delete" value="${i.seq}">삭제</button></td>
  	</tr>
  </c:forEach>
</table>

<script>
		$("#btn-update").on("click", function() {
			var seq = $("#btn-update").val();
			console.log(seq);
			console.log($("#msg"+seq).val());
			$.ajax({
				data : {
	    			seq: seq,
	    			message: $("#msg"+seq).val()
	    		},
				type : "post",
				url : "/person/update.person", 
				success: function(data){
					console.log("data : " + data);
					console.log("수정성공");
					location.reload(true);
				}
			})
		})
		
		$("#btn-delete").on("click", function() {
			var seq = $("#btn-delete").val();
			$.ajax({
				data : {
	    			seq: seq,
	    		},
				type : "post",
				url : "/person/delete.person", 
				success: function(data){
					console.log("data : " + data);
					console.log("삭제성공");
					location.reload(true);
				}
			})
		})
	</script>
</body>
